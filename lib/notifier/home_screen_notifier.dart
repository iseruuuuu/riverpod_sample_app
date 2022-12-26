import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_blog_app/state/home_screen_state.dart';

final homeScreenNotifierProvider = Provider<HomeScreenNotifier>(
  (ref) {
    return HomeScreenNotifier(ref: ref);
  },
);


//Notifierには、StateNotifierを使っている

//Notifierは、Providerを使っている
// Provider
// 外部から変更することができないデータを管理するProviderです。


//Stateは、StateProviderを使っている
// StateProvider
// 外部から変更することができるデータを管理するProviderです。


class HomeScreenNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenNotifier({
    required this.ref,
  }) : super(const HomeScreenState());

  final Ref ref;

  void increment() {
    //StateProviderを使っている
    //→外から変更することができるデータを管理するProvider
    //Notifierないで状態を変更できるようにする

    ref.read(homeScreenStateProvider.notifier).update((state) {
      return HomeScreenState(
        counter: state.counter + 1,
      );
    });
  }
}
