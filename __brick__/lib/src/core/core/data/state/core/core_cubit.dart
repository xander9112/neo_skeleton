import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core.dart';

part 'core_cubit.freezed.dart';
part 'core_state.dart';

class CoreCubit extends Cubit<CoreState> {
  CoreCubit({
    required AuthCubit authCubit,
  })  : _authCubit = authCubit,
        super(const CoreState.initial()) {
    _authCubitSubscription = authCubit.stream.listen((AuthState authState) {
      authState.maybeWhen(
        orElse: () {},
        unAuth: (_, __) {
          emit(const CoreState.auth());
        },
        verified: (_) {
          emit(const CoreState.main());
        },
        logout: (bool redirect) {
          emit(const CoreState.initial());
        },
      );
    });
  }

  late StreamSubscription<AuthState> _authCubitSubscription;

  final AuthCubit _authCubit;

  void init() async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));

    await _authCubit.init();
  }

  @override
  Future<void> close() {
    _authCubitSubscription.cancel();

    return super.close();
  }
}
