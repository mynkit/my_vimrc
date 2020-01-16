# Setting

## iTerm2のinstall

```sh
brew install cask
brew cask install iterm2
```

## iTerm2の設定のために必要なファイルをダウンロード

### color(iceberg)をダウンロード

[iceberg.itemcolors](https://github.com/Arc0re/Iceberg-iTerm2/blob/master/iceberg.itermcolors)の中身をコピぺして適当なところに置いておく．(miyanoは`~/Documents/iTermSetting`の下に置いてある)

### RictyDiminishedのinstall

[RictyDiminishedのgithub](https://github.com/edihbrandon/RictyDiminished)からDownload Zipして解凍

以下の4ファイルを開くとフォントがinstallできる

```
RictyDiminished-Bold.ttf
RictyDiminished-BoldOblique.ttf
RictyDiminished-Oblique.ttf
RictyDiminished-Regular.ttf
```

## iTerm2のスタイルの設定

1. iTerm2を立ち上げる

2. メニューバー -> iTerm2 -> Preferences

3. Preferences画面が立ち上がったらProfilesタブを開く

4. 左の'Profile Name'のとこの下にある'+'を押す．新たなProfile名は'CoolCustom'とかにする．ついでに下の'Other Actions'から'Set as Default'を選んでデフォルトにする

5. 右のColorsタブを開いて, 'Color Presets'からImportを選択し, 先ほどダウンロードしたiceberg.itermcolorsを選ぶ．

6. 再度'Color Presets'から**iceberg**を選択する

7. 上のTextタブに移動し, Fontから'Ricty Diminished'を選択．文字の大きさも12から21とかにしとく

8. Generalタブを開いて，Working DirectoryをAdvanced Configulation -> Working Directory for New TabsとWorking Directory for New Split PanesをReuse previouse sessions's directoryに変更する(これによって，ctrl + Dとかctrl + shift + Dしたときのディレクトリが同じになってくれる)

9. Keysタブを開いて，reate a Dedicated Hotkey Window...を選択．Double-Tap Key をControlにして設定．(ControlのダブルタップでHotkey Windowが開くようになる)

10. Keysタブを開いて，Key Bindingsから「+」を選択し，Actionから「Send Escape Sequence」を選択．Esc+のところに「f」,Keyboad Shortcutに「option+f」を入力してOK.再度同じようにSend Escape Sequence」を選択し，Esc+のところに「b」,Keyboad Shortcutに「option+b」を入力してOK.(これでoption+fで前の単語へ移動，option+bで後の単語へ移動ができる)

## いい感じに色付けしてもらえるようにする


`~/.bash_profile`に以下を追記

```
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
```

`~/.bashrc`に以下を追記

```
# エイリアスの設定
# ls（カラー表示）
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'

# gitのbranch名を常に表示(以下のpathにファイルがある場合のみ)
# mac以外の環境についてのbranch名表示方法については https://qiita.com/mynkit/items/57b8333d76297dd73fa9 を参照
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# プロンプトの設定
# PS1='\[\e[34m\]\w \[\e[37m\]\$\[\e[0m\] ' #もし上のpathがなければこっちを使う
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ ' #EC2などのサーバ上ではこちらを使う(サーバ名が表示される)
PS1='\[\e[34m\]\w\[\e[37m\]$(__git_ps1)\n\[\033[00m\]$ '
