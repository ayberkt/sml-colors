structure Test = struct
  open Color

  fun printLn s = print (s ^ "\n")

  val strs = fn () =>
    [
      colorize Black        "Black"
    , colorize Red          "Red"
    , colorize Green        "Green"
    , colorize Yellow       "Yellow"
    , colorize Blue         "Blue"
    , colorize Magenta      "Magenta"
    , colorize Cyan         "Cyan"
    , colorize LightGray    "Light gray"
    , colorize DarkGray     "Dark gray"
    , colorize LightRed     "Light red"
    , colorize LightYellow  "Light yellow"
    , colorize LightBlue    "Light blue"
    , colorize LightMagenta "Light magenta"
    , colorize LightCyan    "Light cyan"
    , format   (Bright, Red) "Bright Red"
    , format   (Bright, Green) "Bright Green"
    ]

  fun main (arg0, argv) = (List.app printLn (strs ()); 0)

  val _ = SMLofNJ.exportFn ("run_tests", main)
end
