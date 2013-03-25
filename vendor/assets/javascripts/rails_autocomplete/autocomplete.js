$(function() {
  $('.rails-autocomplete').typeahead({
    source: function(query, process) {
      items = [];
      map = {};
      return $.ajax({
        url: $(this)[0].$element.data('autocomplete-url'),
        context: $(this)[0].$element,
        type: 'get',
        data: { q: query },
        dataType: 'json',
        beforeSend: function(xhr) {
          $(this).toggleClass('rails-autocomplete-loading');
        },
        success: function(data) {
          $.each(data, function (i, item) {
            map[item.name] = item;
            items.push(item.name);
          });
          $(this).toggleClass('rails-autocomplete-loading');
          return process(items);
        }
      });
    },
    updater: function(item) {
        selectedItem = map[item].id;
        $('input[data-autocomplete-child=' + $(this)[0].$element.data('autocomplete-parent') + ']').attr('value', selectedItem);
        return item;
    }
  });
});