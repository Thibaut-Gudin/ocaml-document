val hidden : unit -> bool [@@js.get "document.hidden"]

[@@@js.stop]

val fullscreen_element_available : unit -> bool

[@@@js.start]

[@@@js.implem
let fullscreen_element_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global##.document##.fullscreenElement]

type fullscreenchange

val on_full_screen_change : unit -> fullscreenchange
  [@@js.get "document.onfullscreenchange"]

val set_onfullscreenchange : fullscreenchange -> (unit -> unit) -> unit
  [@@js.set]

val set_on_fullscreen_change : fullscreenchange -> (unit -> unit) -> unit
  [@@js.set "document.onfullscreenchange"]

type webkit_fullscreenchange

val on_webkit_fullscreen_change : unit -> webkit_fullscreenchange
  [@@js.get "document.onfullscreenchange"]

val set_onwebkitfullscreenchange :
  webkit_fullscreenchange -> (unit -> unit) -> unit
  [@@js.set]

val set_on_webkit_fullscreen_change :
  webkit_fullscreenchange -> (unit -> unit) -> unit
  [@@js.set "document.onwebkitfullscreenchange"]

type document

val get_current_document : unit -> document [@@js.get "document"]

val set_on_fullscreen_change2 : document -> (unit -> unit) -> unit
  [@@js.set "onfullscreenchange"]

val set_on_webkit_fullscreen_change2 : document -> (unit -> unit) -> unit
  [@@js.set "onwebkitfullscreenchange"]

(*
[@@@js.stop]

val set_on_fullscreen_change2 : (unit -> unit) -> unit

val set_on_webkit_fullscreen_change2 : (unit -> unit) -> unit

[@@@js.start]

[@@@js.implem
let set_on_fullscreen_change2 handler = document.onfullscreenchange = handler]

[@@@js.implem
let set_on_webkit_fullscreen_change2 handler =
  document.onwebkitfullscreenchange = handler]
 *)
