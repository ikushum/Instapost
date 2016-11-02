jQuery ->
  #if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      url = $('#infinite-scrolling .next_page a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 300
            $('.pagination').html('<img style="width:30px" src="http://loadinggif.com/images/image-selection/32.gif">')
            $.getScript(url)
