signature ANSI_COLORS = sig

  datatype color =
      Black
    | Red
    | Green
    | Yellow
    | Blue
    | Magenta
    | Cyan
    | LightGray
    | DarkGray
    | LightRed
    | LightGreen
    | LightYellow
    | LightBlue
    | LightMagenta
    | LightCyan
    | White

  datatype attribute =
      Bright
    | Dim
    | Underlined
    | None

  val colorize : color -> string -> string
  val format   : attribute * color -> string -> string

end
