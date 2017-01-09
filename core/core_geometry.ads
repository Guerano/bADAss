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
    end record;

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
    end record;

  procedure draw(rect : rectangle; col : color);

  procedure draw(circ : circle; col : color);

  function cos(i : integer) return float;

  function sin(i : integer) return float;

  function intersects(rect : rectangle; circ : circle) return boolean;

end core_geometry;
