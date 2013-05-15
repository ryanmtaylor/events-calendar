module FormatHelper
  def show_time time
    time.strftime('%l:%M%P')
  end
end