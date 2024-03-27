import 'package:go_router/go_router.dart';
import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen(), routes: [
    GoRoute(
      path: 'movie/:id',
      builder: (context, state) {
        final movieId = state.pathParameters['id'] ?? 'no-id';

        return MovieScreen(
          movieId: movieId,
        );
      },
    ),
  ]),
]);
