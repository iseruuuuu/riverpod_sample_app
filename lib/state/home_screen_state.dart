import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default(4) int counter,
  }) = _HomeScreenState;
}

final homeScreenStateProvider = StateProvider((_) {
  return const HomeScreenState();
});