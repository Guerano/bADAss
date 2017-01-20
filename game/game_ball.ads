with screen_interface; use screen_interface;
with core_geometry; use core_geometry;
with core_math; use core_math;

package game_ball is

  type ball is
    record
      ci : circle;
      c : color;
      a : angle := 0;
      speed : float := 0.0;
    end record;

  -- Compare two balls based on their fields.
  -- b1: first ball.
  -- b2: second ball.
  function "=" (b1, b2 : ball) return boolean;

  -- Move the ball to a specific point.
  -- x: the coordinate of the x axis
  -- y: the coordinate of the y axis
  procedure move(b : in out ball; x, y : uint)
    with post => b.ci.x = x and then b.ci.y = y
    and then b.ci.r = b'old.ci.r;

  -- Slide the ball on the y axis by a delta.
  -- d: distance to slide by.
  procedure slide_y(b : in out ball; d : integer)
    with post => b'old.ci.y + d = b.ci.y
    and then b.ci.r = b'old.ci.r;

  -- Slide the ball on the x axis by a delta.
  -- d: distance to slide by.
  procedure slide_x(b : in out ball; d : integer)
    with post => b'old.ci.x + d = b.ci.x
    and then b.ci.r = b'old.ci.r;

  -- Draw the ball using its own color.
  -- b: the ball.
  procedure draw(b : ball);

  -- Update the ball position, angle, and speed based on the game rules.
  -- b: the ball.
  procedure update(b : in out ball)
    with post => b'old.ci /= b.ci;

end game_ball;
