import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomads/components/user/screens/sign_in_screen.dart';

import '../../components/user/screens/sign_up_screen.dart';

/// Represents the app routes and their paths.
enum AppRoutes {
  signIn(
    name: 'signIn',
    path: '/singIn',
  ),
  signUp(
    name: 'signUp',
    path: '/singUp',
  ),
  recipesList(
    name: 'recipesList',
    path: '/recipesList',
  ),
  recipeDetails(
    name: 'recipeDetails',
    path: '/recipeDetails',
  );

  const AppRoutes({
    required this.name,
    required this.path,
  });

  /// Represents the route name
  ///
  /// Example: `AppRoutes.recipesList.name`
  /// Returns: 'recipesList'
  final String name;

  /// Represents the route path
  ///
  /// Example: `AppRoutes.recipesList.path`
  /// Returns: '/recipesList'
  final String path;

  @override
  String toString() => name;
}

/// Contains all of the app routes configurations
class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.signUp.path,
    routes: [
      GoRoute(
        name: AppRoutes.signIn.name,
        path: AppRoutes.signIn.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SignInScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.signUp.name,
        path: AppRoutes.signUp.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SignUpScreen(),
        ),
      ),
      // GoRoute(
      //   name: AppRoutes.recipesList.name,
      //   path: AppRoutes.recipesList.path,
      //   pageBuilder: (context, state) => MaterialPage(
      //     key: state.pageKey,
      //     child: const RecipesListPage(),
      //   ),
      // ),
      // GoRoute(
      //   name: AppRoutes.recipeDetails.name,
      //   path: AppRoutes.recipeDetails.path,
      //   pageBuilder: (context, state) {
      //     final extraMap = state.extra as Map<String, dynamic>;
      //
      //     final recipe = extraMap['recipe'] as Recipe;
      //     final favoriteCallback = extraMap['onAddedToFavorite'];
      //
      //     return MaterialPage(
      //       key: state.pageKey,
      //       child: RecipeDetailsPage(
      //         recipe: recipe,
      //         onAddedToFavorite: favoriteCallback,
      //       ),
      //     );
      //   },
      // ),
    ],
  );
}
