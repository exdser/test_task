import 'package:flutter/material.dart';
import 'package:test_task/core/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(logoColorPartOne: AppColors.baseLogoColor, logoColorPartTwo: AppColors.baseLogoColor )) {
    on<ToggleLogoColor>((event, emit) {
      if(event.partIndex == 1){
        final newColor = state.logoColorPartOne == AppColors.baseLogoColor ? AppColors.onTapFirstPartLogoColor :AppColors.baseLogoColor;
        emit(HomeState(logoColorPartOne: newColor, logoColorPartTwo: state.logoColorPartTwo));
      }else{
        final newColor = state.logoColorPartTwo == AppColors.baseLogoColor ? AppColors.onTapSecondPartLogoColor :AppColors.baseLogoColor;
        emit(HomeState(logoColorPartOne: state.logoColorPartOne, logoColorPartTwo: newColor));
      }
      
      
      
    });
  }
}