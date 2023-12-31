import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Placeholder(),
      ),
    );
  }

  class _HomeView extends ConsumerStatefulWidget {
    const _HomeView({super.key});

    @override
    _HomeViewState<_HomeView> createState() => _HomeViewState();
  }

  class _HomeViewState extends COnsumerState<_HomeView> {

    @override
    void initState() {
      super.initState();

      ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
    }

    @override
    Widget build(BuildContext context) {
      final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

      return ListView.builder(
        itemCount: nowPlayingMovies.length,
        itemBuilder: (context, index) {
          final movie = nowPlayingMovies[index];
          return ListTile(
            title: Text(movie.title),
          );
        }
      );
    }
  }
}