with screen_interface; use screen_interface;
with core_geometry; use core_geometry;

package game_ball is

  subtype angle is integer;

  type ball is
    record
      ci : circle;
      c : color;
      a : angle := 0;
      speed : float;
    end record;

  function "=" (b1, b2 : ball) return boolean;

  procedure move(b : in out ball; x, y : uint)
    with post => b.ci.x = x and then b.ci.y = y;

  procedure slide_y(b : in out ball; d : integer)
    with post => b'old.ci.y + d = b.ci.y;

  procedure slide_x(b : in out ball; d : integer)
    with post => b'old.ci.x + d = b.ci.x;

  procedure draw(b : ball);

  procedure update(b : in out ball)
    with post => b'old.ci /= b.ci;

end game_ball;
