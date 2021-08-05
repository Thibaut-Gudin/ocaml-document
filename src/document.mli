val hidden : unit -> bool option [@@js.get "document.hidden"]

[@@@js.stop]

val fullescreen_element_available : unit -> bool

[@@@js.start]

[@@@js.implem
let fullescreen_element_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global##.document##.fullscreenElement]

type fullscreenchange

val on_full_screen_change : unit -> fullscreenchange
  [@@js.get "document.onfullscreenchange"]

val set_onfullscreenchange : fullscreenchange -> (unit -> unit) -> unit
  [@@js.set]

type webkit_fullscreenchange

val on_webkit_full_screen_change : unit -> webkit_fullscreenchange
  [@@js.get "document.onfullscreenchange"]

val set_onwebkitfullscreenchange :
  webkit_fullscreenchange -> (unit -> unit) -> unit
  [@@js.set]
