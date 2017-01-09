with Ada.Real_Time; use Ada.Real_Time;

package body core_utils is

  procedure sleep (ms : integer) is
    next_start : time := clock;
    period : constant time_span := milliseconds (ms);
  begin
    next_start := next_start + period;
    delay until next_start;
  end sleep;

end core_utils;
