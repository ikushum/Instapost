jQuery ->
  # if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      #more_posts_url = $('.pagination .next_page a').attr('href')
        if $(window).scrollTop() > $(document).height() - $(window).height() - 300
            $('.pagination').html('Loading...')
            $.getScript($('.pagination .next_page').attr('href'))
