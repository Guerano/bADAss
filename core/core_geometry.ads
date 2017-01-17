with screen_interface; use screen_interface;

package core_geometry is
  subtype uint is natural;

  type rectangle is
    record
      --      w
      -- xy---------
      -- |         |
      -- |         | h
      -- |         |
      -- -----------

      x : uint;
      y : uint;
      w : uint;
      h : uint;
    end record
    with dynamic_predicate => rectangle.w /= 0 and then rectangle.h /= 0;

  -- r1: first rectangle.
  -- r2: second rectangle.
  function "=" (r1, r2 : rectangle) return boolean;

  type circle is
    record

      --      ---
      --    /     \
      --    |  xy |
      --    \  |r /
      --      ---

      x : uint;
      y : uint;
      r : uint;
    end record
    with dynamic_predicate => circle.r /= 0;

  -- Compare two circles based on their fields.
  -- c1: first circle.
  -- c2: second circle.
  function "=" (c1, c2 : circle) return boolean;

  -- Draw a rectangle on the screen.
  -- rect: the rectangle.
  -- col:  the color for the rectangle to be filled with.
  procedure draw(rect : rectangle; col : color);

  -- Draw a circle on the screen.
  -- circ: the circle.
  -- col:  the color for the circle to be filled with.
  procedure draw(circ : circle; col : color);

  -- Check if a circle and a rectangle intersect.
  -- rect: the rectangle.
  -- circ: the circle.
  function intersects(rect : rectangle; circ : circle) return boolean;

end core_geometry;
