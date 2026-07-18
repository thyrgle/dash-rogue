open Gg
let t = Formula.t

type hero = 
{
  mutable pos : v2
}

(* In loop: update with a tween manager.
   On call back: calculate_next_pos prev_pos -> gives back next_pos.
   Creates a tween from prev_pos -> next_pos.
   Where does input come into all this?
*)

let player = 
{
  pos = V2.v 50.0 50.0
}

let setup () =
  Raylib.init_window 800 450 "raylib [core] example - basic window";
  Raylib.set_target_fps 60

(* Formula: get updated by keypress. And when it changes, it will call calculate_next_pos. *)

(* Either return key pressed or nothing. *)
let handle_key_press () =
  let is_key_pressed = Raylib.is_key_pressed in
  let open V2 in
  if is_key_pressed Raylib.Key.Left then player.pos <- player.pos - ox else ();
  if is_key_pressed Raylib.Key.Right then player.pos <- player.pos + ox else ();
  if is_key_pressed Raylib.Key.Up then player.pos <- player.pos - oy else ();
  if is_key_pressed Raylib.Key.Down then player.pos <- player.pos + oy else ()

let loop () =
  let open Raylib in
  while not (window_should_close ()) do
    handle_key_press ();
    begin_drawing ();
    clear_background Color.raywhite;
    (* TODO Make less ugly. *)
    draw_text "@" (Int.of_float (V2.x player.pos)) (Int.of_float (V2.y player.pos)) 20
      Color.lightgray;
    end_drawing ()
  done;
  close_window ()

let () = setup () |> loop
