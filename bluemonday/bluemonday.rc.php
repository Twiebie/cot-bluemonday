<?php
/**
 * JavaScript and CSS loader for Blue Monday theme
 *
 * @package Cotonti
 * @version 0.7.0
 * @author Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2010-2012
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/bootstrap.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/style.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/modalbox.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/uniform.default.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/js.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/jquery.uniform.min.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/jquery.example.min.js');

?>
