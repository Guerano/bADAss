package core_math is

  type angle is mod 360;

  -- Compute the power of 2.
  -- i: integer to be squared.
  function pow2(i : integer) return integer
    with post => i * i = pow2'result;

  -- Compute the cosinus of an angle.
  -- i: the angle.
  function cos(i : integer) return float
    with post => cos'result <= 1.0 and then cos'result >= -1.0;

  -- Compute the sinus of an angle.
  -- i: the angle.
  function sin(i : integer) return float
    with post => sin'result <= 1.0 and then sin'result >= -1.0;

end core_math;
