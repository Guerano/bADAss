package body game_ball is

  function "=" (b1, b2 : ball) return boolean is
  begin
    -- FIXME: Check color.
    return b1.ci = b2.ci and then b1.d = b2.d;
  end "=";

  procedure move(p : in out ball; x, y : uint) is
  begin
    p.ci.x := x;
    p.ci.y := y;
  end move;

  procedure slide_y(p : in out ball; d : integer) is
  begin
    if p.ci.y - d < 0 then
      p.ci.y := 0;
    else
      p.ci.y := p.ci.y - d;
    end if;
  end slide_y;

  procedure draw(p : ball) is
  begin
    draw(p.ci, p.c);
  end draw;

end game_ball;
