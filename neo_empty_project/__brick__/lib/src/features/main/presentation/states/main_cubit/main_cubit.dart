import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:neo_auth_core/neo_auth_core.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends BaseCubit<MainState> {
  MainCubit(
    this.mocked, {
    required EventBus eventBus,
  })  : _eventBus = eventBus,
        super(const MainState());

  final EventBus _eventBus;

  final bool mocked;

  Future<void> init() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    emit(state.copyWith(status: FetchStatus.fetchingSuccess, isDemo: mocked));
  }

  void onPressedMenu(BottomMenuEnum menuItem) {
    _eventBus.fire(menuItem);
  }

  @override
  Future<void> close() {
    // _eventBus
    return super.close();
  }
}
