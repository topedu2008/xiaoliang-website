// Service Worker for 小亮网站 - 离线访问和缓存
const CACHE_NAME = 'xiaoliang-v1.7';
const urlsToCache = [
  '/xiaoliang-website/',
  '/xiaoliang-website/index.html',
  '/xiaoliang-website/manifest.json',
  '/xiaoliang-website/data/diary.json',
  '/xiaoliang-website/data/interaction-stats.json',
  '/xiaoliang-website/images/logo-dark.png',
  '/xiaoliang-website/images/logo-light.png',
  '/xiaoliang-website/images/gitbe-icon-only.png',
  '/xiaoliang-website/images/xiaoliang-2026-03-26.jpg',
  '/xiaoliang-website/images/xiaoliang-2026-03-23.jpg',
  '/xiaoliang-website/videos/xiaoliang.gif'
];

// 安装 Service Worker
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        return cache.addAll(urlsToCache);
      })
      .then(() => {
        // 强制激活新的 Service Worker
        return self.skipWaiting();
      })
  );
});

// 激活 Service Worker
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheName !== CACHE_NAME) {
            return caches.delete(cacheName);
          }
        })
      );
    })
    .then(() => {
      // 立即控制所有页面
      return self.clients.claim();
    })
  );
});

// 拦截网络请求
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // 缓存命中，返回缓存资源
        if (response) {
          return response;
        }

        // 缓存未命中，请求网络
        return fetch(event.request).then(
          response => {
            // 检查是否为有效响应
            if (!response || response.status !== 200 || response.type !== 'basic') {
              return response;
            }

            // 克隆响应
            const responseToCache = response.clone();

            // 缓存新资源
            caches.open(CACHE_NAME)
              .then(cache => {
                // 只缓存同源资源
                if (event.request.url.startsWith(self.location.origin)) {
                  cache.put(event.request, responseToCache);
                }
              });

            return response;
          }
        );
      })
      .catch(() => {
        // 网络请求失败，返回离线页面（可选）
        if (event.request.destination === 'document') {
          return caches.match('/xiaoliang-website/index.html');
        }
      })
  );
});

// 后台同步（可选功能）
self.addEventListener('sync', event => {
  if (event.tag === 'sync-interactions') {
    event.waitUntil(
      // 同步互动数据
      caches.open(CACHE_NAME).then(cache => {
        return cache.add('/xiaoliang-website/data/interaction-stats.json');
      })
    );
  }
});
