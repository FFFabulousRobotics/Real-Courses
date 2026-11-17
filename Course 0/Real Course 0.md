# Course 0 - 环境配置

## 0 目标

这份文档结束，你应该能做到：

1. 有一套能访问国际开发资料的网络环境（俗称「梯子」）;
2. 装好 FTC 机器人编程的官方 IDE——Android Studio;
3. 拥有自己的 GitHub 账号，并找到 19726 的仓库。

这三样东西将贯穿你整个 FTC 生涯（如果你参加 FTC 的话）。

即使你不参加比赛，拥有一个梯子以及掌握 GitHub 的使用也会对你未来的学习大有帮助。

## 1 准备工作

> ![NOTE]
> 由于中国防火墙 (GFW) 的限制，本文档中提到的网站通常很难从中国大陆访问。因此，最好在你的计算机上设置 VPN 服务或代理服务器以获得最佳连接。VPN 通常覆盖整个系统，一般直接启用即可。因此，在本文档中，我们将仅解释如何为每个软件分别设置代理。

为了开始 FTC 开发，你将需要：

- 安装了以下软件的笔记本电脑（Windows、macOS 和 Linux 均可）：
  - Git
  - JDK 21+
  - Android Studio
- 一个 GitHub 帐户

我们将逐一介绍它们，但我们将首先介绍**代理设置**（Proxy），因为它在后续过程中经常会用到（具体原因在上面引用部分）。

### 1.1 代理设置

代理服务器是一种中间服务器，它接收你的网络请求并将其转发到目标服务器。想象一下，你和你的朋友之间有一堵巨大的墙，而一张小小的送货台可以神奇地穿过这堵墙。你将礼物放在桌子上，送货台会帮你将礼物送到你的朋友那里。你的朋友可以通过送货台收到你的礼物，并用这个送货台回寄一封感谢信。在这个情境中，你的朋友就是你想要访问的目标服务器，而送货台就是代理服务器。

在现实生活中，你和你的目标服务器之间可能会有多个代理服务器，但你只需要在你的电脑上设置整个服务器链的开头。

> [!NOTE]
> 友情提示
>
> - 请合理使用梯子，健康上网；
> - 不要在不明节点上登录网银、社交等重要账号。

#### 1.1.1 安装与配置

这里我介绍两款主流代理软件，Clash 和 V2ray。虽然外观完全不同，但使用起来却非常相似。两者都需要你自己寻找或购买节点才能继续操作。这是一个复杂的过程，我建议请人帮你做这件事（如果你不想自己寻找节点的话）。

此类代理软件的使用方法有两种：

**系统模式。** 将代理软件设置为系统模式将强制所有流量通过代理。优点是你不必担心忘记配置特定软件并拥有一致的网络环境，但这种方法可能会减慢某些中国网站的请求速度，并且可能会很快用完你找到或购买的令牌。

以 Windows 为例（其它系统自行百度）：对于 Clash，请右键单击托盘图标并选中“系统代理”。对于 V2rayN，请右键单击托盘图标，转到从上到下的第二个菜单，然后选择“全局”。

**为每个软件单独设置。[推荐]** 这种方法意思是由你一一决定是否为单个软件使用代理。你可以关闭特定软件的代理而不会影响其他软件，但为所有软件设置代理可能会很麻烦。

在介绍如何用这种方法设置代理之前，我先提一些基本概念。代理服务器有其**地址**（Address）和**端口**（Port）。地址，顾名思义，就像是街道名和楼栋号。它可以是一个由数字和点（英文句号）组成的字符串，如 `192.168.1.1`，或者一个普通的网址，如 `google.com`。端口就像进入某幢楼特定房间的门。不同的端口就像不同的职能部门，它们发挥着不同的作用，比如端口 `80` 通常用于 http 网站托管，而 `25565` 通常用于MC服务器。（我相信你们中肯定有人玩MC......）

回到设置代理上来，Clash 的默认端口是 `7890`，V2ray 的默认端口是 `10809`。它们都是用你自己的电脑作为代理服务器，也就是说代理服务器的地址是`127.0.0.1`（本机回环地址，Loopback address） 。所以在大部分软件的代理设置中，只需选择“HTTP”协议，然后根据软件的设置页面，单独输入地址和端口，或者是将两者连在一起填入（格式为“`地址:服务器`”，英文冒号，如`127.0.0.1:7890`或`127.0.0.1:10809`）。

各种软件有不同的代理配置方式。对于现代浏览器（基于Chromium或Firefox），[Zero Omega 插件](https://github.com/zero-peak/ZeroOmega)提供了代理配置支持。

#### 1.1.2 验证

| 检查项     | 方法                                      | 通过标准                     |
| ---------- | ----------------------------------------- | ---------------------------- |
| 浏览器     | 打开 https://www.google.com               | 能打开搜索首页               |
| 官方下载站 | 打开 https://developer.android.com/studio | 能看到 Android Studio 下载页 |
| GitHub     | 打开 https://github.com                   | 能打开且头像、图片正常       |

恭喜你！你现在已经成功设置了代理！

### 1.2 Git

Git 是一个**版本控制系统**（Version Control System, VCS），它会在你更改文件内容时将当前项目文件夹存储为类似快照的形式。你可以选择不单独下载 Git，而使用 Android Studio 的内置版本，但我建议独立安装一个。

你可以在这里下载 Git 安装程序：<https://git-scm.org>。

或者你也可以从教育网联合镜像站选择任一镜像站点下载 Windows 安装包：<https://mirrors.cernet.edu.cn/list/git-for-windows>。

如果你尝试在 Android Studio 之外使用 Git，我强烈建议你将 Git 添加到你的 PATH **环境变量**（Environment Variable）中。请自行在互联网上搜索如何操作，因为不同的系统操作可能稍有不同。

#### 1.2.1 Git 凭据（Credentials）

安装 Git 后，你需要为之后的Git提交设置用户名和邮箱。启动一个可以通过命令行访问 Git 的任何终端（Android Studio内置终端、Git Bash、Windows Terminal、bash、zsh 等），然后输入以下两行代码：（将用户名和邮箱替换为你的GitHub用户名和邮箱，保留空格）

```sh
git config --global user.name 你的GitHub用户名
git config --global user.email 你的GitHub邮箱
```

#### 1.2.2 Git 代理

设置完凭据后，最好添加一个代理。这可以用两行简单的代码完成。（将地址和端口替换为你的代理服务器的地址和端口，保留空格，使用英文标点）

```sh
git config --global http.proxy http://地址:端口
git config --global https.proxy http://地址:端口
```

#### 1.2.3 Git 签名（Signature）（可选）

如果你想要为你的提交再加一层保险（证明这次提交确实为你所著），可以选择添加签名。具体操作可参见[GitHub官方文档](https://docs.github.com/zh/authentication/managing-commit-signature-verification)。

### 1.3 JDK

JDK 是 Java 开发工具包（Java Development Kit）的缩写，目前有多个基于开源项目 OpenJDK 的**发行版**（Distribution, Distro）。建议使用 Java 的**长期支持**（Long Term Support, LTS）版本。较新的 LTS 版本包括 Java 25 和 Java 21。你可以在下面选择你喜欢的任何发行版和 LTS 版本：

| 发行版                     | 分发商  | Java 25                          | Java 21                          |
| -------------------------- | ------- | -------------------------------- | -------------------------------- |
| Oracle JDK                 | 甲骨文  | [下载站点][oracle-jdk-25]        | [下载站点][oracle-jdk-21]        |
| Microsoft Build of OpenJDK | 微软    | [下载站点][microsoft-openjdk-25] | [下载站点][microsoft-openjdk-21] |
| Adoptium Temurin           | Eclipse | [下载站点][temurin-jdk-25]       | [下载站点][temurin-jdk-21]       |
| Azul Zulu **[推荐]** | Azul    | [下载站点][zulu-25]              | [下载站点][zulu-21]              |
| Huawei Build of OpenJDK    | 华为    | [下载站点][huawei-openjdk-25]    | [下载站点][huawei-openjdk-21]    |

[oracle-jdk-25]: https://www.oracle.com/java/technologies/downloads/#java25
[oracle-jdk-21]: https://www.oracle.com/java/technologies/downloads/#java21
[microsoft-openjdk-25]: https://learn.microsoft.com/java/openjdk/download#openjdk-25
[microsoft-openjdk-21]: https://learn.microsoft.com/java/openjdk/download#openjdk-21
[temurin-jdk-25]: https://adoptium.net/temurin/releases/?package=jdk&version=25
[temurin-jdk-21]: https://adoptium.net/temurin/releases/?package=jdk&version=21
[zulu-25]: https://www.azul.com/downloads/?version=java-25-lts&package=jdk#zulu
[zulu-21]: https://www.azul.com/downloads/?version=java-21-lts&package=jdk#zulu
[huawei-openjdk-25]: https://mirrors.huaweicloud.com/openjdk/25.0.2/
[huawei-openjdk-21]: https://mirrors.huaweicloud.com/openjdk/21.0.2/

### 1.4 Android Studio

我们的机器人控制系统本质上是一个安卓设备，因此我们将使用 Android Studio（Google 的官方安卓 IDE）对我们的机器人进行编程。

1. 从这里下载 Android Studio 安装程序：[https://developer.android.com/studio](https://developer.android.com/studio)。Google 官方也提供中文站点：[https://developer.android.google.cn/studio](https://developer.android.google.cn/studio)。
2. 启动安装程序并完成设置过程。取消选择“Android Virtual Device”以压缩硬盘用量，其余可保持默认。
3. 安装完成后，启动 Android Studio。按需选择是否要共享Google信息，之后你将看到安装向导。如果你的代理服务器已关闭或者不是系统模式，你可能会看到一个错误弹窗，提示“Unable to access Android SDK add-on list”。在这种情况下，请先打开代理服务器，点击“Setup Proxy”，然后参考前文进行代理设置。如果你没有看到弹出窗口或者你已完成代理设置，请点击“Next”。
4. 在下一页中，如果你**不介意你的硬盘空间被 Android Studio 占满**，请选择“Standard”，然后单击“Next”并跳至步骤 6。否则，选择“Custom”并单击“Next”。
5. 在下一个页面中，只保留“Android SDK”和“Android API 35”的选项，选择一个**没有中文且没有空格的路径**，并且确保所选盘符（即C盘、D盘等）有比下载文件大至少**三倍**的空闲空间，完成这些之后，点击“Next”，然后再次点击“Next”。
6. 现在你可以检查所有要安装的组件。确认无误后，请单击“Next”显示许可证。同意所有许可证，然后单击“Finish”。
7. 等待下载完成，点击“Finish”。接下来，你将看到欢迎屏幕。点击方形“Open”按钮下方的“More Actions”，然后点击“SDK Manager”（SDK 管理器）。
8. 当 SDK 管理器出现时，取消选中“Hide Obsolete Packages”并选中“Show Package Details”。然后按照下面的列表勾选三个选项卡（“SDK Platforms”、“SDK Tools”、“SDK Update Sites”）中的项目，并取消勾选其他所有项目：

   **SDK Platforms**:

   - “Android SDK Platform 30”

   **SDK Tools**:

   - “Android SDK Build Tools 37” 下的 “30.0.3”
   - “NDK (Side by Side)” 下的 “21.3.6528147”
   - “Android SDK Platform-Tools”
   - “Android SDK Tools (Obsolete)”
9. 点击“OK”，再次点击“OK”，等待下载完成，点击“Finish”。现在你已经成功设置了 Android Studio ，可以在 FTC 中进行编程工作了。

### 1.5 GitHub 帐户

GitHub 是一个成熟的代码托管平台，FTC 的官方**软件开发工具包**（Software Development Kit, SDK）就存放在 GitHub 上。因此，为了方便起见，我们也选择将代码托管在 GitHub 上。我们的代码存储在我们团队自己的“组织”（Organization，一组开发人员共享的帐户）中，你需要创建自己的 GitHub 帐户才能加入该组织。

注册 GitHub 账户需要使用浏览器。由于 GitHub 的服务器位于海外，直接连接速度会非常慢。因此，你可以使用上文提到的扩展程序为浏览器设置代理。

## 2 在你的第一堂课之前

### 2.1 加入 GitHub 组织

1. 将你 GitHub 账户绑定的邮箱地址发送给编程组管理员。
2. 等待组织邀请发送到你的收件箱，点击邮件中的链接加入组织[@FFFabulousRobotics](https://github.com/FFFabulousRobotics)。

### 2.2 克隆代码项目

1. 启动你的Android Studio。
2. 点击“Get from VCS”。
3. 如果你还没有安装 Git，可以点击右侧的“Download and Install”进行安装。记得为 Git 设置代理。（之前讨论过，请参阅[1.2.2 Git 代理](#122-git-代理)）
4. 点击左侧的“GitHub”。
5. 点击“Log In via GitHub...”
6. 在弹出的浏览器中点击“Authorize in GitHub”。
7. 输入你的账号密码。
8. 等待身份验证完成并关闭浏览器窗口。
9. 现在在列表中找到“FFFabulousRobotics/FTC-2026-2027”并选择要存储文件的目录。
10. 点击“Clone”。
11. 克隆完成后，项目将自动打开，你可以继续下一部分。如果系统提示你信任该项目，请单击“Trust Project”。

### 2.3 同步代码项目

当你打开 FTC 项目时，Gradle 同步实际上已经开始。由于我们已修改了原始 FTC **依赖库**（Dependency），使其优先使用阿里云镜像，因此你**不应接受 Android Studio 给 Gradle 加上代理的默认行为**，这会减慢你的同步过程。

完成所有这些后，你就可以开始一段迷人的编码之旅了！
