with screen_interface; use screen_interface;
with core_geometry; use core_geometry;

package game_ball is

  type direction is (Down, Up);

  type ball is
    record
      ci : circle;
      c : color;
      d : direction;
    end record;

  function "=" (b1, b2 : ball) return boolean;

  procedure move(p : in out ball; x, y : uint);

  procedure slide_y(p : in out ball; d : integer);

  procedure draw(p : ball);

end game_ball;
