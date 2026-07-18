open Gg

type tvar

val (!$) : tvar -> v2

val (=$) : tvar -> v2 -> unit

val tv : v2 -> Tween.tween_manager -> tvar
