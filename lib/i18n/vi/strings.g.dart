/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 236 (118 per locale)
///
/// Built on 2023-06-29 at 12:36 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	vi(languageCode: 'vi', build: _StringsVi.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String hello({required Object name}) => 'Chào ${name}';
	String get save => 'Lưu';
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsNavigationEn navigation = _StringsNavigationEn._(_root);
	late final _StringsTestEn test = _StringsTestEn._(_root);
	late final _StringsFormEn form = _StringsFormEn._(_root);
	late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
	late final _StringsFilePickerEn file_picker = _StringsFilePickerEn._(_root);
	late final _StringsNoFeatureEn no_feature = _StringsNoFeatureEn._(_root);
	late final _StringsDashboardEn dashboard = _StringsDashboardEn._(_root);
	late final _StringsCreateOrderEn create_order = _StringsCreateOrderEn._(_root);
	late final _StringsDetailsOrderEn details_order = _StringsDetailsOrderEn._(_root);
	late final _StringsForgotPasswordEn forgot_password = _StringsForgotPasswordEn._(_root);
	late final _StringsSettingEn setting = _StringsSettingEn._(_root);
	late final _StringsChangeInfoEn change_info = _StringsChangeInfoEn._(_root);
	late final _StringsReportEn report = _StringsReportEn._(_root);
	late final _StringsOrderDeliverEn order_deliver = _StringsOrderDeliverEn._(_root);
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get success => 'Đăng nhập thành công';
	String get fail => 'Đăng nhập thất bại';
	String get remember_pass => 'Ghi nhớ mật khẩu';
	String get text_rembember_pass => 'Ghi nhớ mật khẩu';
	String get forgot_pass => 'Quên mật khẩu';
	String get text_login => 'Đăng nhập';
}

// Path: navigation
class _StringsNavigationEn {
	_StringsNavigationEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsNavigationBottomEn bottom = _StringsNavigationBottomEn._(_root);
}

// Path: test
class _StringsTestEn {
	_StringsTestEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get succeded => 'Test successfull.';
	String get failed => 'Test failed.';
}

// Path: form
class _StringsFormEn {
	_StringsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsFormPhoneEn phone = _StringsFormPhoneEn._(_root);
	late final _StringsFormUsernameEn username = _StringsFormUsernameEn._(_root);
	late final _StringsFormPasswordEn password = _StringsFormPasswordEn._(_root);
	late final _StringsFormFullNameEn full_name = _StringsFormFullNameEn._(_root);
	late final _StringsFormTransferAddressEn transfer_address = _StringsFormTransferAddressEn._(_root);
	late final _StringsFormProductNameEn product_name = _StringsFormProductNameEn._(_root);
	late final _StringsFormUnitPriceEn unit_price = _StringsFormUnitPriceEn._(_root);
	late final _StringsFormDeliveryChargesEn delivery_charges = _StringsFormDeliveryChargesEn._(_root);
	late final _StringsFormReasonShipFailEn reason_ship_fail = _StringsFormReasonShipFailEn._(_root);
	late final _StringsFormForgotPassEmailEn forgot_pass_email = _StringsFormForgotPassEmailEn._(_root);
	late final _StringsFormStoreNameEn store_name = _StringsFormStoreNameEn._(_root);
	late final _StringsFormStoreAdressEn store_adress = _StringsFormStoreAdressEn._(_root);
	late final _StringsFormStoreCodeEn store_code = _StringsFormStoreCodeEn._(_root);
	late final _StringsFormCurrentPassEn current_pass = _StringsFormCurrentPassEn._(_root);
	late final _StringsFormNewPassEn new_pass = _StringsFormNewPassEn._(_root);
	late final _StringsFormRepeatPassEn repeat_pass = _StringsFormRepeatPassEn._(_root);
}

// Path: errors
class _StringsErrorsEn {
	_StringsErrorsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsErrorsFormEn form = _StringsErrorsFormEn._(_root);
	late final _StringsErrorsOthersEn others = _StringsErrorsOthersEn._(_root);
	late final _StringsErrorsLoginEn login = _StringsErrorsLoginEn._(_root);
}

// Path: file_picker
class _StringsFilePickerEn {
	_StringsFilePickerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	String get no_permission => 'We have no permission to open your gallery.';
}

// Path: no_feature
class _StringsNoFeatureEn {
	_StringsNoFeatureEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get in_progress => 'Chức năng đang trong quá trình phát triển';
}

// Path: dashboard
class _StringsDashboardEn {
	_StringsDashboardEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String greeting({required Object name}) => 'Xin chào, ${name}';
	String get manage_order => 'Danh sách cửa hàng';
	String get text_msg_no_any_orders => 'Bạn chưa có đơn hàng nào trong hôm nay!';
}

// Path: create_order
class _StringsCreateOrderEn {
	_StringsCreateOrderEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Tạo đơn hàng';
	String get text_information_customer => 'Thông tin khách hàng';
	String get text_information_order => 'Thông tin đơn hàng';
	String get text_continue => 'Tiếp tục';
	String get text_quantity => 'Số lượng';
	String get text_price => 'Thành tiền:';
	String get text_total_price => 'Cộng tiền hàng:';
	String get text_delivery_charges => 'Phí giao hàng:';
	String get text_message_create_order => 'Bạn chắc chắn muốn tạo đơn hàng này?';
	String get text_create_order_success => 'Đơn hàng đã được tạo thành công';
}

// Path: details_order
class _StringsDetailsOrderEn {
	_StringsDetailsOrderEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Chi tiết đơn hàng';
	String get address => 'Địa chỉ';
	String get total => 'Tổng cộng';
	String get text_order_ship_not_success => 'Đơn hàng giao không thành công';
	String get text_order_ship_in_progress => 'Đơn hàng đã được xử lý';
	String get text_cancel_order => 'Huỷ đơn hàng';
	String get text_reason => 'Lý do';
	String get text_message_cancel_order => 'Bạn chắc chắn muốn huỷ đơn hàng này?';
	String get text_cancel_order_success => 'Huỷ đơn hàng thành công';
	String get text_action_order => 'Thao tác đơn hàng';
	String get text_message_update_order => 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
	String get text_update_order_success => 'Cập nhật trạng thái thành công';
}

// Path: forgot_password
class _StringsForgotPasswordEn {
	_StringsForgotPasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Đặt lại mật khẩu';
	String get description => 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
	String get text_update_password => 'Đặt lại mật khẩu';
	String get text_error_email_not_exist => 'Địa chỉ emai không tồn tại!';
	String get text_message_check_email => 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
	String get text_back_to_main_screen => 'Quay về màn hình chính';
}

// Path: setting
class _StringsSettingEn {
	_StringsSettingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_store_info => 'Thông tin tài khoản';
	String get text_change_password => 'Thay đổi mật khẩu';
	String get text_logout => 'Đăng xuất';
	String text_version({required Object version}) => 'Phiên bản: ${version}';
	String get text_program_by_vibelabs => 'Được phát triển bởi VibeLabs';
	String get text_message_update_password => 'Bạn có chắc chắn muốn đổi mật khẩu?';
}

// Path: change_info
class _StringsChangeInfoEn {
	_StringsChangeInfoEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_store_name => 'Tên cửa hàng';
	String get text_update => 'Cập nhật';
	String get text_update_success => 'Cập nhật thành công';
}

// Path: report
class _StringsReportEn {
	_StringsReportEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_today => 'Hôm nay';
	String get text_yesterday => 'Hôm qua';
	String get text_seven_day => '7 ngày trước';
	String get text_total_order => 'Tổng số đơn hàng:';
	String get text_revenue => 'Doanh thu:';
	String get text_total_ship_fee => 'Tổng phí giao hàng:';
	String get note => ': Chỉ áp dụng cho đơn được giao thành công';
}

// Path: order_deliver
class _StringsOrderDeliverEn {
	_StringsOrderDeliverEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_waiting => 'Chờ giao';
	String get text_inprogress => 'Đang giao';
	String get text_success => 'Giao thành công';
	String get text_not_success => 'Giao không thành công';
	String get text_piece_delivered => 'Giao một phần';
	String get text_piece_delivered_long => 'Giao thành công một phần';
	String get text_cancel => 'Đã huỷ';
}

// Path: navigation.bottom
class _StringsNavigationBottomEn {
	_StringsNavigationBottomEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get create_order => 'Tạo đơn';
	String get order => 'Đơn hàng';
	String get report => 'Báo cáo';
	String get setting => 'Cài đặt';
}

// Path: form.phone
class _StringsFormPhoneEn {
	_StringsFormPhoneEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Số điện thoại';
	String get hint => 'Nhập số điện thoại';
}

// Path: form.username
class _StringsFormUsernameEn {
	_StringsFormUsernameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Username';
	String get hint => 'Vui lòng nhập username';
}

// Path: form.password
class _StringsFormPasswordEn {
	_StringsFormPasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu';
	String get hint => 'Nhập mật khẩu';
}

// Path: form.full_name
class _StringsFormFullNameEn {
	_StringsFormFullNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Họ và tên';
	String get hint => 'Nhập Họ và tên';
}

// Path: form.transfer_address
class _StringsFormTransferAddressEn {
	_StringsFormTransferAddressEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Địa chỉ giao hàng';
	String get hint => 'Nhập Địa chỉ giao hàng';
}

// Path: form.product_name
class _StringsFormProductNameEn {
	_StringsFormProductNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Tên sản phẩm';
	String get hint => 'Nhập Tên sản phẩm';
}

// Path: form.unit_price
class _StringsFormUnitPriceEn {
	_StringsFormUnitPriceEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Đơn giá';
	String get hint => 'Đơn giá';
}

// Path: form.delivery_charges
class _StringsFormDeliveryChargesEn {
	_StringsFormDeliveryChargesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Phí giao hàng';
	String get hint => 'Nhập Phí giao hàng';
}

// Path: form.reason_ship_fail
class _StringsFormReasonShipFailEn {
	_StringsFormReasonShipFailEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => '';
	String get hint => 'Vui lòng nhập lý do';
}

// Path: form.forgot_pass_email
class _StringsFormForgotPassEmailEn {
	_StringsFormForgotPassEmailEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Nhập email đã đăng ký để lấy lại mật khẩu';
}

// Path: form.store_name
class _StringsFormStoreNameEn {
	_StringsFormStoreNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Tên cửa hàng';
	String get hint => 'Nhập tên cửa hàng';
}

// Path: form.store_adress
class _StringsFormStoreAdressEn {
	_StringsFormStoreAdressEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Địa chỉ';
	String get hint => 'Nhập địa chỉ';
}

// Path: form.store_code
class _StringsFormStoreCodeEn {
	_StringsFormStoreCodeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mã cửa hàng';
	String get hint => 'Nhập mã cửa hàng';
}

// Path: form.current_pass
class _StringsFormCurrentPassEn {
	_StringsFormCurrentPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu hiện tại';
	String get hint => 'Nhâp mật khẩu hiện tại';
}

// Path: form.new_pass
class _StringsFormNewPassEn {
	_StringsFormNewPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu mới';
	String get hint => 'Nhâp mật khẩu mới';
}

// Path: form.repeat_pass
class _StringsFormRepeatPassEn {
	_StringsFormRepeatPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Nhập lại mật khẩu mới';
	String get hint => 'Nhập lại mật khẩu mới';
}

// Path: errors.form
class _StringsErrorsFormEn {
	_StringsErrorsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String maxLength({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
	String minLength({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
	String required({required Object field}) => 'Vui lòng nhập ${field}';
	String get email => 'Địa chỉ Email không hợp lệ.';
	String pattern({required Object field}) => '${field} không hợp lệ.';
}

// Path: errors.others
class _StringsErrorsOthersEn {
	_StringsErrorsOthersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get no_item_found => 'There is no data to show.';
	String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	String get an_unknown_error => 'An unknown error happened.';
	String get no_internet_connection => 'Internet connectivity is not available.';
	String get server_failure => 'Server failure encountered.';
	String get communication_error => 'There was an error with our communication with the servers.';
}

// Path: errors.login
class _StringsErrorsLoginEn {
	_StringsErrorsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get E_USER_ACCOUNT_NOT_EXISTS => 'Vui lòng kiểm tra lại mật khẩu';
	String get E_USER_HAS_BLOCKED => 'User đã bị khoá';
	String get E_USER_NOT_EXISTS => 'User không tồn tại';
}

// Path: <root>
class _StringsVi implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'Chào ${name}';
	@override String get save => 'Lưu';
	@override late final _StringsLoginVi login = _StringsLoginVi._(_root);
	@override late final _StringsNavigationVi navigation = _StringsNavigationVi._(_root);
	@override late final _StringsTestVi test = _StringsTestVi._(_root);
	@override late final _StringsFormVi form = _StringsFormVi._(_root);
	@override late final _StringsErrorsVi errors = _StringsErrorsVi._(_root);
	@override late final _StringsFilePickerVi file_picker = _StringsFilePickerVi._(_root);
	@override late final _StringsNoFeatureVi no_feature = _StringsNoFeatureVi._(_root);
	@override late final _StringsDashboardVi dashboard = _StringsDashboardVi._(_root);
	@override late final _StringsCreateOrderVi create_order = _StringsCreateOrderVi._(_root);
	@override late final _StringsDetailsOrderVi details_order = _StringsDetailsOrderVi._(_root);
	@override late final _StringsForgotPasswordVi forgot_password = _StringsForgotPasswordVi._(_root);
	@override late final _StringsSettingVi setting = _StringsSettingVi._(_root);
	@override late final _StringsChangeInfoVi change_info = _StringsChangeInfoVi._(_root);
	@override late final _StringsReportVi report = _StringsReportVi._(_root);
	@override late final _StringsOrderDeliverVi order_deliver = _StringsOrderDeliverVi._(_root);
}

// Path: login
class _StringsLoginVi implements _StringsLoginEn {
	_StringsLoginVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get success => 'Đăng nhập thành công';
	@override String get fail => 'Đăng nhập thất bại';
	@override String get remember_pass => 'Ghi nhớ mật khẩu';
	@override String get text_rembember_pass => 'Ghi nhớ mật khẩu';
	@override String get forgot_pass => 'Quên mật khẩu';
	@override String get text_login => 'Đăng nhập';
}

// Path: navigation
class _StringsNavigationVi implements _StringsNavigationEn {
	_StringsNavigationVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsNavigationBottomVi bottom = _StringsNavigationBottomVi._(_root);
}

// Path: test
class _StringsTestVi implements _StringsTestEn {
	_StringsTestVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get succeded => 'Test successfull.';
	@override String get failed => 'Test failed.';
}

// Path: form
class _StringsFormVi implements _StringsFormEn {
	_StringsFormVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsFormPhoneVi phone = _StringsFormPhoneVi._(_root);
	@override late final _StringsFormUsernameVi username = _StringsFormUsernameVi._(_root);
	@override late final _StringsFormPasswordVi password = _StringsFormPasswordVi._(_root);
	@override late final _StringsFormFullNameVi full_name = _StringsFormFullNameVi._(_root);
	@override late final _StringsFormTransferAddressVi transfer_address = _StringsFormTransferAddressVi._(_root);
	@override late final _StringsFormProductNameVi product_name = _StringsFormProductNameVi._(_root);
	@override late final _StringsFormUnitPriceVi unit_price = _StringsFormUnitPriceVi._(_root);
	@override late final _StringsFormDeliveryChargesVi delivery_charges = _StringsFormDeliveryChargesVi._(_root);
	@override late final _StringsFormReasonShipFailVi reason_ship_fail = _StringsFormReasonShipFailVi._(_root);
	@override late final _StringsFormForgotPassEmailVi forgot_pass_email = _StringsFormForgotPassEmailVi._(_root);
	@override late final _StringsFormStoreNameVi store_name = _StringsFormStoreNameVi._(_root);
	@override late final _StringsFormStoreAdressVi store_adress = _StringsFormStoreAdressVi._(_root);
	@override late final _StringsFormStoreCodeVi store_code = _StringsFormStoreCodeVi._(_root);
	@override late final _StringsFormCurrentPassVi current_pass = _StringsFormCurrentPassVi._(_root);
	@override late final _StringsFormNewPassVi new_pass = _StringsFormNewPassVi._(_root);
	@override late final _StringsFormRepeatPassVi repeat_pass = _StringsFormRepeatPassVi._(_root);
}

// Path: errors
class _StringsErrorsVi implements _StringsErrorsEn {
	_StringsErrorsVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsErrorsFormVi form = _StringsErrorsFormVi._(_root);
	@override late final _StringsErrorsOthersVi others = _StringsErrorsOthersVi._(_root);
	@override late final _StringsErrorsLoginVi login = _StringsErrorsLoginVi._(_root);
}

// Path: file_picker
class _StringsFilePickerVi implements _StringsFilePickerEn {
	_StringsFilePickerVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	@override String get no_permission => 'We have no permission to open your gallery.';
}

// Path: no_feature
class _StringsNoFeatureVi implements _StringsNoFeatureEn {
	_StringsNoFeatureVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get in_progress => 'Chức năng đang trong quá trình phát triển';
}

// Path: dashboard
class _StringsDashboardVi implements _StringsDashboardEn {
	_StringsDashboardVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String greeting({required Object name}) => 'Xin chào, ${name}';
	@override String get manage_order => 'Danh sách cửa hàng';
	@override String get text_msg_no_any_orders => 'Bạn chưa có đơn hàng nào trong hôm nay!';
}

// Path: create_order
class _StringsCreateOrderVi implements _StringsCreateOrderEn {
	_StringsCreateOrderVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tạo đơn hàng';
	@override String get text_information_customer => 'Thông tin khách hàng';
	@override String get text_information_order => 'Thông tin đơn hàng';
	@override String get text_continue => 'Tiếp tục';
	@override String get text_quantity => 'Số lượng';
	@override String get text_price => 'Thành tiền:';
	@override String get text_total_price => 'Cộng tiền hàng:';
	@override String get text_delivery_charges => 'Phí giao hàng:';
	@override String get text_message_create_order => 'Bạn chắc chắn muốn tạo đơn hàng này?';
	@override String get text_create_order_success => 'Đơn hàng đã được tạo thành công';
}

// Path: details_order
class _StringsDetailsOrderVi implements _StringsDetailsOrderEn {
	_StringsDetailsOrderVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chi tiết đơn hàng';
	@override String get address => 'Địa chỉ';
	@override String get total => 'Tổng cộng';
	@override String get text_order_ship_not_success => 'Đơn hàng giao không thành công';
	@override String get text_order_ship_in_progress => 'Đơn hàng đã được xử lý';
	@override String get text_cancel_order => 'Huỷ đơn hàng';
	@override String get text_reason => 'Lý do';
	@override String get text_message_cancel_order => 'Bạn chắc chắn muốn huỷ đơn hàng này?';
	@override String get text_cancel_order_success => 'Huỷ đơn hàng thành công';
	@override String get text_action_order => 'Thao tác đơn hàng';
	@override String get text_message_update_order => 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
	@override String get text_update_order_success => 'Cập nhật trạng thái thành công';
}

// Path: forgot_password
class _StringsForgotPasswordVi implements _StringsForgotPasswordEn {
	_StringsForgotPasswordVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đặt lại mật khẩu';
	@override String get description => 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
	@override String get text_update_password => 'Đặt lại mật khẩu';
	@override String get text_error_email_not_exist => 'Địa chỉ emai không tồn tại!';
	@override String get text_message_check_email => 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
	@override String get text_back_to_main_screen => 'Quay về màn hình chính';
}

// Path: setting
class _StringsSettingVi implements _StringsSettingEn {
	_StringsSettingVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_store_info => 'Thông tin tài khoản';
	@override String get text_change_password => 'Thay đổi mật khẩu';
	@override String get text_logout => 'Đăng xuất';
	@override String text_version({required Object version}) => 'Phiên bản: ${version}';
	@override String get text_program_by_vibelabs => 'Được phát triển bởi VibeLabs';
	@override String get text_message_update_password => 'Bạn có chắc chắn muốn đổi mật khẩu?';
}

// Path: change_info
class _StringsChangeInfoVi implements _StringsChangeInfoEn {
	_StringsChangeInfoVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_store_name => 'Tên cửa hàng';
	@override String get text_update => 'Cập nhật';
	@override String get text_update_success => 'Cập nhật thành công';
}

// Path: report
class _StringsReportVi implements _StringsReportEn {
	_StringsReportVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_today => 'Hôm nay';
	@override String get text_yesterday => 'Hôm qua';
	@override String get text_seven_day => '7 ngày trước';
	@override String get text_total_order => 'Tổng số đơn hàng:';
	@override String get text_revenue => 'Doanh thu:';
	@override String get text_total_ship_fee => 'Tổng phí giao hàng:';
	@override String get note => ': Chỉ áp dụng cho đơn được giao thành công';
}

// Path: order_deliver
class _StringsOrderDeliverVi implements _StringsOrderDeliverEn {
	_StringsOrderDeliverVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_waiting => 'Chờ giao';
	@override String get text_inprogress => 'Đang giao';
	@override String get text_success => 'Giao thành công';
	@override String get text_not_success => 'Giao không thành công';
	@override String get text_piece_delivered => 'Giao một phần';
	@override String get text_piece_delivered_long => 'Giao thành công một phần';
	@override String get text_cancel => 'Đã huỷ';
}

// Path: navigation.bottom
class _StringsNavigationBottomVi implements _StringsNavigationBottomEn {
	_StringsNavigationBottomVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get create_order => 'Tạo đơn';
	@override String get order => 'Đơn hàng';
	@override String get report => 'Báo cáo';
	@override String get setting => 'Cài đặt';
}

// Path: form.phone
class _StringsFormPhoneVi implements _StringsFormPhoneEn {
	_StringsFormPhoneVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Số điện thoại';
	@override String get hint => 'Nhập số điện thoại';
}

// Path: form.username
class _StringsFormUsernameVi implements _StringsFormUsernameEn {
	_StringsFormUsernameVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Username';
	@override String get hint => 'Vui lòng nhập username';
}

// Path: form.password
class _StringsFormPasswordVi implements _StringsFormPasswordEn {
	_StringsFormPasswordVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu';
	@override String get hint => 'Nhập mật khẩu';
}

// Path: form.full_name
class _StringsFormFullNameVi implements _StringsFormFullNameEn {
	_StringsFormFullNameVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Họ và tên';
	@override String get hint => 'Nhập Họ và tên';
}

// Path: form.transfer_address
class _StringsFormTransferAddressVi implements _StringsFormTransferAddressEn {
	_StringsFormTransferAddressVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Địa chỉ giao hàng';
	@override String get hint => 'Nhập Địa chỉ giao hàng';
}

// Path: form.product_name
class _StringsFormProductNameVi implements _StringsFormProductNameEn {
	_StringsFormProductNameVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tên sản phẩm';
	@override String get hint => 'Nhập Tên sản phẩm';
}

// Path: form.unit_price
class _StringsFormUnitPriceVi implements _StringsFormUnitPriceEn {
	_StringsFormUnitPriceVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Đơn giá';
	@override String get hint => 'Đơn giá';
}

// Path: form.delivery_charges
class _StringsFormDeliveryChargesVi implements _StringsFormDeliveryChargesEn {
	_StringsFormDeliveryChargesVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Phí giao hàng';
	@override String get hint => 'Nhập Phí giao hàng';
}

// Path: form.reason_ship_fail
class _StringsFormReasonShipFailVi implements _StringsFormReasonShipFailEn {
	_StringsFormReasonShipFailVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => '';
	@override String get hint => 'Vui lòng nhập lý do';
}

// Path: form.forgot_pass_email
class _StringsFormForgotPassEmailVi implements _StringsFormForgotPassEmailEn {
	_StringsFormForgotPassEmailVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Email';
	@override String get hint => 'Nhập email đã đăng ký để lấy lại mật khẩu';
}

// Path: form.store_name
class _StringsFormStoreNameVi implements _StringsFormStoreNameEn {
	_StringsFormStoreNameVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tên cửa hàng';
	@override String get hint => 'Nhập tên cửa hàng';
}

// Path: form.store_adress
class _StringsFormStoreAdressVi implements _StringsFormStoreAdressEn {
	_StringsFormStoreAdressVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Địa chỉ';
	@override String get hint => 'Nhập địa chỉ';
}

// Path: form.store_code
class _StringsFormStoreCodeVi implements _StringsFormStoreCodeEn {
	_StringsFormStoreCodeVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mã cửa hàng';
	@override String get hint => 'Nhập mã cửa hàng';
}

// Path: form.current_pass
class _StringsFormCurrentPassVi implements _StringsFormCurrentPassEn {
	_StringsFormCurrentPassVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu hiện tại';
	@override String get hint => 'Nhâp mật khẩu hiện tại';
}

// Path: form.new_pass
class _StringsFormNewPassVi implements _StringsFormNewPassEn {
	_StringsFormNewPassVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu mới';
	@override String get hint => 'Nhâp mật khẩu mới';
}

// Path: form.repeat_pass
class _StringsFormRepeatPassVi implements _StringsFormRepeatPassEn {
	_StringsFormRepeatPassVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nhập lại mật khẩu mới';
	@override String get hint => 'Nhập lại mật khẩu mới';
}

// Path: errors.form
class _StringsErrorsFormVi implements _StringsErrorsFormEn {
	_StringsErrorsFormVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String maxLength({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
	@override String minLength({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
	@override String required({required Object field}) => 'Vui lòng nhập ${field}';
	@override String get email => 'Địa chỉ Email không hợp lệ.';
	@override String pattern({required Object field}) => '${field} không hợp lệ.';
}

// Path: errors.others
class _StringsErrorsOthersVi implements _StringsErrorsOthersEn {
	_StringsErrorsOthersVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get no_item_found => 'There is no data to show.';
	@override String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	@override String get an_unknown_error => 'An unknown error happened.';
	@override String get no_internet_connection => 'Internet connectivity is not available.';
	@override String get server_failure => 'Server failure encountered.';
	@override String get communication_error => 'There was an error with our communication with the servers.';
}

// Path: errors.login
class _StringsErrorsLoginVi implements _StringsErrorsLoginEn {
	_StringsErrorsLoginVi._(this._root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get E_USER_ACCOUNT_NOT_EXISTS => 'Vui lòng kiểm tra lại mật khẩu';
	@override String get E_USER_HAS_BLOCKED => 'User đã bị khoá';
	@override String get E_USER_NOT_EXISTS => 'User không tồn tại';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'Chào ${name}';
			case 'save': return 'Lưu';
			case 'login.success': return 'Đăng nhập thành công';
			case 'login.fail': return 'Đăng nhập thất bại';
			case 'login.remember_pass': return 'Ghi nhớ mật khẩu';
			case 'login.text_rembember_pass': return 'Ghi nhớ mật khẩu';
			case 'login.forgot_pass': return 'Quên mật khẩu';
			case 'login.text_login': return 'Đăng nhập';
			case 'navigation.bottom.home': return 'Home';
			case 'navigation.bottom.create_order': return 'Tạo đơn';
			case 'navigation.bottom.order': return 'Đơn hàng';
			case 'navigation.bottom.report': return 'Báo cáo';
			case 'navigation.bottom.setting': return 'Cài đặt';
			case 'test.succeded': return 'Test successfull.';
			case 'test.failed': return 'Test failed.';
			case 'form.phone.label': return 'Số điện thoại';
			case 'form.phone.hint': return 'Nhập số điện thoại';
			case 'form.username.label': return 'Username';
			case 'form.username.hint': return 'Vui lòng nhập username';
			case 'form.password.label': return 'Mật khẩu';
			case 'form.password.hint': return 'Nhập mật khẩu';
			case 'form.full_name.label': return 'Họ và tên';
			case 'form.full_name.hint': return 'Nhập Họ và tên';
			case 'form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'form.product_name.label': return 'Tên sản phẩm';
			case 'form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'form.unit_price.label': return 'Đơn giá';
			case 'form.unit_price.hint': return 'Đơn giá';
			case 'form.delivery_charges.label': return 'Phí giao hàng';
			case 'form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'form.reason_ship_fail.label': return '';
			case 'form.reason_ship_fail.hint': return 'Vui lòng nhập lý do';
			case 'form.forgot_pass_email.label': return 'Email';
			case 'form.forgot_pass_email.hint': return 'Nhập email đã đăng ký để lấy lại mật khẩu';
			case 'form.store_name.label': return 'Tên cửa hàng';
			case 'form.store_name.hint': return 'Nhập tên cửa hàng';
			case 'form.store_adress.label': return 'Địa chỉ';
			case 'form.store_adress.hint': return 'Nhập địa chỉ';
			case 'form.store_code.label': return 'Mã cửa hàng';
			case 'form.store_code.hint': return 'Nhập mã cửa hàng';
			case 'form.current_pass.label': return 'Mật khẩu hiện tại';
			case 'form.current_pass.hint': return 'Nhâp mật khẩu hiện tại';
			case 'form.new_pass.label': return 'Mật khẩu mới';
			case 'form.new_pass.hint': return 'Nhâp mật khẩu mới';
			case 'form.repeat_pass.label': return 'Nhập lại mật khẩu mới';
			case 'form.repeat_pass.hint': return 'Nhập lại mật khẩu mới';
			case 'errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'errors.others.no_item_found': return 'There is no data to show.';
			case 'errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'errors.others.server_failure': return 'Server failure encountered.';
			case 'errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'no_feature.in_progress': return 'Chức năng đang trong quá trình phát triển';
			case 'dashboard.greeting': return ({required Object name}) => 'Xin chào, ${name}';
			case 'dashboard.manage_order': return 'Danh sách cửa hàng';
			case 'dashboard.text_msg_no_any_orders': return 'Bạn chưa có đơn hàng nào trong hôm nay!';
			case 'create_order.title': return 'Tạo đơn hàng';
			case 'create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'create_order.text_continue': return 'Tiếp tục';
			case 'create_order.text_quantity': return 'Số lượng';
			case 'create_order.text_price': return 'Thành tiền:';
			case 'create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'create_order.text_delivery_charges': return 'Phí giao hàng:';
			case 'create_order.text_message_create_order': return 'Bạn chắc chắn muốn tạo đơn hàng này?';
			case 'create_order.text_create_order_success': return 'Đơn hàng đã được tạo thành công';
			case 'details_order.title': return 'Chi tiết đơn hàng';
			case 'details_order.address': return 'Địa chỉ';
			case 'details_order.total': return 'Tổng cộng';
			case 'details_order.text_order_ship_not_success': return 'Đơn hàng giao không thành công';
			case 'details_order.text_order_ship_in_progress': return 'Đơn hàng đã được xử lý';
			case 'details_order.text_cancel_order': return 'Huỷ đơn hàng';
			case 'details_order.text_reason': return 'Lý do';
			case 'details_order.text_message_cancel_order': return 'Bạn chắc chắn muốn huỷ đơn hàng này?';
			case 'details_order.text_cancel_order_success': return 'Huỷ đơn hàng thành công';
			case 'details_order.text_action_order': return 'Thao tác đơn hàng';
			case 'details_order.text_message_update_order': return 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
			case 'details_order.text_update_order_success': return 'Cập nhật trạng thái thành công';
			case 'forgot_password.title': return 'Đặt lại mật khẩu';
			case 'forgot_password.description': return 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
			case 'forgot_password.text_update_password': return 'Đặt lại mật khẩu';
			case 'forgot_password.text_error_email_not_exist': return 'Địa chỉ emai không tồn tại!';
			case 'forgot_password.text_message_check_email': return 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
			case 'forgot_password.text_back_to_main_screen': return 'Quay về màn hình chính';
			case 'setting.text_store_info': return 'Thông tin tài khoản';
			case 'setting.text_change_password': return 'Thay đổi mật khẩu';
			case 'setting.text_logout': return 'Đăng xuất';
			case 'setting.text_version': return ({required Object version}) => 'Phiên bản: ${version}';
			case 'setting.text_program_by_vibelabs': return 'Được phát triển bởi VibeLabs';
			case 'setting.text_message_update_password': return 'Bạn có chắc chắn muốn đổi mật khẩu?';
			case 'change_info.text_store_name': return 'Tên cửa hàng';
			case 'change_info.text_update': return 'Cập nhật';
			case 'change_info.text_update_success': return 'Cập nhật thành công';
			case 'report.text_today': return 'Hôm nay';
			case 'report.text_yesterday': return 'Hôm qua';
			case 'report.text_seven_day': return '7 ngày trước';
			case 'report.text_total_order': return 'Tổng số đơn hàng:';
			case 'report.text_revenue': return 'Doanh thu:';
			case 'report.text_total_ship_fee': return 'Tổng phí giao hàng:';
			case 'report.note': return ': Chỉ áp dụng cho đơn được giao thành công';
			case 'order_deliver.text_waiting': return 'Chờ giao';
			case 'order_deliver.text_inprogress': return 'Đang giao';
			case 'order_deliver.text_success': return 'Giao thành công';
			case 'order_deliver.text_not_success': return 'Giao không thành công';
			case 'order_deliver.text_piece_delivered': return 'Giao một phần';
			case 'order_deliver.text_piece_delivered_long': return 'Giao thành công một phần';
			case 'order_deliver.text_cancel': return 'Đã huỷ';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'Chào ${name}';
			case 'save': return 'Lưu';
			case 'login.success': return 'Đăng nhập thành công';
			case 'login.fail': return 'Đăng nhập thất bại';
			case 'login.remember_pass': return 'Ghi nhớ mật khẩu';
			case 'login.text_rembember_pass': return 'Ghi nhớ mật khẩu';
			case 'login.forgot_pass': return 'Quên mật khẩu';
			case 'login.text_login': return 'Đăng nhập';
			case 'navigation.bottom.home': return 'Home';
			case 'navigation.bottom.create_order': return 'Tạo đơn';
			case 'navigation.bottom.order': return 'Đơn hàng';
			case 'navigation.bottom.report': return 'Báo cáo';
			case 'navigation.bottom.setting': return 'Cài đặt';
			case 'test.succeded': return 'Test successfull.';
			case 'test.failed': return 'Test failed.';
			case 'form.phone.label': return 'Số điện thoại';
			case 'form.phone.hint': return 'Nhập số điện thoại';
			case 'form.username.label': return 'Username';
			case 'form.username.hint': return 'Vui lòng nhập username';
			case 'form.password.label': return 'Mật khẩu';
			case 'form.password.hint': return 'Nhập mật khẩu';
			case 'form.full_name.label': return 'Họ và tên';
			case 'form.full_name.hint': return 'Nhập Họ và tên';
			case 'form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'form.product_name.label': return 'Tên sản phẩm';
			case 'form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'form.unit_price.label': return 'Đơn giá';
			case 'form.unit_price.hint': return 'Đơn giá';
			case 'form.delivery_charges.label': return 'Phí giao hàng';
			case 'form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'form.reason_ship_fail.label': return '';
			case 'form.reason_ship_fail.hint': return 'Vui lòng nhập lý do';
			case 'form.forgot_pass_email.label': return 'Email';
			case 'form.forgot_pass_email.hint': return 'Nhập email đã đăng ký để lấy lại mật khẩu';
			case 'form.store_name.label': return 'Tên cửa hàng';
			case 'form.store_name.hint': return 'Nhập tên cửa hàng';
			case 'form.store_adress.label': return 'Địa chỉ';
			case 'form.store_adress.hint': return 'Nhập địa chỉ';
			case 'form.store_code.label': return 'Mã cửa hàng';
			case 'form.store_code.hint': return 'Nhập mã cửa hàng';
			case 'form.current_pass.label': return 'Mật khẩu hiện tại';
			case 'form.current_pass.hint': return 'Nhâp mật khẩu hiện tại';
			case 'form.new_pass.label': return 'Mật khẩu mới';
			case 'form.new_pass.hint': return 'Nhâp mật khẩu mới';
			case 'form.repeat_pass.label': return 'Nhập lại mật khẩu mới';
			case 'form.repeat_pass.hint': return 'Nhập lại mật khẩu mới';
			case 'errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'errors.others.no_item_found': return 'There is no data to show.';
			case 'errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'errors.others.server_failure': return 'Server failure encountered.';
			case 'errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'no_feature.in_progress': return 'Chức năng đang trong quá trình phát triển';
			case 'dashboard.greeting': return ({required Object name}) => 'Xin chào, ${name}';
			case 'dashboard.manage_order': return 'Danh sách cửa hàng';
			case 'dashboard.text_msg_no_any_orders': return 'Bạn chưa có đơn hàng nào trong hôm nay!';
			case 'create_order.title': return 'Tạo đơn hàng';
			case 'create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'create_order.text_continue': return 'Tiếp tục';
			case 'create_order.text_quantity': return 'Số lượng';
			case 'create_order.text_price': return 'Thành tiền:';
			case 'create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'create_order.text_delivery_charges': return 'Phí giao hàng:';
			case 'create_order.text_message_create_order': return 'Bạn chắc chắn muốn tạo đơn hàng này?';
			case 'create_order.text_create_order_success': return 'Đơn hàng đã được tạo thành công';
			case 'details_order.title': return 'Chi tiết đơn hàng';
			case 'details_order.address': return 'Địa chỉ';
			case 'details_order.total': return 'Tổng cộng';
			case 'details_order.text_order_ship_not_success': return 'Đơn hàng giao không thành công';
			case 'details_order.text_order_ship_in_progress': return 'Đơn hàng đã được xử lý';
			case 'details_order.text_cancel_order': return 'Huỷ đơn hàng';
			case 'details_order.text_reason': return 'Lý do';
			case 'details_order.text_message_cancel_order': return 'Bạn chắc chắn muốn huỷ đơn hàng này?';
			case 'details_order.text_cancel_order_success': return 'Huỷ đơn hàng thành công';
			case 'details_order.text_action_order': return 'Thao tác đơn hàng';
			case 'details_order.text_message_update_order': return 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
			case 'details_order.text_update_order_success': return 'Cập nhật trạng thái thành công';
			case 'forgot_password.title': return 'Đặt lại mật khẩu';
			case 'forgot_password.description': return 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
			case 'forgot_password.text_update_password': return 'Đặt lại mật khẩu';
			case 'forgot_password.text_error_email_not_exist': return 'Địa chỉ emai không tồn tại!';
			case 'forgot_password.text_message_check_email': return 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
			case 'forgot_password.text_back_to_main_screen': return 'Quay về màn hình chính';
			case 'setting.text_store_info': return 'Thông tin tài khoản';
			case 'setting.text_change_password': return 'Thay đổi mật khẩu';
			case 'setting.text_logout': return 'Đăng xuất';
			case 'setting.text_version': return ({required Object version}) => 'Phiên bản: ${version}';
			case 'setting.text_program_by_vibelabs': return 'Được phát triển bởi VibeLabs';
			case 'setting.text_message_update_password': return 'Bạn có chắc chắn muốn đổi mật khẩu?';
			case 'change_info.text_store_name': return 'Tên cửa hàng';
			case 'change_info.text_update': return 'Cập nhật';
			case 'change_info.text_update_success': return 'Cập nhật thành công';
			case 'report.text_today': return 'Hôm nay';
			case 'report.text_yesterday': return 'Hôm qua';
			case 'report.text_seven_day': return '7 ngày trước';
			case 'report.text_total_order': return 'Tổng số đơn hàng:';
			case 'report.text_revenue': return 'Doanh thu:';
			case 'report.text_total_ship_fee': return 'Tổng phí giao hàng:';
			case 'report.note': return ': Chỉ áp dụng cho đơn được giao thành công';
			case 'order_deliver.text_waiting': return 'Chờ giao';
			case 'order_deliver.text_inprogress': return 'Đang giao';
			case 'order_deliver.text_success': return 'Giao thành công';
			case 'order_deliver.text_not_success': return 'Giao không thành công';
			case 'order_deliver.text_piece_delivered': return 'Giao một phần';
			case 'order_deliver.text_piece_delivered_long': return 'Giao thành công một phần';
			case 'order_deliver.text_cancel': return 'Đã huỷ';
			default: return null;
		}
	}
}
