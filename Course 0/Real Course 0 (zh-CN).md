# Course 0

> 修订 1.2：更改了一些有逻辑错误的语句，增加中文翻译（机翻+校对）。
>
> 修订 1.1：更新“Git Credentials”部分。

## 准备工作

> **注意**：由于中国防火墙 (GFW) 的限制，本文档中提到的网站通常很难从中国大陆访问。因此，最好在你的计算机上设置 VPN 服务或代理服务器以获得最佳连接。VPN 通常覆盖整个系统，启用后就不太需要关心了。因此，在本文档中，我们将仅解释如何为每个软件分别设置代理。
>
> 就 FTC 2024-2025 赛季 “INTO THE DEEP” 而言，`compileSdkVersion`为30，`ndkVersion`为21.3.6528147，最低版本 `minSdkVersion` 为24。
>
> `Build-Tools`最新大版本为35，与SDK兼容的最新`Build-Tools`版本为35.0.2。
>
> TODO：根据 FTC SDK 和 Google 更新情况在此处和文档中更新这些数字。

你将需要：

- 安装了以下软件的笔记本电脑（Windows、macOS 和 Linux 均可）：
  - Git
  - JDK 17+
  - Android Studio
- 一个 GitHub 帐户

我们将逐一介绍它们，但我们将首先介绍代理设置，因为它在后续过程中经常会用到（具体原因在上面引用部分）。

### 代理设置

代理服务器是一种中间服务器，它接收你的 Web 请求并将其转发到目标服务器。想象一下，你和你的朋友之间有一堵巨大的墙，而一张小小的送货台可以神奇地穿过这堵墙。你将礼物放在桌子上，送货台会帮你将礼物送到你的朋友那里。你的朋友可以通过送货台收到你的礼物，并用这个送货台回寄一封感谢信。在这个情境中，你的朋友就是你想要到达的目标服务器，而送货台就是代理服务器。

在现实生活中，你和你的目标服务器之间可能会有多个代理服务器，但你只需要在你的电脑上设置整个服务器链的开头。

这里我介绍两款主流代理软件，Clash 和 V2ray。虽然外观完全不同，但使用起来却非常相似。两者都需要你自己寻找或购买节点才能继续操作。这是一个复杂的过程，我建议请人帮你做这件事（如果你不想自己寻找节点的话）。

此类代理软件的使用方法有两种：

1. **系统模式。**将代理软件设置为系统模式将强制所有流量通过代理。优点是你不必担心忘记配置特定软件并拥有一致的网络环境，但这种方法可能会减慢某些中国网站的请求速度，并且可能会很快用完你找到或购买的令牌。

   以 Windows 为例（其它系统自行百度）：对于 Clash，请右键单击托盘图标并选中“系统代理”。对于 V2rayN，请右键单击托盘图标，转到从上到下的第二个菜单，然后选择“全局”。

2. **为每个软件单独设置。[推荐]** 这种方法意思是由你一一决定是否为单个软件使用代理。你可以关闭特定软件的代理而不会影响其他软件，但为所有软件设置代理可能会很麻烦。

   在介绍如何用这种方法设置代理之前，我先提一些基本概念。代理服务器有其**地址**和**端口**。地址，顾名思义，就像是街道名和楼栋号。它可以是一个由数字和点（英文句号）组成的字符串，如`192.168.1.1`，或者一个普通的网址，如`google.com`。端口就像进入某幢楼特定房间的门。不同的端口就像不同的职能部门，它们发挥着不同的作用，比如端口`80`通常用于 http 网站托管，而`25565`通常用于MC服务器。（我相信你们中肯定有人玩MC……）

   回到设置代理上来，Clash 的默认端口是`7890` ，V2ray 的默认端口是`10809` 。它们都是用你自己的电脑作为代理服务器，也就是说代理服务器的地址是`127.0.0.1`（本机回环地址） 。所以在大部分软件的代理设置中，只需选择“HTTP”协议，然后根据软件的设置页面，单独输入地址和端口，或者是将两者连在一起填入（格式为“`地址:服务器`”，英文冒号，如`127.0.0.1:7890`或`127.0.0.1:10809`）。

恭喜你！你现在已经成功设置了代理！

### Git

Git 是一个版本控制系统 (VCS)，它会在你更改文件内容时将当前项目文件夹存储为类似快照的形式。你可以在实验室里的一本书中了解有关 Git 的更多信息。

你可以选择不单独下载 Git，而使用 Android Studio 的内置版本，但我建议独立安装一个。

你可以在这里下载 Git 安装程序： [https://git-scm.org ](https://git-scm.org)（中文镜像下载，仅限 Windows： [https://mirrors.tuna.tsinghua.edu.cn/github-release/git-for-windows/git/LatestRelease/ ](https://mirrors.tuna.tsinghua.edu.cn/github-release/git-for-windows/git/LatestRelease/)）

如果你尝试在 Android Studio 之外使用 Git，我强烈建议你将 Git 添加到你的 PATH 环境变量中。请自行在互联网上搜索如何操作，因为不同的系统可能有稍有不同。

#### Git 凭据

安装 Git 后，你需要为之后的Git提交设置用户名和邮箱。启动一个可以通过命令行访问 Git 的任何终端（Android Studio内置终端、Git Bash、Windows Terminal、bash、zsh 等），然后输入以下两行代码：（将用户名和邮箱替换为你的用户名和邮箱，保留空格）

```sh
git config --global user.name 你的用户名
git config --global user.email 你的邮箱
```

#### Git 代理

设置完凭据后，最好添加一个代理。这可以用两行简单的代码完成。（将地址和端口替换为你的代理服务器的地址和端口，保留空格，使用英文标点）

```sh
git config --global http.proxy http://地址:端口
git config --global https.proxy http://地址:端口
```


### JDK

JDK 是 Java 开发工具包（Java Development Kit）的缩写，目前有多个基于开源项目 OpenJDK 的发行版。建议使用 JDK 的长期支持 (LTS) 版本（较新的版本包括 JDK 17 和 JDK 21）。你可以在下面选择你喜欢的任何发行版和 LTS 版本：

| 分发版本                   | 分销商  | JDK 21                                                       | JDK 17                                                       |
| -------------------------- | ------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Oracle JDK                 | 甲骨文  | https://www.oracle.com/hk/java/technologies/downloads/#java21 | https://www.oracle.com/java/technologies/downloads/#java17   |
| Microsoft Build of OpenJDK | 微软    | https://learn.microsoft.com/java/openjdk/download#openjdk-21 | https://learn.microsoft.com/java/openjdk/download#openjdk-17 |
| Eclipse Temurin            | Eclipse | https://adoptium.net/temurin/releases/?package=jdk&version=21 | https://adoptium.net/temurin/releases/?package=jdk&version=17 |
| Amazon Corretto            | 亚马逊  | https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/downloads-list.html | https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/downloads-list.html |
| Azul Zulu **[推荐]**       | Azul    | https://www.azul.com/downloads/?version=java-21-lts&package=jdk#zulu | https://www.azul.com/downloads/?version=java-17-lts&package=jdk#zulu |

以下是中国公司的发行版或以前发行版的镜像，供在中国大陆下载 JDK。

| 分配                                    | 分销商   | JDK 21                                               | JDK 17                                               |
| --------------------------------------- | -------- | ---------------------------------------------------- | ---------------------------------------------------- |
| 龙井                                    | 阿里巴巴 | https://dragonwell-jdk.io/#/index                    | 无                                                   |
| Eclipse Temurin（清华镜像）**【推荐】** | Eclipse  | https://mirror.tuna.tsinghua.edu.cn/Adoptium/21/jdk/ | https://mirror.tuna.tsinghua.edu.cn/Adoptium/17/jdk/ |

### Android Studio

我们的机器人控制系统本质上是一个安卓设备，因此我们将使用 Android Studio（Google 的官方安卓 IDE）对我们的机器人进行编程。

1. 从这里下载 Android Studio 安装程序： [https://developer.android.com/studio ](https://developer.android.com/studio)（中文镜像站点： [https://developer.android.google.cn/studio ](https://developer.android.google.cn/studio)）
2. 启动安装程序并完成设置过程。取消选择“Android Virtual Device”以最小化存储使用量。
3. 安装完成后，启动 Android Studio。自己按需选择是否要共享Google信息，之后你将看到安装向导。如果你的代理服务器已关闭或者不是系统模式，你可能会看到一个错误弹窗，提示“Unable to access Android SDK add-on list”。在这种情况下，请先打开代理服务器，点击“Setup Proxy”，然后参考前文进行代理设置。如果你没有看到弹出窗口或者你已完成代理设置，请点击“Next”。
4. 在下一页中，如果你**不介意你的磁盘空间被 Android Studio 占满**，请选择“Standard”，然后单击“Next”并跳至步骤 6。否则，选择“Custom”并单击“Next”。
5. 在下一个页面中，只保留“Android SDK”和“Android API 35”的选项，选择一个**没有中文的路径**，并且确保有比下载文件大至少**三倍**的空闲空间，完成这些之后，点击“Next”，然后再次点击“Next”。
6. 现在你可以检查所有要安装的组件。确认无误后，请单击“Next”显示许可证。同意所有许可证，然后单击“Finish”。
7. 等待下载完成，点击“Finish”。接下来，你将看到欢迎屏幕。点击方形“Open”按钮下方的“More Actions”，然后点击“SDK Manager”（SDK 管理器）。
8. 当 SDK 管理器出现时，取消选中“Hide Obsolete Packages”并选中“Show Package Details”。然后按照此列表勾选三个选项卡（“SDK Platforms”、“SDK Tools”、“SDK Update Sites”）中的项目，并取消勾选其他所有项目：

   **SDK Platforms**:

   - “Android SDK Platform 29”

   **SDK Tools**:

   - “Android SDK Build Tools 35” 下的 “29.0.3”
   - “NDK (Side by Side)” 下的 “21.3.6528147”
   - “Android SDK Platform-Tools”
   - “Android SDK Tools (Obsolete)”

9. 点击“OK”，再次点击“OK”，等待下载完成，点击“Finish”。现在你已经成功设置了 Android Studio ，可以在 FTC 中进行编程工作了。


### GitHub 帐户

GitHub 是一个成熟的代码托管平台，FTC 的官方 SDK 就存放在 GitHub 上。因此，为了方便起见，我们也选择将代码托管在 GitHub 上。我们的代码存储在我们团队自己的“组织”（一组开发人员共享的帐户）中，你需要创建自己的 GitHub 帐户才能加入该组织。

注册 GitHub 账户需要使用浏览器。由于 GitHub 的服务器位于海外，直接连接速度会非常慢。因此，你可以使用此链接中的扩展程序为浏览器设置代理： https://proxy-switchyomega.com/

## 在你的第一堂课之前

### 加入 GitHub 组织

1. 将你 GitHub 账户绑定的邮箱地址发送给编程组管理员。
2. 等待组织邀请发送到你的收件箱，点击邮件中的链接加入组织[@FFFabulousRobotics](https://github.com/FFFabulousRobotics)。

### 克隆代码项目

1. 启动你的Android Studio。
2. 点击“Get from VCS”。
3. 如果你还没有安装 Git，可以点击右侧的“Download and Install”进行安装。记得为 Git 设置代理。（之前讨论过，请参阅[先决条件 > Git > Git 代理](#git-proxy)）
4. 点击左侧的“GitHub”。
5. 点击“Log In via GitHub...”
6. 在弹出的浏览器中点击“Authorize in GitHub”。
7. 输入你的账号密码。
8. 等待身份验证完成并关闭浏览器窗口。
9. 现在在列表中找到“FFFabulousRobotics/FTC-2024-2025”并选择要存储文件的目录。
10. 点击“Clone”。
11. 克隆完成后，项目将自动打开，你可以继续下一部分。如果系统提示你信任该项目，请单击“Trust Project”。

### 同步代码项目

当你打开 FTC 项目时，Gradle 同步实际上已经开始。由于我们已修改了原始 FTC 依赖库，使其优先使用 maven 库的阿里云镜像，因此你**不应接受 Android Studio 给 Gradle 加上代理的默认行为**，这会减慢你的同步过程。

### 找个 Java 速成课程

即使你对编程一无所知，Java 速成课程也足以满足我们所有的编程需求。我推荐[https://www.runoob.com](https://www.runoob.com)，因为它是用中文写的，但它相当枯燥，所以你可能会中途失去兴趣。如果你愿意跨越语言壁垒，我推荐[https://sololearn.com ](https://sololearn.com)，它是用英文写的。这个网站的课程更有吸引力，感觉比 runoob.com 更容易学。




完成所有这些后，你就可以开始一段迷人的编码之旅了！