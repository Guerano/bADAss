with core_math; use core_math;

package body core_geometry is

  function "=" (r1, r2 : rectangle) return boolean is
  begin
    return r1.x = r2.x and then r1.y = r2.y and then r1.w = r2.w
                       and then r1.h = r2.h;
  end "=";

  procedure draw(rect : rectangle; col : color) is
  begin
    for y in rect.y .. rect.y + rect.h loop
      for x in rect.x .. rect.x + rect.w loop
        set_pixel((x, y), col);
      end loop;
    end loop;
  end draw;

  function "=" (c1, c2 : circle) return boolean is
  begin
    return c1.x = c2.x and then c1.y = c2.y and then c1.r = c2.r;
  end "=";

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

  function intersects(rect : rectangle; circ : circle) return boolean is
    function intersects(circ : circle; x, y : uint) return boolean is
    begin
      return pow2(x - circ.x) + pow2(y - circ.y) <= pow2(circ.r);
    end intersects;
  begin
    for x in rect.x .. rect.x + rect.w loop
      for y in rect.y .. rect.y + rect.h loop
        if intersects(circ, x, y) then
          return true;
        end if;
      end loop;
    end loop;
    return false;
  end intersects;

end core_geometry;
