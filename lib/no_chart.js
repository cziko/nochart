function load_no_chart_ui(){
  $R(1, 30).each(function(index) {
    $('no_chart').select('td.column_'+index).each(function(i){
                                                    i.writeAttribute('onmouseover', "bar_mouse_over("+index+")");
                                                    i.writeAttribute('onmouseout', "bar_mouse_out("+index+")");
                                                  });
  });
}

function bar_mouse_over(i){
  $('no_chart').select('td.column_'+i).each(function(item){item.addClassName('selected')});
}

function bar_mouse_out(i){
  $('no_chart').select('td.column_'+i).each(function(item){item.removeClassName('selected')});
}
