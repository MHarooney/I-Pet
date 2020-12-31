import '../viewobject/common/language.dart';

class IPetConfig {
  IPetConfig._();

  ///
  /// AppVersion
  /// For your app, you need to change according based on your app version
  ///
  static const String app_version = '1.4';

  ///
  /// API Key
  /// If you change here, you need to update in server.
  ///
  static const String i_pet_api_key = 'ipet';

  ///
  /// API URL
  /// Change your backend url
  ///
  static const String i_pet_app_url = 'http://alarood.com/index.php/';

  static const String i_pet_app_image_url = 'http://alarood.com/uploads/';

  static const String i_pet_app_image_thumbs_url =
      'http://alarood.com/uploads/thumbnail/';

  ///
  /// Chat Setting
  ///
  static const String iosGoogleAppId =
      '1:505384053995:ios:85beace4987a7e894ae2ae';
  static const String iosGcmSenderId = '505384053995';
  static const String iosDatabaseUrl =
      'https://flutter-buy-and-sell.firebaseio.com';
  static const String iosApiKey = 'AIzaSyATAyoY0jwNqHA281sFD9JkgBYaqgF6KHE';

  static const String androidGoogleAppId =
      '1:1072306220592:android:cf2d5be9134947cb6a47f5';
  static const String androidApiKey = 'AIzaSyDgQbUjCnwxUYp02FF3Y1MPHQpCkBFf0sA';
  static const String androidDatabaseUrl = 'https://dalel-d55f3.firebaseio.com';

  // static const String iosGoogleAppId =
  //     '0:000000000000:ios:0000000000000000000000';
  // static const String iosGcmSenderId = '000000000000';
  // static const String iosDatabaseUrl =
  //     'https://flutter-buy-and-sell.firebaseio.com';
  // static const String iosApiKey = 'AIz000000000000000000000000000000000000';

  // static const String androidGoogleAppId =
  //     '1:000000000000:android:0000000000000000000000';
  // static const String androidApiKey = 'AIz0000000000000000000-0000000000000000';
  // static const String androidDatabaseUrl =
  //     'https://flutter-buy-and-sell.firebaseio.com';

  ///
  ///Admob Setting
  ///
  static bool showAdMob = true;
  static String androidAdMobAdsIdKey = 'ca-app-pub-7505386490623844~6408933120';
  static String androidAdMobUnitIdApiKey =
      'ca-app-pub-7505386490623844/5697598636';
  static String iosAdMobAdsIdKey = 'ca-app-pub-7505386490623844~8927285257';
  static String iosAdMobUnitIdApiKey = 'ca-app-pub-7505386490623844/2344676983';

  ///
  /// Animation Duration
  ///
  static const Duration animation_duration = Duration(milliseconds: 1000);

  ///
  /// Fonts Family Config
  /// Before you declare you here,
  /// 1) You need to add font under assets/fonts/
  /// 2) Declare at pubspec.yaml
  /// 3) Update your font family name at below
  ///
  //static const String i_pet_default_font_family = 'Product Sans';
  static const String i_pet_default_font_family = 'HelveticaNeueW23forSKY-Reg';

  /// Default Language
  static const i_pet_default_language = 'en';

// static const i_pet_language_list = [Locale('en', 'US'), Locale('ar', 'DZ')];
  static const String i_pet_app_db_name = 'i_pet_db.db';

  ///
  /// For default language change, please check
  /// LanguageFragment for language code and country code
  /// ..............................................................
  /// Language             | Language Code     | Country Code
  /// ..............................................................
  /// "English"            | "en"              | "US"
  /// "Arabic"             | "ar"              | "DZ"
  /// "India (Hindi)"      | "hi"              | "IN"
  /// "German"             | "de"              | "DE"
  /// "Spainish"           | "es"              | "ES"
  /// "French"             | "fr"              | "FR"
  /// "Indonesian"         | "id"              | "ID"
  /// "Italian"            | "it"              | "IT"
  /// "Japanese"           | "ja"              | "JP"
  /// "Korean"             | "ko"              | "KR"
  /// "Malay"              | "ms"              | "MY"
  /// "Portuguese"         | "pt"              | "PT"
  /// "Russian"            | "ru"              | "RU"
  /// "Thai"               | "th"              | "TH"
  /// "Turkish"            | "tr"              | "TR"
  /// "Chinese"            | "zh"              | "CN"
  /// ..............................................................
  ///
  static final Language defaultLanguage =
      Language(languageCode: 'ar', countryCode: 'DZ', name: 'Arabic');

  static final List<Language> iPetSupportedLanguageList = <Language>[
    Language(languageCode: 'en', countryCode: 'US', name: 'English'),
    Language(languageCode: 'ar', countryCode: 'DZ', name: 'Arabic'),
    Language(languageCode: 'hi', countryCode: 'IN', name: 'Hindi'),
    Language(languageCode: 'de', countryCode: 'DE', name: 'German'),
    Language(languageCode: 'es', countryCode: 'ES', name: 'Spainish'),
    Language(languageCode: 'fr', countryCode: 'FR', name: 'French'),
    Language(languageCode: 'id', countryCode: 'ID', name: 'Indonesian'),
    Language(languageCode: 'it', countryCode: 'IT', name: 'Italian'),
    Language(languageCode: 'ja', countryCode: 'JP', name: 'Japanese'),
    Language(languageCode: 'ko', countryCode: 'KR', name: 'Korean'),
    Language(languageCode: 'ms', countryCode: 'MY', name: 'Malay'),
    Language(languageCode: 'pt', countryCode: 'PT', name: 'Portuguese'),
    Language(languageCode: 'ru', countryCode: 'RU', name: 'Russian'),
    Language(languageCode: 'th', countryCode: 'TH', name: 'Thai'),
    Language(languageCode: 'tr', countryCode: 'TR', name: 'Turkish'),
    Language(languageCode: 'zh', countryCode: 'CN', name: 'Chinese'),
  ];

  ///
  /// Price Format
  /// Need to change according to your format that you need
  /// E.g.
  /// ",##0.00"   => 2,555.00
  /// "##0.00"    => 2555.00
  /// ".00"       => 2555.00
  /// ",##0"      => 2555
  /// ",##0.0"    => 2555.0
  ///
  static const String priceFormat = ',###.00';

  ///
  /// iOS App No
  ///
  static const String iOSAppStoreId = '000000000';

  ///
  /// Tmp Image Folder Name
  ///
  static const String tmpImageFolderName = 'FlutterBuySell';

  ///
  /// Promote Item
  ///
  static const String PROMOTE_FIRST_CHOICE_DAY_OR_DEFAULT_DAY = '7 ';
  static const String PROMOTE_SECOND_CHOICE_DAY = '14 ';
  static const String PROMOTE_THIRD_CHOICE_DAY = '30 ';
  static const String PROMOTE_FOURTH_CHOICE_DAY = '60 ';

  ///
  /// Default Limit
  ///
  static const int DEFAULT_LOADING_LIMIT = 30;
  static const int CATEGORY_LOADING_LIMIT = 10;
  static const int RECENT_ITEM_LOADING_LIMIT = 10;
  static const int POPULAR_ITEM_LOADING_LIMIT = 10;
  static const int BLOCK_SLIDER_LOADING_LIMIT = 10;
  static const int FOLLOWER_ITEM_LOADING_LIMIT = 10;

  ///
  ///Login Setting
  ///
  static bool showFacebookLogin = false;
  static bool showGoogleLogin = true;
  static bool showPhoneLogin = false;

  ///
  /// Map Filter Setting
  ///
  static bool noFilterWithLocationOnMap = false;
}
