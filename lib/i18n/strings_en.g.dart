part of 'strings.g.dart';

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
	late final _StringsStringsEn strings = _StringsStringsEn._(_root);
}

// Path: strings
class _StringsStringsEn {
	_StringsStringsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String hello({required Object name}) => 'Chào ${name}';
	String get save => 'Lưu';
	late final _StringsStringsLoginEn login = _StringsStringsLoginEn._(_root);
	late final _StringsStringsNavigationEn navigation = _StringsStringsNavigationEn._(_root);
	late final _StringsStringsTestEn test = _StringsStringsTestEn._(_root);
	late final _StringsStringsFormEn form = _StringsStringsFormEn._(_root);
	late final _StringsStringsErrorsEn errors = _StringsStringsErrorsEn._(_root);
	late final _StringsStringsFilePickerEn file_picker = _StringsStringsFilePickerEn._(_root);
	late final _StringsStringsNoFeatureEn no_feature = _StringsStringsNoFeatureEn._(_root);
	late final _StringsStringsDashboardEn dashboard = _StringsStringsDashboardEn._(_root);
	late final _StringsStringsCreateOrderEn create_order = _StringsStringsCreateOrderEn._(_root);
	late final _StringsStringsDetailsOrderEn details_order = _StringsStringsDetailsOrderEn._(_root);
	late final _StringsStringsForgotPasswordEn forgot_password = _StringsStringsForgotPasswordEn._(_root);
	late final _StringsStringsSettingEn setting = _StringsStringsSettingEn._(_root);
	late final _StringsStringsChangeInfoEn change_info = _StringsStringsChangeInfoEn._(_root);
	late final _StringsStringsReportEn report = _StringsStringsReportEn._(_root);
	late final _StringsStringsOrderDeliverEn order_deliver = _StringsStringsOrderDeliverEn._(_root);
}

// Path: strings.login
class _StringsStringsLoginEn {
	_StringsStringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get success => 'Đăng nhập thành công';
	String get fail => 'Đăng nhập thất bại';
	String get remember_pass => 'Ghi nhớ mật khẩu';
	String get text_rembember_pass => 'Ghi nhớ mật khẩu';
	String get forgot_pass => 'Quên mật khẩu';
	String get text_login => 'Đăng nhập';
}

// Path: strings.navigation
class _StringsStringsNavigationEn {
	_StringsStringsNavigationEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsNavigationBottomEn bottom = _StringsStringsNavigationBottomEn._(_root);
}

// Path: strings.test
class _StringsStringsTestEn {
	_StringsStringsTestEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get succeded => 'Test successfull.';
	String get failed => 'Test failed.';
}

// Path: strings.form
class _StringsStringsFormEn {
	_StringsStringsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsFormPhoneEn phone = _StringsStringsFormPhoneEn._(_root);
	late final _StringsStringsFormUsernameEn username = _StringsStringsFormUsernameEn._(_root);
	late final _StringsStringsFormPasswordEn password = _StringsStringsFormPasswordEn._(_root);
	late final _StringsStringsFormFullNameEn full_name = _StringsStringsFormFullNameEn._(_root);
	late final _StringsStringsFormTransferAddressEn transfer_address = _StringsStringsFormTransferAddressEn._(_root);
	late final _StringsStringsFormProductNameEn product_name = _StringsStringsFormProductNameEn._(_root);
	late final _StringsStringsFormUnitPriceEn unit_price = _StringsStringsFormUnitPriceEn._(_root);
	late final _StringsStringsFormDeliveryChargesEn delivery_charges = _StringsStringsFormDeliveryChargesEn._(_root);
	late final _StringsStringsFormReasonShipFailEn reason_ship_fail = _StringsStringsFormReasonShipFailEn._(_root);
	late final _StringsStringsFormForgotPassEmailEn forgot_pass_email = _StringsStringsFormForgotPassEmailEn._(_root);
	late final _StringsStringsFormStoreNameEn store_name = _StringsStringsFormStoreNameEn._(_root);
	late final _StringsStringsFormStoreAdressEn store_adress = _StringsStringsFormStoreAdressEn._(_root);
	late final _StringsStringsFormStoreCodeEn store_code = _StringsStringsFormStoreCodeEn._(_root);
	late final _StringsStringsFormCurrentPassEn current_pass = _StringsStringsFormCurrentPassEn._(_root);
	late final _StringsStringsFormNewPassEn new_pass = _StringsStringsFormNewPassEn._(_root);
	late final _StringsStringsFormRepeatPassEn repeat_pass = _StringsStringsFormRepeatPassEn._(_root);
}

// Path: strings.errors
class _StringsStringsErrorsEn {
	_StringsStringsErrorsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStringsErrorsFormEn form = _StringsStringsErrorsFormEn._(_root);
	late final _StringsStringsErrorsOthersEn others = _StringsStringsErrorsOthersEn._(_root);
	late final _StringsStringsErrorsLoginEn login = _StringsStringsErrorsLoginEn._(_root);
}

// Path: strings.file_picker
class _StringsStringsFilePickerEn {
	_StringsStringsFilePickerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	String get no_permission => 'We have no permission to open your gallery.';
}

// Path: strings.no_feature
class _StringsStringsNoFeatureEn {
	_StringsStringsNoFeatureEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get in_progress => 'Chức năng đang trong quá trình phát triển';
}

// Path: strings.dashboard
class _StringsStringsDashboardEn {
	_StringsStringsDashboardEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String greeting({required Object name}) => 'Xin chào, ${name}';
	String get manage_order => 'Danh sách cửa hàng';
	String get text_msg_no_any_orders => 'Bạn chưa có đơn hàng nào trong hôm nay!';
}

// Path: strings.create_order
class _StringsStringsCreateOrderEn {
	_StringsStringsCreateOrderEn._(this._root);

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

// Path: strings.details_order
class _StringsStringsDetailsOrderEn {
	_StringsStringsDetailsOrderEn._(this._root);

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

// Path: strings.forgot_password
class _StringsStringsForgotPasswordEn {
	_StringsStringsForgotPasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Đặt lại mật khẩu';
	String get description => 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
	String get text_update_password => 'Đặt lại mật khẩu';
	String get text_error_email_not_exist => 'Địa chỉ emai không tồn tại!';
	String get text_message_check_email => 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
	String get text_back_to_main_screen => 'Quay về màn hình chính';
}

// Path: strings.setting
class _StringsStringsSettingEn {
	_StringsStringsSettingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_store_info => 'Thông tin tài khoản';
	String get text_change_password => 'Thay đổi mật khẩu';
	String get text_logout => 'Đăng xuất';
	String text_version({required Object version}) => 'Phiên bản: ${version}';
	String get text_program_by_vibelabs => 'Được phát triển bởi VibeLabs';
	String get text_message_update_password => 'Bạn có chắc chắn muốn đổi mật khẩu?';
}

// Path: strings.change_info
class _StringsStringsChangeInfoEn {
	_StringsStringsChangeInfoEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get text_store_name => 'Tên cửa hàng';
	String get text_update => 'Cập nhật';
	String get text_update_success => 'Cập nhật thành công';
}

// Path: strings.report
class _StringsStringsReportEn {
	_StringsStringsReportEn._(this._root);

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

// Path: strings.order_deliver
class _StringsStringsOrderDeliverEn {
	_StringsStringsOrderDeliverEn._(this._root);

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

// Path: strings.navigation.bottom
class _StringsStringsNavigationBottomEn {
	_StringsStringsNavigationBottomEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get create_order => 'Tạo đơn';
	String get order => 'Đơn hàng';
	String get report => 'Báo cáo';
	String get setting => 'Cài đặt';
}

// Path: strings.form.phone
class _StringsStringsFormPhoneEn {
	_StringsStringsFormPhoneEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Số điện thoại';
	String get hint => 'Nhập số điện thoại';
}

// Path: strings.form.username
class _StringsStringsFormUsernameEn {
	_StringsStringsFormUsernameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Username';
	String get hint => 'Vui lòng nhập username';
}

// Path: strings.form.password
class _StringsStringsFormPasswordEn {
	_StringsStringsFormPasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu';
	String get hint => 'Nhập mật khẩu';
}

// Path: strings.form.full_name
class _StringsStringsFormFullNameEn {
	_StringsStringsFormFullNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Họ và tên';
	String get hint => 'Nhập Họ và tên';
}

// Path: strings.form.transfer_address
class _StringsStringsFormTransferAddressEn {
	_StringsStringsFormTransferAddressEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Địa chỉ giao hàng';
	String get hint => 'Nhập Địa chỉ giao hàng';
}

// Path: strings.form.product_name
class _StringsStringsFormProductNameEn {
	_StringsStringsFormProductNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Tên sản phẩm';
	String get hint => 'Nhập Tên sản phẩm';
}

// Path: strings.form.unit_price
class _StringsStringsFormUnitPriceEn {
	_StringsStringsFormUnitPriceEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Đơn giá';
	String get hint => 'Đơn giá';
}

// Path: strings.form.delivery_charges
class _StringsStringsFormDeliveryChargesEn {
	_StringsStringsFormDeliveryChargesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Phí giao hàng';
	String get hint => 'Nhập Phí giao hàng';
}

// Path: strings.form.reason_ship_fail
class _StringsStringsFormReasonShipFailEn {
	_StringsStringsFormReasonShipFailEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => '';
	String get hint => 'Vui lòng nhập lý do';
}

// Path: strings.form.forgot_pass_email
class _StringsStringsFormForgotPassEmailEn {
	_StringsStringsFormForgotPassEmailEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Nhập email đã đăng ký để lấy lại mật khẩu';
}

// Path: strings.form.store_name
class _StringsStringsFormStoreNameEn {
	_StringsStringsFormStoreNameEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Tên cửa hàng';
	String get hint => 'Nhập tên cửa hàng';
}

// Path: strings.form.store_adress
class _StringsStringsFormStoreAdressEn {
	_StringsStringsFormStoreAdressEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Địa chỉ';
	String get hint => 'Nhập địa chỉ';
}

// Path: strings.form.store_code
class _StringsStringsFormStoreCodeEn {
	_StringsStringsFormStoreCodeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mã cửa hàng';
	String get hint => 'Nhập mã cửa hàng';
}

// Path: strings.form.current_pass
class _StringsStringsFormCurrentPassEn {
	_StringsStringsFormCurrentPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu hiện tại';
	String get hint => 'Nhâp mật khẩu hiện tại';
}

// Path: strings.form.new_pass
class _StringsStringsFormNewPassEn {
	_StringsStringsFormNewPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Mật khẩu mới';
	String get hint => 'Nhâp mật khẩu mới';
}

// Path: strings.form.repeat_pass
class _StringsStringsFormRepeatPassEn {
	_StringsStringsFormRepeatPassEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get label => 'Nhập lại mật khẩu mới';
	String get hint => 'Nhập lại mật khẩu mới';
}

// Path: strings.errors.form
class _StringsStringsErrorsFormEn {
	_StringsStringsErrorsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String maxLength({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
	String minLength({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
	String required({required Object field}) => 'Vui lòng nhập ${field}';
	String get email => 'Địa chỉ Email không hợp lệ.';
	String pattern({required Object field}) => '${field} không hợp lệ.';
}

// Path: strings.errors.others
class _StringsStringsErrorsOthersEn {
	_StringsStringsErrorsOthersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get no_item_found => 'There is no data to show.';
	String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	String get an_unknown_error => 'An unknown error happened.';
	String get no_internet_connection => 'Internet connectivity is not available.';
	String get server_failure => 'Server failure encountered.';
	String get communication_error => 'There was an error with our communication with the servers.';
}

// Path: strings.errors.login
class _StringsStringsErrorsLoginEn {
	_StringsStringsErrorsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get E_USER_ACCOUNT_NOT_EXISTS => 'Vui lòng kiểm tra lại mật khẩu';
	String get E_USER_HAS_BLOCKED => 'User đã bị khoá';
	String get E_USER_NOT_EXISTS => 'User không tồn tại';
}
