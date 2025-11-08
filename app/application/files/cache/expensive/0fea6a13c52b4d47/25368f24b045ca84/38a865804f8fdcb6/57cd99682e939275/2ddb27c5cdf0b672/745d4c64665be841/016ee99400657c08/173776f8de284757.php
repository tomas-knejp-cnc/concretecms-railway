<?php 
/* Cachekey: cache/stash_default/doctrine/[concrete\core\entity\express\entity$entries][1]/ */
/* Type: array */
/* Expiration: 2025-11-12T19:41:43+00:00 */



$loaded = true;
$expiration = 1762976503;

$data = array();

/* Child Type: array */
$data['return'] = array (
  0 => 
  \Doctrine\ORM\Mapping\OneToMany::__set_state(array(
     'mappedBy' => 'entity',
     'targetEntity' => 'Entry',
     'cascade' => 
    array (
      0 => 'persist',
      1 => 'remove',
    ),
     'fetch' => 'LAZY',
     'orphanRemoval' => false,
     'indexBy' => NULL,
  )),
);

/* Child Type: integer */
$data['createdOn'] = 1762601544;
