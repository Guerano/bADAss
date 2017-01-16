package core_utils is

  procedure sleep (ms : natural);

  subtype rand_range is natural range 1 .. 100;

  function rand return rand_range;

private

  rand_count : rand_range := 1;

end core_utils;
