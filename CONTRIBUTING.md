# 贡献指南 🤝

感谢你考虑为小亮网站做贡献！

---

## 📋 如何贡献

### 报告问题

如果你发现了 bug 或有建议：

1. 在 [GitHub Issues](https://github.com/topedu2008/xiaoliang-website/issues) 创建新问题
2. 清晰描述问题或建议
3. 附上截图或错误信息（如果有）
4. 提供你的浏览器和系统信息

### 提交代码

如果你想让代码合并到主分支：

1. **Fork** 这个仓库
2. 创建你的特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建一个 **Pull Request**

---

## 🎨 代码规范

### HTML
- 使用 4 个空格缩进
- 标签和属性使用小写
- 所有标签必须闭合
- 添加适当的注释

### CSS
- 使用 4 个空格缩进
- 选择器按以下顺序：
  1. 元素选择器
  2. 类选择器
  3. ID 选择器
- 添加有意义的注释
- 响应式设计优先

### JavaScript
- 使用 4 个空格缩进
- 函数使用驼峰命名
- 添加 JSDoc 注释
- 避免全局变量
- 使用 `const` 和 `let`，避免 `var`

### JSON
- 使用 2 个空格缩进
- 最后一个属性后不要加逗号

---

## 📁 项目结构

```
xiaoliang-website/
├── index.html              # 主页面
├── manifest.json           # PWA 配置
├── service-worker.js       # Service Worker（离线缓存）
├── deploy.sh               # Linux/Mac 部署脚本
├── deploy.bat              # Windows 部署脚本
├── .gitignore            # Git 忽略文件
├── README.md             # 项目说明
├── UPDATE-GUIDE.md       # 更新指南
├── CONTRIBUTING.md       # 本文件
├── data/                # 数据文件夹
│   ├── diary.json       # 日记和相册数据
│   └── interaction-stats.json  # 互动统计
├── images/              # 图片文件夹
│   ├── 2026-03-19/     # 按日期组织
│   └── logo-*.png       # Logo 文件
└── videos/              # 视频文件夹
    └── xiaoliang.gif   # 示例视频
```

---

## 🚀 开发流程

### 1. 克隆仓库
```bash
git clone https://github.com/topedu2008/xiaoliang-website.git
cd xiaoliang-website
```

### 2. 创建分支
```bash
git checkout -b feature/your-feature-name
```

### 3. 本地开发
使用以下任一方式启动本地服务器：

**Python:**
```bash
python -m http.server 8000
```
访问：http://localhost:8000

**Node.js:**
```bash
npx http-server -p 8000
```
访问：http://localhost:8000

### 4. 测试
- 在多个浏览器测试（Chrome、Firefox、Safari）
- 测试移动端响应式布局
- 测试 PWA 功能（离线访问）
- 测试深色/浅色主题切换

### 5. 提交
```bash
git add .
git commit -m "描述你的更改"
git push origin feature/your-feature-name
```

### 6. 创建 Pull Request
- 在 GitHub 上创建 PR
- 清晰描述更改内容
- 等待审核和合并

---

## 📝 提交信息规范

使用清晰的提交信息：

```
类型: 简短描述

详细描述（可选）

类型可以是：
- feat: 新功能
- fix: 修复 bug
- docs: 文档更新
- style: 代码格式
- refactor: 重构
- test: 测试
- chore: 构建/工具

示例：
feat: 添加图片懒加载功能
fix: 修复深色模式下图片显示问题
docs: 更新 README.md
```

---

## 🐦 小亮相关的内容

### 添加照片
1. 将照片放到 `images/` 文件夹
2. 更新 `data/diary.json` 的 `gallery` 或 `diary` 部分
3. 照片建议大小：500KB - 2MB

### 添加日记
1. 编辑 `data/diary.json` 的 `diary` 部分
2. 按格式添加新条目
3. 推送到 GitHub

### 添加视频
1. 将视频放到 `videos/` 文件夹或使用外部链接
2. 在日记中引用
3. 推送到 GitHub

---

## ✅ 质量检查清单

在提交 PR 之前，请确保：

- [ ] 代码在所有主流浏览器中正常工作
- [ ] 移动端响应式布局正常
- [ ] PWA 功能正常（离线访问）
- [ ] 深色/浅色主题切换正常
- [ ] 没有控制台错误
- [ ] 代码符合项目规范
- [ ] 添加了必要的注释
- [ ] 更新了相关文档（如果需要）

---

## 🤝 社区准则

- 尊重所有贡献者
- 提供建设性的反馈
- 欢迎新手参与
- 及时回应问题和评论
- 保持友好的交流氛围

---

## 📧 联系方式

如有问题，请通过以下方式联系：

- GitHub Issues: https://github.com/topedu2008/xiaoliang-website/issues
- 项目仓库: https://github.com/topedu2008/xiaoliang-website

---

## 📜 许可证

本项目采用 MIT 许可证 - 查看 LICENSE 文件了解详情。

---

**感谢你的贡献！让我们一起让小亮的网站更完善！** 🐦✨
