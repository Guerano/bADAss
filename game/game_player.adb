package body game_player is

  function "=" (b1, b2 : player) return boolean is
  begin
    return b1.r = b2.r;
  end "=";

  procedure move(p : in out player; x, y : uint) is
  begin
    p.r.x := x;
    p.r.y := y;
  end move;

  procedure slide_x(p : in out player; d : integer) is
  begin
    if p.r.x - d < 0 then
      p.r.x := 0;
    else
      p.r.x := p.r.x - d;
    end if;
  end slide_x;

  procedure draw(p : player) is
  begin
    draw(p.r, p.c);
  end draw;

end game_player;
