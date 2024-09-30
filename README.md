# zsh

- 安装[ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- 替换`.zshrc` 文件

# tmux

1) 安装 [oh-my-tmux](https://github.com/gpakosz/.tmux) 
2) 安装插件管理器 [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)，并执行安装插件命令
4) 覆盖 `.tmux.conf`和`.tmux.conf.local`两文件。
6) 安装主题字体 [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) 并设置`item2`这个字体
7) 设置`item2`配色方案为`Firewatch.itermcolors`文件

**快捷键：** 

> 注意：所有快捷键都是按下前缀快捷键之后生效

| 键位   | 描述                                        |
|--------|---------------------------------------------|
| C-o    | 前缀                                        |
| e      | 打开配置文件                                |
| r      | 更新配置                                    |
| u      | 更新插件                                    |
| s      | 切换 session                                |
| w      | 切换 window                                 |
| c      | 打开新 window                               |
| x      | 关闭window / pane                           |
| .      | 移动 window 位置                            |
| ,      | 重命名 window                               |
| C-h(p) | 向前切换 window                             |
| C-l(n) | 向后切换 window                             |
| \|     | 水平分割 pane                               |
| \-     | 垂直分割 pane                               |
| H      | 向左移动 pane                               |
| L      | 向右移动 pane                               |
| J      | 向下移动 pane                               |
| K      | 向上移动 pane                               |
| q      | 显示当前窗口 pane 编号                      |
| t      | 显示当前时间                                |
| Enter  | 复制模式 (vi 快捷键)                        |
| :      | 命令模式 (如同步输入 set synchronize-panes) |
| g      | 悬浮窗口                                    |

### iterm2 配置

<img width="954" alt="image" src="https://user-images.githubusercontent.com/21688546/156507166-0b7bfc9d-7522-4947-8be2-bcc2fc121f8d.png">

### 效果

<img width="1476" alt="image" src="https://user-images.githubusercontent.com/21688546/156977706-4ea4b12d-d56e-4a84-99f6-7bbeba883016.png">

# vim

- 安装`vim`（或`neovim`），并安装`python` 支持。
- 安装插件管理器 [vim-plug](https://github.com/junegunn/vim-plug)，并执行安装命令。
- 替换配置件
    - `init.vim` 等同于 `.vimrc`
    - `.vimplug.vim` 插件配置文件
    - `.vimkey.vim` 自定义快捷键配置文件
    - `.vimcoc.vim`、`coc-setting.json` [coc.nvim](https://github.com/neoclide/coc.nvim)插件配置文件
    - `ultisnipps` [coc-snippets](https://github.com/neoclide/coc-snippets) 插件配置文件

# fzf

- 安装[fzf](https://github.com/junegunn/fzf)
- 替换配置文件`.fzf.zsh`

### 使用

触发命令：`\<TAB>`

```bash
# vim 编辑
vim [搜索目录]\<TAB>

# 跳转目录
cd [搜索目录]\<TAB>

# z 命令跳转
z<Enter>

# 文本内容搜索
fif 文本
```


# ranger

安装 [ranger](https://github.com/ranger/ranger)

### 安装插件

- [ranger-zjumper z命令](https://github.com/ask1234560/ranger-zjumper)
- [ranger_devicons 文件图标](https://github.com/alexanderjeurissen/ranger_devicons)
- [ranger-archives (解)压缩](https://github.com/maximtrp/ranger-archives)

### 快捷键

- 命令指示键

|     键位    | 描述           |
|:-----------:|----------------|
|     `g`     | 导航和 tab     |
|     `r`     | open_with      |
|     `y`     | 复制           |
|     `d`     | 删除           |
|     `p`     | 粘贴           |
|     `o`     | 排序           |
|     `.`     | 过滤           |
|     `u`     | 撤消           |
|     `z`     | 设置           |
|     `M`     | 行模式         |
| `+`,`-`,`=` | 文件访问权限   |
|     `w`     | 进入任务管理器 |
|     `?`     | 帮助           |

- 常用快捷键

|       命令      | 描述                       |
|:---------------:|----------------------------|
|       `:z`      | z 命令跳转                 |
|     `:touch`    | 新建文件                   |
|     `:mkdir`    | 新建文件夹                 |
|  `:bulkrename`  | 批量命名选中文件           |
| `a`,`A`,`i`,`I` | 重命名文件                 |
|   `alt + 数字`  | 切换 tab （不存在则会新建) |
|     `m<key>`    | 快速新增<key>书签          |
|     `'<key>`    | 快速切换指定`<key>`书签    |
|   `u + m<key>`  | 删除指定`<key>`书签        |
|     `' + '`     | 后退                       |
|   `Shift + s`   | 终端跳转到当前文件夹       |
|    `<space>`    | 选中                       |
|       `v`       | 反向选中                   |
|       `V`       | 进入`visual`模式           |
|       `t`       | 设置默认标签               |
|     `"<key>`    | 设置指定`<key>`标签        |
|     `u + t`     | 删除标签                   |
|       `dD`      | 删除文件到回收站           |
|       `uD`      | 还原回收站文件             |
|     `f + f`     | fzf 文件搜索               |
|     `f + s`     | 快速进入目录               |
|      `c+g`      | 打开 `lazygit`             |


### 配置文件

`rc.conf` 各种选项和快捷键配置文件。

`rifle.conf` 文件打开程序配置文件。

`scope.sh` 文件预览配置文件。

`commands.py` 自定义命令配置文件。

# lazygit

打开快捷命令：`lg`

配置文件路径：`~/Library/Application Support/lazygit/config.yml`

# SSH

ssh 连接自动输入密码：

```bash expect_ssh.sh
# 服务器列表([端口] 可选）
dict set servers 前缀 "[端口 ### ]用户名@IP ### 密码"
dict set servers 前缀 "[端口 ### ]用户名@IP ### 密码"
dict set servers 前缀 "[端口 ### ]用户名@IP ### 密码"
```

查看服务器列表命令：`sl`

# yabai
- 安装 [yabai](https://github.com/koekeishiya/yabai)
- 将`.yabairc`配置文件放入`$HOME`目录
- 启动`yabai --start-service`

# skhd
- 安装 [skhd](https://github.com/koekeishiya/skhd)
- 将`.skhdrc`配置文件放入`$HOME`目录
- 启动`skhd --start-service`

# mpv
- 安装[mpv](https://mpv.io/installation/)
- 将`mpv.conf`配置文件放入`~/.config/mpv/mpv.conf`

- 常用命令

    `mpv`

    选项：

    `--shuffle` 随机播放

    `--playlist=playlist.txt` 播放列表（playlist.txt 内容为文件路径，多个以换行符分割）

    `--no-audio-display` 不打开播放器界面显示视频（有的歌曲带有视频属性导致会无法在命令行播放）


- 常用快捷键

| 键位           | 描述                   |
|----------------|------------------------|
| LEFT and RIGHT | 前进/后退 5s           |
| UP and DOWN    | 前进/后退 1m           |
| [ and ]        | 调整播放速度           |
| BACKSPACE      | 重置播放速度           |
| < and >        | 上一曲/下一曲          |
| ENTER          | 下一曲                 |
| SPACE          | 暂停                   |
| q              | 退出                   |
| Q              | 退出并保存当前播放位置 |
| / AND *        | 降低/升高音量          |
| m              | 静音                   |
| i              | 显示当前播放信息       |
| L              | 单曲循环               |
| l              | A-B循环                |
| v              | 切换字幕（歌词）显示   |
| j              | 选择字幕（歌词）       |
| z and x        | 字幕提前/滞后          |
| F8             | 显示播放列表当前位置   |
| h              | 显示 playlist          |
| a              | 向后翻页 playlist      |
| k              | 向前翻页 playlist      |
| 0-9            | 选择播放指定歌曲       |
| #              | 切换音轨               |


# 第三方依赖
- brew install rg
- brew install fd
- brew install the_silver_searcher
- brew install ripgrep
- brew install jesseduffield/lazygit/lazygit
- brew install ydiff
- brew install openssh
- brew install coreutils
- brew install gnu-sed
- brew install gnu-tar
- brew install findutils
- brew install gawk
- brew install grep
- brew install trash
- brew install bat
- brew install jq

> `~/.ssh/config`文件使用`SetEnv TERM=xterm-256color`可以设置`ssh`连接后`TERM`变量值。
