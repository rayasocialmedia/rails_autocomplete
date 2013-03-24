$(function() {
  $('.autocomplete').typeahead({
    source: function(query, process) {
      return $.ajax({
        url: $(this)[0].$element.data('autocomplete-url'),
        type: 'get',
        data: { q: query },
        dataType: 'json',
        success: function(data) {
          console.log(data);
          return process(data);
        }
      });
    }
  });
  console.log('Autocomplete enabled!');
});

function rails_autocomplete(query, process) {
  console.log('autocompleting...');
}