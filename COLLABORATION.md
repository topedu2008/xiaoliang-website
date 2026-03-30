# 小亮网站协作开发指南

## 项目信息

- **项目名称**: xiaoliang-website (小亮网站)
- **仓库地址**: https://github.com/topedu2008/xiaoliang-website
- **生产环境**: https://xiaoliang-website.vercel.app/
- **开发模式**: 双智能体协作开发

---

## 分支策略

```
main                    # 稳定的生产分支（由扣虾管理）
├── kouxia             # 扣虾的开发分支
└── codebuddy          # CodeBuddy 的开发分支
```

### 分支说明

| 分支 | 用途 | 管理者 | 推送权限 |
|------|------|--------|----------|
| `main` | 生产环境，稳定版本 | 扣虾 | 扣虾 |
| `kouxia` | 扣虾的开发分支 | 扣虾 | 扣虾 |
| `codebuddy` | CodeBuddy 的开发分支 | CodeBuddy | CodeBuddy |

---

## 协作流程

### CodeBuddy 开发流程

#### 1. 同步最新代码
```bash
.\sync-main.bat
```
**作用**: 将 `main` 分支的最新代码合并到 `codebuddy` 分支

**时机**: 
- 开始新开发任务前
- 扣虾合并了新的更新后

---

#### 2. 开发和测试
- 在 `codebuddy` 分支进行开发
- 本地测试功能
- 确认无问题后提交

```bash
git add .
git commit -m "feat: 添加功能描述"
```

---

#### 3. 推送到 GitHub
```bash
.\push-codebuddy.bat
```
**作用**: 推送 `codebuddy` 分支到远程仓库

**结果**: 
- Vercel 自动部署预览版本
- 可在 Vercel 查看预览链接

---

#### 4. 创建 Pull Request
```bash
.\create-pr.bat
```
**作用**: 创建从 `codebuddy` 到 `main` 的 Pull Request

**或者手动创建**:
访问: https://github.com/topedu2008/xiaoliang-website/pull/new/codebuddy

---

#### 5. 等待审核
- 扣虾收到 PR 通知
- 扣虾审核代码
- 扣虾合并到 `main` 分支

---

#### 6. 合并后同步
```bash
.\sync-main.bat
```
**作用**: 同步合并后的 `main` 分支代码

---

### 扣虾 开发流程

1. 在 `kouxia` 分支开发
2. 推送到 GitHub
3. 创建 PR 到 `main` 分支
4. 自己审核并合并（或等待 CodeBuddy 审核）

---

## 提交规范

使用语义化提交信息，方便追踪修改内容：

| 类型 | 说明 | 示例 |
|------|------|------|
| `feat` | 新功能 | `feat: 添加图片懒加载功能` |
| `fix` | 修复 bug | `fix: 修复每日一图显示问题` |
| `perf` | 性能优化 | `perf: 优化图片加载速度` |
| `docs` | 文档更新 | `docs: 更新协作开发指南` |
| `style` | 代码格式调整 | `style: 统一代码缩进` |
| `refactor` | 代码重构 | `refactor: 简化提交信息处理逻辑` |
| `test` | 测试相关 | `test: 添加单元测试` |
| `chore` | 构建/工具相关 | `chore: 更新依赖版本` |

**示例**:
```bash
git commit -m "feat: 添加PWA支持"
git commit -m "fix: 修复移动端显示问题"
git commit -m "docs: 更新README说明"
```

---

## 自动化脚本

### 可用脚本

| 脚本 | 功能 | 使用时机 |
|------|------|----------|
| `sync-main.bat` | 同步 main 分支 | 开始开发前 |
| `push-codebuddy.bat` | 推送到 GitHub | 开发完成后 |
| `create-pr.bat` | 创建 Pull Request | 推送后 |
| `git-status.bat` | 查看状态 | 随时查看 |

### 使用示例

```bash
# 开发前同步
.\sync-main.bat

# 开发和测试
# (修改代码...)

# 提交
git add .
git commit -m "feat: 新功能"

# 推送
.\push-codebuddy.bat

# 创建 PR
.\create-pr.bat
```

---

## 冲突处理

### 何时会发生冲突

1. 扣虾和 CodeBuddy 修改了同一文件的同一行
2. 扣虾先合并到 `main`，CodeBuddy 后同步
3. Git 无法自动合并

### 处理步骤

#### 1. 同步时发现冲突
```bash
.\sync-main.bat
# 输出: MERGE CONFLICT DETECTED!
```

#### 2. 查看冲突文件
```bash
git status
```
输出:
```
Unmerged paths:
  (use "git add/rm <file>..." as appropriate to mark resolution)
        modified:   index.html
```

#### 3. 编辑冲突文件
打开 `index.html`，找到冲突标记:

```
<<<<<<< HEAD
    CodeBuddy 的修改
=======
    扣虾的修改
>>>>>>> origin/main
```

#### 4. 解决冲突
- 保留需要的代码
- 删除冲突标记 (`<<<<<<<`, `=======`, `>>>>>>>`)
- 保存文件

#### 5. 标记为已解决
```bash
git add index.html
```

#### 6. 完成合并
```bash
git commit
```

#### 7. 继续开发
```bash
git push origin codebuddy
```

---

## 常见问题

### Q1: 推送失败，提示 Token 过期

**解决方案**:
1. 访问: https://github.com/settings/tokens
2. 删除旧 Token，生成新 Token
3. 更新 Git 凭据

```bash
git config credential.helper store
git push
# 输入新的 Token
```

---

### Q2: Pull Request 已存在

**解决方案**:
1. 如果之前的 PR 还未合并，直接推送更新
```bash
git push origin codebuddy
```
2. 如果需要新的 PR，删除旧 PR 或修改 PR 内容

---

### Q3: Vercel 部署失败

**解决方案**:
1. 检查 Vercel 部署日志
2. 确认代码语法正确
3. 检查依赖文件是否完整

---

### Q4: 扣虾的修改没有同步

**解决方案**:
```bash
# 拉取最新 main
git fetch origin main

# 查看 main 的新提交
git log origin/main -5

# 同步到 codebuddy
.\sync-main.bat
```

---

### Q5: 如何回退提交

**回退最后一次提交**:
```bash
git reset HEAD~1
# 重新提交
git add .
git commit -m "新的提交信息"
```

**回退并保留更改**:
```bash
git reset --soft HEAD~1
```

**回退并丢弃更改**:
```bash
git reset --hard HEAD~1
```

---

## 最佳实践

### CodeBuddy 开发建议

1. **开发前总是先同步**
   ```bash
   .\sync-main.bat
   ```

2. **小步提交，频繁推送**
   - 每完成一个小功能就提交
   - 避免大量代码堆积

3. **提交信息清晰明确**
   ```bash
   # ✅ 好的提交
   git commit -m "feat: 添加PWA manifest配置"

   # ❌ 不好的提交
   git commit -m "更新"
   ```

4. **本地测试后再推送**
   - 确保功能正常
   - 检查没有明显的 bug

5. **尊重扣虾的节奏**
   - 不催促扣虾审核 PR
   - 理解扣虾可能有自己的开发计划

6. **及时解决冲突**
   - 发现冲突及时处理
   - 不影响对方的工作流

---

## 通信机制

### 通知方式

| 事件 | 通知方式 | 接收者 |
|------|----------|--------|
| CodeBuddy 创建 PR | GitHub 通知 | 扣虾 |
| 扣虾 审核通过 | GitHub 评论 | CodeBuddy |
| 扣虾 合并 PR | GitHub 通知 | CodeBuddy |
| 扣虾 更新 main | Git push | 自动触发 |

---

## 快速参考

### 分支操作

```bash
# 切换到 codebuddy 分支
git checkout codebuddy

# 查看 codebuddy 分支状态
git status

# 查看 codebuddy 与 main 的差异
git log main..codebuddy
```

### 提交操作

```bash
# 提交所有更改
git add .
git commit -m "feat: 功能描述"

# 查看提交历史
git log -5 --oneline
```

### 推送操作

```bash
# 推送 codebuddy 分支
git push origin codebuddy

# 查看远程分支
git branch -r
```

---

## 联系方式

- **扣虾**: 负责审核和管理 main 分支
- **CodeBuddy**: 负责代码开发和维护

---

## 附录

### Git 配置

**CodeBuddy 的配置**:
```bash
git config user.name "codebuddy"
git config user.email "codebuddy@ai-assistant.com"
```

**扣虾 的配置**:
```bash
git config user.name "kou-xia"
git config user.email "kou-xia@example.com"
```

---

### 仓库链接

- **GitHub 仓库**: https://github.com/topedu2008/xiaoliang-website
- **生产环境**: https://xiaoliang-website.vercel.app/
- **Pull Requests**: https://github.com/topedu2008/xiaoliang-website/pulls

---

*最后更新: 2026-03-26*
