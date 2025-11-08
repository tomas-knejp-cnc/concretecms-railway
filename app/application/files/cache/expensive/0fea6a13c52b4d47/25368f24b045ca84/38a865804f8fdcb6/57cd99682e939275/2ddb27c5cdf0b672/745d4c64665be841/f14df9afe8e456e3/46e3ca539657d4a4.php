<?php 
/* Cachekey: cache/stash_default/doctrine/[concrete\core\entity\summary\template$fields][1]/ */
/* Type: array */
/* Expiration: 2025-11-12T22:01:31+00:00 */



$loaded = true;
$expiration = 1762984891;

$data = array();

/* Child Type: array */
$data['return'] = array (
  0 => 
  \Doctrine\ORM\Mapping\OneToMany::__set_state(array(
     'mappedBy' => 'template',
     'targetEntity' => 'TemplateField',
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
