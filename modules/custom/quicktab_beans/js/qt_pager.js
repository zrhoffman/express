(function ($) {
  Drupal.behaviors.quicktabBeansPager = {
    attach: function (context, settings) {
      var tabs, doop, href, qtName;

      // forEach method, could be shipped as part of an Object Literal/Module
      var forEach = function (array, callback, scope) {
        for (var i = 0; i < array.length; i++) {
          callback.call(scope, i, array[i]); // passes back stuff we need
        }
      };

      // Get all quicktabs tabs.
      tabs = document.querySelectorAll('.quicktabs-tabpage');
      // Get name of quicktabs instance.
      qtName = document.querySelector('.quicktabs-wrapper').getAttribute('id').split('-');

      // Loop through and add the tab reference to the pager link.
      forEach(tabs, function (index, value) {
        doop = value.querySelectorAll('.quicktabs-tabpage .pager a');
        forEach(doop, function (indexed, valued) {
          href = valued.getAttribute('href');
          // Don't add query parameter if it has been added already.
          if (href.indexOf('&qt-news=') === -1) {
            // Add new href here.
            href = href + '&qt-' + qtName[1] + '=' + index;
            valued.setAttribute('href', href);
          }
        });
      });
    }
  };
})(jQuery);

