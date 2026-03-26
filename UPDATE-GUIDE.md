# 小亮网站更新指南 📝

## 🚀 快速更新（推荐）

### Windows 用户
```cmd
deploy.bat "添加小亮的新照片"
```

### Mac/Linux 用户
```bash
chmod +x deploy.sh
./deploy.sh "添加小亮的新照片"
```

---

## 📸 添加照片

### 1. 准备照片
- 照片建议大小：500KB - 2MB
- 推荐 JPG 格式
- 建议按日期组织文件

### 2. 添加照片
将照片放到 `images/` 文件夹：
```
images/
├── 2026-03-26/
│   ├── 001.jpg
│   └── 002.jpg
```

### 3. 更新数据

#### 方法A：更新相册 (`data/diary.json`)
```json
{
  "gallery": [
    {
      "type": "image",
      "src": "images/2026-03-26/001.jpg",
      "caption": "小亮的新照片"
    }
  ]
}
```

#### 方法B：更新日记
```json
{
  "diary": [
    {
      "date": "2026-03-26",
      "day": 8,
      "title": "今天拍了新照片",
      "content": ["小亮越来越可爱了"],
      "images": ["images/2026-03-26/001.jpg"],
      "video": null
    }
  ]
}
```

---

## 📝 添加日记

### 1. 编辑 `data/diary.json`
```json
{
  "diary": [
    {
      "date": "2026-03-26",
      "day": 8,
      "title": "标题（可选）",
      "content": [
        "第一条记录",
        "第二条记录",
        "第三条记录"
      ],
      "images": ["images/photo.jpg"],
      "video": "videos/video.mp4"
    }
  ]
}
```

### 2. 推送更新
```cmd
deploy.bat "添加2026-03-26的日记"
```

---

## 🎬 添加视频

### 方法1：本地视频
1. 将视频放到 `videos/` 文件夹
2. 在日记中引用：
```json
{
  "video": "videos/2026-03-26/singing.mp4"
}
```

### 方法2：外部视频（B站、YouTube）
```json
{
  "video": "https://www.bilibili.com/video/BVxxxxx"
}
```

---

## 📊 更新成长数据

编辑 `data/diary.json` 的 `stats` 部分：
```json
{
  "stats": {
    "age": 5,      // 月龄
    "scales": 0,   // 学会的音阶数
    "trust": 1,    // 信任等级（1-5）
    "cute": 100    // 可爱指数（0-100）
  }
}
```

---

## 🎨 自定义网站

### 修改网站标题
编辑 `index.html` 第 6 行：
```html
<title>你的网站标题</title>
```

### 修改颜色主题
编辑 `index.html` 的 CSS 部分：
```css
/* 主色调 */
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);

/* 强调色 */
color: #667eea;
```

### 修改版本信息
编辑 `index.html` 第 975 行：
```html
<span id="versionText">📌 v1.7 | 2026-03-26</span>
```

---

## 🔍 常见问题

### Q: 网站没有更新？
A:
1. 清除浏览器缓存（Ctrl+F5）
2. 等待 2-3 分钟让 GitHub 部署
3. 检查 GitHub Actions 部署状态

### Q: 图片不显示？
A:
1. 检查图片路径是否正确
2. 确保图片已添加到 `images/` 文件夹
3. 检查图片文件名是否正确（区分大小写）

### Q: 如何查看访问数据？
A:
1. Google Analytics：登录 [Google Analytics](https://analytics.google.com/)
2. Gitalk 评论：直接在网站底部查看

### Q: 推送失败？
A:
1. 检查网络连接
2. 确认已配置 GitHub SSH 或 Token
3. 查看错误信息并重试

---

## 📱 PWA 功能

### 添加到主屏幕（手机）
1. 在手机浏览器打开网站
2. 点击浏览器菜单 → "添加到主屏幕"
3. 即可离线访问

### 添加到主屏幕（电脑 - Chrome）
1. 点击地址栏右侧的安装图标
2. 点击"安装"按钮

### PWA 特性
- ✅ 离线访问
- ✅ 添加到主屏幕
- ✅ 全屏模式
- ✅ 推送通知（可选）

---

## 🌐 部署地址

### 主站（推荐）
- GitHub Pages: https://topedu2008.github.io/xiaoliang-website/
- 状态：✅ 稳定
- 访问：中国大陆稳定

### 备用
- Vercel: https://xiaoliang-website.vercel.app/
- 状态：⚠️ 有时不稳定
- 访问：国外稳定

---

## 💡 小贴士

1. **照片优化**：建议压缩照片到 500KB-2MB
2. **命名规范**：按日期组织（`2026-03-26/001.jpg`）
3. **更新频率**：可以每天更新，也可以几天更新一次
4. **自动备份**：GitHub 会自动备份所有版本
5. **版本控制**：每次提交都会创建版本历史

---

## 🆘 需要帮助？

1. 查看 [README.md](README.md) 了解更多详情
2. 查看项目 Issues：https://github.com/topedu2008/xiaoliang-website/issues
3. 联系我获取帮助

---

## 🎉 开始记录吧！

现在就可以开始记录小亮的成长故事了！🐦✨

有任何问题，随时问我！
