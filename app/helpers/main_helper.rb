module MainHelper
  def file_time_icon
    content_tag :span, class: "file-time" do
      concat(fa_icon("file-o", class: "file-icon"))
      concat(fa_icon("clock-o", class: "clock-icon"))
    end
  end
end
