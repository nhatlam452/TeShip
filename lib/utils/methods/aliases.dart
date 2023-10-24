import 'package:teship/features/app/models/env_model.dart';
import 'package:teship/modules/dependency_injection/di.dart';
import 'package:teship/utils/helpers/logging_helper.dart';
import 'package:teship/utils/router.gr.dart';

final LoggingHelper logIt = getIt<LoggingHelper>();
final EnvModel env = getIt<EnvModel>();
final AppRouter appRouter = getIt<AppRouter>();


