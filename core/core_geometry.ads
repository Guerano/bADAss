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

  function "=" (c1, c2 : circle) return boolean;

  procedure draw(rect : rectangle; col : color);

  procedure draw(circ : circle; col : color);

  function cos(i : integer) return float
    with post => cos'result <= 1.0 and then cos'result >= -1.0;

  function sin(i : integer) return float
    with post => sin'result <= 1.0 and then sin'result >= -1.0;

  function intersects(rect : rectangle; circ : circle) return boolean;

end core_geometry;
