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

  def rand_indicator
    fa_icon("circle", class: ["ok-status", "warn-status", "danger-status"].sample )
  end

  def diff_days(date)
    diff = (Date.today - date).to_i
    diff_days = diff > 1 ? t("days", day: diff) : t("day", day: diff)
    content_tag(:span) do
      concat(diff_days)
      concat(tag(:br))
      concat("(#{l(date)})")
    end
  end
end
