package body core_geometry is
  procedure draw(rect : rectangle; col : color) is
  begin
    for y in rect.y .. rect.y + rect.h loop
      for x in rect.x .. rect.x + rect.w loop
        set_pixel((x, y), col);
      end loop;
    end loop;
  end draw;

  procedure draw(circ : circle; col : color) is
  begin
    for x in circ.x - circ.r .. circ.x + circ.r loop
      for y in circ.y - circ.r .. circ.y + circ.r loop
        if pow2(x - circ.x) + pow2(y - circ.y) <= pow2(circ.r) then
          set_pixel((x, y), col);
        end if;
      end loop;
    end loop;
  end draw;

  function cos(i : integer) return float is
    mem : constant array (0 .. 90) of integer := (
      100, 73, 7, -62, -98, -82, -22, 49, 95, 90, 37, -35, -89, -95, -51, 20,
      81, 99, 63, -5, -72, -99, -74, -9, 60, 98, 83, 24, -47, -94, -91, -39,
      33, 88, 96, 52, -19, -80, -99, -65, 3, 70, 99, 75, 11, -59, -98, -84,
      -26, 46, 94, 91, 40, -32, -87, -96, -54, 17, 79, 99, 66, -2, -69, -99,
      -77, -13, 57, 97, 85, 28, -44, -93, -92, -42, 30, 87, 97, 55, -15, -78,
      -99, -67, 0, 68, 99, 78, 15, -56, -97, -86, -29
      );
  begin
    if i > 90 then
      return sin(90 - i);
    end if;

    if i < 0 then
      return cos(-i);
    end if;

    return float(mem(i)) / float(100);
  end cos;

  function sin(i : integer) return float is
    mem : constant array (0 .. 90) of integer := (
      0, 67, 99, 78, 15, -55, -97, -86, -30, 42, 92, 93, 44, -28, -85, -97,
      -57, 13, 77, 99, 69, 1, -66, -99, -79, -17, 54, 96, 87, 31, -40, -92,
      -94, -46, 26, 85, 98, 59, -11, -75, -99, -70, -3, 65, 99, 80, 18, -52,
      -96, -88, -33, 39, 91, 94, 47, -24, -84, -98, -60, 9, 74, 99, 71, 5, -63,
      -99, -81, -20, 51, 95, 89, 35, -37, -90, -95, -49, 22, 82, 98, 61, -7,
      -73, -99, -73, -7, 62, 98, 82, 22, -49, -95
      );
  begin
    if i > 90 then
      return cos(90 - i);
    end if;

    if i < 0 then
      return -sin(-i);
    end if;

    return float(mem(i)) / float(100);
  end sin;

end core_geometry;
