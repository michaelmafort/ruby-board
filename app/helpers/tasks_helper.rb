module TasksHelper
  def status model
    model.status_options.each  do |s|
      if(s[:value] == model.status)
        return s[:label]
      end
    end
  end

  def priority model
    model.priority_options.each  do |p|
      if(p[:value] == model.priority)
        return p[:label]
      end
    end
  end
end
