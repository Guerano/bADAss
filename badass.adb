with screen_interface; use screen_Interface;
with core_geometry; use core_geometry;
with game_player; use game_player;
with game_ball; use game_ball;
with core_utils; use core_utils;
with core_math; use core_math;

procedure bADAss is

  -- constants
  padding : constant uint := 20;
  player_width : constant uint := 70;
  player_height : constant uint := 10;
  circle_radius : constant uint := 10;
  bg_color : constant color := black;

  enemy : player := ((width'last / 2 - player_width / 2, padding, player_width,
                      player_height), red);
  user : player := ((width'last / 2 - player_width / 2,
                     height'last - padding - player_height,
                     player_width, player_height), green);
  main_ball : ball := ((width'last / 2, height'last / 2, circle_radius), white,
                        90, 10.0);

  -- keep track of the last position of the objects
  last_enemy : player := (enemy.r, bg_color);
  last_user : player := (user.r, bg_color);
  last_ball : ball := (main_ball.ci, bg_color, main_ball.a, main_ball.speed);

  -- hold information about intersections
  intersects_enemy : boolean;
  intersects_user : boolean;

  -- keep track of the last intersection states
  last_intersects_enemy : boolean;
  last_intersects_user : boolean;

  -- touchscreen
  state : touch_state;
begin
  -- init
  screen_interface.initialize;
  fill_screen(black);
  draw(enemy);
  draw(user);
  draw(main_ball);

  -- update loop
  loop
    sleep(60);

    -- user interaction
    state := get_touch_state;
    if state.touch_detected then
      draw(last_user);
      if state.x > width'last / 2 then
        slide_x(user, 10);
      else
        slide_x(user, -10);
      end if;
      draw(user);
    end if;

    -- move the ball
    update(main_ball);

    -- clean the ball before drawing the new one
    -- FIXME: Draw only the part not intersecting with the main ball
    draw(last_ball);

    -- enemy follow the ball
    update_enemy(enemy, main_ball);

    -- compute intersections
    intersects_enemy := intersects(enemy.r, main_ball.ci);
    intersects_user := intersects(user.r, main_ball.ci);

    if intersects_enemy then
      slide_y(main_ball,
              abs((enemy.r.y + enemy.r.h) - (main_ball.ci.y - main_ball.ci.r)));
      draw(enemy);
    end if;
    if intersects_user then
      slide_y(main_ball,
              -abs(user.r.y - (main_ball.ci.y + main_ball.ci.r)));
      draw(user);
    end if;

    -- always draw the main ball
    draw(main_ball);

    -- change the direction of the ball if it hit a player
    if intersects_enemy then
      if cos(main_ball.a) > 0.0 then
        main_ball.a := (main_ball.a + 45) mod 360;
      else
        main_ball.a := (main_ball.a - 45) mod 360;
      end if;
    elsif intersects_user then
      if cos(main_ball.a) > 0.0 then
        main_ball.a := (main_ball.a - 45) mod 360;
      else
        main_ball.a := (main_ball.a + 45) mod 360;
      end if;
    end if;

    -- remember the last state
    last_enemy.r := enemy.r;
    last_user.r := user.r;
    last_ball.ci := main_ball.ci;
    last_intersects_enemy := intersects_enemy;
    last_intersects_user := intersects_user;

  end loop;
end bADAss;
