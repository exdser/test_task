import 'package:flutter/material.dart';
import 'package:test_task/core/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(logoColor: AppColors.baseLogoColor )) {
    on<ToggleLogoColor>((event, emit) {
      final newColor = state.logoColor == AppColors.baseLogoColor ? AppColors.onTapFirstPartLogoColor :AppColors.baseLogoColor;
      emit(HomeState(logoColor: newColor));
    });
  }
}