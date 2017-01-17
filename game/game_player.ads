with screen_interface; use screen_interface;
with core_geometry; use core_geometry;
with game_ball; use game_ball;

package game_player is

  type player is
    record
      r : rectangle;
      c : color;
    end record;

  -- Compare two players based on their fields.
  -- p1: first player.
  -- p2: second player.
  function "=" (p1, p2 : player) return boolean;

  -- Move a player to a specific point.
  -- p: the player.
  -- x: coordinates on the x axis.
  -- y: coordinates on the y axis.
  procedure move(p : in out player; x, y : uint)
    with post => p.r.x = x and then p.r.y = y
    and then p.r.w = p'old.r.w
    and then p.r.h = p'old.r.h;

  -- Slide the player on the x axis.
  -- p: the player.
  -- d: delta displacement to be added.
  procedure slide_x(p : in out player; d : integer)
    with post => p'old.r.x + d = p.r.x
    and then p.r.w = p'old.r.w
    and then p.r.h = p'old.r.h;

  -- Draw a player on the screen with its own color.
  -- p: the player.
  procedure draw(p : player);

  -- Draw a player on the screen.
  -- p: the player.
  -- c: the color.
  procedure draw(p : player; c : color);

  -- Update the enemy position based on the ball and the game rules.
  -- p: the player (the enemy)
  -- b: the main ball of the game.
  procedure update_enemy(p : in out player; b : ball)
    with post => p.r.w = p'old.r.w and then p.r.h = p'old.r.h;

end game_player;
