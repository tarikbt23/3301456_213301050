import 'package:get_it/get_it.dart';
import 'package:studybuddy/service/auth_service.dart';
import 'package:studybuddy/service/provider/auth_provider.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AuthProvider>(AuthProvider());
  locator.registerSingleton<AuthService>(AuthService());
}