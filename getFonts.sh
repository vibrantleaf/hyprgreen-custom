dnf install -y \
 wget \
 fontconfig \
 cabextract \
 xorg-x11-font-utils

dnf install -y \
 cascadia-fonts-all \
 fira-code-fonts \
 jetbrains-mono-fonts \
 google-android-emoji-fonts \
 google-go-\* \
 google-noto-\* \
 adobe-source-\*

rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

mkdir /usr/local/share/fonts/ComicMonoNF
wget -O /usr/local/share/fonts/ComicMonoNF/ComicMonoBold-NF.ttf https://github.com/vibrantleaf/comic-mono-font-NF/releases/download/2022-12-3/Comic.Mono.Bold.Nerd.Font.Complete.ttf
wget -O /usr/local/share/fonts/ComicMonoNF/ComicMono-NF.ttf https://github.com/vibrantleaf/comic-mono-font-NF/releases/download/2022-12-3/Comic.Mono.Nerd.Font.Complete.ttf
