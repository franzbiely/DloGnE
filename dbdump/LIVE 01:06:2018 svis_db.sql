<!DOCTYPE HTML><html lang='en' dir='ltr'><head><meta charset="utf-8" /><meta name="referrer" content="no-referrer" /><meta name="robots" content="noindex,nofollow" /><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1.0"><style id="cfs-style">html{display: none;}</style><link rel="icon" href="favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="./themes/pmahomme/jquery/jquery-ui.css" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/lib/codemirror.css?v=4.8.0-dev" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/hint/show-hint.css?v=4.8.0-dev" /><link rel="stylesheet" type="text/css" href="js/vendor/codemirror/addon/lint/lint.css?v=4.8.0-dev" /><link rel="stylesheet" type="text/css" href="phpmyadmin.css.php?nocache=4527005456ltr&amp;server=1" /><link rel="stylesheet" type="text/css" href="./themes/pmahomme/css/printview.css?v=4.8.0-dev" media="print" id="printcss"/><title>svisapi.theprofessionals.com.pg / localhost / svis_db | phpMyAdmin 4.8.0-dev</title><script data-cfasync="false" type="text/javascript" src="js/get_scripts.js.php?scripts%5B%5D=vendor/jquery/jquery.min.js&amp;scripts%5B%5D=vendor/jquery/jquery-migrate-3.0.0.js&amp;scripts%5B%5D=vendor/sprintf.js&amp;scripts%5B%5D=ajax.js&amp;scripts%5B%5D=keyhandler.js&amp;scripts%5B%5D=vendor/jquery/jquery-ui.min.js&amp;scripts%5B%5D=vendor/js.cookie.js&amp;scripts%5B%5D=vendor/jquery/jquery.mousewheel.js&amp;scripts%5B%5D=vendor/jquery/jquery.event.drag-2.2.js&amp;scripts%5B%5D=vendor/jquery/jquery-ui-timepicker-addon.js&amp;v=4.8.0-dev"></script><script data-cfasync="false" type="text/javascript" src="js/get_scripts.js.php?scripts%5B%5D=vendor/jquery/jquery.ba-hashchange-1.3.js&amp;scripts%5B%5D=vendor/jquery/jquery.debounce-1.0.5.js&amp;scripts%5B%5D=menu-resizer.js&amp;scripts%5B%5D=cross_framing_protection.js&amp;scripts%5B%5D=rte.js&amp;scripts%5B%5D=vendor/tracekit.js&amp;scripts%5B%5D=error_report.js&amp;scripts%5B%5D=config.js&amp;scripts%5B%5D=doclinks.js&amp;scripts%5B%5D=functions.js&amp;v=4.8.0-dev"></script><script data-cfasync="false" type="text/javascript" src="js/get_scripts.js.php?scripts%5B%5D=navigation.js&amp;scripts%5B%5D=indexes.js&amp;scripts%5B%5D=common.js&amp;scripts%5B%5D=page_settings.js&amp;scripts%5B%5D=shortcuts_handler.js&amp;scripts%5B%5D=export_output.js&amp;scripts%5B%5D=vendor/codemirror/lib/codemirror.js&amp;scripts%5B%5D=vendor/codemirror/mode/sql/sql.js&amp;scripts%5B%5D=vendor/codemirror/addon/runmode/runmode.js&amp;scripts%5B%5D=vendor/codemirror/addon/hint/show-hint.js&amp;v=4.8.0-dev"></script><script data-cfasync="false" type="text/javascript" src="js/get_scripts.js.php?scripts%5B%5D=vendor/codemirror/addon/hint/sql-hint.js&amp;scripts%5B%5D=vendor/codemirror/addon/lint/lint.js&amp;scripts%5B%5D=codemirror/addon/lint/sql-lint.js&amp;scripts%5B%5D=console.js&amp;v=4.8.0-dev"></script><script data-cfasync='false' type='text/javascript' src='js/whitelist.php?v=4.8.0-dev'></script><script data-cfasync='false' type='text/javascript' src='js/messages.php?l=en&amp;v=4.8.0-dev'></script><script data-cfasync='false' type='text/javascript' src='js/get_image.js.php?theme=pmahomme&amp;v=4.8.0-dev'></script><script data-cfasync="false" type="text/javascript">// <![CDATA[
PMA_commonParams.setAll({common_query:"",opendb_url:"db_structure.php",collation_connection:"utf8mb4_unicode_ci",lang:"en",server:"1",table:"",db:"svis_db",token:"<^2-1JY@Szd@Z2IP",text_dir:"ltr",show_databases_navigation_as_tree:"1",pma_text_default_tab:"Browse",pma_text_left_default_tab:"Structure",pma_text_left_default_tab2:"",LimitChars:"50",pftext:"",confirm:"1",LoginCookieValidity:"1440",session_gc_maxlifetime:"1440",logged_in:"1",is_https:"1",rootPath:"/phpmyadmin/",PMA_VERSION:"4.8.0-dev",auth_type:"cookie",user:"9eafbfe54e39"});
ConsoleEnterExecutes=false
AJAX.scriptHandler.add("vendor/jquery/jquery.min.js",0).add("vendor/jquery/jquery-migrate-3.0.0.js",0).add("whitelist.php",1).add("vendor/sprintf.js",1).add("ajax.js",0).add("keyhandler.js",1).add("vendor/jquery/jquery-ui.min.js",0).add("vendor/js.cookie.js",1).add("vendor/jquery/jquery.mousewheel.js",0).add("vendor/jquery/jquery.event.drag-2.2.js",0).add("vendor/jquery/jquery-ui-timepicker-addon.js",0).add("vendor/jquery/jquery.ba-hashchange-1.3.js",0).add("vendor/jquery/jquery.debounce-1.0.5.js",0).add("menu-resizer.js",1).add("cross_framing_protection.js",0).add("rte.js",1).add("vendor/tracekit.js",1).add("error_report.js",1).add("messages.php",0).add("get_image.js.php",0).add("config.js",1).add("doclinks.js",1).add("functions.js",1).add("navigation.js",1).add("indexes.js",1).add("common.js",1).add("page_settings.js",1).add("shortcuts_handler.js",1).add("export_output.js",1).add("vendor/codemirror/lib/codemirror.js",0).add("vendor/codemirror/mode/sql/sql.js",0).add("vendor/codemirror/addon/runmode/runmode.js",0).add("vendor/codemirror/addon/hint/show-hint.js",0).add("vendor/codemirror/addon/hint/sql-hint.js",0).add("vendor/codemirror/addon/lint/lint.js",0).add("codemirror/addon/lint/sql-lint.js",0).add("console.js",1);
$(function() {AJAX.fireOnload("whitelist.php");AJAX.fireOnload("vendor/sprintf.js");AJAX.fireOnload("keyhandler.js");AJAX.fireOnload("vendor/js.cookie.js");AJAX.fireOnload("menu-resizer.js");AJAX.fireOnload("rte.js");AJAX.fireOnload("vendor/tracekit.js");AJAX.fireOnload("error_report.js");AJAX.fireOnload("config.js");AJAX.fireOnload("doclinks.js");AJAX.fireOnload("functions.js");AJAX.fireOnload("navigation.js");AJAX.fireOnload("indexes.js");AJAX.fireOnload("common.js");AJAX.fireOnload("page_settings.js");AJAX.fireOnload("shortcuts_handler.js");AJAX.fireOnload("export_output.js");AJAX.fireOnload("console.js");});
// ]]></script><noscript><style>html{display:block}</style></noscript></head><body><div id="pma_navigation"><div id="pma_navigation_resizer"></div><div id="pma_navigation_collapser"></div><div id="pma_navigation_content"><div id="pma_navigation_header"><a class="hide navigation_url" href="navigation.php?ajax_request=1"></a><!-- LOGO START -->
<div id="pmalogo">
            <a href="index.php">
        <img src="./themes/pmahomme/img/logo_left.png" alt="phpMyAdmin" id="imgpmalogo" />            </a>
    </div>
<!-- LOGO END --><!-- LINKS START --><div id="navipanellinks"><a href="index.php" title="Home"><img src="themes/dot.gif" title="Home" alt="Home" class="icon ic_b_home" /></a><a href="logout.php" class="logout disableAjax" title="Log out"><img src="themes/dot.gif" title="Log out" alt="Log out" class="icon ic_s_loggoff" /></a><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Findex.html" target="documentation" title="phpMyAdmin documentation"><img src="themes/dot.gif" title="phpMyAdmin documentation" alt="phpMyAdmin documentation" class="icon ic_b_docs" /></a><a href="./url.php?url=https%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F5.7%2Fen%2Findex.html" target="mysql_doc" title="Documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_sqlhelp" /></a><a href="#" id="pma_navigation_settings_icon" title="Navigation panel settings"><img src="themes/dot.gif" title="Navigation panel settings" alt="Navigation panel settings" class="icon ic_s_cog" /></a><a href="#" id="pma_navigation_reload" title="Reload navigation panel"><img src="themes/dot.gif" title="Reload navigation panel" alt="Reload navigation panel" class="icon ic_s_reload" /></a></div><!-- LINKS ENDS --><img src="./themes/pmahomme/img/ajax_clock_small.gif" title="Loading…" alt="Loading…" style="visibility: hidden; display:none" class="throbber" /></div><div id="pma_navigation_tree" class="list_container synced highlight"><div class="pma_quick_warp"><div class="drop_list"><span title="Recent tables" class="drop_button">Recent</span><ul id="pma_recent_list"><li class="warp_link">There are no recent tables.</li></ul></div><div class="drop_list"><span title="Favorite tables" class="drop_button">Favorites</span><ul id="pma_favorite_list"><li class="warp_link">There are no favorite tables.</li></ul></div><div class="clearfloat"></div></div><div class="clearfloat"></div><ul><!-- CONTROLS START --><li id="navigation_controls_outer"><div id="navigation_controls"><a href="#" id="pma_navigation_collapse" title="Collapse all"><img src="./themes/pmahomme/img/s_collapseall.png" title="Collapse all" alt="Collapse all" /></a><a href="#" id="pma_navigation_sync" title="Unlink from main panel"><img src="themes/dot.gif" title="Unlink from main panel" alt="Unlink from main panel" class="icon ic_s_link" /></a></div></li><!-- CONTROLS ENDS --></ul><div id='pma_navigation_tree_content'><ul><li class="first new_database italics"><div class='block'><i class='first'></i></div><div class='block '><a href='server_databases.php?server=1'><img src="themes/dot.gif" title="" alt="" class="icon ic_b_newdb" /></a></div><a class='hover_show_full' href='server_databases.php?server=1' title=''>New</a><div class="clearfloat"></div></li><li class="database"><div class='block'><i></i><b></b><a class="expander" href='#'><span class='hide aPath'>cm9vdA==.aW5mb3JtYXRpb25fc2NoZW1h</span><span class='hide vPath'>cm9vdA==.aW5mb3JtYXRpb25fc2NoZW1h</span><span class='hide pos'>0</span><img src="themes/dot.gif" title="Expand/Collapse" alt="Expand/Collapse" class="icon ic_b_plus" /></a></div><div class='block '><a href='db_operations.php?server=1&amp;db=information_schema&amp;'><img src="themes/dot.gif" title="Database operations" alt="Database operations" class="icon ic_s_db" /></a></div><a class='hover_show_full' href='db_structure.php?server=1&amp;db=information_schema' title='Structure'>information_schema</a><div class="clearfloat"></div></li><li class="last database"><div class='block'><i></i><a class="expander" href='#'><span class='hide aPath'>cm9vdA==.c3Zpc19kYg==</span><span class='hide vPath'>cm9vdA==.c3Zpc19kYg==</span><span class='hide pos'>0</span><img src="themes/dot.gif" title="Expand/Collapse" alt="Expand/Collapse" class="icon ic_b_plus" /></a></div><div class='block '><a href='db_operations.php?server=1&amp;db=svis_db&amp;'><img src="themes/dot.gif" title="Database operations" alt="Database operations" class="icon ic_s_db" /></a></div><a class='hover_show_full' href='db_structure.php?server=1&amp;db=svis_db' title='Structure'>svis_db</a><div class="clearfloat"></div></li></ul></div></div><div id="pma_navi_settings_container"><div id="pma_navigation_settings"><div class="page_settings"><form method="post" action="export.php?db=svis_db&amp;table=&amp;server=1&amp;target=" class="config-form disableAjax"><input type="hidden" name="tab_hash" value="" /><input type="hidden" name="check_page_refresh"  id="check_page_refresh" value="" />
<input type="hidden" name="token" value="&lt;^2-1JY@Szd@Z2IP" />
<input type="hidden" name="submit_save" value="Navi" /><input type="hidden" name="token" value="&lt;^2-1JY@Szd@Z2IP" /><ul class="tabs responsivetable">

                                    <li>

            <a href="#Navi_panel">
            Navigation panel
            </a>
        </li>
                                <li>

            <a href="#Navi_tree">
            Navigation tree
            </a>
        </li>
                                <li>

            <a href="#Navi_servers">
            Servers
            </a>
        </li>
                                <li>

            <a href="#Navi_databases">
            Databases
            </a>
        </li>
                                <li>

            <a href="#Navi_tables">
            Tables
            </a>
        </li>
            </ul>
<br /><div class="tabs_contents"><fieldset class="optbox" id="Navi_panel"><legend>Navigation panel</legend><p>Customize appearance of the navigation panel.</p><table width="100%" cellspacing="0"><tr><th><label for="ShowDatabasesNavigationAsTree">Show databases navigation as tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_ShowDatabasesNavigationAsTree" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>In the navigation panel, replaces the database tree with a selector</small></th><td><span class="checkbox"><input type="checkbox" name="ShowDatabasesNavigationAsTree" id="ShowDatabasesNavigationAsTree" checked="checked" /></span><a class="restore-default hide" href="#ShowDatabasesNavigationAsTree" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationLinkWithMainPanel">Link with main panel</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationLinkWithMainPanel" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Link with main panel by highlighting the current database or table.</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationLinkWithMainPanel" id="NavigationLinkWithMainPanel" checked="checked" /></span><a class="restore-default hide" href="#NavigationLinkWithMainPanel" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationDisplayLogo">Display logo</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationDisplayLogo" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Show logo in navigation panel.</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationDisplayLogo" id="NavigationDisplayLogo" checked="checked" /></span><a class="restore-default hide" href="#NavigationDisplayLogo" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationLogoLink">Logo link URL</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationLogoLink" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>URL where logo in the navigation panel will point to.</small></th><td><input type="text" class="all85" name="NavigationLogoLink" id="NavigationLogoLink" value="index.php" /><a class="restore-default hide" href="#NavigationLogoLink" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationLogoLinkWindow">Logo link target</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationLogoLinkWindow" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Open the linked page in the main window (<kbd>main</kbd>) or in a new one (<kbd>new</kbd>).</small></th><td><select class="all85" name="NavigationLogoLinkWindow" id="NavigationLogoLinkWindow"><option value="main" selected="selected">main</option><option value="new">new</option></select><a class="restore-default hide" href="#NavigationLogoLinkWindow" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreePointerEnable">Enable highlighting</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreePointerEnable" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Highlight server under the mouse cursor.</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreePointerEnable" id="NavigationTreePointerEnable" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreePointerEnable" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="FirstLevelNavigationItems">Maximum items on first level</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_FirstLevelNavigationItems" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>The number of items that can be displayed on each page on the first level of the navigation tree.</small></th><td><input type="number" name="FirstLevelNavigationItems" id="FirstLevelNavigationItems" value="100" /><a class="restore-default hide" href="#FirstLevelNavigationItems" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeDisplayItemFilterMinimum">Minimum number of items to display the filter box</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeDisplayItemFilterMinimum" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Defines the minimum number of items (tables, views, routines and events) to display a filter box.</small></th><td><input type="number" name="NavigationTreeDisplayItemFilterMinimum" id="NavigationTreeDisplayItemFilterMinimum" value="30" /><a class="restore-default hide" href="#NavigationTreeDisplayItemFilterMinimum" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NumRecentTables">Recently used tables</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NumRecentTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Maximum number of recently used tables; set 0 to disable.</small></th><td><input type="number" name="NumRecentTables" id="NumRecentTables" value="10" /><a class="restore-default hide" href="#NumRecentTables" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NumFavoriteTables">Favorite tables</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NumFavoriteTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Maximum number of favorite tables; set 0 to disable.</small></th><td><input type="number" name="NumFavoriteTables" id="NumFavoriteTables" value="10" /><a class="restore-default hide" href="#NumFavoriteTables" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr></table></fieldset><fieldset class="optbox" id="Navi_tree"><legend>Navigation tree</legend><p>Customize the navigation tree.</p><table width="100%" cellspacing="0"><tr><th><label for="MaxNavigationItems">Maximum items in branch</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_MaxNavigationItems" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>The number of items that can be displayed on each page of the navigation tree.</small></th><td><input type="number" name="MaxNavigationItems" id="MaxNavigationItems" value="50" /><a class="restore-default hide" href="#MaxNavigationItems" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeEnableGrouping">Group items in the tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeEnableGrouping" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Group items in the navigation tree (determined by the separator defined in the Databases and Tables tabs above).</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeEnableGrouping" id="NavigationTreeEnableGrouping" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeEnableGrouping" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeEnableExpansion">Enable navigation tree expansion</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeEnableExpansion" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to offer the possibility of tree expansion in the navigation panel.</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeEnableExpansion" id="NavigationTreeEnableExpansion" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeEnableExpansion" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeShowTables">Show tables in tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeShowTables" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to show tables under database in the navigation tree</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeShowTables" id="NavigationTreeShowTables" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeShowTables" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeShowViews">Show views in tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeShowViews" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to show views under database in the navigation tree</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeShowViews" id="NavigationTreeShowViews" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeShowViews" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeShowFunctions">Show functions in tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeShowFunctions" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to show functions under database in the navigation tree</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeShowFunctions" id="NavigationTreeShowFunctions" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeShowFunctions" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeShowProcedures">Show procedures in tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeShowProcedures" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to show procedures under database in the navigation tree</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeShowProcedures" id="NavigationTreeShowProcedures" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeShowProcedures" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeShowEvents">Show events in tree</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeShowEvents" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Whether to show events under database in the navigation tree</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationTreeShowEvents" id="NavigationTreeShowEvents" checked="checked" /></span><a class="restore-default hide" href="#NavigationTreeShowEvents" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr></table></fieldset><fieldset class="optbox" id="Navi_servers"><legend>Servers</legend><p>Servers display options.</p><table width="100%" cellspacing="0"><tr><th><label for="NavigationDisplayServers">Display servers selection</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationDisplayServers" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Display server choice at the top of the navigation panel.</small></th><td><span class="checkbox"><input type="checkbox" name="NavigationDisplayServers" id="NavigationDisplayServers" checked="checked" /></span><a class="restore-default hide" href="#NavigationDisplayServers" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="DisplayServersList">Display servers as a list</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_DisplayServersList" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>Show server listing as a list instead of a drop down.</small></th><td><span class="checkbox"><input type="checkbox" name="DisplayServersList" id="DisplayServersList" /></span><a class="restore-default hide" href="#DisplayServersList" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr></table></fieldset><fieldset class="optbox" id="Navi_databases"><legend>Databases</legend><p>Databases display options.</p><table width="100%" cellspacing="0"><tr><th><label for="NavigationTreeDisplayDbFilterMinimum">Minimum number of databases to display the database filter box</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeDisplayDbFilterMinimum" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span></th><td><input type="number" name="NavigationTreeDisplayDbFilterMinimum" id="NavigationTreeDisplayDbFilterMinimum" value="30" /><a class="restore-default hide" href="#NavigationTreeDisplayDbFilterMinimum" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeDbSeparator">Database tree separator</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeDbSeparator" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>String that separates databases into different tree levels.</small></th><td><input type="text" size="25" name="NavigationTreeDbSeparator" id="NavigationTreeDbSeparator" value="_" /><a class="restore-default hide" href="#NavigationTreeDbSeparator" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr></table></fieldset><fieldset class="optbox" id="Navi_tables"><legend>Tables</legend><p>Tables display options.</p><table width="100%" cellspacing="0"><tr><th><label for="NavigationTreeDefaultTabTable">Target for quick access icon</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeDefaultTabTable" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span></th><td><select class="all85" name="NavigationTreeDefaultTabTable" id="NavigationTreeDefaultTabTable"><option value="structure" selected="selected">Structure</option><option value="sql">SQL</option><option value="search">Search</option><option value="insert">Insert</option><option value="browse">Browse</option></select><a class="restore-default hide" href="#NavigationTreeDefaultTabTable" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeDefaultTabTable2">Target for second quick access icon</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeDefaultTabTable2" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span></th><td><select class="all85" name="NavigationTreeDefaultTabTable2" id="NavigationTreeDefaultTabTable2"><option value="" selected="selected"></option><option value="structure">Structure</option><option value="sql">SQL</option><option value="search">Search</option><option value="insert">Insert</option><option value="browse">Browse</option></select><a class="restore-default hide" href="#NavigationTreeDefaultTabTable2" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeTableSeparator">Table tree separator</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeTableSeparator" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span><small>String that separates tables into different tree levels.</small></th><td><input type="text" size="25" name="NavigationTreeTableSeparator" id="NavigationTreeTableSeparator" value="__" /><a class="restore-default hide" href="#NavigationTreeTableSeparator" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr><tr><th><label for="NavigationTreeTableLevel">Maximum table tree depth</label><span class="doc"><a href="./url.php?url=https%3A%2F%2Fdocs.phpmyadmin.net%2Fen%2Flatest%2Fconfig.html%23cfg_NavigationTreeTableLevel" target="documentation"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help" /></a>
</span></th><td><input type="number" name="NavigationTreeTableLevel" id="NavigationTreeTableLevel" value="1" /><a class="restore-default hide" href="#NavigationTreeTableLevel" title="Restore default value"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_reload" /></a></td></tr></table></fieldset></div>
</form>
<script type="text/javascript">
if (typeof configInlineParams === "undefined" || !Array.isArray(configInlineParams)) configInlineParams = [];
configInlineParams.push(function() {
validateField('FirstLevelNavigationItems', 'PMA_validatePositiveNumber', true);
validateField('NumRecentTables', 'PMA_validateNonNegativeNumber', true);
validateField('NumFavoriteTables', 'PMA_validateNonNegativeNumber', true);
validateField('MaxNavigationItems', 'PMA_validatePositiveNumber', true);
validateField('NavigationTreeTableLevel', 'PMA_validatePositiveNumber', true);
$.extend(PMA_messages, {
	'error_nan_p': 'Not a positive number!',
	'error_nan_nneg': 'Not a non-negative number!',
	'error_incorrect_port': 'Not a valid port number!',
	'error_invalid_value': 'Incorrect value!',
	'error_value_lte': 'Value must be equal or lower than %s!'});
$.extend(defaultValues, {
	'ShowDatabasesNavigationAsTree': true,
	'NavigationLinkWithMainPanel': true,
	'NavigationDisplayLogo': true,
	'NavigationLogoLink': 'index.php',
	'NavigationLogoLinkWindow': ['main'],
	'NavigationTreePointerEnable': true,
	'FirstLevelNavigationItems': '100',
	'NavigationTreeDisplayItemFilterMinimum': '30',
	'NumRecentTables': '10',
	'NumFavoriteTables': '10',
	'MaxNavigationItems': '50',
	'NavigationTreeEnableGrouping': true,
	'NavigationTreeEnableExpansion': true,
	'NavigationTreeShowTables': true,
	'NavigationTreeShowViews': true,
	'NavigationTreeShowFunctions': true,
	'NavigationTreeShowProcedures': true,
	'NavigationTreeShowEvents': true,
	'NavigationDisplayServers': true,
	'DisplayServersList': false,
	'NavigationTreeDisplayDbFilterMinimum': '30',
	'NavigationTreeDbSeparator': '_',
	'NavigationTreeDefaultTabTable': ['structure'],
	'NavigationTreeDefaultTabTable2': [''],
	'NavigationTreeTableSeparator': '__',
	'NavigationTreeTableLevel': '1'});
});
if (typeof configScriptLoaded !== "undefined" && configInlineParams) loadInlineConfig();
</script>
</div></div></div></div><div class="pma_drop_handler">Drop files here</div><div class="pma_sql_import_status"><h2>SQL upload ( <span class="pma_import_count">0</span> ) <span class="close">x</span><span class="minimize">-</span></h2><div></div></div></div><div id="prefs_autoload" class="notice print_ignore hide">
    <form action="prefs_manage.php" method="post" class="disableAjax">
        <input type="hidden" name="token" value="&lt;^2-1JY@Szd@Z2IP" />
        <input type="hidden" name="json" value="" />
        <input type="hidden" name="submit_import" value="1" />
        <input type="hidden" name="return_url" value="export.php?" />
        Your browser has phpMyAdmin configuration for this domain. Would you like to import it for current session?        <br />
        <a href="#yes">Yes</a>
        / <a href="#no">No</a>
        / <a href="#delete">Delete settings</a>
    </form>
</div>
<noscript><div class="error"><img src="themes/dot.gif" title="" alt="" class="icon ic_s_error" /> Javascript must be enabled past this point!</div></noscript><div id='floating_menubar'></div><div id='serverinfo'><img src="themes/dot.gif" title="" alt="" class="icon ic_s_host item" /><a href="index.php" class="item">Server: localhost</a><span class='separator item'>&nbsp;»</span><img src="themes/dot.gif" title="" alt="" class="icon ic_s_db item" /><a href="db_structure.php?db=svis_db" class="item">Database: svis_db</a><div class="clearfloat"></div></div><div id="topmenucontainer" class="menucontainer"><i class="scrollindicator scrollindicator--left"><a href="#" class="tab"></a></i><div class="navigationbar"><ul id="topmenu"  class="resizable-menu"><li>

            <a href="db_structure.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Structure" alt="Structure" class="icon ic_b_props" />&nbsp;Structure
            </a>
        </li>
<li>

            <a href="db_sql.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="SQL" alt="SQL" class="icon ic_b_sql" />&nbsp;SQL
            </a>
        </li>
<li>

            <a href="db_search.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Search" alt="Search" class="icon ic_b_search" />&nbsp;Search
            </a>
        </li>
<li>

            <a href="db_multi_table_query.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Query" alt="Query" class="icon ic_s_db" />&nbsp;Query
            </a>
        </li>
<li>

            <a href="db_export.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Export" alt="Export" class="icon ic_b_export" />&nbsp;Export
            </a>
        </li>
<li>

            <a href="db_import.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Import" alt="Import" class="icon ic_b_import" />&nbsp;Import
            </a>
        </li>
<li>

            <a href="db_operations.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Operations" alt="Operations" class="icon ic_b_tblops" />&nbsp;Operations
            </a>
        </li>
<li>

            <a href="db_routines.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Routines" alt="Routines" class="icon ic_b_routines" />&nbsp;Routines
            </a>
        </li>
<li>

            <a href="db_events.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Events" alt="Events" class="icon ic_b_events" />&nbsp;Events
            </a>
        </li>
<li>

            <a href="db_triggers.php?db=svis_db" class="tab">
            <img src="themes/dot.gif" title="Triggers" alt="Triggers" class="icon ic_b_triggers" />&nbsp;Triggers
            </a>
        </li>
<li>

            <a href="db_designer.php?db=svis_db" id="designer_tab" class="tab">
            <img src="themes/dot.gif" title="Designer" alt="Designer" class="icon ic_b_relations" />&nbsp;Designer
            </a>
        </li>
<div class="clearfloat"></div></ul></div>
<i class="scrollindicator scrollindicator--right"><a href="#" class="tab"></a></i></div>
<span id="page_nav_icons"><span id="lock_page_icon"></span><span id="page_settings_icon"><img src="themes/dot.gif" title="Page-related settings" alt="Page-related settings" class="icon ic_s_cog" /></span><a id="goto_pagetop" href="#"><img src="themes/dot.gif" title="Click on the bar to scroll to top of page" alt="Click on the bar to scroll to top of page" class="icon ic_s_top" /></a></span><div id="pma_console_container">
    <div id="pma_console">
                <div class="toolbar collapsed">
                    <div class="switch_button console_switch">
            <img src="themes/dot.gif" title="SQL Query Console" alt="SQL Query Console" class="icon ic_console" />
            <span>Console</span>
        </div>
                            <div class="button clear">
            
            <span>Clear</span>
        </div>
                            <div class="button history">
            
            <span>History</span>
        </div>
                            <div class="button options">
            
            <span>Options</span>
        </div>
                            <div class="button bookmarks">
            
            <span>Bookmarks</span>
        </div>
                            <div class="button debug hide">
            
            <span>Debug SQL</span>
        </div>
            </div>
                <div class="content">
            <div class="console_message_container">
                <div class="message welcome">
                    <span id="instructions-0">
                        Press Ctrl+Enter to execute query                    </span>
                    <span class="hide" id="instructions-1">
                        Press Enter to execute query                    </span>
                </div>
                            </div><!-- console_message_container -->
            <div class="query_input">
                <span class="console_query_input"></span>
            </div>
        </div><!-- message end -->
                <div class="mid_layer"></div>
                <div class="card" id="debug_console">
            <div class="toolbar ">
                    <div class="button order order_asc">
            
            <span>ascending</span>
        </div>
                            <div class="button order order_desc">
            
            <span>descending</span>
        </div>
                            <div class="text">
            
            <span>Order:</span>
        </div>
                            <div class="switch_button">
            
            <span>Debug SQL</span>
        </div>
                            <div class="button order_by sort_count">
            
            <span>Count</span>
        </div>
                            <div class="button order_by sort_exec">
            
            <span>Execution order</span>
        </div>
                            <div class="button order_by sort_time">
            
            <span>Time taken</span>
        </div>
                            <div class="text">
            
            <span>Order by:</span>
        </div>
                            <div class="button group_queries">
            
            <span>Group queries</span>
        </div>
                            <div class="button ungroup_queries">
            
            <span>Ungroup queries</span>
        </div>
            </div>
            <div class="content debug">
                <div class="message welcome"></div>
                <div class="debugLog"></div>
            </div> <!-- Content -->
            <div class="templates">
                <div class="debug_query action_content">
                    <span class="action collapse">
            Collapse
                    </span>
                            <span class="action expand">
            Expand
                    </span>
                            <span class="action dbg_show_trace">
            Show trace
                    </span>
                            <span class="action dbg_hide_trace">
            Hide trace
                    </span>
                            <span class="text count hide">
            Count
                    </span>
                            <span class="text time">
            Time taken
                    </span>
            </div>
            </div> <!-- Template -->
        </div> <!-- Debug SQL card -->
                        <div class="card" id="pma_console_options">
            <div class="toolbar ">
                    <div class="switch_button">
            
            <span>Options</span>
        </div>
                            <div class="button default">
            
            <span>Set default</span>
        </div>
            </div>
            <div class="content">
                <label>
                    <input type="checkbox" name="always_expand">Always expand query messages                </label>
                <br>
                <label>
                    <input type="checkbox" name="start_history">Show query history at start                </label>
                <br>
                <label>
                    <input type="checkbox" name="current_query">Show current browsing query                </label>
                <br>
                <label>
                    <input type="checkbox" name="enter_executes">
                        Execute queries on Enter and insert new line with Shift + Enter. To make this permanent, view settings.                </label>
                <br>
                <label>
                    <input type="checkbox" name="dark_theme">Switch to dark theme                </label>
                <br>
            </div>
        </div> <!-- Options card -->
        <div class="templates">
                        <div class="query_actions">
                    <span class="action collapse">
            Collapse
                    </span>
                            <span class="action expand">
            Expand
                    </span>
                            <span class="action requery">
            Requery
                    </span>
                            <span class="action edit">
            Edit
                    </span>
                            <span class="action explain">
            Explain
                    </span>
                            <span class="action profiling">
            Profiling
                    </span>
                            <span class="action bookmark">
            Bookmark
                    </span>
                            <span class="text failed">
            Query failed
                    </span>
                            <span class="text targetdb">
            Database
                    </span>
                            <span class="text query_time">
            Queried time
                    </span>
            </div>
        </div>
    </div> <!-- #console end -->
</div> <!-- #console_container end -->
<div id="page_content">-- phpMyAdmin SQL Dump
-- version 4.8.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2018 at 11:23 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1-log
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trails`
--

CREATE TABLE `audit_trails` (
  `id` int(10) UNSIGNED NOT NULL,
  `log` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `audit_trails`
--

INSERT INTO `audit_trails` (`id`, `log`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'logged in', 1, '2018-01-02 21:29:56', '2018-01-02 21:29:56'),
(2, 'logged out', 1, '2018-01-02 21:31:28', '2018-01-02 21:31:28'),
(3, 'logged in', 10, '2018-01-02 21:31:35', '2018-01-02 21:31:35'),
(4, 'logged in', 6, '2018-01-02 21:39:15', '2018-01-02 21:39:15'),
(5, 'logged in', 6, '2018-01-02 22:05:45', '2018-01-02 22:05:45'),
(6, 'logged out', 6, '2018-01-02 22:06:10', '2018-01-02 22:06:10'),
(7, 'logged in', 11, '2018-01-02 22:07:29', '2018-01-02 22:07:29'),
(8, 'logged out', 11, '2018-01-02 22:09:22', '2018-01-02 22:09:22'),
(9, 'logged out', 6, '2018-01-02 22:11:23', '2018-01-02 22:11:23'),
(10, 'logged in', 11, '2018-01-02 22:12:03', '2018-01-02 22:12:03'),
(11, 'logged out', 11, '2018-01-02 22:17:43', '2018-01-02 22:17:43'),
(12, 'logged in', 6, '2018-01-02 22:18:24', '2018-01-02 22:18:24'),
(13, 'logged out', 6, '2018-01-02 22:18:35', '2018-01-02 22:18:35'),
(14, 'logged in', 11, '2018-01-02 22:19:50', '2018-01-02 22:19:50'),
(15, 'added new property', 11, '2018-01-02 22:29:36', '2018-01-02 22:29:36'),
(16, 'added sales for property #1', 11, '2018-01-02 22:36:58', '2018-01-02 22:36:58'),
(17, 'added sales for property #1', 11, '2018-01-02 22:40:46', '2018-01-02 22:40:46'),
(18, 'deleted sales #2', 11, '2018-01-02 22:41:11', '2018-01-02 22:41:11'),
(19, 'added sales for property #1', 11, '2018-01-02 22:43:04', '2018-01-02 22:43:04'),
(20, 'deleted sales #3', 11, '2018-01-02 22:43:32', '2018-01-02 22:43:32'),
(21, 'added new property', 11, '2018-01-02 22:47:56', '2018-01-02 22:47:56'),
(22, 'added sales for property #2', 11, '2018-01-02 22:49:44', '2018-01-02 22:49:44'),
(23, 'modified sales #1 for Property #1', 11, '2018-01-02 22:50:32', '2018-01-02 22:50:32'),
(24, 'added new property', 11, '2018-01-02 22:54:53', '2018-01-02 22:54:53'),
(25, 'added sales for property #3', 11, '2018-01-02 22:57:27', '2018-01-02 22:57:27'),
(26, 'added new property', 11, '2018-01-02 23:01:20', '2018-01-02 23:01:20'),
(27, 'added sales for property #4', 11, '2018-01-02 23:03:56', '2018-01-02 23:03:56'),
(28, 'added new property', 11, '2018-01-02 23:06:43', '2018-01-02 23:06:43'),
(29, 'added sales for property #5', 11, '2018-01-02 23:09:10', '2018-01-02 23:09:10'),
(30, 'generated report for property #5', 11, '2018-01-02 23:09:44', '2018-01-02 23:09:44'),
(31, 'added new property', 11, '2018-01-02 23:12:07', '2018-01-02 23:12:07'),
(32, 'logged in', 11, '2018-01-02 23:21:22', '2018-01-02 23:21:22'),
(33, 'added sales for property #6', 11, '2018-01-02 23:26:45', '2018-01-02 23:26:45'),
(34, 'added new property', 11, '2018-01-02 23:29:25', '2018-01-02 23:29:25'),
(35, 'added sales for property #7', 11, '2018-01-02 23:31:29', '2018-01-02 23:31:29'),
(36, 'added new property', 11, '2018-01-03 00:15:01', '2018-01-03 00:15:01'),
(37, 'added sales for property #8', 11, '2018-01-03 00:16:59', '2018-01-03 00:16:59'),
(38, 'added new property', 11, '2018-01-03 00:20:15', '2018-01-03 00:20:15'),
(39, 'logged in', 11, '2018-01-03 00:22:27', '2018-01-03 00:22:27'),
(40, 'modified property #9', 11, '2018-01-03 00:23:01', '2018-01-03 00:23:01'),
(41, 'added sales for property #9', 11, '2018-01-03 00:25:35', '2018-01-03 00:25:35'),
(42, 'added new property', 11, '2018-01-03 00:28:13', '2018-01-03 00:28:13'),
(43, 'added sales for property #10', 11, '2018-01-03 00:30:25', '2018-01-03 00:30:25'),
(44, 'added new property', 11, '2018-01-03 00:34:09', '2018-01-03 00:34:09'),
(45, 'added sales for property #11', 11, '2018-01-03 00:35:58', '2018-01-03 00:35:58'),
(46, 'added new property', 11, '2018-01-03 00:41:37', '2018-01-03 00:41:37'),
(47, 'added sales for property #12', 11, '2018-01-03 00:43:52', '2018-01-03 00:43:52'),
(48, 'added new property', 11, '2018-01-03 00:45:55', '2018-01-03 00:45:55'),
(49, 'added sales for property #13', 11, '2018-01-03 00:47:32', '2018-01-03 00:47:32'),
(50, 'logged in', 11, '2018-01-03 02:26:24', '2018-01-03 02:26:24'),
(51, 'added new property', 11, '2018-01-03 02:30:44', '2018-01-03 02:30:44'),
(52, 'added sales for property #14', 11, '2018-01-03 03:11:07', '2018-01-03 03:11:07'),
(53, 'added new property', 11, '2018-01-03 03:17:12', '2018-01-03 03:17:12'),
(54, 'added new property', 11, '2018-01-03 03:17:24', '2018-01-03 03:17:24'),
(55, 'modified property #16', 11, '2018-01-03 03:19:42', '2018-01-03 03:19:42'),
(56, 'added sales for property #15', 11, '2018-01-03 03:21:59', '2018-01-03 03:21:59'),
(57, 'added sales for property #16', 11, '2018-01-03 03:25:51', '2018-01-03 03:25:51'),
(58, 'logged in', 11, '2018-01-03 03:28:44', '2018-01-03 03:28:44'),
(59, 'added new property', 11, '2018-01-03 03:35:27', '2018-01-03 03:35:27'),
(60, 'added sales for property #17', 11, '2018-01-03 03:37:19', '2018-01-03 03:37:19'),
(61, 'added new property', 11, '2018-01-03 03:40:08', '2018-01-03 03:40:08'),
(62, 'added sales for property #18', 11, '2018-01-03 03:43:03', '2018-01-03 03:43:03'),
(63, 'added new property', 11, '2018-01-03 03:49:24', '2018-01-03 03:49:24'),
(64, 'added sales for property #19', 11, '2018-01-03 03:53:16', '2018-01-03 03:53:16'),
(65, 'added new property', 11, '2018-01-03 03:55:35', '2018-01-03 03:55:35'),
(66, 'modified property #20', 11, '2018-01-03 03:57:52', '2018-01-03 03:57:52'),
(67, 'added sales for property #20', 11, '2018-01-03 04:00:21', '2018-01-03 04:00:21'),
(68, 'generated report for property #1', 11, '2018-01-03 04:02:01', '2018-01-03 04:02:01'),
(69, 'logged in', 11, '2018-01-03 21:25:07', '2018-01-03 21:25:07'),
(70, 'logged in', 11, '2018-01-03 23:56:21', '2018-01-03 23:56:21'),
(71, 'generated report for property #15', 11, '2018-01-03 23:56:33', '2018-01-03 23:56:33'),
(72, 'logged out', 11, '2018-01-03 23:57:01', '2018-01-03 23:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_size` text COLLATE utf8_unicode_ci NOT NULL,
  `file_mime` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `source_table` text COLLATE utf8_unicode_ci NOT NULL,
  `media_type` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_30_120501_create_propertyuse', 1),
('2017_08_31_024913_create_propertyclass', 1),
('2017_08_31_041644_create_propertyleasetype', 1),
('2017_08_31_042254_create_propertycity', 1),
('2017_09_01_010050_create_propertysuburb', 1),
('2017_09_05_142802_create_property', 1),
('2017_09_16_085909_create_valuations_table', 1),
('2017_09_17_060627_create_sales_table', 1),
('2017_09_20_201237_create_audittrail_table', 1),
('2017_09_28_060143_create_media_table', 1),
('2017_11_21_165545_update_sales_table', 2),
('2017_11_22_001808_update_valuations_table', 2),
('2017_11_29_180243_update_sales_table', 3),
('2017_12_01_133941_update_properties_table', 4),
('2017_12_04_030826_update_sales_table', 5),
('2017_12_05_125049_update_valuations_table', 6),
('2017_12_19_193223_update_valuations_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_use_id` int(11) NOT NULL,
  `property_class_id` int(11) NOT NULL,
  `property_lease_type_id` int(11) NOT NULL,
  `property_city_id` int(11) NOT NULL,
  `property_suburb_id` int(11) NOT NULL,
  `port` text COLLATE utf8_unicode_ci NOT NULL,
  `sec` text COLLATE utf8_unicode_ci NOT NULL,
  `lot` text COLLATE utf8_unicode_ci NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` text COLLATE utf8_unicode_ci NOT NULL,
  `is_archive` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_id` int(11) NOT NULL,
  `last_edited_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `code`, `description`, `property_use_id`, `property_class_id`, `property_lease_type_id`, `property_city_id`, `property_suburb_id`, `port`, `sec`, `lot`, `unit`, `owner`, `is_archive`, `created_at`, `updated_at`, `created_by_id`, `last_edited_by_id`) VALUES
(1, '1', 'N/A', 3, 8, 3, 14, 32, '', '15', '3', '', 'P&L Franklin', 0, '2018-01-02 22:29:35', '2018-01-02 22:29:35', 11, 11),
(2, '2', 'N/A', 2, 7, 2, 14, 19, '', '59', '1-6', 'Guest House', 'New Tribe', 0, '2018-01-02 22:47:55', '2018-01-02 22:47:55', 11, 11),
(3, '3', 'N/A', 2, 4, 2, 14, 99, '', '16', '5', '', 'Mainland Holdings', 0, '2018-01-02 22:54:52', '2018-01-02 22:54:52', 11, 11),
(4, '4', 'N/A', 4, 17, 1, 14, 99, '', '130', '31', '', 'Donna Harvey-Hall', 0, '2018-01-02 23:01:19', '2018-01-02 23:01:19', 11, 11),
(5, '5', 'N/A', 4, 14, 1, 14, 14, '', '93', '23', '', 'BOC', 0, '2018-01-02 23:06:42', '2018-01-02 23:06:42', 11, 11),
(6, '6', 'N/A', 3, 8, 3, 14, 32, '', '50', '23', '', 'NSL', 0, '2018-01-02 23:12:06', '2018-01-02 23:12:06', 11, 11),
(7, '7', 'N/A', 3, 8, 3, 14, 32, '', '34', '5,6,19,20', '', 'NSL', 0, '2018-01-02 23:29:24', '2018-01-02 23:29:24', 11, 11),
(8, '8', 'N/A', 4, 16, 1, 14, 14, '', '69', '13', '', 'SVS', 0, '2018-01-03 00:15:00', '2018-01-03 00:15:00', 11, 11),
(9, '9', 'N/A', 4, 13, 1, 14, 7, '', '103', '11', '', 'Deidre Ryan', 0, '2018-01-03 00:20:14', '2018-01-03 00:23:00', 11, 11),
(10, '10', 'N/A', 4, 13, 1, 14, 14, '', '311', '3', '', 'Amalpak', 0, '2018-01-03 00:28:12', '2018-01-03 00:28:12', 11, 11),
(11, '11', 'N/A', 4, 13, 1, 14, 19, '', '93', '79', '', 'East Garden', 0, '2018-01-03 00:34:08', '2018-01-03 00:34:08', 11, 11),
(12, '12', 'N/A', 4, 17, 1, 14, 7, '', '93', '30', '', 'SVS', 0, '2018-01-03 00:41:36', '2018-01-03 00:41:36', 11, 11),
(13, '13', 'N/A', 4, 17, 1, 14, 27, '', '69', '13', '', 'SVS', 0, '2018-01-03 00:45:54', '2018-01-03 00:45:54', 11, 11),
(14, '14', 'N/A', 3, 8, 3, 14, 32, '', '34', '9', '', 'SVS', 0, '2018-01-03 02:30:43', '2018-01-03 02:30:43', 11, 11),
(15, '15', 'N/A', 2, 4, 2, 14, 14, '', '5', '1&12', '', 'SVS', 0, '2018-01-03 03:17:10', '2018-01-03 03:17:10', 11, 11),
(16, '16', 'N/A', 2, 4, 2, 14, 14, '', '43', '1&2', '', 'SVS', 0, '2018-01-03 03:17:23', '2018-01-03 03:19:37', 11, 11),
(17, '17', 'N/A', 4, 16, 1, 14, 14, '', '33', '11', '', 'NSL', 0, '2018-01-03 03:35:25', '2018-01-03 03:35:25', 11, 11),
(18, '18', 'N/A', 4, 13, 1, 14, 7, '', '1', '30', '', 'UNAWOS INVESTMENTS Ltd', 0, '2018-01-03 03:40:05', '2018-01-03 03:40:05', 11, 11),
(19, '19', 'N/A', 2, 7, 2, 14, 99, '', '107', '16', '', 'KINGSTON', 0, '2018-01-03 03:49:19', '2018-01-03 03:49:19', 11, 11),
(20, '20', 'N/A', 4, 13, 1, 14, 99, '', '93', '62', '', 'KINGSTON', 0, '2018-01-03 03:55:34', '2018-01-03 03:57:51', 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `property_cities`
--

CREATE TABLE `property_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_cities`
--

INSERT INTO `property_cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alotau', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(2, 'Banz', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(3, 'Bulolo', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(4, 'Daru', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(5, 'Finschhafen', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(6, 'Goroka', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(7, 'Kainantu', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'Kavieng', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(9, 'Kerema', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(10, 'Kimbe', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(11, 'Kiunga', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(12, 'Kokopo', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(13, 'Kundiawa', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(14, 'Lae', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(15, 'Lorengau', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(16, 'Madang', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(17, 'Markham Valley', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(18, 'Mendi', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(19, 'Mine', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(20, 'Mt Hagen', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(21, 'Popondetta', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(22, 'Port Moresby', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(23, 'Rabaul', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(24, 'Ramu', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(25, 'Rural', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(26, 'Vanimo', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(27, 'Wabag', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(28, 'Wau', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(29, 'Tari', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(30, 'Waghi Valley', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(31, 'Wewak', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(32, 'Other', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(33, 'Buka', '2017-12-06 01:29:16', '2017-12-06 01:29:16'),
(34, 'Bialla', '2017-12-06 01:29:35', '2017-12-06 01:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `property_classes`
--

CREATE TABLE `property_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_classes`
--

INSERT INTO `property_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vacant Land – Urban', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(2, 'Vacant Land - Rural', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(3, 'Commercial – Offices', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(4, 'Commercial – Retail', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(5, 'Commercial – Mixed Use', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(6, 'Commercial – High Rise', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(7, 'Commercial - Hotel/Guest House', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'Industrial – Warehousing', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(9, 'Industrial – Manufacturing', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(10, 'Industrial - Retail', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(11, 'Industrial - Wholesale', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(12, 'Residential – House Low Standard', '2017-10-10 04:19:38', '2017-12-04 00:13:10'),
(13, 'Residential – House Medium Standard', '2017-10-10 04:19:38', '2017-12-04 00:13:28'),
(14, 'Residential – House Executive', '2017-10-10 04:19:38', '2017-12-04 00:12:30'),
(15, 'Residential – Duplex\'s', '2017-10-10 04:19:38', '2017-12-04 00:06:55'),
(16, 'Residential – Flats 3 - 5', '2017-10-10 04:19:38', '2017-12-04 00:07:37'),
(17, 'Residential – Units Townhouse', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(18, 'Residential – Units High Rise', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(19, 'Agriculture', '2017-10-10 04:19:38', '2017-12-02 01:21:36'),
(20, 'Other', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(22, 'Residential - Flats 6 or more', '2017-12-04 00:08:50', '2017-12-04 00:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `property_lease_types`
--

CREATE TABLE `property_lease_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_lease_types`
--

INSERT INTO `property_lease_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Residential', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(2, 'Commercial', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(3, 'Industrial', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(4, 'Business', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(5, 'Agricultural', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(6, 'SABL', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(7, 'ILG', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'Traditional', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(9, 'Other', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(10, 'Free Hold', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(11, 'Special Puposes', '2017-12-04 00:15:45', '2017-12-04 00:15:45'),
(12, 'Institutional', '2017-12-04 00:16:01', '2017-12-04 00:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `property_suburbs`
--

CREATE TABLE `property_suburbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_suburbs`
--

INSERT INTO `property_suburbs` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'CBD POM', 22, '2017-10-10 04:19:38', '2017-12-04 00:21:54'),
(2, 'Goilani', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(3, 'Goilani Heights', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(4, 'Koiabule', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(5, 'Middle Town', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(6, 'Ravens Estate', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(7, 'Top Town', 1, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'North Goroka', 6, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(9, 'West Goroka', 6, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(10, 'Airstrip Area', 6, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(11, 'Kenabot', 12, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(12, 'Vunapope', 12, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(13, 'Takubar', 12, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(14, 'Eriku', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(15, 'Taraka East', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(16, 'Taraka West', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(17, 'Miles', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(18, 'Bugandi', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(19, 'Chinatown', 14, '2017-10-10 04:19:38', '2017-12-04 00:21:30'),
(20, 'Birdsville', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(21, 'Flowerville', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(22, 'Papuan Compound', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(23, 'Hunter', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(24, 'Malahang', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(25, 'Unitech', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(26, 'Omili', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(27, 'Voco Point', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(28, 'Butibum', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(29, 'Bumneng', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(30, 'Dowsett', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(31, 'Treeville', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(32, 'Industrial Area', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(33, 'Market Area', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(34, 'Wharf Area', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(35, 'Nadzab', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(36, 'Speedway', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(37, 'Buimo', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(38, 'Kumkumun', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(39, 'Old Airstrip', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(40, 'Tent Siti', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(41, 'Bumayong', 14, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(42, 'Kalibobo', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(43, 'Mimilon', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(44, 'Newtown', 22, '2017-10-10 04:19:38', '2017-12-04 00:28:44'),
(45, 'Yomda', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(46, 'Wagol', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(47, 'Alexishaven', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(48, 'Airport / Industrial District', 16, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(49, 'Wara Kum', 20, '2017-10-10 04:19:38', '2017-12-04 00:31:37'),
(50, 'Kagamuga', 20, '2017-10-10 04:19:38', '2017-12-04 00:24:53'),
(51, 'Dobel', 20, '2017-10-10 04:19:38', '2017-12-04 00:22:36'),
(52, 'Barracks Area', 31, '2017-10-10 04:19:38', '2017-12-04 00:20:05'),
(53, 'Gerehu South', 22, '2017-10-10 04:19:38', '2017-12-04 00:23:56'),
(54, 'Gerehu North', 22, '2017-10-10 04:19:38', '2017-12-04 00:23:45'),
(55, 'Motata', 22, '2017-10-10 04:19:38', '2017-12-04 00:28:32'),
(56, 'Waigani North', 22, '2017-10-10 04:19:38', '2017-12-04 00:31:23'),
(57, 'Ensisi Valley', 22, '2017-10-10 04:19:38', '2017-12-04 00:23:04'),
(58, 'UPNG', 22, '2017-10-10 04:19:38', '2017-12-04 00:30:54'),
(59, 'Renbo Estate', 22, '2017-10-10 04:19:38', '2017-12-04 00:29:58'),
(60, 'Erima ', 22, '2017-10-10 04:19:38', '2017-12-04 00:23:18'),
(61, '7 Mile POM', 22, '2017-10-10 04:19:38', '2017-12-04 00:34:42'),
(62, 'Gordons', 22, '2017-10-10 04:19:38', '2017-12-04 00:24:08'),
(63, 'Jackons', 22, '2017-10-10 04:19:38', '2017-12-04 00:24:29'),
(64, 'Waigani ', 22, '2017-10-10 04:19:38', '2017-12-04 00:31:12'),
(65, 'Hohola', 21, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(66, 'Tokarara', 22, '2017-10-10 04:19:38', '2017-12-04 00:30:37'),
(67, 'Idubada', 22, '2017-10-10 04:19:38', '2017-12-04 00:24:18'),
(68, 'Kila Kila', 22, '2017-10-10 04:19:38', '2017-12-04 00:26:06'),
(69, 'Gabutu', 22, '2017-10-10 04:19:38', '2017-12-04 00:23:32'),
(70, 'Kaugere', 22, '2017-10-10 04:19:38', '2017-12-04 00:25:52'),
(71, 'Boroko Central', 22, '2017-10-10 04:19:38', '2017-12-04 00:20:54'),
(72, 'Boroko East', 22, '2017-10-10 04:19:38', '2017-12-04 00:21:10'),
(73, '5 Mile Lae', 14, '2017-10-10 04:19:38', '2017-12-04 00:18:54'),
(74, 'Saraga', 22, '2017-10-10 04:19:38', '2017-12-04 00:30:11'),
(75, 'Taurama', 22, '2017-10-10 04:19:38', '2017-12-04 00:30:23'),
(76, '4 Mile POM', 22, '2017-10-10 04:19:38', '2017-12-06 02:25:21'),
(78, 'Korobosea', 22, '2017-10-10 04:19:38', '2017-12-04 00:26:30'),
(79, 'Ela Beach', 22, '2017-10-10 04:19:38', '2017-12-04 00:22:52'),
(80, 'Badili', 22, '2017-10-10 04:19:38', '2017-12-04 00:19:26'),
(81, 'Konedobu', 22, '2017-10-10 04:19:38', '2017-12-04 00:26:19'),
(82, 'Kaevaga', 22, '2017-10-10 04:19:38', '2017-12-04 00:35:47'),
(83, 'Paga Hill', 22, '2017-10-10 04:19:38', '2017-12-04 00:29:43'),
(84, 'Malaguna', 23, '2017-10-10 04:19:38', '2017-12-04 00:27:24'),
(85, 'Matupit', 23, '2017-10-10 04:19:38', '2017-12-04 00:27:43'),
(86, 'Wewak Hill', 31, '2017-10-10 04:19:38', '2017-12-04 00:31:55'),
(87, 'Wewak Town', 31, '2017-10-10 04:19:38', '2017-12-04 00:32:07'),
(88, 'Wirui', 31, '2017-10-10 04:19:38', '2017-12-04 00:32:22'),
(89, 'Mission Point', 31, '2017-10-10 04:19:38', '2017-12-04 00:28:04'),
(90, 'Kreer', 31, '2017-10-10 04:19:38', '2017-12-04 00:26:54'),
(91, 'Kreer Heights', 31, '2017-10-10 04:19:38', '2017-12-04 00:27:06'),
(92, 'Nuigo', 31, '2017-10-10 04:19:38', '2017-12-04 00:28:57'),
(93, 'Kainde', 31, '2017-10-10 04:19:38', '2017-12-04 00:36:19'),
(94, 'Boram Airport', 31, '2017-10-10 04:19:38', '2017-12-04 00:20:28'),
(95, 'Boram Cape', 31, '2017-10-10 04:19:38', '2017-12-04 00:20:42'),
(96, 'Moem', 31, '2017-10-10 04:19:38', '2017-12-04 00:28:16'),
(97, '3 Mile Lae', 14, '2017-12-01 22:31:26', '2017-12-04 00:17:29'),
(98, '3 Mile POM', 22, '2017-12-01 22:32:03', '2017-12-04 00:17:58'),
(99, 'CBD Lae', 14, '2017-12-04 00:22:16', '2017-12-04 00:22:16'),
(100, '11 Mile Lae', 14, '2017-12-04 00:34:13', '2017-12-04 00:34:13'),
(101, '7 Mile Lae', 14, '2017-12-04 00:35:02', '2017-12-04 00:35:02'),
(102, 'No Suburb', 0, '2017-12-06 01:31:20', '2017-12-06 01:31:20'),
(103, 'KB Estate', 1, '2017-12-06 02:21:28', '2017-12-06 02:21:28'),
(104, '8 Mile POM', 22, '2017-12-06 02:22:03', '2017-12-06 02:22:03'),
(105, '9 Mile POM', 22, '2017-12-06 02:22:24', '2017-12-06 02:22:24'),
(106, 'Bomana', 22, '2017-12-06 02:22:43', '2017-12-06 02:22:43'),
(107, 'Granville', 22, '2017-12-06 02:23:00', '2017-12-06 02:23:00'),
(109, 'Taurama Valley', 22, '2017-12-06 02:23:41', '2017-12-06 02:23:41'),
(110, '6 Mile POM', 22, '2017-12-06 02:24:06', '2017-12-06 02:24:06'),
(111, '5 Mile POM', 22, '2017-12-06 02:24:26', '2017-12-06 02:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `property_uses`
--

CREATE TABLE `property_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_uses`
--

INSERT INTO `property_uses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vacant', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(2, 'Commercial', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(3, 'Industrial', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(4, 'Residential', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(5, 'Institutional', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(6, 'Agriculture', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(7, 'Other', '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'Traditional', '2017-10-10 04:19:38', '2017-10-10 04:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `purchaser` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vendor` text COLLATE utf8_unicode_ci NOT NULL,
  `est_land_value` text COLLATE utf8_unicode_ci NOT NULL,
  `est_improvement_value` text COLLATE utf8_unicode_ci NOT NULL,
  `area` text COLLATE utf8_unicode_ci NOT NULL,
  `est_land_rate` text COLLATE utf8_unicode_ci NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `price`, `purchaser`, `description`, `property_id`, `created_at`, `updated_at`, `vendor`, `est_land_value`, `est_improvement_value`, `area`, `est_land_rate`, `source`, `remarks`) VALUES
(1, '2013-05-31', '3350000', 'LinLi Luan & Lin Yang Qing', 'N/A', 1, '2018-01-02 22:36:57', '2018-01-02 22:50:26', 'P&L Franklin', '0', '0', '2000', '0', 'N/A', 'Good'),
(4, '2013-10-10', '2700000', 'Mapai Transport', 'N/A', 2, '2018-01-02 22:49:43', '2018-01-02 22:49:43', 'New Tribes', '0', '0', '3000', '0', 'N/A', 'Good'),
(5, '2014-02-12', '16050000', 'Capital Land Ltd (Papindo)', 'N/A', 3, '2018-01-02 22:57:26', '2018-01-02 22:57:26', 'Mainland Holdings', '0', '0', '5300', '0', 'N/A', 'Good'),
(6, '2014-06-14', '800000', 'John Raima', 'N/A', 4, '2018-01-02 23:03:55', '2018-01-02 23:03:55', 'Donna Harvey-Hall', '0', '0', '1000', '0', 'N/A', 'Good'),
(7, '2014-06-15', '1412000', 'Chemcare', 'N/A', 5, '2018-01-02 23:09:10', '2018-01-02 23:09:10', 'BOC', '0', '0', '900', '0', 'N/A', 'Good'),
(8, '2014-11-15', '7550000', 'Wonyi Auto', 'N/A', 6, '2018-01-02 23:26:43', '2018-01-02 23:26:43', 'NSL', '0', '0', '4000', '0', 'N/A', 'Good'),
(9, '2014-11-15', '9250000', 'RH Trading', 'N/A', 7, '2018-01-02 23:31:28', '2018-01-02 23:31:28', 'NSL', '0', '0', '8500', '0', 'N/A', 'Good'),
(10, '2014-11-15', '1900000', 'Premium Proj Services', 'N/A', 8, '2018-01-03 00:16:58', '2018-01-03 00:16:58', 'SVS', '0', '0', '1300', '0', 'N/A', 'Good'),
(11, '2014-02-16', '1200000', 'FTM-Emma Russo', 'N/A', 9, '2018-01-03 00:25:34', '2018-01-03 00:25:34', 'Deidre Ryan', '0', '0', '1000', '0', 'N/A', 'Good'),
(12, '2014-04-16', '550000', 'Makawa Zuranu', 'N/A', 10, '2018-01-03 00:30:24', '2018-01-03 00:30:24', 'Amalpak', '0', '0', '800', '0', 'N/A', 'Good'),
(13, '2014-07-15', '1800000', 'City Link Motel', 'N/A', 11, '2018-01-03 00:35:57', '2018-01-03 00:35:57', 'East Garden', '0', '0', '1000', '0', 'N/A', 'Good'),
(14, '2014-07-15', '5400000', 'Prima Smallgoods', 'N/A', 12, '2018-01-03 00:43:51', '2018-01-03 00:43:51', 'SVS', '0', '0', '1200', '0', 'N/A', 'Good'),
(15, '2016-03-16', '2200000', 'Misheld Ltd', 'N/A', 13, '2018-01-03 00:47:31', '2018-01-03 00:47:31', 'SVS', '0', '0', '1300', '0', 'N/A', 'Good'),
(16, '2014-03-16', '4680000', 'Supreme Industries Ltd', 'N/A', 14, '2018-01-03 03:11:05', '2018-01-03 03:11:05', 'SVS', '0', '0', '1800', '0', 'N/A', 'Good'),
(17, '2016-08-16', '11900000', 'Dae Won Trading', 'N/A', 15, '2018-01-03 03:21:57', '2018-01-03 03:21:57', 'SVS', '0', '0', '1700', '0', 'N/A', 'Good'),
(18, '2016-03-16', '15000000', 'Dae Won Trading', 'N/A', 16, '2018-01-03 03:25:48', '2018-01-03 03:25:48', 'SVS', '0', '0', '1200', '0', 'N/A', 'Good'),
(19, '2016-03-17', '3500000', 'Kina Betting', 'N/A', 17, '2018-01-03 03:37:16', '2018-01-03 03:37:16', 'NSL', '0', '0', '1600', '0', 'N/A', 'Good'),
(20, '2016-06-17', '1600000', 'TT Properties Ltd', 'N/A', 18, '2018-01-03 03:43:00', '2018-01-03 03:43:00', 'UNAWOS INVESTMENT Ltd', '0', '0', '1300', '0', 'N/A', 'Good'),
(21, '2016-08-17', '2000000', 'Lae Inter Hotel', 'N/A', 19, '2018-01-03 03:53:15', '2018-01-03 03:53:15', 'KINGSTON', '0', '0', '1000', '0', 'N/A', 'Good'),
(22, '2016-08-17', '1100000', 'Niugini Electrical', 'N/A', 20, '2018-01-03 04:00:20', '2018-01-03 04:00:20', 'KINGSTON', '0', '0', '1200', '0', 'N/A', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisabled` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `role`, `isDisabled`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator Mike Quinn', 'mike@theprofessionals.com.pg', 'mike@theprofessionals.com.pg', '$2y$10$xEeDV.y2GSlTIHBZtkjUhezliJJoXJtI/nUYCzDZTl88ZtMrfGDo6', 'Administrator', 0, NULL, '2017-10-10 04:19:37', '2017-12-12 21:52:36'),
(2, 'Agi Doko', 'adoko@theprofessionals.com.pg', 'adoko@theprofessionals.com.pg', '$2y$10$WAgTFSKD/SKvQbyjOesMLOXaBI5SC9f3r7U3MIT.WLD5tIB3HGoYy', 'Data Access', 0, NULL, '2017-10-10 04:19:37', '2017-12-06 01:46:51'),
(3, 'John Purcell', 'apacific@optusnet.com.au', 'apacific@optusnet.com.au', '$2y$10$8py6dN2qiwZOXSSsXfUaGeHbXUwuYxsYJWhD8DGHk3qRapocTWYKa', 'Data Access', 0, NULL, '2017-10-10 04:19:37', '2017-11-26 23:56:08'),
(4, 'Rose Enn', 'rose.enn@theprofessionals.com.pg', 'valuations.ncd@theprofessionals.com.pg', '$2y$10$TbBKS09qMOEDu39YFe2d5eMLGtwRoK9CTBzHKovToOlgjn.UeK3Wq', 'Data Access', 0, NULL, '2017-10-10 04:19:38', '2017-12-06 01:33:21'),
(5, 'Joel Wapele', 'joel@theprofessionals.com.pg', 'valuations2.ncd@theprofessionals.com.pg', '$2y$10$jZIcZJIs2xW.eh1YQMnOGeljsRvCgmMdv7KoFL0Ncu8fHgoqUZbfK', 'Data Access', 0, NULL, '2017-10-10 04:19:38', '2017-12-06 01:37:40'),
(6, 'Lae Data Entry', 'valuations@theprofessionals.com.pg', 'valuations@theprofessionals.com.pg', '$2y$10$IeRcRGod8AbjkvHJC3Id/u4bPy/Our16G.Plm2PY2L14fO0RuY1z2', 'Data Entry', 0, NULL, '2017-10-10 04:19:38', '2017-12-06 01:56:43'),
(7, 'Lyanne Gerson', 'sales@theprofessionals.com.pg', 'sales@theprofessionals.com.pg', '$2y$10$kYfYcUgyT/p1iAlwBiu9b.NCNTcF7K1SKqc5beazN/BBuieUl6eky', 'Data Entry', 0, NULL, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(8, 'Lae Property Management', 'propmgmt@theprofessionals.com.pg', 'propmgmt@theprofessionals.com.pg', '$2y$10$mloB90u8YuiOnJ/vKwH1C.0Y17wyODXu5vOoszQJOXwGWuOQsAx/a', 'Data Entry', 0, NULL, '2017-10-10 04:19:38', '2017-12-03 23:55:57'),
(9, 'Dennis Cotter', 'dennis@theprofessionals.com.pg', 'dennis@theprofessionals.com.pg', '$2y$10$2T7LYEGT97chH9imLDkeyu5Tr8R/7Ii9UlSAbvuTrE6CbnZk4NRS2', 'Data Access', 0, NULL, '2017-10-10 04:19:38', '2017-10-10 04:19:38'),
(10, 'Mike Quinn', 'mike.quinn@global.net.pg', 'Mike Quinn', '$2y$10$45vF9JknAbHC5ua/tFIo7e/gAQhnE0sF38GtajP5dHLS.2dHzkYii', 'Data Access', 0, NULL, '2017-10-18 04:25:14', '2017-10-31 19:01:26'),
(11, 'Purinda Nosa', 'purinda.nosa@theprofessionals.com.pg', 'purinda.nosa@theprofessionals.com.pg', '$2y$10$N/iPneQiCCpxrY3XTVK3L.ZxvkfmkV0N8eQRalb1yNmVqC8acfU4e', 'Data Access', 0, NULL, '2017-12-03 23:59:07', '2017-12-03 23:59:07'),
(12, 'Rose Kuniaka', 'rose.kuniaka@theprofessionals.com.pg', 'rose.kuniaka@theprofessionals.com.pg', '$2y$10$tbBGu.kxpmKiY4sUyCJrW.VfOS91Fb4gV1XpoCEQmLsfw/AjRWj1m', 'Data Access', 0, NULL, '2017-12-04 00:00:57', '2017-12-04 00:00:57'),
(13, 'Naliga Ginton', 'naliga@theprofessionals.com.pg', 'naliga@theprofessionals.com.pg', '$2y$10$MON.wvo3zpNGP4icthfSjucaIy0znpELDPE5FH8cTZLwKjTEBJITm', 'Data Access', 0, NULL, '2017-12-06 01:40:43', '2017-12-06 01:40:43'),
(14, 'NCD Data Entry', 'admin.ncd@theprofessionals.com.pg', 'admin.ncd@theprofessionals.com.pg', '$2y$10$ASQA3dOB4pHclmUyrOjKCeXohlSOp6IEKwl6tmDIEeJdtAmbhxTzG', 'Data Entry', 0, NULL, '2017-12-06 01:53:51', '2017-12-06 01:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `valuations`
--

CREATE TABLE `valuations` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `property_id` int(11) NOT NULL,
  `land_component` text COLLATE utf8_unicode_ci NOT NULL,
  `insurance_value` text COLLATE utf8_unicode_ci NOT NULL,
  `improvement_component` text COLLATE utf8_unicode_ci NOT NULL,
  `area` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forced_sale_value` text COLLATE utf8_unicode_ci NOT NULL,
  `land_value_rate` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_cities`
--
ALTER TABLE `property_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_classes`
--
ALTER TABLE `property_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_lease_types`
--
ALTER TABLE `property_lease_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_suburbs`
--
ALTER TABLE `property_suburbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_uses`
--
ALTER TABLE `property_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `valuations`
--
ALTER TABLE `valuations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trails`
--
ALTER TABLE `audit_trails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `property_cities`
--
ALTER TABLE `property_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `property_classes`
--
ALTER TABLE `property_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `property_lease_types`
--
ALTER TABLE `property_lease_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `property_suburbs`
--
ALTER TABLE `property_suburbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `property_uses`
--
ALTER TABLE `property_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `valuations`
--
ALTER TABLE `valuations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
</div><div id="selflink" class="print_ignore"><a href="export.php?db=svis_db&amp;table=&amp;server=1&amp;target=" title="Open new phpMyAdmin window" target="_blank" rel="noopener noreferrer"><img src="themes/dot.gif" title="Open new phpMyAdmin window" alt="Open new phpMyAdmin window" class="icon ic_window-new" /></a></div><div class="clearfloat" id="pma_errors"></div><script data-cfasync="false" type="text/javascript">// <![CDATA[
var debugSQLInfo = 'null';
AJAX.scriptHandler;
$(function() {});
// ]]></script></body></html>