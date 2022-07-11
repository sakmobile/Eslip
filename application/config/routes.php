<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'login';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['profile'] = 'Profile';
$route['admin'] = 'Admin/Home_admin';
$route['officlal'] = 'Admin/Officlal';
$route['pofficial'] = 'Admin/Pofficial';
$route['regular'] = 'Admin/Regular';
$route['temporary'] = 'Admin/Temporary';
$route['submit_form'] = 'Admin/Officlal/add_date';
$route['submit_p'] = 'Admin/Pofficial/add_date';

$route['shows/(:any)'] = 'Admin/Officlal/shows/$1';
$route['admin_shows/(:any)'] = 'Admin/Pofficial/admin_shows/$1';
$route['print/(:any)/(:any)/(:any)'] = 'Admin/Officlal/print/$1/$2/$3';
$route['logout'] = 'login/logout';
$route['home'] = 'home';
$route['e_info'] = 'home/e_info';
$route['shows_user/(:any)'] = 'Home/shows_user/$1';
$route['print_e/(:any)/(:any)/(:any)'] = 'home/print_e/$1/$2/$3';

//admin
$route['print_p/(:any)/(:any)/(:any)'] = 'Admin/Pofficial/print_p/$1/$2/$3';
$route['show_r/(:any)'] = 'Admin/Regular/show_r/$1';
$route['show_t/(:any)'] = 'Admin/Temporary/show_t/$1';
$route['submit_regular'] = 'Admin/Regular/add_date';
$route['print_r/(:any)/(:any)/(:any)'] = 'Admin/Regular/print_r/$1/$2/$3';
$route['submit_e'] = 'Admin/Temporary/add_date';
$route['setting'] = 'Admin/Setting';
$route['submit_adduser'] = 'Admin/Setting/add_user';
$route['change_pass'] = 'Profile/change_pass';
$route['upload_img'] = 'Profile/upload_img';
