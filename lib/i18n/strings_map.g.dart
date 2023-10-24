part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.hello': return ({required Object name}) => 'Chào ${name}';
			case 'strings.save': return 'Lưu';
			case 'strings.login.success': return 'Đăng nhập thành công';
			case 'strings.login.fail': return 'Đăng nhập thất bại';
			case 'strings.login.remember_pass': return 'Ghi nhớ mật khẩu';
			case 'strings.login.text_rembember_pass': return 'Ghi nhớ mật khẩu';
			case 'strings.login.forgot_pass': return 'Quên mật khẩu';
			case 'strings.login.text_login': return 'Đăng nhập';
			case 'strings.navigation.bottom.home': return 'Home';
			case 'strings.navigation.bottom.create_order': return 'Tạo đơn';
			case 'strings.navigation.bottom.order': return 'Đơn hàng';
			case 'strings.navigation.bottom.report': return 'Báo cáo';
			case 'strings.navigation.bottom.setting': return 'Cài đặt';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.phone.label': return 'Số điện thoại';
			case 'strings.form.phone.hint': return 'Nhập số điện thoại';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Vui lòng nhập username';
			case 'strings.form.password.label': return 'Mật khẩu';
			case 'strings.form.password.hint': return 'Nhập mật khẩu';
			case 'strings.form.full_name.label': return 'Họ và tên';
			case 'strings.form.full_name.hint': return 'Nhập Họ và tên';
			case 'strings.form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'strings.form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'strings.form.product_name.label': return 'Tên sản phẩm';
			case 'strings.form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'strings.form.unit_price.label': return 'Đơn giá';
			case 'strings.form.unit_price.hint': return 'Đơn giá';
			case 'strings.form.delivery_charges.label': return 'Phí giao hàng';
			case 'strings.form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'strings.form.reason_ship_fail.label': return '';
			case 'strings.form.reason_ship_fail.hint': return 'Vui lòng nhập lý do';
			case 'strings.form.forgot_pass_email.label': return 'Email';
			case 'strings.form.forgot_pass_email.hint': return 'Nhập email đã đăng ký để lấy lại mật khẩu';
			case 'strings.form.store_name.label': return 'Tên cửa hàng';
			case 'strings.form.store_name.hint': return 'Nhập tên cửa hàng';
			case 'strings.form.store_adress.label': return 'Địa chỉ';
			case 'strings.form.store_adress.hint': return 'Nhập địa chỉ';
			case 'strings.form.store_code.label': return 'Mã cửa hàng';
			case 'strings.form.store_code.hint': return 'Nhập mã cửa hàng';
			case 'strings.form.current_pass.label': return 'Mật khẩu hiện tại';
			case 'strings.form.current_pass.hint': return 'Nhâp mật khẩu hiện tại';
			case 'strings.form.new_pass.label': return 'Mật khẩu mới';
			case 'strings.form.new_pass.hint': return 'Nhâp mật khẩu mới';
			case 'strings.form.repeat_pass.label': return 'Nhập lại mật khẩu mới';
			case 'strings.form.repeat_pass.hint': return 'Nhập lại mật khẩu mới';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'strings.errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'strings.errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'strings.errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'strings.errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'strings.errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Chức năng đang trong quá trình phát triển';
			case 'strings.dashboard.greeting': return ({required Object name}) => 'Xin chào, ${name}';
			case 'strings.dashboard.manage_order': return 'Danh sách cửa hàng';
			case 'strings.dashboard.text_msg_no_any_orders': return 'Bạn chưa có đơn hàng nào trong hôm nay!';
			case 'strings.create_order.title': return 'Tạo đơn hàng';
			case 'strings.create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'strings.create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'strings.create_order.text_continue': return 'Tiếp tục';
			case 'strings.create_order.text_quantity': return 'Số lượng';
			case 'strings.create_order.text_price': return 'Thành tiền:';
			case 'strings.create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'strings.create_order.text_delivery_charges': return 'Phí giao hàng:';
			case 'strings.create_order.text_message_create_order': return 'Bạn chắc chắn muốn tạo đơn hàng này?';
			case 'strings.create_order.text_create_order_success': return 'Đơn hàng đã được tạo thành công';
			case 'strings.details_order.title': return 'Chi tiết đơn hàng';
			case 'strings.details_order.address': return 'Địa chỉ';
			case 'strings.details_order.total': return 'Tổng cộng';
			case 'strings.details_order.text_order_ship_not_success': return 'Đơn hàng giao không thành công';
			case 'strings.details_order.text_order_ship_in_progress': return 'Đơn hàng đã được xử lý';
			case 'strings.details_order.text_cancel_order': return 'Huỷ đơn hàng';
			case 'strings.details_order.text_reason': return 'Lý do';
			case 'strings.details_order.text_message_cancel_order': return 'Bạn chắc chắn muốn huỷ đơn hàng này?';
			case 'strings.details_order.text_cancel_order_success': return 'Huỷ đơn hàng thành công';
			case 'strings.details_order.text_action_order': return 'Thao tác đơn hàng';
			case 'strings.details_order.text_message_update_order': return 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
			case 'strings.details_order.text_update_order_success': return 'Cập nhật trạng thái thành công';
			case 'strings.forgot_password.title': return 'Đặt lại mật khẩu';
			case 'strings.forgot_password.description': return 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
			case 'strings.forgot_password.text_update_password': return 'Đặt lại mật khẩu';
			case 'strings.forgot_password.text_error_email_not_exist': return 'Địa chỉ emai không tồn tại!';
			case 'strings.forgot_password.text_message_check_email': return 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
			case 'strings.forgot_password.text_back_to_main_screen': return 'Quay về màn hình chính';
			case 'strings.setting.text_store_info': return 'Thông tin tài khoản';
			case 'strings.setting.text_change_password': return 'Thay đổi mật khẩu';
			case 'strings.setting.text_logout': return 'Đăng xuất';
			case 'strings.setting.text_version': return ({required Object version}) => 'Phiên bản: ${version}';
			case 'strings.setting.text_program_by_vibelabs': return 'Được phát triển bởi VibeLabs';
			case 'strings.setting.text_message_update_password': return 'Bạn có chắc chắn muốn đổi mật khẩu?';
			case 'strings.change_info.text_store_name': return 'Tên cửa hàng';
			case 'strings.change_info.text_update': return 'Cập nhật';
			case 'strings.change_info.text_update_success': return 'Cập nhật thành công';
			case 'strings.report.text_today': return 'Hôm nay';
			case 'strings.report.text_yesterday': return 'Hôm qua';
			case 'strings.report.text_seven_day': return '7 ngày trước';
			case 'strings.report.text_total_order': return 'Tổng số đơn hàng:';
			case 'strings.report.text_revenue': return 'Doanh thu:';
			case 'strings.report.text_total_ship_fee': return 'Tổng phí giao hàng:';
			case 'strings.report.note': return ': Chỉ áp dụng cho đơn được giao thành công';
			case 'strings.order_deliver.text_waiting': return 'Chờ giao';
			case 'strings.order_deliver.text_inprogress': return 'Đang giao';
			case 'strings.order_deliver.text_success': return 'Giao thành công';
			case 'strings.order_deliver.text_not_success': return 'Giao không thành công';
			case 'strings.order_deliver.text_piece_delivered': return 'Giao một phần';
			case 'strings.order_deliver.text_piece_delivered_long': return 'Giao thành công một phần';
			case 'strings.order_deliver.text_cancel': return 'Đã huỷ';
			default: return null;
		}
	}
}

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.hello': return ({required Object name}) => 'Chào ${name}';
			case 'strings.save': return 'Lưu';
			case 'strings.login.success': return 'Đăng nhập thành công';
			case 'strings.login.fail': return 'Đăng nhập thất bại';
			case 'strings.login.remember_pass': return 'Ghi nhớ mật khẩu';
			case 'strings.login.text_rembember_pass': return 'Ghi nhớ mật khẩu';
			case 'strings.login.forgot_pass': return 'Quên mật khẩu';
			case 'strings.login.text_login': return 'Đăng nhập';
			case 'strings.navigation.bottom.home': return 'Home';
			case 'strings.navigation.bottom.create_order': return 'Tạo đơn';
			case 'strings.navigation.bottom.order': return 'Đơn hàng';
			case 'strings.navigation.bottom.report': return 'Báo cáo';
			case 'strings.navigation.bottom.setting': return 'Cài đặt';
			case 'strings.test.succeded': return 'Test successfull.';
			case 'strings.test.failed': return 'Test failed.';
			case 'strings.form.phone.label': return 'Số điện thoại';
			case 'strings.form.phone.hint': return 'Nhập số điện thoại';
			case 'strings.form.username.label': return 'Username';
			case 'strings.form.username.hint': return 'Vui lòng nhập username';
			case 'strings.form.password.label': return 'Mật khẩu';
			case 'strings.form.password.hint': return 'Nhập mật khẩu';
			case 'strings.form.full_name.label': return 'Họ và tên';
			case 'strings.form.full_name.hint': return 'Nhập Họ và tên';
			case 'strings.form.transfer_address.label': return 'Địa chỉ giao hàng';
			case 'strings.form.transfer_address.hint': return 'Nhập Địa chỉ giao hàng';
			case 'strings.form.product_name.label': return 'Tên sản phẩm';
			case 'strings.form.product_name.hint': return 'Nhập Tên sản phẩm';
			case 'strings.form.unit_price.label': return 'Đơn giá';
			case 'strings.form.unit_price.hint': return 'Đơn giá';
			case 'strings.form.delivery_charges.label': return 'Phí giao hàng';
			case 'strings.form.delivery_charges.hint': return 'Nhập Phí giao hàng';
			case 'strings.form.reason_ship_fail.label': return '';
			case 'strings.form.reason_ship_fail.hint': return 'Vui lòng nhập lý do';
			case 'strings.form.forgot_pass_email.label': return 'Email';
			case 'strings.form.forgot_pass_email.hint': return 'Nhập email đã đăng ký để lấy lại mật khẩu';
			case 'strings.form.store_name.label': return 'Tên cửa hàng';
			case 'strings.form.store_name.hint': return 'Nhập tên cửa hàng';
			case 'strings.form.store_adress.label': return 'Địa chỉ';
			case 'strings.form.store_adress.hint': return 'Nhập địa chỉ';
			case 'strings.form.store_code.label': return 'Mã cửa hàng';
			case 'strings.form.store_code.hint': return 'Nhập mã cửa hàng';
			case 'strings.form.current_pass.label': return 'Mật khẩu hiện tại';
			case 'strings.form.current_pass.hint': return 'Nhâp mật khẩu hiện tại';
			case 'strings.form.new_pass.label': return 'Mật khẩu mới';
			case 'strings.form.new_pass.hint': return 'Nhâp mật khẩu mới';
			case 'strings.form.repeat_pass.label': return 'Nhập lại mật khẩu mới';
			case 'strings.form.repeat_pass.hint': return 'Nhập lại mật khẩu mới';
			case 'strings.errors.form.maxLength': return ({required Object field, required Object count}) => '${field} không thể nhiều hơn ${count} ký tự.';
			case 'strings.errors.form.minLength': return ({required Object field, required Object count}) => '${field} không thể ít hơn ${count} ký tự.';
			case 'strings.errors.form.required': return ({required Object field}) => 'Vui lòng nhập ${field}';
			case 'strings.errors.form.email': return 'Địa chỉ Email không hợp lệ.';
			case 'strings.errors.form.pattern': return ({required Object field}) => '${field} không hợp lệ.';
			case 'strings.errors.others.no_item_found': return 'There is no data to show.';
			case 'strings.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'strings.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'strings.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'strings.errors.others.server_failure': return 'Server failure encountered.';
			case 'strings.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'strings.errors.login.E_USER_ACCOUNT_NOT_EXISTS': return 'Vui lòng kiểm tra lại mật khẩu';
			case 'strings.errors.login.E_USER_HAS_BLOCKED': return 'User đã bị khoá';
			case 'strings.errors.login.E_USER_NOT_EXISTS': return 'User không tồn tại';
			case 'strings.file_picker.size_warning': return ({required Object maxSize}) => 'File size cannot be more than ${maxSize} mb.';
			case 'strings.file_picker.no_permission': return 'We have no permission to open your gallery.';
			case 'strings.no_feature.in_progress': return 'Chức năng đang trong quá trình phát triển';
			case 'strings.dashboard.greeting': return ({required Object name}) => 'Xin chào, ${name}';
			case 'strings.dashboard.manage_order': return 'Danh sách cửa hàng';
			case 'strings.dashboard.text_msg_no_any_orders': return 'Bạn chưa có đơn hàng nào trong hôm nay!';
			case 'strings.create_order.title': return 'Tạo đơn hàng';
			case 'strings.create_order.text_information_customer': return 'Thông tin khách hàng';
			case 'strings.create_order.text_information_order': return 'Thông tin đơn hàng';
			case 'strings.create_order.text_continue': return 'Tiếp tục';
			case 'strings.create_order.text_quantity': return 'Số lượng';
			case 'strings.create_order.text_price': return 'Thành tiền:';
			case 'strings.create_order.text_total_price': return 'Cộng tiền hàng:';
			case 'strings.create_order.text_delivery_charges': return 'Phí giao hàng:';
			case 'strings.create_order.text_message_create_order': return 'Bạn chắc chắn muốn tạo đơn hàng này?';
			case 'strings.create_order.text_create_order_success': return 'Đơn hàng đã được tạo thành công';
			case 'strings.details_order.title': return 'Chi tiết đơn hàng';
			case 'strings.details_order.address': return 'Địa chỉ';
			case 'strings.details_order.total': return 'Tổng cộng';
			case 'strings.details_order.text_order_ship_not_success': return 'Đơn hàng giao không thành công';
			case 'strings.details_order.text_order_ship_in_progress': return 'Đơn hàng đã được xử lý';
			case 'strings.details_order.text_cancel_order': return 'Huỷ đơn hàng';
			case 'strings.details_order.text_reason': return 'Lý do';
			case 'strings.details_order.text_message_cancel_order': return 'Bạn chắc chắn muốn huỷ đơn hàng này?';
			case 'strings.details_order.text_cancel_order_success': return 'Huỷ đơn hàng thành công';
			case 'strings.details_order.text_action_order': return 'Thao tác đơn hàng';
			case 'strings.details_order.text_message_update_order': return 'Bạn chắc chắn muốn cập nhật trạng thái đơn hàng này?';
			case 'strings.details_order.text_update_order_success': return 'Cập nhật trạng thái thành công';
			case 'strings.forgot_password.title': return 'Đặt lại mật khẩu';
			case 'strings.forgot_password.description': return 'Vui lòng nhập địa chỉ email đã đăng ký\nvào bên dưới để đặt lại mật khẩu của bạn.';
			case 'strings.forgot_password.text_update_password': return 'Đặt lại mật khẩu';
			case 'strings.forgot_password.text_error_email_not_exist': return 'Địa chỉ emai không tồn tại!';
			case 'strings.forgot_password.text_message_check_email': return 'Vui lòng kiểm tra email để đặt lại mật khẩu.';
			case 'strings.forgot_password.text_back_to_main_screen': return 'Quay về màn hình chính';
			case 'strings.setting.text_store_info': return 'Thông tin tài khoản';
			case 'strings.setting.text_change_password': return 'Thay đổi mật khẩu';
			case 'strings.setting.text_logout': return 'Đăng xuất';
			case 'strings.setting.text_version': return ({required Object version}) => 'Phiên bản: ${version}';
			case 'strings.setting.text_program_by_vibelabs': return 'Được phát triển bởi VibeLabs';
			case 'strings.setting.text_message_update_password': return 'Bạn có chắc chắn muốn đổi mật khẩu?';
			case 'strings.change_info.text_store_name': return 'Tên cửa hàng';
			case 'strings.change_info.text_update': return 'Cập nhật';
			case 'strings.change_info.text_update_success': return 'Cập nhật thành công';
			case 'strings.report.text_today': return 'Hôm nay';
			case 'strings.report.text_yesterday': return 'Hôm qua';
			case 'strings.report.text_seven_day': return '7 ngày trước';
			case 'strings.report.text_total_order': return 'Tổng số đơn hàng:';
			case 'strings.report.text_revenue': return 'Doanh thu:';
			case 'strings.report.text_total_ship_fee': return 'Tổng phí giao hàng:';
			case 'strings.report.note': return ': Chỉ áp dụng cho đơn được giao thành công';
			case 'strings.order_deliver.text_waiting': return 'Chờ giao';
			case 'strings.order_deliver.text_inprogress': return 'Đang giao';
			case 'strings.order_deliver.text_success': return 'Giao thành công';
			case 'strings.order_deliver.text_not_success': return 'Giao không thành công';
			case 'strings.order_deliver.text_piece_delivered': return 'Giao một phần';
			case 'strings.order_deliver.text_piece_delivered_long': return 'Giao thành công một phần';
			case 'strings.order_deliver.text_cancel': return 'Đã huỷ';
			default: return null;
		}
	}
}