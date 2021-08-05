val hidden : unit -> bool [@@js.get "document.hidden"]

[@@@js.stop]

val fullscreen_element_available : unit -> bool

[@@@js.start]

[@@@js.implem
let fullscreen_element_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global##.document##.fullscreenElement]

type document

val get_current_document : unit -> document [@@js.get "document"]

val set_on_fullscreen_change : document -> (unit -> unit) -> unit
  [@@js.set "onfullscreenchange"]

val set_on_webkit_fullscreen_change : document -> (unit -> unit) -> unit
  [@@js.set "onwebkitfullscreenchange"]
