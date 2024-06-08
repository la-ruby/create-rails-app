module AutoColor
  extend ActiveSupport::Concern

  def auto_color_dark
    srand(id)
    predefined_colors = [
      [0, 0, 0],       # Black
      [255, 255, 255], # White
      [255, 0, 0],     # Red
      [0, 255, 0],     # Green
      [0, 0, 255],     # Blue
      [255, 255, 0],   # Yellow
      [255, 0, 255],   # Magenta
      [0, 255, 255],   # Cyan
      [128, 0, 0],     # Maroon
      [0, 128, 0],     # Green (Medium)
      [0, 0, 128],     # Navy
      [128, 128, 0],   # Olive
      [128, 0, 128],   # Purple
      [0, 128, 128],   # Teal
      [192, 192, 192]  # Silver
    ]
    selected_color = predefined_colors.sample
    selected_color
  end

  def red
    auto_color_dark[0]
  end

  def blue
    auto_color_dark[1]
  end

  def green
    auto_color_dark[2]
  end
end
