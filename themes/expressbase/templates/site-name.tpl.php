<?php
  $custom_logo = array();
  // Load logo files
  if (variable_get('custom_white_logo', NULL) && variable_get('custom_black_logo', NULL)) {
    $custom_logo = array(
      'white' => file_load(variable_get('custom_white_logo')),
      'black' => file_load(variable_get('custom_black_logo')),
    );
    // Create img markup
    $custom_logo['white']->markup = '<img class="custom-logo custom-logo-white" src="' . file_create_url($custom_logo['white']->uri) . '" alt="' . check_plain($site_name) . ' logo" />';
    $custom_logo['black']->markup = '<img class="custom-logo custom-logo-black" src="' . file_create_url($custom_logo['black']->uri) . '" alt="' . check_plain($site_name) . ' logo" />';
  }
?>
<?php if (!empty($custom_logo)):?>
  <<?php print $site_name_tag; ?> class="site-name">
    <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" class="" rel="home"><span><?php print $custom_logo['black']->markup; ?></span></a>
  </<?php print $site_name_tag; ?>>
<?php else: ?>

  <?php if ($site_name): ?>
    <<?php print $site_name_tag; ?> class="site-name">
      <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" class="header__site-link" rel="home"><span><?php print $site_name; ?></span></a>
    </<?php print $site_name_tag; ?>>
    <?php $affiliation = variable_get('express_site_affiliation', NULL); ?>
    <?php if (!empty($affiliation)): ?>

      <div class="affiliation">
        <?php
          if (!empty($affiliation['url'])) {
            print l($affiliation['title'], $affiliation['url'], array('html' => TRUE));
          }
          else {
            print $affiliation['title'];
          }
        ?>
      </div>
    <?php endif; ?>
  <?php endif; ?>
<?php endif; ?>