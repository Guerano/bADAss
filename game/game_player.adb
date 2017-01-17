package body game_player is

  function "=" (p1, p2 : player) return boolean is
  begin
    return p1.r = p2.r;
  end "=";

  procedure move(p : in out player; x, y : uint) is
  begin
    p.r.x := x;
    p.r.y := y;
  end move;

  procedure slide_x(p : in out player; d : integer) is
  begin
    if p.r.x + d < 0 then
      p.r.x := 0;
    elsif p.r.x + p.r.w + d >= width'last then
      p.r.x := width'last - p.r.w;
    else
      p.r.x := p.r.x + d;
    end if;
  end slide_x;

  procedure draw(p : player) is
  begin
    draw(p, p.c);
  end draw;

  procedure draw(p : player; c : color) is
  begin
    draw(p.r, c);
  end draw;


  procedure update_enemy(p : in out player; b : ball) is
  begin
    if p.r.x /= b.ci.x
    and then b.ci.x - p.r.w > 0
    and then b.ci.x + p.r.w < width'last then
    draw(p, black);
    p.r.x := b.ci.x - p.r.w / 2;
    draw(p);
  end if;
  end update_enemy;

end game_player;
