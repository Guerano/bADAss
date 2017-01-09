with screen_interface; use screen_Interface;
with core_geometry; use core_geometry;
with game_player; use game_player;
with game_ball; use game_ball;
with core_utils; use core_utils;
with Ada.Real_Time; use Ada.Real_Time;

procedure bADAss
is
  padding : constant uint := 20;
  p_w : constant uint := 70;
  p_h : constant uint := 20;
  c_r : constant uint := 20;
  e : player := ((width'last / 2 - p_w / 2, padding, p_w, p_h), red);
  last_e : player := e;
  p : player := ((width'last / 2 - p_w / 2, height'last - padding - p_h,
                  p_w, p_h), green);
  last_p : player := p;
  b : ball := ((width'last / 2, height'last / 2, c_r), blue, Down);
  last_b : ball := b;

  state : touch_state;
  intersects_e : boolean;
  intersects_p : boolean;
  last_intersects_e : boolean;
  last_intersects_p : boolean;
begin
  screen_interface.initialize;

  fill_screen(gray);
  draw(e);
  draw(p);
  draw(b);
  last_e.c := gray;
  last_p.c := gray;
  last_b.c := gray;
  loop
    sleep(40);

    state := get_touch_state;
    if State.Touch_Detected then
      null;
    end if;

    if b.d = Down then
      slide_y(b, 20);
    else
      slide_y(b, -20);
    end if;

    draw(last_b);

    intersects_e := intersects(e.r, b.ci);
    intersects_p := intersects(p.r, b.ci);

    if last_intersects_e and then not intersects_e then
      draw(e);
    end if;
    if last_intersects_p and then not intersects_p then
      draw(p);
    end if;

    draw(b);

    if intersects_e then
      b.d := Up;
    elsif intersects_p then
      b.d := Down;
    end if;

    last_e := e;
    last_p := p;
    last_b := b;
    last_b.c := gray;
    last_intersects_e := intersects_e;
    last_intersects_p := intersects_p;

  end loop;
end bADAss;
