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
    if b.ci.y + d <= 0 then
      b.ci.y := b.ci.r;
    elsif b.ci.y + d >= height'last then
      b.ci.y := height'last - b.ci.r;
    else
      b.ci.y := b.ci.y + d;
    end if;
  end slide_y;

  procedure slide_x(b : in out ball; d : integer) is
  begin
    if b.ci.x + d < 0 then
      b.ci.x := b.ci.r;
    elsif b.ci.x + d >= width'last then
      b.ci.x := width'last - b.ci.r;
    else
      b.ci.x := b.ci.x + d;
    end if;
  end slide_x;

  procedure draw(b : ball) is
  begin
    draw(b.ci, b.c);
  end draw;

  function update(b : in out ball) return player_type is
    procedure check_bounds(b : in out ball; margin : uint) is
    begin
      if b.ci.x - b.ci.r < margin then
        b.ci.x := margin + b.ci.r;
        if sin(integer(b.a)) < 0.0 then
          b.a := b.a + 90;
        else
          b.a := b.a - 90;
        end if;
      elsif b.ci.x + b.ci.r > width'last - margin then
        b.ci.x := width'last - margin - b.ci.r;
        if sin(integer(b.a))  < 0.0 then
          b.a := b.a - 90;
        else
          b.a := b.a + 90;
        end if;
      end if;
    end check_bounds;

    function check_dead(b : ball) return player_type is
    begin
      if b.ci.y + b.ci.r >= height'last then
        return the_player;
      elsif b.ci.y - b.ci.r <= 0 then
        return the_enemy;
      else
        return none;
      end if;
    end check_dead;
    is_dead : player_type;
  begin
    -- make the ball faster at each iteration
    b.speed := b.speed + 0.01;

    is_dead := check_dead(b);
    if is_dead /= none then
      return is_dead;
    end if;
    check_bounds(b, 10);

    slide_x(b, integer(b.speed * cos(integer(b.a))));
    slide_y(b, integer(b.speed * sin(integer(b.a))));

    is_dead := check_dead(b);
    if is_dead /= none then
      return is_dead;
    end if;
    check_bounds(b, 10);

    return none;
  end update;

end game_ball;
