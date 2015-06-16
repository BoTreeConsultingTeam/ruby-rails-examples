class LearningReportService
  def initialize(user, date)
    @user = user
    @date = date
  end

  def learning_report
    learn_time_data = LearnTime.report_of_learn_time(@user.id, @date)
    links = @user.total_links_after(@date)
    data = prepare_date(learn_time_data, links)
    options = { :width => 450, :height => 400, :title => '', :legend => 'bottom' }
    data_table = assing_google_visualer([['date', 'Day'], ['number', 'Learn Count'], ['number', 'Add Count']])
    data_table.add_rows(data)
    render_line_chart(data_table, options)
  end

  def tag_usage_report
    @tags = @user.owned_tags
    tags_usage_data = @tags.map{|tag|[ tag.name, Link.where(:user_id => @user.id).tagged_with(tag).count]}
    data_table = assing_google_visualer([['string', 'Tag'], ['number', 'Tag Count']])
    data_table.add_rows(tags_usage_data.sort {|a,b| a[1] <=> b[1]}.reverse.first(10))
    options   = { :width => 450, :height => 400, :title => '', :legend => 'bottom' }
    render_pie_chart(data_table, options)
  end

  def render_line_chart(data, options)
    GoogleVisualr::Interactive::LineChart.new(data, options)
  end

  def render_pie_chart(data, options)
    GoogleVisualr::Interactive::PieChart.new(data, options)
  end

  def assing_google_visualer(column_detail)
    data_table = GoogleVisualr::DataTable.new
    column_detail.each do |column_type, column_name|
      data_table.new_column(column_type, column_name)
    end
    data_table
  end

  def prepare_date(learn_time_data, links)
    data = ((Date.today-30)..Date.today).inject([]) do |data, date|
      learn_count = learn_time_data[date] || 0
      link_count = links[date] || 0
      data << [date, learn_count, link_count ]
    end
  end
end