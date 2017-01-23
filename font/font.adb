with screen_interface; use screen_interface;

package body font is

  procedure draw(str : string; y_coord_in : uint) is
    A_upper : constant letter := (
      0, 0, 1, 0, 0,
      0, 1, 0, 1, 0,
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1 );

    B_upper : constant letter := (
      1, 1, 1, 1, 0,
      0, 1, 0, 0, 1,
      0, 1, 1, 1, 0,
      0, 1, 0, 0, 1,
      1, 1, 1, 1, 0 );

    C_upper : constant letter := (
      0, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      0, 1, 1, 1, 1 );

    D_upper : constant letter := (
      1, 1, 1, 1, 0,
      0, 1, 0, 0, 1,
      0, 1, 0, 0, 1,
      0, 1, 0, 0, 1,
      1, 1, 1, 1, 0 );

    E_upper : constant letter := (
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 1 );

    F_upper : constant letter := (
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0 );

    G_upper : constant letter := (
      0, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 0, 0, 1, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 1 );

    H_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1 );

    I_upper : constant letter := (
      0, 1, 1, 1, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 1, 1, 1, 0 );

    J_upper : constant letter := (
      0, 0, 0, 0, 1,
      0, 0, 0, 0, 1,
      0, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    K_upper : constant letter := (
      1, 0, 0, 1, 1,
      1, 0, 1, 0, 0,
      1, 1, 0, 0, 0,
      1, 0, 1, 0, 0,
      1, 0, 0, 1, 1 );

    L_upper : constant letter := (
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 1 );

    M_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 1, 0, 1, 1,
      1, 0, 1, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1 );

    N_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 1, 0, 0, 1,
      1, 0, 1, 0, 1,
      1, 0, 0, 1, 1,
      1, 0, 0, 0, 1 );

    O_upper : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    P_upper : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0 );

    Q_upper : constant letter := (
      0, 1, 1, 0, 0,
      1, 0, 0, 1, 0,
      1, 0, 1, 1, 0,
      1, 0, 0, 1, 0,
      0, 1, 1, 0, 1 );

    R_upper : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 1, 1, 1, 0,
      1, 0, 1, 0, 0,
      1, 0, 0, 1, 0 );

    S_upper : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      0, 0, 0, 0, 1,
      1, 1, 1, 1, 0 );

    T_upper : constant letter := (
      1, 1, 1, 1, 1,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0 );

    V_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0 );

    U_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    W_upper : constant letter := (
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 1, 0, 1,
      1, 1, 0, 1, 1,
      1, 0, 0, 0, 1 );

    X_upper : constant letter := (
      1, 0, 0, 0, 1,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0,
      0, 1, 0, 1, 0,
      1, 0, 0, 0, 1 );

    Y_upper : constant letter := (
      1, 0, 0, 0, 1,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0 );

    Z_upper : constant letter := (
      1, 1, 1, 1, 1,
      0, 0, 0, 1, 0,
      0, 0, 1, 0, 0,
      0, 1, 0, 0, 0,
      1, 1, 1, 1, 1 );

    a : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      1, 0, 0, 1, 0,
      1, 0, 0, 1, 0,
      0, 1, 1, 0, 1 );

    b : constant letter := (
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 1, 1, 1, 0 );

    c : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      0, 1, 1, 1, 1 );

    d : constant letter := (
      0, 0, 0, 0, 1,
      0, 0, 0, 0, 1,
      0, 1, 1, 1, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 1 );

    e : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      0, 1, 1, 1, 1 );

    f : constant letter := (
      0, 0, 1, 0, 0,
      0, 1, 0, 1, 0,
      0, 1, 0, 0, 0,
      1, 1, 1, 0, 0,
      0, 1, 0, 0, 0 );

    g : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 0, 0, 1, 1,
      0, 1, 1, 1, 1 );

    h : constant letter := (
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 0, 1, 1, 0,
      1, 1, 0, 0, 1,
      1, 0, 0, 0, 1 );

    i : constant letter := (
      0, 0, 1, 0, 0,
      0, 0, 0, 0, 0,
      0, 1, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 1, 1, 1, 0 );

    j : constant letter := (
      0, 0, 0, 0, 0,
      0, 0, 1, 1, 0,
      0, 0, 0, 1, 0,
      1, 0, 0, 1, 0,
      0, 1, 1, 0, 0 );

    k : constant letter := (
      1, 0, 0, 0, 0,
      1, 0, 0, 0, 0,
      1, 0, 1, 1, 0,
      1, 1, 0, 0, 0,
      1, 0, 1, 1, 0 );

    l : constant letter := (
      0, 1, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 1, 1, 1, 0 );

    m : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 0, 1, 0,
      1, 0, 1, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1 );

    n : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 1, 1, 0,
      1, 1, 0, 0, 1,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1 );

    o : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    p : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 0 );

    q : constant letter := (
      0, 0, 0, 0, 0,
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 1,
      0, 0, 0, 0, 1 );

    r : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 1, 1,
      1, 0, 1, 0, 0,
      1, 1, 0, 0, 0,
      1, 0, 0, 0, 0 );

    s : constant letter := (
      0, 0, 0, 0, 0,
      0, 0, 0, 1, 1,
      0, 0, 1, 0, 0,
      0, 0, 0, 1, 0,
      0, 1, 1, 0, 0 );

    t : constant letter := (
      0, 1, 0, 0, 0,
      1, 1, 1, 0, 0,
      0, 1, 0, 0, 0,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0 );

    u : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 1, 0,
      1, 0, 0, 1, 0,
      1, 0, 0, 1, 0,
      0, 1, 1, 0, 1 );

    v : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 0, 1,
      1, 0, 0, 0, 1,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0 );

    w : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 0, 1,
      1, 0, 1, 0, 1,
      1, 1, 0, 1, 1,
      1, 0, 0, 0, 1 );

    x : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 1, 0,
      0, 1, 1, 0, 0,
      0, 1, 1, 0, 0,
      1, 0, 0, 1, 0 );

    y : constant letter := (
      0, 0, 0, 0, 0,
      1, 0, 0, 0, 1,
      0, 1, 0, 1, 0,
      0, 0, 1, 0, 0,
      1, 1, 0, 0, 0 );

    z : constant letter := (
      0, 0, 0, 0, 0,
      1, 1, 1, 1, 0,
      0, 0, 1, 0, 0,
      0, 1, 0, 0, 0,
      1, 1, 1, 1, 0 );

    zero : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 1, 1,
      1, 0, 1, 0, 1,
      1, 1, 0, 0, 1,
      0, 1, 1, 1, 0 );

    one : constant letter := (
      0, 0, 1, 0, 0,
      0, 1, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 1, 0, 0,
      0, 1, 1, 1, 0 );

    two : constant letter := (
      1, 1, 1, 1, 0,
      0, 0, 0, 0, 1,
      0, 0, 1, 1, 0,
      0, 1, 0, 0, 0,
      1, 1, 1, 1, 1 );

    three : constant letter := (
      1, 1, 1, 1, 0,
      0, 0, 0, 0, 1,
      0, 1, 1, 1, 0,
      0, 0, 0, 0, 1,
      1, 1, 1, 1, 0 );

    four : constant letter := (
      0, 0, 1, 1, 0,
      0, 1, 0, 1, 0,
      1, 1, 1, 1, 1,
      0, 0, 0, 1, 0,
      0, 0, 0, 1, 0 );

    five : constant letter := (
      1, 1, 1, 1, 1,
      1, 0, 0, 0, 0,
      1, 1, 1, 1, 0,
      0, 0, 0, 0, 1,
      1, 1, 1, 1, 0 );

    six : constant letter := (
      0, 0, 1, 1, 0,
      0, 1, 0, 0, 0,
      1, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    seven : constant letter := (
      1, 1, 1, 1, 1,
      0, 0, 0, 1, 0,
      0, 0, 1, 0, 0,
      0, 1, 0, 0, 0,
      0, 1, 0, 0, 0 );

    eight : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 0 );

    nine : constant letter := (
      0, 1, 1, 1, 0,
      1, 0, 0, 0, 1,
      0, 1, 1, 1, 1,
      0, 0, 0, 1, 0,
      0, 1, 1, 0, 0 );

    space : constant letter := (
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0 );

    function char_to_letter(ch : character) return letter is
    begin
      case ch is
        when 'a' => return a;
        when 'b' => return b;
        when 'c' => return c;
        when 'd' => return d;
        when 'e' => return e;
        when 'f' => return f;
        when 'g' => return g;
        when 'h' => return h;
        when 'i' => return i;
        when 'j' => return j;
        when 'k' => return k;
        when 'l' => return l;
        when 'm' => return m;
        when 'n' => return n;
        when 'o' => return o;
        when 'p' => return p;
        when 'q' => return q;
        when 'r' => return r;
        when 's' => return s;
        when 't' => return t;
        when 'u' => return u;
        when 'v' => return v;
        when 'w' => return w;
        when 'x' => return x;
        when 'y' => return y;
        when 'z' => return z;
        when 'A' => return A_upper;
        when 'B' => return B_upper;
        when 'C' => return C_upper;
        when 'D' => return D_upper;
        when 'E' => return E_upper;
        when 'F' => return F_upper;
        when 'G' => return G_upper;
        when 'H' => return H_upper;
        when 'I' => return I_upper;
        when 'J' => return J_upper;
        when 'K' => return K_upper;
        when 'L' => return L_upper;
        when 'M' => return M_upper;
        when 'N' => return N_upper;
        when 'O' => return O_upper;
        when 'P' => return P_upper;
        when 'Q' => return Q_upper;
        when 'R' => return R_upper;
        when 'S' => return S_upper;
        when 'T' => return T_upper;
        when 'U' => return U_upper;
        when 'V' => return V_upper;
        when 'W' => return W_upper;
        when 'X' => return X_upper;
        when 'Y' => return Y_upper;
        when 'Z' => return Z_upper;
        when '0' => return zero;
        when '1' => return one;
        when '2' => return two;
        when '3' => return three;
        when '4' => return four;
        when '5' => return five;
        when '6' => return six;
        when '7' => return seven;
        when '8' => return eight;
        when '9' => return nine;
        when ' ' => return space;
        when others => return a;
      end case;
    end char_to_letter;

    procedure draw(l : letter; x, y : uint) is
    begin
      for i in 0 .. 4 loop
        for j in 0 .. 4 loop
          if l(i * 5 + j + 1) = 1 then
            set_pixel((x + j * 4, y + i * 4), white);
            set_pixel((x + j * 4 + 1, y + i * 4), white);
            set_pixel((x + j * 4 + 2, y + i * 4), white);
            set_pixel((x + j * 4 + 3, y + i * 4), white);
            set_pixel((x + j * 4 + 4, y + i * 4), white);
            set_pixel((x + j * 4, y + i * 4 + 1), white);
            set_pixel((x + j * 4, y + i * 4 + 2), white);
            set_pixel((x + j * 4, y + i * 4 + 3), white);
            set_pixel((x + j * 4, y + i * 4 + 4), white);
            set_pixel((x + j * 4 + 1, y + i * 4 + 1), white);
            set_pixel((x + j * 4 + 2, y + i * 4 + 2), white);
            set_pixel((x + j * 4 + 3, y + i * 4 + 3), white);
            set_pixel((x + j * 4 + 4, y + i * 4 + 4), white);
          end if;
        end loop;
      end loop;
    end draw;

    x_coord : uint := width'last / 2;
    y_coord : uint := y_coord_in;

  begin

    for l in str'first .. str'last loop
      draw(char_to_letter(str(l)), x_coord, y_coord);
      y_coord := y_coord + 7 * 4;
      if x_coord + 7 >= width'last then
        y_coord := 0;
        x_coord := x_coord + 7 * 4;
      end if;
    end loop;

  end draw;

end font;
