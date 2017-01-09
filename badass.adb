with screen_interface; use screen_Interface;
with core_geometry; use core_geometry;

procedure bADAss
is
  p1 : rectangle := (0, 0, width'last / 3, height'last / 3);
  c1 : circle := (0, 0, width'last / 3);
  state : touch_state;
begin
  screen_interface.initialize;

  loop
    loop
      state := get_touch_state;
      exit when State.Touch_Detected;
    end loop;
    fill_screen(gray);

    c1.x := state.x;
    c1.y := state.y;

    draw(p1, red);

    if intersects(p1, c1) then
      draw(c1, blue);
    else
      draw(c1, green);
    end if;

  end loop;
end bADAss;
