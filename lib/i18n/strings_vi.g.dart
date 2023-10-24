part of 'strings.g.dart';

// Path: <root>
class _StringsVi extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsStringsVi strings = _StringsStringsVi._(_root);
}

// Path: strings
class _StringsStringsVi extends _StringsStringsEn {
	_StringsStringsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'Chào ${name}';
	@override String get save => 'Lưu';
	@override late final _StringsStringsLoginVi login = _StringsStringsLoginVi._(_root);
	@override late final _StringsStringsNavigationVi navigation = _StringsStringsNavigationVi._(_root);
	@override late final _StringsStringsTestVi test = _StringsStringsTestVi._(_root);
	@override late final _StringsStringsFormVi form = _StringsStringsFormVi._(_root);
	@override late final _StringsStringsErrorsVi errors = _StringsStringsErrorsVi._(_root);
	@override late final _StringsStringsFilePickerVi file_picker = _StringsStringsFilePickerVi._(_root);
	@override late final _StringsStringsNoFeatureVi no_feature = _StringsStringsNoFeatureVi._(_root);
	@override late final _StringsStringsDashboardVi dashboard = _StringsStringsDashboardVi._(_root);
	@override late final _StringsStringsCreateOrderVi create_order = _StringsStringsCreateOrderVi._(_root);
	@override late final _StringsStringsDetailsOrderVi details_order = _StringsStringsDetailsOrderVi._(_root);
	@override late final _StringsStringsForgotPasswordVi forgot_password = _StringsStringsForgotPasswordVi._(_root);
	@override late final _StringsStringsSettingVi setting = _StringsStringsSettingVi._(_root);
	@override late final _StringsStringsChangeInfoVi change_info = _StringsStringsChangeInfoVi._(_root);
	@override late final _StringsStringsReportVi report = _StringsStringsReportVi._(_root);
	@override late final _StringsStringsOrderDeliverVi order_deliver = _StringsStringsOrderDeliverVi._(_root);
}

// Path: strings.login
class _StringsStringsLoginVi extends _StringsStringsLoginEn {
	_StringsStringsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get success => 'Đăng nhập thành công';
	@override String get fail => 'Đăng nhập thất bại';
	@override String get remember_pass => 'Ghi nhớ mật khẩu';
	@override String get text_rembember_pass => 'Ghi nhớ mật khẩu';
	@override String get forgot_pass => 'Quên mật khẩu';
	@override String get text_login => 'Đăng nhập';
}

// Path: strings.navigation
class _StringsStringsNavigationVi extends _StringsStringsNavigationEn {
	_StringsStringsNavigationVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsNavigationBottomVi bottom = _StringsStringsNavigationBottomVi._(_root);
}

// Path: strings.test
class _StringsStringsTestVi extends _StringsStringsTestEn {
	_StringsStringsTestVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get succeded => 'Test successfull.';
	@override String get failed => 'Test failed.';
}

// Path: strings.form
class _StringsStringsFormVi extends _StringsStringsFormEn {
	_StringsStringsFormVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsFormPhoneVi phone = _StringsStringsFormPhoneVi._(_root);
	@override late final _StringsStringsFormUsernameVi username = _StringsStringsFormUsernameVi._(_root);
	@override late final _StringsStringsFormPasswordVi password = _StringsStringsFormPasswordVi._(_root);
	@override late final _StringsStringsFormFullNameVi full_name = _StringsStringsFormFullNameVi._(_root);
	@override late final _StringsStringsFormTransferAddressVi transfer_address = _StringsStringsFormTransferAddressVi._(_root);
	@override late final _StringsStringsFormProductNameVi product_name = _StringsStringsFormProductNameVi._(_root);
	@override late final _StringsStringsFormUnitPriceVi unit_price = _StringsStringsFormUnitPriceVi._(_root);
	@override late final _StringsStringsFormDeliveryChargesVi delivery_charges = _StringsStringsFormDeliveryChargesVi._(_root);
	@override late final _StringsStringsFormReasonShipFailVi reason_ship_fail = _StringsStringsFormReasonShipFailVi._(_root);
	@override late final _StringsStringsFormForgotPassEmailVi forgot_pass_email = _StringsStringsFormForgotPassEmailVi._(_root);
	@override late final _StringsStringsFormStoreNameVi store_name = _StringsStringsFormStoreNameVi._(_root);
	@override late final _StringsStringsFormStoreAdressVi store_adress = _StringsStringsFormStoreAdressVi._(_root);
	@override late final _StringsStringsFormStoreCodeVi store_code = _StringsStringsFormStoreCodeVi._(_root);
	@override late final _StringsStringsFormCurrentPassVi current_pass = _StringsStringsFormCurrentPassVi._(_root);
	@override late final _StringsStringsFormNewPassVi new_pass = _StringsStringsFormNewPassVi._(_root);
	@override late final _StringsStringsFormRepeatPassVi repeat_pass = _StringsStringsFormRepeatPassVi._(_root);
}

// Path: strings.errors
class _StringsStringsErrorsVi extends _StringsStringsErrorsEn {
	_StringsStringsErrorsVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsErrorsFormVi form = _StringsStringsErrorsFormVi._(_root);
	@override late final _StringsStringsErrorsOthersVi others = _StringsStringsErrorsOthersVi._(_root);
	@override late final _StringsStringsErrorsLoginVi login = _StringsStringsErrorsLoginVi._(_root);
}

// Path: strings.file_picker
class _StringsStringsFilePickerVi extends _StringsStringsFilePickerEn {
	_StringsStringsFilePickerVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String size_warning({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
	@override String get no_permission => 'We have no permission to open your gallery.';
}

// Path: strings.no_feature
class _StringsStringsNoFeatureVi extends _StringsStringsNoFeatureEn {
	_StringsStringsNoFeatureVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get in_progress => 'Chức năng đang trong quá trình phát triển';
}

// Path: strings.dashboard
class _StringsStringsDashboardVi extends _StringsStringsDashboardEn {
	_StringsStringsDashboardVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String greeting({required Object name}) => 'Xin chào, ${name}';
	@override String get manage_order => 'Danh sách cửa hàng';
	@override String get text_msg_no_any_orders => 'Bạn chưa có đơn hàng nào trong hôm nay!';
}

// Path: strings.create_order
class _StringsStringsCreateOrderVi extends _StringsStringsCreateOrderEn {
	_StringsStringsCreateOrderVi._(_StringsVi root) : this._root = root, super._(root);

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

// Path: strings.details_order
class _StringsStringsDetailsOrderVi extends _StringsStringsDetailsOrderEn {
	_StringsStringsDetailsOrderVi._(_StringsVi root) : this._root = root, super._(root);

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

// Path: strings.forgot_password
class _StringsStringsForgotPasswordVi extends _StringsStringsForgotPasswordEn {
	_StringsStringsForgotPasswordVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đặt lại mật khẩu';
	@override String get description => 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
	@override String get text_update_password => 'Đặt lại mật khẩu';
	@override String get text_error_email_not_exist => 'Địa chỉ emai không tồn tại!';
	@override String get text_message_check_email => 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
	@override String get text_back_to_main_screen => 'Quay về màn hình chính';
}

// Path: strings.setting
class _StringsStringsSettingVi extends _StringsStringsSettingEn {
	_StringsStringsSettingVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_store_info => 'Thông tin tài khoản';
	@override String get text_change_password => 'Thay đổi mật khẩu';
	@override String get text_logout => 'Đăng xuất';
	@override String text_version({required Object version}) => 'Phiên bản: ${version}';
	@override String get text_program_by_vibelabs => 'Được phát triển bởi VibeLabs';
	@override String get text_message_update_password => 'Bạn có chắc chắn muốn đổi mật khẩu?';
}

// Path: strings.change_info
class _StringsStringsChangeInfoVi extends _StringsStringsChangeInfoEn {
	_StringsStringsChangeInfoVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get text_store_name => 'Tên cửa hàng';
	@override String get text_update => 'Cập nhật';
	@override String get text_update_success => 'Cập nhật thành công';
}

// Path: strings.report
class _StringsStringsReportVi extends _StringsStringsReportEn {
	_StringsStringsReportVi._(_StringsVi root) : this._root = root, super._(root);

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

// Path: strings.order_deliver
class _StringsStringsOrderDeliverVi extends _StringsStringsOrderDeliverEn {
	_StringsStringsOrderDeliverVi._(_StringsVi root) : this._root = root, super._(root);

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

// Path: strings.navigation.bottom
class _StringsStringsNavigationBottomVi extends _StringsStringsNavigationBottomEn {
	_StringsStringsNavigationBottomVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get create_order => 'Tạo đơn';
	@override String get order => 'Đơn hàng';
	@override String get report => 'Báo cáo';
	@override String get setting => 'Cài đặt';
}

// Path: strings.form.phone
class _StringsStringsFormPhoneVi extends _StringsStringsFormPhoneEn {
	_StringsStringsFormPhoneVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Số điện thoại';
	@override String get hint => 'Nhập số điện thoại';
}

// Path: strings.form.username
class _StringsStringsFormUsernameVi extends _StringsStringsFormUsernameEn {
	_StringsStringsFormUsernameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Username';
	@override String get hint => 'Vui lòng nhập username';
}

// Path: strings.form.password
class _StringsStringsFormPasswordVi extends _StringsStringsFormPasswordEn {
	_StringsStringsFormPasswordVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu';
	@override String get hint => 'Nhập mật khẩu';
}

// Path: strings.form.full_name
class _StringsStringsFormFullNameVi extends _StringsStringsFormFullNameEn {
	_StringsStringsFormFullNameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Họ và tên';
	@override String get hint => 'Nhập Họ và tên';
}

// Path: strings.form.transfer_address
class _StringsStringsFormTransferAddressVi extends _StringsStringsFormTransferAddressEn {
	_StringsStringsFormTransferAddressVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Địa chỉ giao hàng';
	@override String get hint => 'Nhập Địa chỉ giao hàng';
}

// Path: strings.form.product_name
class _StringsStringsFormProductNameVi extends _StringsStringsFormProductNameEn {
	_StringsStringsFormProductNameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tên sản phẩm';
	@override String get hint => 'Nhập Tên sản phẩm';
}

// Path: strings.form.unit_price
class _StringsStringsFormUnitPriceVi extends _StringsStringsFormUnitPriceEn {
	_StringsStringsFormUnitPriceVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Đơn giá';
	@override String get hint => 'Đơn giá';
}

// Path: strings.form.delivery_charges
class _StringsStringsFormDeliveryChargesVi extends _StringsStringsFormDeliveryChargesEn {
	_StringsStringsFormDeliveryChargesVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Phí giao hàng';
	@override String get hint => 'Nhập Phí giao hàng';
}

// Path: strings.form.reason_ship_fail
class _StringsStringsFormReasonShipFailVi extends _StringsStringsFormReasonShipFailEn {
	_StringsStringsFormReasonShipFailVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => '';
	@override String get hint => 'Vui lòng nhập lý do';
}

// Path: strings.form.forgot_pass_email
class _StringsStringsFormForgotPassEmailVi extends _StringsStringsFormForgotPassEmailEn {
	_StringsStringsFormForgotPassEmailVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Email';
	@override String get hint => 'Nhập email đã đăng ký để lấy lại mật khẩu';
}

// Path: strings.form.store_name
class _StringsStringsFormStoreNameVi extends _StringsStringsFormStoreNameEn {
	_StringsStringsFormStoreNameVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tên cửa hàng';
	@override String get hint => 'Nhập tên cửa hàng';
}

// Path: strings.form.store_adress
class _StringsStringsFormStoreAdressVi extends _StringsStringsFormStoreAdressEn {
	_StringsStringsFormStoreAdressVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Địa chỉ';
	@override String get hint => 'Nhập địa chỉ';
}

// Path: strings.form.store_code
class _StringsStringsFormStoreCodeVi extends _StringsStringsFormStoreCodeEn {
	_StringsStringsFormStoreCodeVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mã cửa hàng';
	@override String get hint => 'Nhập mã cửa hàng';
}

// Path: strings.form.current_pass
class _StringsStringsFormCurrentPassVi extends _StringsStringsFormCurrentPassEn {
	_StringsStringsFormCurrentPassVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu hiện tại';
	@override String get hint => 'Nhâp mật khẩu hiện tại';
}

// Path: strings.form.new_pass
class _StringsStringsFormNewPassVi extends _StringsStringsFormNewPassEn {
	_StringsStringsFormNewPassVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Mật khẩu mới';
	@override String get hint => 'Nhâp mật khẩu mới';
}

// Path: strings.form.repeat_pass
class _StringsStringsFormRepeatPassVi extends _StringsStringsFormRepeatPassEn {
	_StringsStringsFormRepeatPassVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nhập lại mật khẩu mới';
	@override String get hint => 'Nhập lại mật khẩu mới';
}

// Path: strings.errors.form
class _StringsStringsErrorsFormVi extends _StringsStringsErrorsFormEn {
	_StringsStringsErrorsFormVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String maxLength({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
	@override String minLength({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
	@override String required({required Object field}) => 'Vui lòng nhập ${field}';
	@override String get email => 'Địa chỉ Email không hợp lệ.';
	@override String pattern({required Object field}) => '${field} không hợp lệ.';
}

// Path: strings.errors.others
class _StringsStringsErrorsOthersVi extends _StringsStringsErrorsOthersEn {
	_StringsStringsErrorsOthersVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get no_item_found => 'There is no data to show.';
	@override String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	@override String get an_unknown_error => 'An unknown error happened.';
	@override String get no_internet_connection => 'Internet connectivity is not available.';
	@override String get server_failure => 'Server failure encountered.';
	@override String get communication_error => 'There was an error with our communication with the servers.';
}

// Path: strings.errors.login
class _StringsStringsErrorsLoginVi extends _StringsStringsErrorsLoginEn {
	_StringsStringsErrorsLoginVi._(_StringsVi root) : this._root = root, super._(root);

	@override final _StringsVi _root; // ignore: unused_field

	// Translations
	@override String get E_USER_ACCOUNT_NOT_EXISTS => 'Vui lòng kiểm tra lại mật khẩu';
	@override String get E_USER_HAS_BLOCKED => 'User đã bị khoá';
	@override String get E_USER_NOT_EXISTS => 'User không tồn tại';
}
