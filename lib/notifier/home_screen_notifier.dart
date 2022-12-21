import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_blog_app/state/home_screen_state.dart';

final homeNotifierProvider = Provider<HomeScreenNotifier>((ref) {
  return HomeScreenNotifier(ref: ref);
});

class HomeScreenNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenNotifier({
    required this.ref,
  }) : super(const HomeScreenState());

  final Ref ref;

  void increment() {

    var newCounter = ref.watch(homeScreenStateProvider.notifier).state.counter;

    print(newCounter);

    //TODO ここをどうするか決める。
    ref.read(homeScreenStateProvider.notifier).update((state) {
      return HomeScreenState(
        counter: newCounter++,
      );
    });

    print(newCounter);
  }
}
