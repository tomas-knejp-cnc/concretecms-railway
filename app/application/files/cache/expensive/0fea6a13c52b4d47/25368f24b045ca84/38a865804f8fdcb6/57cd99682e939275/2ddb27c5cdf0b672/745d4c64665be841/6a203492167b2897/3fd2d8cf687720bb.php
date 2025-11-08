<?php 
/* Cachekey: cache/stash_default/doctrine/[concrete\core\entity\express\entity$associations][1]/ */
/* Type: array */
/* Expiration: 2025-11-13T09:31:33+00:00 */



$loaded = true;
$expiration = 1763026293;

$data = array();

/* Child Type: array */
$data['return'] = array (
  0 => 
  \Doctrine\ORM\Mapping\OneToMany::__set_state(array(
     'mappedBy' => 'source_entity',
     'targetEntity' => 'Association',
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
