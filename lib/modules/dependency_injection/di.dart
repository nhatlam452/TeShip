import 'package:teship/data/data_source/remote_data_source.dart';
import 'package:teship/features/app/models/auth_model.dart';
import 'package:teship/features/order_detail/networking/order_details_repository.dart';
import 'package:teship/modules/dependency_injection/di.config.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:teship/modules/dio/dio_client.dart';

import '../../features/order_detail/blocs/get_order_details_cubit.dart';
import '../../utils/methods/aliases.dart';
import '../token_refresh/dio_token_refresh.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [TokenStorage<AuthModel>],
)

Future<GetIt> configureDependencyInjection() async {
  getIt.init();


  getIt.registerSingleton<RemoteDataSource>(
    RemoteDataSourceImplementer(Dio()),
  );
  // getIt.registerSingleton<GetOrderDetailsCubit>(GetOrderDetailsCubit(GetOrderDetailsRepository(dio)));

  return getIt;
}
