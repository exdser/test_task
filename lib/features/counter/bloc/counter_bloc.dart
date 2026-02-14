import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';




class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(value: 0)) {
    on<IncrementCount>((event, emit) {
      emit(CounterState(value: state.value + 1));
    });
  }
}
