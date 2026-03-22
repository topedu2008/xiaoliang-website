# 小亮网站迁移到 Vercel 记录

## 迁移时间
- **日期**: 2026-03-22
- **时间**: 10:23 - 10:57
- **操作人**: 阿北 + 扣虾

## 迁移原因

### Netlify 额度超限
- **免费额度**: 300 credits / 月
- **当前周期**: 2026-03-19 → 2026-04-18
- **超限日期**: 2026-03-22
- **结果**: 所有项目离线，无法访问

### 邮件通知
```
Your projects have been suspended
Your credit usage on team topedu2008's team has exceeded
your 300 credit allowance in the current billing cycle.
```

## 解决方案选择

### 选项对比
| 方案 | 费用 | 时间 | 推荐度 |
|------|------|------|--------|
| 升级 Netlify Personal | $9/月 | 立即 | ⭐⭐⭐ |
| 等待 Netlify 恢复 | 免费 | 27天 | ⭐ |
| 迁移到 Vercel | 免费 | 10分钟 | ⭐⭐⭐⭐⭐ |
| 迁移到 GitHub Pages | 免费 | 10分钟 | ⭐⭐⭐⭐ |

### 最终选择
**Vercel**（免费额度高，全球加速，易于使用）

---

## 迁移步骤

### 1. 注册/登录 Vercel
- 访问：https://vercel.com
- 使用 GitHub 账号登录

### 2. 导入项目
- 点击 "Add New" → "Project"
- 选择仓库：`topedu2008/xiaoliang-website`
- 点击 "Import"

### 3. 配置部署
- **Framework Preset**: Other
- **Build Command**: 留空
- **Output Directory**: `.`（根目录）
- 点击 "Deploy"

### 4. 获取新域名
- Vercel 提供的域名：`xiaoliang-website.vercel.app`

### 5. 验证部署
- ✅ 网站可正常访问
- ✅ 所有功能正常
- ✅ 照片灯箱功能正常

---

## 迁移后更新

### 已更新的文件
1. ✅ `MEMORY.md`
   - 更新网站链接
   - 更新推送步骤
   - 更新重要日期
   - 更新托管平台信息

2. ✅ `docs/xiaoliang-website-series-01.md`
   - 更新项目链接中的网址

### 待更新的内容
- ⏳ InStreet 帖子（需要手动更新或通过 API）

---

## Vercel vs Netlify 对比

| 功能 | Vercel | Netlify |
|------|--------|---------|
| **免费额度** | 100GB 带宽/月 | 300 credits |
| **构建时间** | 6000分钟/月 | 300分钟/月 |
| **自定义域名** | ✅ 免费 | ✅ 免费 |
| **自动部署** | ✅ GitHub集成 | ✅ GitHub集成 |
| **CDN加速** | ✅ 全球 | ✅ 全球 |
| **SSL证书** | ✅ 自动 | ✅ 自动 |

---

## 小亮网站现状

### 基本信息
- **网站地址**: https://xiaoliang-website.vercel.app
- **GitHub 仓库**: https://github.com/topedu2008/xiaoliang-website
- **当前版本**: v1.5
- **托管平台**: Vercel（免费）
- **创建时间**: 2026-03-18

### 包含内容
- ✅ 饲养技巧
- ✅ 训练历程
- ✅ 成长日记
- ✅ 相册（带灯箱放大）
- ✅ 互动功能
- ✅ 视频展示（GIF）

---

## 注意事项

### Netlify 旧域名
- ❌ `xiaoling2025.netlify.app` 无法使用
- ❌ `xiaoliang-website.netlify.app` 无法使用
- 原因：Netlify 子域名所有权属于 Netlify，账户超限后停止服务

### 未来优化建议
1. 购买自己的域名（如 `xiaoling2025.com`）
2. 永久拥有域名所有权
3. 可以随意切换托管平台

---

## 总结

✅ **迁移成功**
- 小亮网站已恢复访问
- 使用 Vercel 免费托管
- 额度充足，无需担心再次超限

✅ **功能完整**
- 所有功能正常
- 照片灯箱功能可用
- 自动部署机制正常

✅ **成本节约**
- 完全免费（100GB 带宽/月）
- 无需支付托管费用

---

*记录时间：2026-03-22*
*操作人：阿北 + 扣虾 🦞*
