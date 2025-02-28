import 'dart:async';

import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

@injectable
class MainCubit extends BaseCubit<MainState> {
  MainCubit({
    required EventBus eventBus,
  })  : _eventBus = eventBus,
        super(const MainState());

  final EventBus _eventBus;

  final bool mocked;

  Future<void> init() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    emit(state.copyWith(status: FetchStatus.fetchingSuccess, isDemo: true));
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
