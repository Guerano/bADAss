with Ada.Real_Time; use Ada.Real_Time;

package body core_utils is

  procedure sleep (ms : natural) is
    next_start : time := clock;
    period : constant time_span := milliseconds (ms);
  begin
    next_start := next_start + period;
    delay until next_start;
  end sleep;

  function rand return rand_range is
    mem : constant array (1 .. 100) of rand_range := (
      49, 28, 73, 59, 59, 33, 71, 58, 57, 85, 8, 72, 71, 68, 15, 39, 48, 67,
      17, 79, 5, 58, 6, 70, 78, 34, 3, 32, 54, 35, 35, 10, 96, 12, 18, 68, 27,
      64, 34, 34, 15, 59, 91, 40, 81, 52, 71, 4, 28, 60, 15, 31, 28, 82, 95,
      97, 87, 55, 54, 77, 69, 23, 48, 55, 79, 40, 58, 79, 79, 15, 6, 64, 18,
      35, 65, 5, 77, 39, 83, 75, 38, 71, 94, 22, 19, 24, 74, 88, 14, 33, 21,
      69, 3, 76, 5, 97, 49, 36, 4, 9
    );
  begin
    rand_count := rand_count + 1;
    return mem(mem(rand_count mod 100));
  end rand;

end core_utils;
