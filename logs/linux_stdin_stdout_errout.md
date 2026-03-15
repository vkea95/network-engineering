很好。下面是一张 Shell 重定向终极图（Shell Redirection Master Map）。
这张图把 stdin / stdout / stderr / pipe / 重定向 一次性串起来。

建议保存到你的项目：

reference/shell_redirection_master_map.md


⸻

Shell Redirection Master Map

# Shell Redirection Master Map

Linux programs use three standard streams.

0  stdin   (input)
1  stdout  (normal output)
2  stderr  (error output)

---

## Basic Data Flow

keyboard
   │
   ▼
stdin (0)
   │
   ▼
program
   │
   ├── stdout (1) → terminal
   │
   └── stderr (2) → terminal

---

# stdout redirection

command > file

stdout → file

Example:

echo hello > file.txt

echo
 │
 ▼
stdout ─────→ file.txt


⸻

append output

command >> file

Example:

echo hello >> file.txt

append instead of overwrite.

⸻

stderr redirection

command 2> error.txt

Example:

ls missingfile 2> error.txt

stderr → error.txt


⸻

stdout + stderr

command > file 2>&1

Meaning:

stdout → file
stderr → stdout

So both go to file.

⸻

discard output

/dev/null = black hole

Example:

command > /dev/null

discard stdout.

command 2> /dev/null

discard stderr.

command > /dev/null 2>&1

discard everything.

⸻

pipe

Pipe connects:

stdout → stdin

Example:

ls | grep txt

ls stdout → pipe → grep stdin

stderr still goes to terminal.

⸻

pipe with stderr

Example:

command 2>&1 | grep error

Flow:

stderr → stdout → pipe → grep

⸻

tee

tee duplicates output.

Example:

command | tee file.txt

stdout → terminal
stdout → file

Useful for logging.

⸻

full example

curl URL | grep token > result.txt

Flow:

curl stdout → pipe → grep
grep stdout → result.txt

⸻

mental model

Linux shell = data stream routing

stdin
stdout
stderr
pipe
files

---

# 重点记住这 6 个最重要的符号

| 符号 | 作用 |
|---|---|
`>` | stdout → file |
`>>` | append stdout |
`2>` | stderr → file |
`|` | stdout → stdin |
`2>&1` | stderr → stdout |
`tee` | 同时输出 |

---

# 工程师最常见组合

### 记录日志

```bash
command 2>&1 | tee log.txt

效果：

stdout → terminal
stderr → terminal
stdout → log.txt
stderr → log.txt


⸻

丢弃所有输出

command > /dev/null 2>&1


⸻

过滤错误

command 2>&1 | grep error


⸻

一个非常重要的理解

Shell 不是“命令语言”。

它其实是：

数据流编程系统

每个程序：

读取 stdin
写入 stdout / stderr

shell 负责：

连接这些数据流


⸻

小练习（推荐）

执行：

ls missingfile 2>&1 | grep cannot

你会看到：

ls: cannot access ...

这说明：

stderr → stdout → pipe → grep


⸻

到这里你已经掌握了

Linux Shell 最核心的 IO 机制：

stdin
stdout
stderr
pipe
redirection

这套机制也是：
	•	Linux 工具链
	•	DevOps 自动化
	•	shell scripting

的基础。

⸻

下一步（Day 3）

Day 3 会把 shell + 网络结合起来。

你会第一次用：

nc

直接建立 TCP 连接，并手动发送：

GET / HTTP/1.1
Host: example.com

当你看到服务器返回 HTML 的那一刻，
很多人会突然理解：

HTTP 就是一段文本协议


===》 Pipe 只接受标准输出，错误输出需要通过 2>&1 才会通过标准输出 再到达pipe