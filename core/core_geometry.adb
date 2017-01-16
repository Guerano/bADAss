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

  function cos(i : integer) return float is
    mem : constant array (0 .. 90) of float := (
      1.0000, 0.9998, 0.9994, 0.9986, 0.9976, 0.9962, 0.9945, 0.9925, 0.9903,
        0.9877, 0.9848, 0.9816, 0.9781, 0.9744, 0.9703, 0.9659, 0.9613, 0.9563,
        0.9511, 0.9455, 0.9397, 0.9336, 0.9272, 0.9205, 0.9135, 0.9063, 0.8988,
        0.8910, 0.8829, 0.8746, 0.8660, 0.8572, 0.8480, 0.8387, 0.8290, 0.8192,
        0.8090, 0.7986, 0.7880, 0.7771, 0.7660, 0.7547, 0.7431, 0.7314, 0.7193,
        0.7071, 0.6947, 0.6820, 0.6691, 0.6561, 0.6428, 0.6293, 0.6157, 0.6018,
        0.5878, 0.5736, 0.5592, 0.5446, 0.5299, 0.5150, 0.5000, 0.4848, 0.4695,
        0.4540, 0.4384, 0.4226, 0.4067, 0.3907, 0.3746, 0.3584, 0.3420, 0.3256,
        0.3090, 0.2924, 0.2756, 0.2588, 0.2419, 0.2250, 0.2079, 0.1908, 0.1736,
        0.1564, 0.1392, 0.1219, 0.1045, 0.0872, 0.0698, 0.0523, 0.0349, 0.0175,
        0.0000
      );
  begin
    if i > 90 then
      return sin(90 - i);
    end if;

    if i < 0 then
      return cos(-i);
    end if;

    return mem(i);
  end cos;

  function sin(i : integer) return float is
    mem : constant array (0 .. 90) of float := (
      0.0000, 0.0175, 0.0349, 0.0523, 0.0698, 0.0872, 0.1045, 0.1219, 0.1392,
        0.1564, 0.1736, 0.1908, 0.2079, 0.2250, 0.2419, 0.2588, 0.2756, 0.2924,
        0.3090, 0.3256, 0.3420, 0.3584, 0.3746, 0.3907, 0.4067, 0.4226, 0.4384,
        0.4540, 0.4695, 0.4848, 0.5000, 0.5150, 0.5299, 0.5446, 0.5592, 0.5736,
        0.5878, 0.6018, 0.6157, 0.6293, 0.6428, 0.6561, 0.6691, 0.6820, 0.6947,
        0.7071, 0.7193, 0.7314, 0.7431, 0.7547, 0.7660, 0.7771, 0.7880, 0.7986,
        0.8090, 0.8192, 0.8290, 0.8387, 0.8480, 0.8572, 0.8660, 0.8746, 0.8829,
        0.8910, 0.8988, 0.9063, 0.9135, 0.9205, 0.9272, 0.9336, 0.9397, 0.9455,
        0.9511, 0.9563, 0.9613, 0.9659, 0.9703, 0.9744, 0.9781, 0.9816, 0.9848,
        0.9877, 0.9903, 0.9925, 0.9945, 0.9962, 0.9976, 0.9986, 0.9994, 0.9998,
        1.0000);
  begin
    if i > 90 then
      return cos(90 - i);
    end if;

    if i < 0 then
      return -sin(-i);
    end if;

    return mem(i);
  end sin;

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
