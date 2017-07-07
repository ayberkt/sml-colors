structure Test = struct
  open Color

  fun printLn s = print (s ^ "\n")

  val strs =
    [
      colorize LightGray    "Light gray"
    , colorize DarkGray     "Dark gray"
    , colorize LightRed     "Light red"
    , colorize LightYellow  "Light yellow"
    , colorize LightBlue    "Light blue"
    , colorize LightMagenta "Light magenta"
    , colorize LightCyan    "Light cyan"
    ]

  val _ = List.app printLn strs
end
