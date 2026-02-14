import 'package:flutter/material.dart';
import 'package:test_task/core/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(logoColorPartOne: AppColors.baseLogoColor, logoColorPartTwo: AppColors.baseLogoColor )) {
    on<ToggleLogoColor>((event, emit) {
      final newColorPartOne = state.logoColorPartOne == AppColors.baseLogoColor ? AppColors.onTapFirstPartLogoColor :AppColors.baseLogoColor;
      final newColorPartTwo = state.logoColorPartTwo == AppColors.baseLogoColor ? AppColors.onTapSecondPartLogoColor :AppColors.baseLogoColor;
      emit(HomeState(logoColorPartOne: newColorPartOne, logoColorPartTwo: newColorPartTwo));
    });
  }
}