module MainHelper
  def file_time_icon
    content_tag :span, class: "" do
      concat(fa_icon("file-o", class: "file-icon"))
      concat(fa_icon("clock-o", class: "clock-icon"))
    end
  end

  def rand_number
    rand(999)
  end

  def rand_ptg
    " (#{rand(100)}%)"
  end
end
