module NoChart

  def no_chart(label_x, label_y, data_array)
    x_max = label_x.nitems + 1
    y_max = label_y.nitems + 1

    # This solution is so ugly that makes me 
    # want to puke :D.
    template = ""
    template += "<table id='no_chart' class='no_chart'>"
    (1..y_max).each do |y|
      template += "<tr>"
        (1..x_max).each do |x|
          if y == y_max and x != 1
            template += "<td class='bottom'>#{label_x[x - 2]}</td>"
          elsif y != y_max and x == 1
            template += "<td class='left'>#{label_y[y_max - y - 1]}</td>"
          elsif y == y_max
            template += "<td class='not_used'></td>"
          else
            if data_array[x-2].to_f >= label_y[y_max-y-1].to_f
              template += "<td class='used column_#{x-1}'></td>"
            else
              template += "<td class='clear'></td>"
            end
          end
        end
      template += "</tr>"
    end
    template += "</table>"
    return template
  end

end
