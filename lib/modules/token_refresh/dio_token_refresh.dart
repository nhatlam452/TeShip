import 'package:teship/features/app/models/auth_model.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

import '../../utils/methods/aliases.dart';

@lazySingleton
class DioTokenRefresh {
  DioTokenRefresh(this._secureStorage) {
    _fresh = Fresh<AuthModel>(
      tokenStorage: _secureStorage,
      refreshToken: (token, _) => _refreshToken(token),
      shouldRefresh: (response) {
        return response?.statusCode == 401;
      },
      tokenHeader: (token) {
        final tokenHeader = {'Authorization': '${token.tokenType} ${token.accessToken}'};
        return tokenHeader;
      },
    );
  }

  final TokenStorage<AuthModel> _secureStorage;
  late final Fresh<AuthModel> _fresh;

  Fresh<AuthModel> get fresh => _fresh;

  Future<AuthModel> _refreshToken(AuthModel? token) async {
    if (token == null) {
      logIt
        ..info('ERROR -- token IS null');
      throw RevokeTokenException();
    }

    try {
      // TODO -> Implement dio token refresh algorithm.

      return token;
    } catch (e) {
      logIt
        ..info('ERROR -- token IS null');
      throw RevokeTokenException();
    }
  }
}
