# 编程组新手教程 Course 0:开发环境准备与 GitHub 入门

> 面向对象:零基础新社员 · 课程编号:Real Course 0 · 维护:FFFabulous 编程组

---

## 0. 这门课你要做什么

1. 有一套能访问国际开发资料的网络环境(俗称「梯子」);
2. 装好 FTC 机器人编程的官方 IDE——Android Studio;
3. 拥有自己的 GitHub 账号,并找到 19726 的仓库。

这三样东西将贯穿你整个 FTC 生涯(如果你参加 FTC 的话),即使你不参加比赛,拥有一个梯子、掌握 GitHub 的使用也会对你未来的学习大有帮助。

---

## 1. 准备网络代理环境(已经有梯子的可以跳过)

### 1.1 友情提示

1. 请合理使用梯子,健康上网;
2. 不要在不明节点上登录网银、社交等重要账号。

### 安装与验证

1. 安装代理客户端:28 届成员大多使用 SakuraCat 或 ikuuu,可以自行选择:
   - [ikuuu(登录页)](https://ikuuu.top/auth/login)
   - [SakuraCat(登录页)](https://sakura-cat3.com/login)
2. 选择一个可用的节点,并开启「系统代理」模式;
3. 建议记住代理的地址和端口号;也可以单独为每个软件设置代理,详情可看更古早的 realcourse-0,此处不具体展开。
4. 验证:

| 检查项 | 方法 | 通过标准 |
|---|---|---|
| 浏览器 | 打开 https://www.google.com | 能打开搜索首页 |
| 官方下载站 | 打开 https://developer.android.com/studio | 能看到 Android Studio 下载页 |
| GitHub | 打开 https://github.com | 能打开且头像、图片正常 |

---

## 2. 安装 Android Studio

### 2.1 下载

1. 打开官网 [developer.android.com/studio](https://developer.android.com/studio)(确保代理开启);
2. 下载 Windows 64-bit 安装包(约 1GB 以上);
3. 下载太慢时先检查代理是否生效,不要用来历不明的「绿色版」。

### 2.2 安装

1. 双击安装包,一路 Next(组件页保持默认,勾选 Android Virtual Device 可选);
2. 安装路径不要带中文和空格(默认路径应该是 `C:\Program Files\Android\Android Studio`);
3. 完成后启动,首次运行向导:类型选 Standard;
4. 向导会下载 Android SDK(默认装到 `C:\Users\你的用户名\AppData\Local\Android\Sdk`),保持默认路径,这一步要下 2-3GB,耐心等;
5. 若 SDK 下载失败:九成是代理没开或没走系统代理,修好代理后点 Retry。

### 2.3 验证安装

| 检查项 | 方法 | 通过标准 |
|---|---|---|
| IDE 能启动 | 打开 Android Studio | 出现欢迎窗口,无报错弹窗 |
| SDK 就位 | 欢迎页 → More Actions → SDK Manager | 能看到 Android SDK Platform 已安装条目,记下版本号 |
| JDK 就位 | SDK Manager 相关页签或欢迎页设置里搜 Gradle JDK | 能看到内置的 JetBrains Runtime(17 或 21) |

> 💡 现在不需要新建任何项目。FTC 的工程是现成的(基于官方 FtcRobotController 模板),Course 2 直接「打开工程」而不是「新建工程」。

---

## 3. 熟悉 GitHub

### 3.1 五分钟搞懂概念

| 概念 | 一句话理解 |
|---|---|
| Git | 版本管理工具,给代码拍「存档点」,随时回滚 |
| GitHub | 放 Git 存档的全球最大网站,也是开源世界的大本营 |
| Repository(仓库) | 一个项目的文件夹,含全部代码和历史 |
| Commit | 一次存档 |
| Star | 「收藏」,相当于点赞 |
| Fork | 把别人的仓库复制一份到自己账号下 |
| Pull Request(PR) | 请求把自己改的内容合并回原仓库 |

### 3.2 注册账号并安装 Git

1. 打开 [github.com/signup](https://github.com/signup),用邮箱注册,用户名建议「好认、专业」(它会跟着你很久);
2. 安装 Git:打开 [git-scm.com/download/win](https://git-scm.com/download/win),下载安装,一路默认;
3. 验证:开始菜单打开 Git Bash,输入 `git --version`,能打印版本号即成功;
4. 配置身份(以后每次提交都会署名),执行下面两行命令:

```bash
git config --global user.name "你的名字"
git config --global user.email "你的GitHub邮箱"
```

### 3.3 第一次 clone

在 Git Bash 里挑一个目录,执行下面这行命令。成功后你会得到一个 Real-Courses 文件夹——先看一眼结构,任务卡里会考。

```bash
git clone https://github.com/FFFabulousRobotics/Real-Courses.git
```

### 3.4 🎯 任务卡:找到战队的仓库

任务:找到 FFFabulous 机器人社的官方 GitHub 账号,并完成以下侦察:

1. 给官方账号点一个 Star;
2. 浏览仓库项目,进入最新赛季仓库,浏览一次文件列表,感受一下赛季代码长什么样。

---

## 4. 自查清单

- [ ] 代理客户端装好,Google / Android 开发者官网 / GitHub 三关全过
- [ ] Android Studio 安装完成,SDK 下载成功
- [ ] 留意 Android Studio / SDK Platform / Gradle JDK 三个版本号
- [ ] GitHub 账号注册完成,Git 安装完成,`git --version` 能跑
- [ ] 任务卡完成

---

## 5. 下一步预告与资源

| 下一课 | 内容 | 主要教材 |
|---|---|---|
| Course 1 | Java 语言基础(变量、方法、类) | 《Learn Java for FTC》 |
| Course 2 | FTC SDK 环境:打开工程 → 构建部署到 Control Hub | 社内 Real-Courses + ftckb 中文 SDK 教程 |
| Course 3 | OpMode 编程:TeleOp 与 Autonomous | Real-Courses + 官方 wiki + 赛季代码阅读 |

通识补充(不急,慢慢看):[软件 - Game Manual 0](https://gm0.org/zh-cn/latest/docs/software/index.html)——FTC 设计圣经;英文好且想看视频的:[Brogan M. Pratt 的 FTC Fridays 系列](https://www.youtube.com/@BroganMPratt)(建议选择无字幕锻炼英语听力)。

> 如遇问题可在编程组群里提问;提问时最好有报错截图和问题描述。
