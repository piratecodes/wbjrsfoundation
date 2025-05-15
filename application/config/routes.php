<?php

defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Front_controller/index';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/***************************FRONT************************/

$route['request_callback_submit'] = 'Front_controller/request_callback_submit';
$route['request_teacher_submit'] = 'Front_controller/request_teacher_submit';
$route['request_career_submit'] = 'Front_controller/request_career_submit';

$route['request_enquire_submit'] = 'Front_controller/request_enquire_submit';


$route['about'] = 'Front_controller/about';

$route['legal_documents'] = 'Front_controller/legal_documents';

$route['team'] = 'Front_controller/team';

$route['mission_vision'] = 'Front_controller/mission_vision';

$route['aim'] = 'Front_controller/aim';

$route['accreditation'] = 'Front_controller/accreditation';

$route['authorization'] = 'Front_controller/authorization';

$route['banking_partner'] = 'Front_controller/banking_partner';

$route['media_partner'] = 'Front_controller/media_partner';

$route['info_bro'] = 'Front_controller/info_bro';
$route['appreciations'] = 'Front_controller/appreciations';
$route['grievances_cell'] = 'Front_controller/grievances_cell';
$route['rnd_team'] = 'Front_controller/rnd_team';
$route['gov_body'] = 'Front_controller/gov_body';
$route['thc_registration'] = 'Front_controller/thc_registration';
$route['bulletins'] = 'Front_controller/bulletins';
$route['terms_conditions'] = 'Front_controller/terms_conditions';
$route['privacy_policy'] = 'Front_controller/privacy_policy';
$route['pop_up_form'] = 'Front_controller/pop_up_form';
$route['advisory_members'] = 'Front_controller/advisory_members';
$route['shree_gurukul'] = 'Front_controller/shree_gurukul';
$route['career'] = 'Front_controller/career';
$route['services_page'] = 'Front_controller/services_page';
$route['notice_board'] = 'Front_controller/notice_board';
$route['technical_courses'] = 'Front_controller/technical_courses';
$route['non_technical_courses'] = 'Front_controller/non_technical_courses';

$route['courses_for_schools'] = 'Front_controller/courses_for_schools';

$route['hotel_management'] = 'Front_controller/hotel_management';

$route['olympiad/(:any)'] = 'Front_controller/olympiad/$1';

$route['our_expert'] = 'Front_controller/our_expert';
$route['rnd_team'] = 'Front_controller/rnd_team';

$route['our_govt_pledge'] = 'Front_controller/our_govt_pledge';
$route['ug_pg_programe'] = 'Front_controller/ug_pg_programe';
$route['hippo_english_olympiad'] = 'Front_controller/hippo_english_olympiad';
$route['mathematical_kangaroo_competition'] = 'Front_controller/mathematical_kangaroo_competition';
$route['international_science_olympiad'] = 'Front_controller/international_science_olympiad';

$route['blogs'] = 'Front_controller/blogs';
$route['blog/(:any)'] = 'Front_controller/blog/$1';


$route['gallery_album'] = 'Front_controller/gallery_album';
$route['gallery/(:any)'] = 'Front_controller/gallery/$1';

$route['contact'] = 'Front_controller/contact';

$route['admissionform'] = 'Front_controller/admissionform';



$route['category'] = 'Front_controller/category';
$route['course/(:any)'] = 'Front_controller/course/$1';
$route['course_details/(:any)'] = 'Front_controller/course_details/$1';

$route['certificate'] = 'Front_controller/certificate';
$route['certificate/(:any)'] = 'Front_controller/certificate/$1';



// *************** AUTH SECTION ***************

$route['cms'] = 'Auth_controller/cms_login';
$route['cms/login'] = 'Auth_controller/cms_login';
$route['cms/logout'] = 'Auth_controller/cms_logout';
$route['cms/reset_pwd'] = 'Auth_controller/cms_reset_pwd';

// ************* CMS SECTION ***************

$route['cms/dashboard'] = 'Cms_controller/dashboard';
$route['cms/change_pwd'] = 'Cms_controller/change_pwd';

$route['cms/course_cat_add'] = 'Cms_controller/course_cat_update';
$route['cms/course_cat'] = 'Cms_controller/course_cat';
$route['cms/course_cat/(:any)'] = 'Cms_controller/course_cat/$1';
$route['cms/course_cat_edit/(:any)'] = 'Cms_controller/course_cat_update/$1';

$route['cms/course_add'] = 'Cms_controller/course_update';
$route['cms/course'] = 'Cms_controller/course';
$route['cms/course_edit/(:any)'] = 'Cms_controller/course_update/$1';

$route['cms/course_review_add'] = 'Cms_controller/course_review_update';
$route['cms/course_review'] = 'Cms_controller/course_review';
$route['cms/course_review/(:any)'] = 'Cms_controller/course_review/$1';
$route['cms/course_review_edit'] = 'Cms_controller/course_review_update';

$route['cms/hs_add'] = 'Cms_controller/hs_update';
$route['cms/hs'] = 'Cms_controller/hs';
$route['cms/hs_edit/(:any)'] = 'Cms_controller/hs_update/$1';
$route['cms/hs_delete/(:any)'] = 'Cms_controller/hs_delete/$1';

$route['cms/gallery_album_add'] = 'Cms_controller/gallery_album_update';
$route['cms/gallery_album'] = 'Cms_controller/gallery_album';
$route['cms/gallery_album_edit/(:any)'] = 'Cms_controller/gallery_album_update/$1';

$route['cms/certificate_add'] = 'Cms_controller/certificate_update';
$route['cms/certificate_upload'] = 'Cms_controller/certificate_upload';
$route['cms/certificate_csv/(:any)'] = 'Cms_controller/certificate_csv/$1';
$route['cms/certificate_csv_delete'] = 'Cms_controller/certificate_csv_delete';
$route['cms/certificate_list'] = 'Cms_controller/certificate_list';
$route['cms/certificate_list/(:any)'] = 'Cms_controller/certificate_list/$1';
$route['cms/certificate_edit/(:any)'] = 'Cms_controller/certificate_update/$1';
$route['cms/certificate_delete/(:any)'] = 'Cms_controller/certificate_delete/$1';

$route['cms/gallery_add'] = 'Cms_controller/gallery_update';
$route['cms/gallery'] = 'Cms_controller/gallery';
$route['cms/gallery/(:any)'] = 'Cms_controller/gallery/$1';
$route['cms/gallery_edit/(:any)'] = 'Cms_controller/gallery_update/$1';
$route['cms/gallery_delete/(:any)'] = 'Cms_controller/gallery_delete/$1';

$route['cms/expert_add'] = 'Cms_controller/expert_update';
$route['cms/expert'] = 'Cms_controller/expert';
$route['cms/expert_edit/(:any)'] = 'Cms_controller/expert_update/$1';

$route['cms/admission_query/(:any)'] = 'Cms_controller/admission_query/$1';
$route['cms/admission_query_mark/(:any)'] = 'Cms_controller/admission_query_mark/$1';
$route['cms/admission_query_delete/(:any)'] = 'Cms_controller/admission_query_delete/$1';

$route['cms/admission/(:any)'] = 'Cms_controller/admission/$1';
$route['cms/admission_details/(:any)'] = 'Cms_controller/admission_details/$1';
$route['cms/admission_mark/(:any)'] = 'Cms_controller/admission_mark/$1';
$route['cms/admission_delete/(:any)'] = 'Cms_controller/admission_delete/$1';

$route['cms/blog_add'] = 'Cms_controller/blog_update';
$route['cms/blogs'] = 'Cms_controller/blogs';
$route['cms/blog_edit/(:any)'] = 'Cms_controller/blog_update/$1';
$route['cms/blog_delete/(:any)'] = 'Cms_controller/blog_delete/$1';

$route['cms/nb_add'] = 'Cms_controller/nb_update';
$route['cms/nb'] = 'Cms_controller/nb';
$route['cms/nb_edit/(:any)'] = 'Cms_controller/nb_update/$1';
$route['cms/nb_delete/(:any)'] = 'Cms_controller/nb_delete/$1';

$route['cms/pg_manage/(:any)'] = 'Cms_controller/pg_manage/$1';
$route['cms/pg_manager/(:any)'] = 'Cms_controller/pg_manager/$1';
$route['cms/pg_manager_add/(:any)'] = 'Cms_controller/pg_manager_update/$1';
$route['cms/pg_manager_edit/(:any)/(:any)'] = 'Cms_controller/pg_manager_update/$1/$2';

$route['cms/seo_list'] = 'Cms_controller/seo_list';
$route['cms/seo_edit/(:any)'] = 'Cms_controller/seo_update/$1';

$route['cms/request_callback'] = 'Cms_controller/request_callback';
$route['cms/request_callback/(:any)'] = 'Cms_controller/request_callback/$1';
$route['cms/request_callback_mark/(:any)'] = 'Cms_controller/request_callback_mark/$1';
$route['cms/request_callback_delete/(:any)'] = 'Cms_controller/request_callback_delete/$1';

$route['cms/request_teacher'] = 'Cms_controller/request_teacher';
$route['cms/request_teacher/(:any)'] = 'Cms_controller/request_teacher/$1';
$route['cms/request_teacher_mark/(:any)'] = 'Cms_controller/request_teacher_mark/$1';
$route['cms/request_teacher_delete/(:any)'] = 'Cms_controller/request_teacher_delete/$1';

$route['cms/request_career'] = 'Cms_controller/request_career';
$route['cms/request_career/(:any)'] = 'Cms_controller/request_career/$1';
$route['cms/request_career_mark/(:any)'] = 'Cms_controller/request_career_mark/$1';
$route['cms/request_career_delete/(:any)'] = 'Cms_controller/request_career_delete/$1';

$route['cms/request_course_enquire'] = 'Cms_controller/request_course_enquire';
$route['cms/request_course_enquire/(:any)'] = 'Cms_controller/request_course_enquire/$1';
$route['cms/request_course_enquire_mark/(:any)'] = 'Cms_controller/request_course_enquire_mark/$1';
$route['cms/request_course_enquire_delete/(:any)'] = 'Cms_controller/request_course_enquire_delete/$1';

// ********** DOWNLOAD SECTION ***********

$route['downloads/certificate/(:any)'] = 'Download_controller/certificate/$1';