struct Position {
  mut x : Int
  mut y : Int
}

let pos : Position = { x: 0, y: 0 }

pub fn start() -> Unit {

}

pub fn update() -> Unit {
  if @wasm4.get_gamepad(index=1).button_right && pos.x + 80 < 160 {
    pos.x += 1
  } else if @wasm4.get_gamepad(index=1).button_down && pos.y + 80 < 160 {
    pos.y += 1
  } else if @wasm4.get_gamepad(index=1).button_left && pos.x >= 0 {
    pos.x -= 1
  } else if @wasm4.get_gamepad(index=1).button_up && pos.y >= 0 {
    pos.y -= 1
  }
  @wasm4.set_draw_colors(index=1, 2)
  @wasm4.rect(pos.x, pos.y, 80, 80)
}