package core_utils is

  -- delay until support.
  -- ms: time to sleep.
  procedure sleep (ms : natural);

  subtype rand_range is natural range 1 .. 100;

  -- pseudo-random (not at all, actually) support.
  function rand return rand_range;

private

  rand_count : rand_range := 1;

end core_utils;
