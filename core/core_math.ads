package core_math is

  function pow2(i : integer) return integer
    with post => i * i = pow2'result;

end core_math;
