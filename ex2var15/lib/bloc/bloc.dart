//import 'dart:async';

import 'dart:async';
import 'package:ex2var15/algotithm.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  MainBloc() : super(InitialState(
    getTableRowListStart(), 
    getTableRowListRule1(), getTailRule1(),
    getTableRowListRule2(), getTailRule2(),
    getTableRowListRule3(), getTailRule3(),
    getTableRowListRule4(), getTailRule4(),
    getTableRowListMyRule(), getTailMyRule())) {
    /* on<MakeRule1>(calculateRule1);
    on<MakeRule2>(calculateRule2);
    on<MakeRule3>(calculateRule3);
    on<MakeRule4>(calculateRule4);
    on<MakeMyRule>(calculateMyRule); */
    //on<InitialPage>((event, emit) => emit(InitialState(getTableRowListStart())));
  }
}

FutureOr<void> calculateRule1(MakeRule1 event, Emitter<MainState> emit) {
  emit(TableRule1(getTableRowListRule1(), getTailRule1()));
}

FutureOr<void> calculateRule2(MakeRule2 event, Emitter<MainState> emit) {
  emit(TableRule2(getTableRowListRule2(), getTailRule2()));
}

FutureOr<void> calculateRule3(MakeRule3 event, Emitter<MainState> emit) {
  emit(TableRule3(getTableRowListRule3(), getTailRule3()));
}

FutureOr<void> calculateRule4(MakeRule4 event, Emitter<MainState> emit) {
  emit(TableRule4(getTableRowListRule4(), getTailRule4()));
}

FutureOr<void> calculateMyRule(MakeMyRule event, Emitter<MainState> emit) {
  emit(TableMyRule(getTableRowListMyRule(), getTailMyRule()));
}

