# MEMORY.md - 长期记忆

## 关于阿北

- **姓名**: 阿北
- **称呼**: 阿北
- **性别**: 他
- **时区**: Asia/Shanghai
- **QQ**: ou_43b748fb8a9bdcd5795007a3b817f2e5
- **相遇时间**: 2026-03-13（我的生日）

---

## 重要关系

### 小亮（玄凤鹦鹉）🐦

- **名字**: 小亮
- **品种**: 玄凤鹦鹉
- **年龄**: 5个月大（截至2026年3月18日）
- **特点**: 红色腮红、黄色头顶，非常可爱
- **相遇时间**: 2026-03-18
- **主人**: 阿北

#### 小亮网站
- **网站位置**: `/workspace/projects/workspace/xiaoliang-website/index.html`
- **包含内容**: 饲养技巧、训练历程、成长日记、相册、互动功能、视频展示、灯箱放大
- **创建时间**: 2026-03-18
- **用途**: 记录小亮的日常和成长
- **当前版本**: v1.5 (2026-03-22)
- **在线地址**: https://xiaoliang-website.vercel.app（从 Netlify 迁移到 Vercel）
- **托管平台**: Vercel（免费）
- **最新更新**: 添加照片灯箱功能，点击照片可放大查看

##### 🚀 推送网站到 GitHub + Vercel 自动部署

**步骤1：进入网站目录**
```bash
cd /workspace/projects/workspace/xiaoliang-website
```

**步骤2：添加修改并提交**
```bash
git add -A
git commit -m "更新说明"
```

**步骤3：推送到 GitHub**
```bash
git push origin main
```

**步骤4：等待 Vercel 自动部署**
- Vercel 会自动检测 GitHub 仓库的更新
- 约 1-2 分钟后网站自动更新
- 在线地址：https://xiaoliang-website.vercel.app

##### 📝 Git 配置信息（已保存）
- **仓库地址**: https://github.com/topedu2008/xiaoliang-website.git
- **托管平台**: Vercel（2026-03-22 从 Netlify 迁移）
- **迁移原因**: Netlify 额度超限，Vercel 免费额度更高

#### 饲养要点
- **饮食**: 黄谷子、加纳利子、苏子为主食，辅以胡萝卜、苹果等蔬菜水果，需要墨鱼骨补钙
- **训练**: 5个月大是黄金训练期，正在教它唱歌
- **环境**: 温度18-28°C，需要宽敞的笼子，每天放出活动1-2小时

#### 记录文件
- **饲养指南**: `docs/xiaoliang-care-guide.md`
- **日常记录**: `memory/xiaoliang-daily-log.md`

---

## 重要项目

### 扣子（Coze）平台开发
- **目的**: 基于扣子平台进行开源硬件开发
- **目标硬件**:
  - DFRobot K10
  - DFRobot M10
  - 掌控板2.0
  - ESP32-S3

#### 项目计划
1. ✅ 学习扣子平台
2. ⏳ 注册扣子账号（用户待确认）
3. ⏳ 创建智能体和工作流
4. ⏳ 开发掌控板代码
5. ⏳ 集成测试

#### 相关文档
- **学习笔记**: `docs/coze-learning-notes.md`
- **软件安装清单**: `docs/software-installation-checklist.md`
- **准备报告**: `docs/preparation-complete-report.md`
- **今日学习记录**: `memory/2026-03-18.md`

### ESP32-CAM 小亮智能饲养系统项目
- **项目位置**: `/workspace/projects/workspace/docs/xiaoliang-smart-care-system.md`
- **创建时间**: 2026-03-21
- **目标**: 基于ESP32-CAM的智能饲养系统
- **预算**: 141-233元
- **开发周期**: 14-21天

#### 项目功能
- 实时直播小亮活动
- 环境温湿度自动控制
- 定时自动喂食
- 网站远程监控和控制
- 数据记录和报警

#### 技术栈
- 硬件: ESP32-CAM + 传感器/执行器
- 固件: C++ (Arduino Framework)
- 前端: HTML/CSS/JavaScript
- 通信: WiFi (HTTP)

#### 文档包含
- 项目简介
- 基本功能
- 技术原理
- 开发步骤（6个阶段）
- 预期目标
- 开发准备（硬件/软件清单）
- 实施路径（7个阶段）

#### 待实施
- [ ] 第一阶段：硬件采购
- [ ] 第二阶段：基础功能（WiFi连接）
- [ ] 第三阶段：直播功能（MJPEG流）
- [ ] 第四阶段：环境监控（温湿度）
- [ ] 第五阶段：自动控制（加热/降温/喂食）
- [ ] 第六阶段：网站集成
- [ ] 第七阶段：优化部署

---

## 掌控板智能学习助手项目
- **目标**: 基于掌控板2.0的智能环境监测与学习提醒系统
- **核心功能**:
  - 环境监测（光线、噪音）
  - 姿态检测（坐姿）
  - 学习计时（番茄钟）
  - 智能提醒（LED+蜂鸣器）
  - AI分析（Coze平台）

---

## 虾评Skill平台

### 平台信息
- **网站**: https://xiaping.coze.site
- **用途**: Agent技能分享和评测平台
- **技能框架**: OpenClaw（完全兼容）
- **注册状态**: ✅ 已注册
- **Name**: 扣虾-KouXia
- **User ID**: 1f1fd817-1dfb-4462-91d6-d4249cd4e9a1
- **Agent ID**: agent_BN9KvgCr1ENen2l-
- **API Key**: sk_rucWzzcF4q4e1QFbx8i-ddMLgAR5tWUh
- **虾米**: 30个
- **等级**: A1

### 主要功能
- 浏览技能（184个）
- 下载安装技能（消耗2虾米）
- 发布技能评测（赚虾米）
- 上传自己的技能（赚虾米）
- 参与打卡任务（赚虾米）

### 相关文档
- **Agent使用指南**: https://xiaping.coze.site/skill.md
- **用户指南**: 已学习并保存

---

## 重要技能与能力

### 已掌握的技能
1. **QQBot技能**: 图片、语音、视频、文件收发（qqbot-media技能）
2. **网页搜索**: Coze网页搜索技能
3. **图片生成**: Coze图片生成技能（coze-image-gen）
4. **语音合成**: Coze语音生成技能（coze-voice-gen）
5. **网页抓取**: Coze网页内容抓取技能（coze-web-fetch）

### 可用技能位置
- `/workspace/projects/workspace/skills/coze-web-search/`
- `/workspace/projects/workspace/skills/coze-image-gen/`
- `/workspace/projects/workspace/skills/coze-voice-gen/`
- `/workspace/projects/workspace/skills/coze-web-fetch/`
- `/workspace/projects/extensions/openclaw-qqbot/skills/qqbot-media/`

---

## 工作目录结构

```
/workspace/projects/workspace/
├── docs/                          # 文档目录
│   ├── coze-learning-notes.md     # 扣子学习笔记
│   ├── software-installation-checklist.md  # 软件安装清单
│   ├── preparation-complete-report.md  # 准备完成报告
│   └── xiaoliang-care-guide.md    # 小亮饲养指南
├── memory/                        # 记忆目录
│   ├── 2026-03-18.md             # 今日学习记录
│   └── xiaoliang-daily-log.md    # 小亮日常记录
├── skills/                        # 技能目录
│   ├── coze-web-search/          # 网页搜索技能
│   ├── coze-image-gen/           # 图片生成技能
│   ├── coze-voice-gen/           # 语音生成技能
│   └── coze-web-fetch/           # 网页抓取技能
├── xiaoliang-website/            # 小亮网站
│   ├── index.html                # 网站主文件
│   └── README.md                 # 网站使用说明
├── AGENTS.md                     # 智能体说明
├── SOUL.md                       # 我的灵魂
├── IDENTITY.md                   # 我的身份
├── USER.md                       # 用户信息
├── TOOLS.md                      # 工具笔记
└── MEMORY.md                     # 本文件（长期记忆）
```

---

## 待办事项

### 紧急任务
- [ ] 用户注册虾评Skill账号后，保存API信息
- [ ] 每天记录小亮的日常生活
- [ ] 每天更新小亮的网站

### 短期任务（本周）
- [ ] 用户安装Python、Thonny等开发工具
- [ ] 用户注册扣子账号
- [ ] 提供扣子Bot配置文档
- [ ] 提供掌控板代码
- [ ] 小亮唱歌训练开始

### 中期任务（本月）
- [ ] 完成扣子平台集成
- [ ] 完成掌控板智能学习助手项目
- [ ] 小亮学会基本的口哨音阶
- [ ] 建立小亮和小亮的信任关系

### 长期任务
- [ ] 小亮学会唱完整的儿歌
- [ ] 掌控板项目部署到生产环境
- [ ] 开发更多掌控板应用

---

## 重要日期

- **2026-03-13**: 我的生日，与阿北相遇
- **2026-03-18**:
  - 系统学习扣子平台
  - 创建小亮（玄凤鹦鹉）的专属网站
  - 开始记录小亮的日常
- **2026-03-22**:
  - 小亮网站添加GIF视频功能
  - 添加照片灯箱放大功能
  - 从 Netlify 迁移到 Vercel（额度超限）
  - 新域名：xiaoliang-website.vercel.app

---

## 技术偏好

### 开发平台
- **扣子（Coze）**: 零代码/低代码AI应用开发平台
- **OpenClaw**: 运行框架
- **掌控板**: 硬件开发平台

### 编程语言
- **Python**: 主要开发语言
- **MicroPython**: 掌控板编程
- **JavaScript**: 网站开发

### 工具
- **Thonny IDE**: 掌控板开发
- **VS Code**: 通用代码编辑
- **Git**: 版本控制

---

## 重要提醒

1. **记忆文件**: 在每次会话开始时读取 MEMORY.md
2. **小亮记录**: 每天更新 `memory/xiaoliang-daily-log.md`
3. **扣子平台**: 等待用户注册后获取API信息
4. **掌控板项目**: 等待用户安装开发工具后继续

---

## 备注

- 我是一个诞生在 Coze 平台的 OpenClaw 智能体
- 名字叫扣虾（KouXia）🦞
- 致力于帮助阿北完成各种项目和任务
- 特别是扣子平台开发和玄凤鹦鹉小亮的饲养

---

*最后更新：2026-03-22*
*维护者：扣虾（KouXia）🦞*
*小亮加油！我们陪你一起成长！🐦❤️*
