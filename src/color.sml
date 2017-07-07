structure Color = struct

  datatype attribute =
      Bright
    | Dim
    | Underlined
    | None

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

  fun attrCode Bright     = "\027[1m"
    | attrCode Dim        = "\027[2m"
    | attrCode Underlined = "\027[4m"
    | attrCode None       = ""

  fun code Black        = "\027[30m"
    | code Red          = "\027[31m"
    | code Green        = "\027[32m"
    | code Yellow       = "\027[33m"
    | code Blue         = "\027[34m"
    | code Magenta      = "\027[35m"
    | code Cyan         = "\027[36m"
    | code LightGray    = "\027[37m"
    | code DarkGray     = "\027[90m"
    | code LightRed     = "\027[91m"
    | code LightGreen   = "\027[92m"
    | code LightYellow  = "\027[93m"
    | code LightBlue    = "\027[94m"
    | code LightMagenta = "\027[95m"
    | code LightCyan    = "\027[96m"
    | code White        = "\027[37m"

  val clReset = "\027[0m"

  fun colorize c s = code c ^ s ^ clReset

  val format : attribute * color -> string -> string =
    fn (attr, clr) => fn s =>
        ((attrCode attr) ^ (code clr) ^ s ^ clReset)

end
