with screen_interface; use screen_interface;
with core_geometry; use core_geometry;

package game_player is

  type player is
    record
      r : rectangle;
      c : color;
    end record;

  function "=" (b1, b2 : player) return boolean;

  procedure move(p : in out player; x, y : uint)
    with post => p.r.x = x and then p.r.y = y;

  procedure slide_x(p : in out player; d : integer)
    with post => p'old.r.x + d = p.r.x;

  procedure draw(p : player);

end game_player;
