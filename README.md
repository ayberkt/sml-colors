# sml-colors

## Using

`src/colors.cm` exports the `ANSI_COLORS` signature and the `Color` structure
that satisfied it. `Color` is defined in `src/color.cm`.

`ANSI_COLORS` is the following:
```Standard ML
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
```

To test out, run `./script/test.sh`.
