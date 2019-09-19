<?php

namespace Aura\Backend\Classes;

use Auth;
use Mail;
use Session;
use Carbon\Carbon;
use Aura\Backend\Models\Menu;
use RainLab\Translate\Classes\Translator;

class HelperClass {

    public static function onFormatDateToString(Carbon $date) {
        return substr($date->toDateTimeString(), 0, strpos($date->toDateTimeString(), " "));
    }

    public static function checkUser() {
        if (!Auth::check()) {
            return false;
        } else {
            return Auth::getUser();
        }
    }

    public static function formatUserName($user_name) {
        $user_name = preg_replace('/\s+/', ' ', trim($user_name));
        $words = explode(" ", $user_name);
        $count_word = count($words);
        if ($count_word > 2) {
            $total_word = $count_word - 1;
            $user_name = $words[$total_word - 1] . " " . $words[$total_word];
        }
        return $user_name;
    }

    public static function formatUserNameMobile($user_name) {
        $character = self::getAlias($user_name);
        $string_character = (str_word_count($character, 1));
        $array = array();
        for ($i = 0; $i < count($string_character); $i++) {
            array_push($array, substr($string_character[$i], 0, 1));
        }
        return implode(" ", $array);
    }

    public static function formatUpperCase($value) {
        $data = mb_strtoupper($value, 'UTF-8');
        return $data;
    }

    public static function formatString($string) {
        // Match Emoticons
        $regex_emoticons = '/[\x{1F600}-\x{1F64F}]/u';
        $clear_string = preg_replace($regex_emoticons, '', $string);

        // Match Miscellaneous Symbols and Pictographs
        $regex_symbols = '/[\x{1F300}-\x{1F5FF}]/u';
        $clear_string = preg_replace($regex_symbols, '', $clear_string);

        // Match Transport And Map Symbols
        $regex_transport = '/[\x{1F680}-\x{1F6FF}]/u';
        $clear_string = preg_replace($regex_transport, '', $clear_string);

        // Match Miscellaneous Symbols
        $regex_misc = '/[\x{2600}-\x{26FF}]/u';
        $clear_string = preg_replace($regex_misc, '', $clear_string);

        // Match Dingbats
        $regex_dingbats = '/[\x{2700}-\x{27BF}]/u';
        $clear_string = preg_replace($regex_dingbats, '', $clear_string);

        return $clear_string;
    }

    public static function textToUrl($text) {
        $text = preg_replace('#http[s]?://[a-z0-9._/-]+#i', '<a href="$0" target="_blank">$0</a>', $text);
        $regex = "#[ ]+(www.([a-z0-9._-]+))#i";
        $hypertext = preg_replace($regex, '<a href="http://$1" target="_blank">$1</a>', $text);
        return $hypertext;
    }

    public static function randomClassCss($text) {
        $check = rand(1, 2);
        $value1 = 'gradient-violet';
        $value2 = 'gradient-blue';
        if ($check < 2) {
            return $value1;
        } else {
            return $value2;
        }
    }

    public static function getAlias($string) {
        $trans = array(
            "đ" => "d", "ă" => "a", "â" => "a", "á" => "a", "à" => "a",
            "ả" => "a", "ã" => "a", "ạ" => "a",
            "ấ" => "a", "ầ" => "a", "ẩ" => "a", "ẫ" => "a", "ậ" => "a",
            "ắ" => "a", "ằ" => "a", "ẳ" => "a", "ẵ" => "a", "ặ" => "a",
            "é" => "e", "è" => "e", "ẻ" => "e", "ẽ" => "e", "ẹ" => "e",
            "ế" => "e", "ề" => "e", "ể" => "e", "ễ" => "e", "ệ" => "e",
            "í" => "i", "ì" => "i", "ỉ" => "i", "ĩ" => "i", "ị" => "i",
            "ư" => "u", "ô" => "o", "ơ" => "o", "ê" => "e",
            "Ư" => "u", "Ô" => "o", "Ơ" => "o", "Ê" => "e",
            "ú" => "u", "ù" => "u", "ủ" => "u", "ũ" => "u", "ụ" => "u",
            "ứ" => "u", "ừ" => "u", "ử" => "u", "ữ" => "u", "ự" => "u",
            "ó" => "o", "ò" => "o", "ỏ" => "o", "õ" => "o", "ọ" => "o",
            "ớ" => "o", "ờ" => "o", "ở" => "o", "ỡ" => "o", "ợ" => "o",
            "ố" => "o", "ồ" => "o", "ổ" => "o", "ỗ" => "o", "ộ" => "o",
            "ú" => "u", "ù" => "u", "ủ" => "u", "ũ" => "u", "ụ" => "u",
            "ứ" => "u", "ừ" => "u", "ử" => "u", "ữ" => "u", "ự" => "u",
            "ý" => "y", "ỳ" => "y", "ỷ" => "y", "ỹ" => "y", "ỵ" => "y",
            "Ý" => "Y", "Ỳ" => "Y", "Ỷ" => "Y", "Ỹ" => "Y", "Ỵ" => "Y",
            "Đ" => "D", "Ă" => "A", "Â" => "A", "Á" => "A", "À" => "A",
            "Ả" => "A", "Ã" => "A", "Ạ" => "A",
            "Ấ" => "A", "Ầ" => "A", "Ẩ" => "A", "Ẫ" => "A", "Ậ" => "A",
            "Ắ" => "A", "Ằ" => "A", "Ẳ" => "A", "Ẵ" => "A", "Ặ" => "A",
            "É" => "E", "È" => "E", "Ẻ" => "E", "Ẽ" => "E", "Ẹ" => "E",
            "Ế" => "E", "Ề" => "E", "Ể" => "E", "Ễ" => "E", "Ệ" => "E",
            "Í" => "I", "Ì" => "I", "Ỉ" => "I", "Ĩ" => "I", "Ị" => "I",
            "Ư" => "U", "Ô" => "O", "Ơ" => "O", "Ê" => "E",
            "Ư" => "U", "Ô" => "O", "Ơ" => "O", "Ê" => "E",
            "Ú" => "U", "Ù" => "U", "Ủ" => "U", "Ũ" => "U", "Ụ" => "U",
            "Ứ" => "U", "Ừ" => "U", "Ử" => "U", "Ữ" => "U", "Ự" => "U",
            "Ó" => "O", "Ò" => "O", "Ỏ" => "O", "Õ" => "O", "Ọ" => "O",
            "Ớ" => "O", "Ờ" => "O", "Ở" => "O", "Ỡ" => "O", "Ợ" => "O",
            "Ố" => "O", "Ồ" => "O", "Ổ" => "O", "Ỗ" => "O", "Ộ" => "O",
            "Ú" => "U", "Ù" => "U", "Ủ" => "U", "Ũ" => "U", "Ụ" => "U",
            "Ứ" => "U", "Ừ" => "U", "Ử" => "U", "Ữ" => "U", "Ự" => "U",);
        $str = str_replace('-', ' ', trim($string));
        $str = strtr($str, $trans);
        $str = preg_replace(array('/\s+/', '/[^A-Za-z0-9\-]/'), array('-', ''), $str);
        $str = trim(strtolower($str));
        return $str;
    }

    public static function trunCateString($string, $length = 50, $append = "...") {
        $string = trim($string);

        if (strlen($string) > $length) {
            $string = wordwrap($string, $length);
            $string = explode("\n", $string, 2);
            $string = $string[0] . $append;
        }

        return $string;
    }

    public static function trunCateHtmlString($string, $length = 50, $append = "...") {
        $string = trim(strip_tags($string));

        if (strlen($string) > $length) {
            $string = wordwrap($string, $length);
            $string = explode("\n", $string, 2);
            $string = $string[0] . $append;
        }

        return $string;
    }

    public static function inputFormText($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    public static function formatCurrency($string) {
        return number_format($string, 0, ',', '.');
    }

    public static function formatDateArticle($date) {
        return date('d.m.Y', strtotime($date));
    }

    public static function formatPostLinkArticle($slug, $article_slug, $article_id) {
        if ($slug && $article_slug) {
            $link = url('/') . "/trends/" . $slug . "/" . $article_id . '-' . $article_slug;
            return $link;
        } else {
            return "/";
        }
        return "/";
    }

    public static function checkedFillter($arrFillter, $item) {
        if (in_array($item, $arrFillter)) {
            return "checked";
        }
        return "";
    }

    public static function implodeString($arr) {
        return implode(',', $arr);
    }

    public static function isMobile() {
        $device = false;

        if (stristr($_SERVER['HTTP_USER_AGENT'], 'ipad')) {
            $device = true;
        } else if (stristr($_SERVER['HTTP_USER_AGENT'], 'iphone') || strstr($_SERVER['HTTP_USER_AGENT'], 'iphone')) {
            $device = true;
        } else if (stristr($_SERVER['HTTP_USER_AGENT'], 'blackberry')) {
            $device = true;
        } else if (stristr($_SERVER['HTTP_USER_AGENT'], 'android')) {
            $device = true;
        }
        return $device;
    }

    public static function plusString($str1, $str2) {
        return strval($str1) . '-' . strval($str2);
    }

    public static function sendOrderEmail($order_id) {
        $order = Order::with('items')->find($order_id);
        if (!$order) {
            return;
        }
        $vars = [
            'order' => $order
        ];
        foreach ($order->items as $item) {
            $product = $item->product;
            $idImgProduct = 0;
            if (count($product->color_images) > 0) {
                $filterColor = Session::get('filterColor', '');
                if ($filterColor == '') {
                    $color = $product->color_images[0];
                    $colorId = $color->color_id;
                    $idImgProduct = $color->id;
                } else {
                    $arrColor = array_values(array_filter(explode(',', $filterColor)));
                    $colorImgCurrId = 0;
                    foreach ($product->color_images as $colorImage) {
                        $colorTmp = $colorImage->color_id;
                        $colorTmpId = $colorImage->id;
                        for ($i = 0; $i < count($arrColor); $i++) {
                            if ($colorTmp == $arrColor[$i]) {
                                if ($colorImgCurrId == 0 || $colorTmpId < $colorImgCurrId) {
                                    $colorImgCurrId = $colorTmpId;
                                }
                            }
                        }
                    }
                    $idImgProduct = $colorImgCurrId;
                }
            }
            $item->imageProduct = ColorImageProduct::find($idImgProduct);
        }
        //dd($vars);
        Mail::send('thanhbinhgrand.shop::notification_order', $vars, function($message) use($order) {
            $message->to($order->customer->email, $order->customer->fullname);
        });

        Mail::send('thanhbinhgrand.shop::notification_order_to_admin', $vars, function($message) use($order) {
            $admin_email = Setting::get('admin_email', '');
            if (!empty($admin_email)) {
                $message->to($admin_email, 'ThanhBinh Grand');
            }
        });
    }

    public static function getTreeChildren($parent_id) {
        $filterCategory = Session::get('filterCategory', '');
        $filterCategory = explode(',', $filterCategory);
        $trees = CategoryProduct::getListCategorySameParent($parent_id);
        if ($trees) {
            foreach ($trees as $tree) {
                echo '<label class="custom-control custom-checkbox children">';
                echo '<input type="checkbox" value="' . $tree->id . '" ' . self::checkedFillter($filterCategory, $tree->id) . ' class="custom-control-input category-fill">';
                echo '<span class="custom-control-indicator"></span>';
                echo '<span class="custom-control-description">';
                echo $tree->title;
                self::getTreeChildren($tree->id);
                echo '</span>';
                echo '</label>';
            }
        }
    }
    
    public static function getChildrenMenu($parent_id){
        $list = Menu::where('parent_id',$parent_id)->get();
        if(count($list) > 0){
            $translator = Translator::instance();
            $activeLocale = $translator->getLocale();
            $html  = '<ul class="submenu">';
            $html .= '<li>dịch vụ</li>';
            foreach($list as $item){
                $link = $activeLocale."/".$item->link;
                $html .= ' <li><a href="/'.$link.'">'.$item->lang($activeLocale)->title.'</a></li>';
            }
            $html .= '</ul>';
            return $html;
        }
        else{
            return false;
        }        
    }

}
