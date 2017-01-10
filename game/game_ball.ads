with screen_interface; use screen_interface;
with core_geometry; use core_geometry;

package game_ball is

  type direction is (Down, Up);

  type ball is
    record
      ci : circle;
      c : color;
      d : direction := Down;
    end record;

  function "=" (b1, b2 : ball) return boolean;

  procedure move(b : in out ball; x, y : uint)
    with post => b.ci.x = x and then b.ci.y = y;

  procedure slide_y(b : in out ball; d : integer)
    with post => b'old.ci.y + d = b.ci.y;

  procedure draw(b : ball);

end game_ball;
