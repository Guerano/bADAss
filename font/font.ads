with core_geometry; use core_geometry;

package font is

  type letter is array (1 .. 25) of integer;

  procedure draw(str : string; y_coord_in : uint);

end font;
