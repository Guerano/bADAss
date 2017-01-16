package body game_ball is

  function "=" (b1, b2 : ball) return boolean is
  begin
    -- FIXME: Check color.
    return b1.ci = b2.ci and then b1.a = b2.a;
  end "=";

  procedure move(b : in out ball; x, y : uint) is
  begin
    b.ci.x := x;
    b.ci.y := y;
  end move;

  procedure slide_y(b : in out ball; d : integer) is
  begin
    if b.ci.y - d < 0 then
      b.ci.y := 0;
    else
      b.ci.y := b.ci.y - d;
    end if;
  end slide_y;

  procedure slide_x(b : in out ball; d : integer) is
  begin
    if b.ci.x - d < 0 then
      b.ci.x := 0;
    else
      b.ci.x := b.ci.x - d;
    end if;
  end slide_x;

  procedure draw(b : ball) is
  begin
    draw(b.ci, b.c);
  end draw;

end game_ball;
