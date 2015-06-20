// ===========================
// Top Bar Menu
// ===========================

var Menubar = {};

Menubar.active = false;

Menubar.open = function(el) {
  var menubar = $(el).closest('.menubar'),
      item = $(el).closest('.menubar-item'),
      menu = item.find('.menu').first();

  Menubar.active = true;
  item.addClass('is-selected')
  item.siblings().removeClass('is-selected');
};

Menubar.close = function() {
  $('.menubar-item.is-selected').removeClass('is-selected');
  Menubar.active = false;
};

// $('.menubar-item').on('click', function(e) {
$('.menubar-item').on('mouseover', function(e) {
  if (!Menubar.active) {
    Menubar.open(this);
    // e.stopPropagation(); // Keep document.click from firing
  }
});

$('.menubar-item').on('mouseenter', function() {
  if (Menubar.active) { Menubar.open(this); }
});

// $(document).on('click', function() {
$(document).on('mouseout', function() {
  Menubar.close();
});


// ===========================
// Listings Subcategories
// ===========================

// FIXME ccm: This should only be served for listings/new.html.haml.
// Problem is requires jQuery, which is served at bottom of page.
// http://guides.rubyonrails.org/asset_pipeline.html#controller-specific-assets

$(document).ready(function(){
  var getSubcategories = function(category_id){
    var $subcategories = $('#listing_subcategory_id');
    $($subcategories).empty();

    $.post('/subcategories/find_by_category', { category_id: category_id }, function(data){
      $.each(data.subcategories, function(index, subcategory){
        var option = $('<option />');
        option.attr('value', subcategory.id);
        option.text(subcategory.name);
        option.appendTo($subcategories);
      });
    })
  };

  var getSelectedCategory = function(){
    return $('#listing_category_id').val();
  };

  $('#listing_category_id').change(function(){
    var category_id = getSelectedCategory();
    getSubcategories(category_id);
  });

  getSubcategories(getSelectedCategory());
});
