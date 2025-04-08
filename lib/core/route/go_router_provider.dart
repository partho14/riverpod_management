import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_management/core/route/route_name.dart';
import 'package:riverpod_management/features/dashboard/presentation/dashboard_screen.dart';
import 'package:riverpod_management/features/login/presentation/ui/login_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/login', routes: [
    GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => LoginScreen()),
    GoRoute(
        path: '/dashboard',
        name: dashboardRoute,
        builder: (context, state) => DashboardScreen())
  ]);
});
