open Gg

type tvar =
{
  mutable old_val: v2;
  mutable cur_val_x: float ref;
  mutable cur_val_y: float ref;
  mutable new_val: v2;
  tm: Tween.tween_manager;
}


let (!$) (v: tvar) = V2.v !(v.cur_val_x) !(v.cur_val_y)

(* TODO: Make it not depend on cur_val <> new_val *)
let (=$) (v: tvar) (vl: v2) = if not (V2.equal (V2.v !(v.cur_val_x) !(v.cur_val_y)) v.new_val) then () else
  (
    v.new_val <- vl;
    (* TODO Might have either tw1 end too early or tw2 end too early. *)
    let tw1 = Tween.make_tween v.cur_val_x (V2.x v.new_val) 1.0 in
    let tw2 = Tween.make_tween v.cur_val_y (V2.y v.new_val) 1.0 in
    Tween.set_callback tw1 (fun () -> 
      v.old_val <- v.new_val;
      v.cur_val_x := V2.x v.new_val;
      v.cur_val_y := V2.y v.new_val);
    Tween.set_callback tw2 (fun () -> 
      v.old_val <- v.new_val;
      v.cur_val_x := V2.x v.new_val;
      v.cur_val_y := V2.y v.new_val); 
    Tween.add tw1 v.tm;
    Tween.add tw2 v.tm
  )


let tv (vl: v2) (tm: Tween.tween_manager) : tvar = 
{
  old_val = vl;
  tm = tm;
  cur_val_x = ref @@ V2.x vl;
  cur_val_y = ref @@ V2.y vl;
  new_val = vl;
}
