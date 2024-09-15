# Course 0

> Revision 1.2: Changed some sentences with logical faults. Added Chinese translation.
>
> Revision 1.1: Updated “Git Credentials” part.

## Prerequisites

> **Attention**: Websites mentioned in this document are usually hard to access from mainland China due to the restrictions of the Great Firewall (GFW). So it’s optimal to have a VPN service or proxy server set up on your computer to get the best connectivity. VPN is usually system-wide and doesn’t require much attention once it’s on. So here in this document we will only explain how to set up proxy in each tool.

> For FTC season 2024-2025 “INTO THE DEEP”, the `compileSdkVersion` is 29, and the `ndkVersion` is 21.3.6528147.
>
> The latest Build-Tools major version is 35 and the latest Build-Tools version compatible with the SDK is 29.0.3.
>
> TODO: update these numbers here and in the document according to FTC SDK and Google.

You will need:

-  A laptop (Windows, macOS, and Linux are all accepted) with these software installed:
  - Git
  - JDK 17+
  - Android Studio
- A GitHub account

We will go through them one by one, but we will talk about proxy settings first since it’s commonly used in the follow-up process.

### Proxy setting

A proxy server is a intermediate server that takes your web request and forward it to the destination server. Imagine a giant wall separating you and your friend, and there’s a small delivery table that can magically phase through the wall. You put your gift on the table and the delivery table sends it to your friend for you. Your friend can now receive your gift and send you a thank you note, also through the delivery table. In this situation, your friend is the destination server that you want to reach, and the delivery table is the proxy server.

In real life, there can be more than one proxy server between your and your destination. But as long as you set up the beginning of the server chain, you can easily go through all the process.

Here I will introduce two main proxy software, Clash and V2ray. Despite their completely different look, they are pretty similar in usage. Both of them require you to find or purchase your own nodes before proceeding. It’s a complicated process, and I recommend asking someone that can do it for you (if you don’t want to find the nodes yourself).

There are two ways to use such proxy software:

1. **System-wide.** Putting proxy software into system-wide mode will force all traffic go through the proxy. The advantages are that you don’t need to worry about forgetting to configure a specific software and have a consistent network environment, but this method could slow down the request of some Chinese websites and would probably use up the token you’ve found or purchased pretty fast.

   To use the system-wide setting of your software on Windows for Clash, right click on the tray icon and check “System Proxy”. For V2rayN, right click on the tray icon, go to the second menu from top down, and select “Global”.

2. **Per-software. [recommended]** This method means deciding whether or not to use proxy for each software. You can turn off proxy for a specific software without affecting others, but is could be a hassle to remember to set them all up.

   Before explaining how to set up proxy for each software, I shall mention some basic concepts. A proxy server has its **address** and **port**. An address is like to find the server. It can be a dot separated string like `192.168.1.1` or normal websites like `google.com`. A port is where to enter the server. Different ports are like different departments and they serve different roles, like port `80` is usually used for http web hosting and `25565` for Minecraft servers. (I’m sure that some of you play Minecraft...)

   Back to proxy, Clash has a default port of `7890`, and V2ray has a default port of `10809`, and they both use your own computer as a proxy server, which has a loopback address of `127.0.0.1`. So in the proxy setting of most software, you need to select “HTTP” protocol, then either put in the address and port separately or bind them together using the format `127.0.0.1:7890` or `127.0.0.1:10809`, depending on the settings page of the software.

And voila! You now have successfully set up a proxy!

### Git

Git is a Version Control System (VCS), which stores the current project folder as snapshots as you change the file contents. Learn more on Git in the book in the laboratory.

You can choose not to download Git separately and use Android Studio’s built-in one. But I recommend a standalone install.

You can download Git installer here: https://git-scm.org (Chinese mirror, only Windows: https://mirrors.tuna.tsinghua.edu.cn/github-release/git-for-windows/git/LatestRelease/)

If you’re trying to use Git outside of Android Studio, I strongly recommend you add Git to your PATH environment variable. Please search for how to do it on the Internet by yourself as different system may have different conditions.

#### Git Credentials

Once Git is installed, you will need to set up a username and email for your commits. Launch whichever terminal that can access Git via command line (Git Bash, Windows Terminal, bash, zsh, ...), and put in these two lines of code: (replace `your_username` and `your_email` with your username and email)

```sh
git config --global user.name your_username
git config --global user.email your_email
```

#### Git Proxy

Once you have set up the credentials, you’d better add a proxy. This can be done through two simple lines of code. (replace `address` and `port` with your proxy server’s address and port)

```sh
git config --global http.proxy http://address:port
git config --global https.proxy http://address:port
```

### JDK

JDK stands for Java Development Kit, which currently has multiple distributions based on the open-source project OpenJDK. Long Term Support (LTS) versions of JDK are recommended (modern versions include JDK 17 and JDK 21). You can choose whichever distribution and LTS version you like below:

| Distribution                | Distributor | JDK 21                                                       | JDK 17                                                       |
| --------------------------- | ----------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Oracle JDK                  | Oracle      | https://www.oracle.com/hk/java/technologies/downloads/#java21 | https://www.oracle.com/java/technologies/downloads/#java17   |
| Microsoft Build of OpenJDK  | Microsoft   | https://learn.microsoft.com/java/openjdk/download#openjdk-21 | https://learn.microsoft.com/java/openjdk/download#openjdk-17 |
| Eclipse Temurin             | Eclipse     | https://adoptium.net/temurin/releases/?package=jdk&version=21 | https://adoptium.net/temurin/releases/?package=jdk&version=17 |
| Amazon Corretto             | Amazon      | https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/downloads-list.html | https://docs.aws.amazon.com/corretto/latest/corretto-17-ug/downloads-list.html |
| Azul Zulu **[recommended]** | Azul        | https://www.azul.com/downloads/?version=java-21-lts&package=jdk#zulu | https://www.azul.com/downloads/?version=java-17-lts&package=jdk#zulu |

Below are distributions from Chinese companies or mirrors of previous distributions for downloading JDK in mainland China.

| Distribution                                                 | Distributor | JDK 21                                               | JDK 17                                               |
| ------------------------------------------------------------ | ----------- | ---------------------------------------------------- | ---------------------------------------------------- |
| Dragonwell                                                   | Alibaba     | https://dragonwell-jdk.io/#/index                    | Not available                                        |
| Eclipse Temurin (mirror from Tsinghua Tuna) **[recommended]** | Eclipse     | https://mirror.tuna.tsinghua.edu.cn/Adoptium/21/jdk/ | https://mirror.tuna.tsinghua.edu.cn/Adoptium/17/jdk/ |

### Android Studio

Our robot control system is essentially an android device, so we will use Google’s official Android IDE, Android Studio, for programming our robot.

1. Download the Android Studio installer from here: https://developer.android.com/studio (Chinese mirror site: https://developer.android.google.cn/studio)

2. Start the installer and go through the setup process. Unselect “Android Virtual Device” for minimal storage usage.

3. When install has finished, launch your Android Studio. After choosing if you want to share your information with Google, you’ll be greeted with the Setup Wizard. If your proxy server is off or isn’t system-wide, you’ll probably see an error popup saying “Unable to access Android SDK add-on list”. In that case, turn on your proxy server first, click “Setup Proxy”, and refer to the previous section for proxy setting. If you don’t see the popup or you have finished proxy setting, click “Next”.

4. On the next page, select “Standard” if you **don’t care your disk space being eaten up by Android Studio**, click “Next” and jump to step 6. Otherwise, select “Custom” and click “Next”.

5. On the next page, leave only “Android SDK” and “Android API 35” selected. Choose a path with **no Chinese characters** and sufficient for at least **three times** the size of the downloaded files. When all these are finished, click “Next”, and click “Next” again.

6. Now you can check all the components you wish to install. If there’s no mistake, click “Next” to show the licenses. Agree all of them and click “Finish”.

7. Wait for the download to complete, and click “Finish”. Next you will be greeted with the Welcome screen. Click “More Actions” under the square “Open” button, and click “SDK Manager”.

8. When the SDK Manager shows up, uncheck “Hide Obsolete Packages” and check “Show Package Details”. Then follow this list for things to check on the three tabs (“SDK Platforms”, “SDK Tools”, “SDK Update Sites”), and leave everything else unchecked:

   **SDK Platforms**:

   - “Android SDK Platform 29”

   **SDK Tools**:

   - “29.0.3” under “Android SDK Build Tools 35”
   - “21.3.6528147” under “NDK (Side by Side)”
   - “Android SDK Platform-Tools”
   - “Android SDK Tools (Obsolete)”

9. Click “OK”, “OK” again, wait for the download to finish, and click “Finish”. Now you have successfully set up your Android Studio for coding in FTC.

### GitHub account

GitHub is a well-established code hosting platform, where FTC stores their official SDK. As a result, we choose to host our code on GitHub as well for convenience. Our code is stored in our team’s own “organization” (an account shared by a group of developers), and you need to create your own GitHub account to join the organization.

For signing up a GitHub account, you need to use a browser. Since GitHub’s servers sit overseas, it will be very slow to directly connect to them. So you can use the extension from this link to set up proxy for your browser: https://proxy-switchyomega.com/

## Before your first lesson

### Join the GitHub organization

1. Send the email address linked to your GitHub account to the administrator of coding team.
2. Wait for the organization invitation to be sent to your email inbox and click on the link in the email to join the organization [@FFFabulousRobotics](https://github.com/FFFabulousRobotics).

### Clone the code project

1. Launch your Android Studio.
2. Click on “Get from VCS”.
3. If you haven’t installed Git, you can click on “Download and Install” on the right to install it. Remember to set up proxy for git. (previously discussed, see [Prerequisites > Git > Git Proxy](#Git-Proxy))
4. Click “GitHub” on the left.
5. Click “Log In via GitHub...”
6. Click “Authorize in GitHub” in the browser popped up.
7. Enter your credentials.
8. Wait for the authentication process to complete and close the browser window.
9. Now find “FFFabulousRobotics/FTC-2024-2025” in the list and choose the directory where you want to store the files.
10. Click “Clone”.
11. Once the clone has finished, the project will automatically open, and you can proceed to the next section. If you are prompted to trust the project, click on “Trust Project”.

### Sync the code project

When you open the FTC project, the Gradle sync has actually already started. Since we have modified the original FTC dependency repositories to prioritize the Aliyun mirror of maven repositories over the original one, you **shouldn’t accept Android Studio’s default behavior of putting Gradle behind your proxy**, which will slow down your sync process.

### Find a Java crash course

A Java crash course is enough for all our coding needs, even if you don’t know anything of programming. I recommend https://www.runoob.com because it’s in Chinese, but it’s pretty dull so you may get uninterested. If you are willing to accept some language challenges, I recommend https://sololearn.com, which is in English. This site has a more engaging course, and it feels easier to learn than runoob.com.



With all these set, you are ready to start a fascinating coding journey!