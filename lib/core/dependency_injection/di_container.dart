import '../utils/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'register_commands.dart';
import 'register_data_sources.dart';
import 'register_factories.dart';
import 'register_queries.dart';
import 'register_repositories.dart';
import 'register_singletons.dart';

GetIt getIt = GetIt.instance;
SharedPreferences preferences = getIt<SharedPreferences>();

final String restBaseUrl = getIt<AppConfig>().restBaseUrl;

Future<void> initDependencyInjection() async {
  await registerSingletons();
  registerDataSources();
  registerRepositories();
  registerQueries();
  registerCommands();
  registerFactories();
}
