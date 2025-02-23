#!/usr/bin/expect -f
#set ip [lindex $argv 0 ]
#set password [lindex $argv 1 ]
set server_protocol [lindex $argv 0]
set server_prefix [lindex $argv 1]
set timeout 3600

# 服务器列表
dict set servers 前缀 "[端口号 ### ]用户名@IP ### 密码"
dict set servers 前缀 "[端口号 ### ]用户名@IP ### 密码"
dict set servers 前缀 "[端口号 ### ]用户名@IP ### 密码"

# 当我们使用字符串拆分字符串，tcl会使用字符串中的每个字符来拆分，无法达到我们的目的。
# 可以使用这个过程进行分割
proc OnePiece {str sep} {
  split [string map [list $sep \0] $str ] \0
}

# 打印服务器列表
if {$server_protocol == "list"} {
	foreach item [dict keys $servers] {
        puts "\[ $item \]"
		puts " [lindex [split [dict get $servers $item] #] 0]"
	}
  exit
}

# terminal 窗口大小改变后发送信号到 expect spawn 进程
trap {
 set rows [stty rows]
 set cols [stty columns]
 stty rows $rows columns $cols < $spawn_out(slave,name)
} WINCH

# 获取连接的服务器
set server [dict get $servers $server_prefix]

#分割服务器连接信息
#set server_list [split $server]
set server_list [OnePiece $server " ### "]

spawn /usr/bin/$server_protocol [expr [string equal $server_protocol "ssh"] == 1 ? {"-p"} : {"-P"}] [expr [llength $server_list] == 3 ? {[lindex $server_list 0]} : 22] [lindex $server_list end-1]

expect {
  "*yes/no" { send "yes\r"; exp_continue}
  "*password:" { send "[lindex $server_list 1]\r" }
}
interact
