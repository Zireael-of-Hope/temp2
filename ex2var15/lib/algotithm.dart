import 'package:ex2var15/WIdgets/table.dart';
import 'package:ex2var15/WIdgets/TableStart.dart';

List<TableRowCustomStart> getTableRowListStart() {
  List<TableRowCustomStart> rows = List.empty(growable: true);

  List<Detail> details = getDetails();
  List<Parameters> parameters = getParameters(details);

  List<int> orderRule1 = defineOrderRule1(getParameters(getDetails()));
  List<int> orderRule2 = defineOrderRule2(getParameters(getDetails()));
  List<int> orderRule3 = defineOrderRule3(getParameters(getDetails()));
  List<int> orderRule4 = defineOrderRule4(getParameters(getDetails()));
  List<int> randQueue = getQueueFromRand();

  for (int i = 0; i < details.length; i++) {
    rows.add(TableRowCustomStart(
        details[i].num,
        details[i].machines[0].timePerMachine,
        details[i].machines[1].timePerMachine,
        details[i].machines[2].timePerMachine,
        details[i].machines[3].timePerMachine,
        details[i].machines[4].timePerMachine,
        details[i].machines[5].timePerMachine,
        details[i].machines[6].timePerMachine,
        parameters[i].pi1,
        parameters[i].pi2,
        parameters[i].lyambda,
        orderRule1[i],
        orderRule2[i],
        orderRule3[i],
        orderRule4[i],
        randQueue[i]));
  }

  return rows;
}

List<TableRowCustom> getTableRowListRule1() {
  List<TableRowCustom> rows = List.empty(growable: true);

  List<Detail> details1 = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule1(getParameters(getDetails())))));

  List<int> waitTime = getEachDetailWaitTIme(details1);

  for (int i = 0; i < details1.length; i++) {
    rows.add(TableRowCustom(
        details1[i].num,
        [
          details1[i].machines[0].timePerMachine,
          details1[i].machines[0].endTime
        ],
        [
          details1[i].machines[1].timePerMachine,
          details1[i].machines[1].endTime
        ],
        [
          details1[i].machines[2].timePerMachine,
          details1[i].machines[2].endTime
        ],
        [
          details1[i].machines[3].timePerMachine,
          details1[i].machines[3].endTime
        ],
        [
          details1[i].machines[4].timePerMachine,
          details1[i].machines[4].endTime
        ],
        [
          details1[i].machines[5].timePerMachine,
          details1[i].machines[5].endTime
        ],
        [
          details1[i].machines[6].timePerMachine,
          details1[i].machines[6].endTime
        ],
        waitTime[i]));
  }

  return rows;
}

List<String> getTailRule1() {
  List<Detail> details1 = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule1(getParameters(getDetails())))));

  List<int> freeTime = getEachMachineFreeTime(details1);
  int overallFreeTime = getOverallFreeTime(freeTime);
  List<int> waitTime = getEachDetailWaitTIme(details1);
  int overallWaitTime = getOverallWaitTime(waitTime);

  return [
    'Tпp',
    '${freeTime[0]}',
    '${freeTime[1]}',
    '${freeTime[2]}',
    '${freeTime[3]}',
    '${freeTime[4]}',
    '${freeTime[5]}',
    '${freeTime[6]}',
    '$overallFreeTime / $overallWaitTime'
  ];
}

List<TableRowCustom> getTableRowListRule2() {
  List<TableRowCustom> rows = List.empty(growable: true);

  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule2(getParameters(getDetails())))));

  List<int> waitTime = getEachDetailWaitTIme(details);

  for (int i = 0; i < details.length; i++) {
    rows.add(TableRowCustom(
        details[i].num,
        [
          details[i].machines[0].timePerMachine,
          details[i].machines[0].endTime
        ],
        [
          details[i].machines[1].timePerMachine,
          details[i].machines[1].endTime
        ],
        [
          details[i].machines[2].timePerMachine,
          details[i].machines[2].endTime
        ],
        [
          details[i].machines[3].timePerMachine,
          details[i].machines[3].endTime
        ],
        [
          details[i].machines[4].timePerMachine,
          details[i].machines[4].endTime
        ],
        [
          details[i].machines[5].timePerMachine,
          details[i].machines[5].endTime
        ],
        [
          details[i].machines[6].timePerMachine,
          details[i].machines[6].endTime
        ],
        waitTime[i]));
  }

  return rows;
}

List<String> getTailRule2() {
  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule2(getParameters(getDetails())))));

  List<int> freeTime = getEachMachineFreeTime(details);
  int overallFreeTime = getOverallFreeTime(freeTime);
  List<int> waitTime = getEachDetailWaitTIme(details);
  int overallWaitTime = getOverallWaitTime(waitTime);

  return [
    'Tпp',
    '${freeTime[0]}',
    '${freeTime[1]}',
    '${freeTime[2]}',
    '${freeTime[3]}',
    '${freeTime[4]}',
    '${freeTime[5]}',
    '${freeTime[6]}',
    '$overallFreeTime / $overallWaitTime'
  ];
}

List<TableRowCustom> getTableRowListRule3() {
  List<TableRowCustom> rows = List.empty(growable: true);

  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule3(getParameters(getDetails())))));

  List<int> waitTime = getEachDetailWaitTIme(details);

  for (int i = 0; i < details.length; i++) {
    rows.add(TableRowCustom(
        details[i].num,
        [
          details[i].machines[0].timePerMachine,
          details[i].machines[0].endTime
        ],
        [
          details[i].machines[1].timePerMachine,
          details[i].machines[1].endTime
        ],
        [
          details[i].machines[2].timePerMachine,
          details[i].machines[2].endTime
        ],
        [
          details[i].machines[3].timePerMachine,
          details[i].machines[3].endTime
        ],
        [
          details[i].machines[4].timePerMachine,
          details[i].machines[4].endTime
        ],
        [
          details[i].machines[5].timePerMachine,
          details[i].machines[5].endTime
        ],
        [
          details[i].machines[6].timePerMachine,
          details[i].machines[6].endTime
        ],
        waitTime[i]));
  }

  return rows;
}

List<String> getTailRule3() {
  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule3(getParameters(getDetails())))));

  List<int> freeTime = getEachMachineFreeTime(details);
  int overallFreeTime = getOverallFreeTime(freeTime);
  List<int> waitTime = getEachDetailWaitTIme(details);
  int overallWaitTime = getOverallWaitTime(waitTime);

  return [
    'Tпp',
    '${freeTime[0]}',
    '${freeTime[1]}',
    '${freeTime[2]}',
    '${freeTime[3]}',
    '${freeTime[4]}',
    '${freeTime[5]}',
    '${freeTime[6]}',
    '$overallFreeTime / $overallWaitTime'
  ];
}

List<TableRowCustom> getTableRowListRule4() {
  List<TableRowCustom> rows = List.empty(growable: true);

  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule4(getParameters(getDetails())))));

  List<int> waitTime = getEachDetailWaitTIme(details);

  for (int i = 0; i < details.length; i++) {
    rows.add(TableRowCustom(
        details[i].num,
        [
          details[i].machines[0].timePerMachine,
          details[i].machines[0].endTime
        ],
        [
          details[i].machines[1].timePerMachine,
          details[i].machines[1].endTime
        ],
        [
          details[i].machines[2].timePerMachine,
          details[i].machines[2].endTime
        ],
        [
          details[i].machines[3].timePerMachine,
          details[i].machines[3].endTime
        ],
        [
          details[i].machines[4].timePerMachine,
          details[i].machines[4].endTime
        ],
        [
          details[i].machines[5].timePerMachine,
          details[i].machines[5].endTime
        ],
        [
          details[i].machines[6].timePerMachine,
          details[i].machines[6].endTime
        ],
        waitTime[i]));
  }

  return rows;
}

List<String> getTailRule4() {
  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), defineOrderRule4(getParameters(getDetails())))));

  List<int> freeTime = getEachMachineFreeTime(details);
  int overallFreeTime = getOverallFreeTime(freeTime);
  List<int> waitTime = getEachDetailWaitTIme(details);
  int overallWaitTime = getOverallWaitTime(waitTime);

  return [
    'Tпp',
    '${freeTime[0]}',
    '${freeTime[1]}',
    '${freeTime[2]}',
    '${freeTime[3]}',
    '${freeTime[4]}',
    '${freeTime[5]}',
    '${freeTime[6]}',
    '$overallFreeTime / $overallWaitTime'
  ];
}

List<TableRowCustom> getTableRowListMyRule() {
  List<TableRowCustom> rows = List.empty(growable: true);

  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), getQueueFromRand())));

  List<int> waitTime = getEachDetailWaitTIme(details);

  for (int i = 0; i < details.length; i++) {
    rows.add(TableRowCustom(
        details[i].num,
        [
          details[i].machines[0].timePerMachine,
          details[i].machines[0].endTime
        ],
        [
          details[i].machines[1].timePerMachine,
          details[i].machines[1].endTime
        ],
        [
          details[i].machines[2].timePerMachine,
          details[i].machines[2].endTime
        ],
        [
          details[i].machines[3].timePerMachine,
          details[i].machines[3].endTime
        ],
        [
          details[i].machines[4].timePerMachine,
          details[i].machines[4].endTime
        ],
        [
          details[i].machines[5].timePerMachine,
          details[i].machines[5].endTime
        ],
        [
          details[i].machines[6].timePerMachine,
          details[i].machines[6].endTime
        ],
        waitTime[i]));
  }

  return rows;
}

List<String> getTailMyRule() {
  List<Detail> details = calculateEachDetailProcessEndTime(
      setMachineOfDetailAndFirstDetailMachine(getDetailsNewOrder(
          getDetails(), getQueueFromRand())));

  List<int> freeTime = getEachMachineFreeTime(details);
  int overallFreeTime = getOverallFreeTime(freeTime);
  List<int> waitTime = getEachDetailWaitTIme(details);
  int overallWaitTime = getOverallWaitTime(waitTime);

  return [
    'Tпp',
    '${freeTime[0]}',
    '${freeTime[1]}',
    '${freeTime[2]}',
    '${freeTime[3]}',
    '${freeTime[4]}',
    '${freeTime[5]}',
    '${freeTime[6]}',
    '$overallFreeTime / $overallWaitTime'
  ];
}





List<int> getQueueFromRand() {
  List<List<int>> randCombinations = generateCombinations();

  List<Detail> randQueue;
  List<Detail>? randQueueBest;
  int minFreeTime = 9999999;

  for (var combination in randCombinations) {
    randQueue = calculateEachDetailProcessEndTime(
        setMachineOfDetailAndFirstDetailMachine(
            getDetailsNewOrder(getDetails(), combination)));

    List<int> freeTimeComb = getEachMachineFreeTime(randQueue);
    int overallFreeTimeComb = getOverallFreeTime(freeTimeComb);

    if (overallFreeTimeComb < minFreeTime) {
      randQueueBest = randQueue;
      minFreeTime = overallFreeTimeComb;
    }
  }

  return randQueueBest!.map((e) => e.num).toList();
}

class Detail {
  final int num;
  final List<MachineProcess> machines;
  int waitTime = 0;
  Detail(this.num, this.machines);
}

class MachineProcess {
  final int timePerMachine;
  int endTime = 0;
  int freeTime = 0;
  MachineProcess(this.timePerMachine);
}

class Parameters {
  final int num;
  final int pi1;
  final int pi2;
  final int lyambda;
  Parameters(this.num, this.pi1, this.pi2, this.lyambda);
}

List<Detail> getDetailsNewOrder(
    List<Detail> initialOrder, List<int> orderNumbers) {
  List<Detail> newOrder = List.empty(growable: true);

  for (int i = 0; i < initialOrder.length; i++) {
    for (int j = 0; j < initialOrder.length; j++) {
      if (initialOrder[j].num == orderNumbers[i]) {
        newOrder.add(initialOrder[j]);
      }
    }
  }

  return newOrder;
}

List<Parameters> getParametersNewOrder(
    List<Parameters> initialOrder, List<int> orderNumbers) {
  List<Parameters> newOrder = List.empty(growable: true);

  for (int i = 0; i < initialOrder.length; i++) {
    for (int j = 0; j < initialOrder.length; j++) {
      if (initialOrder[j].num == orderNumbers[i]) {
        newOrder.add(initialOrder[j]);
      }
    }
  }

  return newOrder;
}

List<Detail> getDetails() {
  return <Detail>[
    Detail(1, [
      MachineProcess(8),
      MachineProcess(4),
      MachineProcess(11),
      MachineProcess(13),
      MachineProcess(12),
      MachineProcess(7),
      MachineProcess(14)
    ]),
    Detail(2, [
      MachineProcess(6),
      MachineProcess(7),
      MachineProcess(6),
      MachineProcess(7),
      MachineProcess(6),
      MachineProcess(4),
      MachineProcess(9)
    ]),
    Detail(3, [
      MachineProcess(9),
      MachineProcess(11),
      MachineProcess(0),
      MachineProcess(5),
      MachineProcess(0),
      MachineProcess(11),
      MachineProcess(2)
    ]),
    Detail(4, [
      MachineProcess(9),
      MachineProcess(0),
      MachineProcess(10),
      MachineProcess(6),
      MachineProcess(13),
      MachineProcess(3),
      MachineProcess(3)
    ]),
    Detail(5, [
      MachineProcess(9),
      MachineProcess(12),
      MachineProcess(7),
      MachineProcess(12),
      MachineProcess(5),
      MachineProcess(4),
      MachineProcess(7)
    ]),
    Detail(6, [
      MachineProcess(1),
      MachineProcess(6),
      MachineProcess(4),
      MachineProcess(6),
      MachineProcess(5),
      MachineProcess(10),
      MachineProcess(12)
    ]),
    Detail(7, [
      MachineProcess(12),
      MachineProcess(11),
      MachineProcess(3),
      MachineProcess(13),
      MachineProcess(0),
      MachineProcess(8),
      MachineProcess(13)
    ])
  ];
}

List<Parameters> getParameters(List<Detail> details) {
  List<Parameters> parameters = List.empty(growable: true);
  int m = details[0].machines.length; //количетсво станков
  late int locPi1;
  late int locPi2;
  late int locLyambda;
  if (m % 2 == 0) {
    for (int i = 0; i < details.length; i++) {
      locPi1 = 0;
      locPi2 = 0;
      locLyambda = 0;
      for (int j = 0; j < m ~/ 2; j++) {
        locPi1 += details[i].machines[j].timePerMachine;
      }
      for (int j = (m ~/ 2 + 1) - 1; j < m; j++) {
        locPi2 += details[i].machines[j].timePerMachine;
      }
      locLyambda = locPi2 - locPi1;
      parameters.add(Parameters(i + 1, locPi1, locPi2, locLyambda));
    }
  } else {
    for (int i = 0; i < details.length; i++) {
      locPi1 = 0;
      locPi2 = 0;
      locLyambda = 0;
      for (int j = 0; j < (m + 1) ~/ 2; j++) {
        locPi1 += details[i].machines[j].timePerMachine;
      }
      for (int j = (m + 1) ~/ 2 - 1; j < m; j++) {
        locPi2 += details[i].machines[j].timePerMachine;
      }
      locLyambda = locPi2 - locPi1;
      parameters.add(Parameters(i + 1, locPi1, locPi2, locLyambda));
    }
  }
  return parameters;
}

List<int> defineOrderRule1(List<Parameters> parameters) {
  List<Parameters> d1_0 = List.empty(growable: true);
  List<Parameters> d2 = List.empty(growable: true);
  late List<int> order = List.empty(growable: true);
  for (var par in parameters) {
    if (par.lyambda >= 0) {
      d1_0.add(par);
    } else {
      d2.add(par);
    }
  }
  d1_0 = sortMinToMaxPi1(d1_0, isRule1: true);
  d2 = sortMaxToMinPi2(d2);

  order.addAll(d1_0.map((e) => e.num));
  order.addAll(d2.map((e) => e.num));

  return order;
}

List<int> defineOrderRule2(List<Parameters> parameters) {
  List<Parameters> D = List.empty(growable: true);
  late List<int> order = List.empty(growable: true);

  D.addAll(parameters.map((e) => e));
  D = sortMaxToMinLyambda(D, isRule2: true);
  order.addAll(D.map((e) => e.num));

  return order;
}

List<int> defineOrderRule3(List<Parameters> parameters) {
  List<Parameters> d0 = List.empty(growable: true);
  List<Parameters> d1 = List.empty(growable: true);
  List<Parameters> d2 = List.empty(growable: true);
  late List<int> order = List.empty(growable: true);

  for (var par in parameters) {
    if (par.lyambda > 0) {
      d1.add(par);
    } else if (par.lyambda < 0) {
      d2.add(par);
    } else {
      d0.add(par);
    }
  }

  d0 = sortMinToMaxPi1(d0);
  d1 = sortMinToMaxPi1(d1);
  d2 = sortMaxToMinPi2(d2);

  order.addAll(d1.map((e) => e.num));
  order.addAll(d0.map((e) => e.num));
  order.addAll(d2.map((e) => e.num));

  return order;
}

List<int> defineOrderRule4(List<Parameters> parameters) {
  List<Parameters> d0 = List.empty(growable: true);
  List<Parameters> d1 = List.empty(growable: true);
  List<Parameters> d2 = List.empty(growable: true);
  List<Parameters> orderPar = List.empty(growable: true);
  late List<int> order = List.empty(growable: true);
  late int len;
  bool isFirst = true;
  Parameters unEvenEl;

  for (var par in parameters) {
    if (par.lyambda > 0) {
      d1.add(par);
    } else if (par.lyambda < 0) {
      d2.add(par);
    } else {
      d0.add(par);
    }
  }

  len = d1.length;
  for (int i = 0; i < len; i++) {
    if (isFirst) {
      orderPar.add(getMaxP2(d1));
      d1.remove(getMaxP2(d2));
      isFirst = false;
    } else {
      orderPar.add(getMinP1(d1));
      d1.remove(getMinP1(d1));
      isFirst = true;
    }
  }

  len = d0.length;
  for (int i = 0; i < len; i++) {
    if (isFirst) {
      orderPar.add(getMaxP2(d0));
      d0.remove(getMaxP2(d0));
      isFirst = false;
    } else {
      orderPar.add(getMinP1(d0));
      d0.remove(getMinP1(d0));
      isFirst = true;
    }
  }

  len = d2.length;
  for (int i = 0; i < len; i++) {
    if (isFirst) {
      orderPar.add(getMaxP2(d2));
      d2.remove(getMaxP2(d2));
      isFirst = false;
    } else {
      orderPar.add(getMinP1(d2));
      d2.remove(getMinP1(d2));
      isFirst = true;
    }
  }

  if (orderPar.length % 2 != 0) {
    unEvenEl = orderPar.removeLast();
    int indexLx = getIndexBetweenPairs(orderPar, unEvenEl);
    orderPar.insert(indexLx, unEvenEl);
  }

  order.addAll(orderPar.map((e) => e.num));

  return order;
}

List<Parameters> sortMinToMaxPi1(List<Parameters> parameters,
    {bool isRule1 = false}) {
  late Parameters buffEl;
  for (int i = 0; i < parameters.length - 1; i++) {
    for (int j = 0; j < parameters.length - i - 1; j++) {
      if (parameters[j].pi1 > parameters[j + 1].pi1) {
        buffEl = parameters[j];
        parameters[j] = parameters[j + 1];
        parameters[j + 1] = buffEl;
      }
      if (parameters[j].pi1 == parameters[j + 1].pi1 && isRule1) {
        buffEl = parameters[j];
        parameters[j] =
            sortMaxToMinLyambda([parameters[j], parameters[j + 1]])[0];
        parameters[j + 1] = buffEl;
      }
    }
  }
  return parameters;
}

List<Parameters> sortMaxToMinPi2(List<Parameters> parameters) {
  late Parameters buffEl;
  for (int i = 0; i < parameters.length - 1; i++) {
    for (int j = 0; j < parameters.length - i - 1; j++) {
      if (parameters[j].pi2 < parameters[j + 1].pi2) {
        buffEl = parameters[j];
        parameters[j] = parameters[j + 1];
        parameters[j + 1] = buffEl;
      }
    }
  }
  return parameters;
}

List<Parameters> sortMaxToMinLyambda(List<Parameters> parameters,
    {bool isRule2 = false}) {
  late Parameters buffEl;
  for (int i = 0; i < parameters.length - 1; i++) {
    for (int j = 0; j < parameters.length - i - 1; j++) {
      if (parameters[j].lyambda < parameters[j + 1].lyambda) {
        buffEl = parameters[j];
        parameters[j] = parameters[j + 1];
        parameters[j + 1] = buffEl;
      }
      if (parameters[j].lyambda == parameters[j + 1].lyambda &&
          isRule2 &&
          parameters[j].lyambda >= 0) {
        buffEl = parameters[j];
        parameters[j] = sortMinToMaxPi1([parameters[j], parameters[j + 1]])[0];
        parameters[j + 1] = sortMinToMaxPi1([buffEl, parameters[j + 1]])[1];
      }
      if (parameters[j].lyambda == parameters[j + 1].lyambda &&
          isRule2 &&
          parameters[j].lyambda < 0) {
        buffEl = parameters[j];
        parameters[j] = sortMaxToMinPi2([parameters[j], parameters[j + 1]])[0];
        parameters[j + 1] = sortMaxToMinPi2([buffEl, parameters[j + 1]])[0];
      }
    }
  }
  return parameters;
}

Parameters getMaxP2(List<Parameters> parameters) {
  Parameters max = parameters[0];

  for (var par in parameters) {
    if (par.pi2 > max.pi2) {
      max = par;
    }
  }

  return max;
}

Parameters getMinP1(List<Parameters> parameters) {
  Parameters min = parameters[0];

  for (var par in parameters) {
    if (par.pi1 < min.pi1) {
      min = par;
    }
  }

  return min;
}

int getIndexBetweenPairs(List<Parameters> parameters, Parameters parameter) {
  //max(Li, Li+1) >= Lx >= min(Li+2, Li+3)
  for (int i = 0; i < parameters.length - 4; i++) {
    if (getMaxFromParPair([parameters[i], parameters[i + 1]]).lyambda >=
            parameter.lyambda &&
        getMinFromParPair([parameters[i + 2], parameters[i + 3]]).lyambda <=
            parameter.lyambda) {
      return i + 2;
    }
  }
  return parameters.length;
}

Parameters getMaxFromParPair(List<Parameters> pair) {
  if (pair[0].lyambda > pair[1].lyambda) {
    return pair[0];
  } else {
    return pair[1];
  }
}

Parameters getMinFromParPair(List<Parameters> pair) {
  if (pair[0].lyambda < pair[1].lyambda) {
    return pair[0];
  } else {
    return pair[1];
  }
}

List<Detail> setMachineOfDetailAndFirstDetailMachine(
    List<Detail> initialDetails) {
  int endTime = 0;
  for (int i = 0; i < initialDetails.length; i++) {
    endTime += initialDetails[i].machines[0].timePerMachine;
    initialDetails[i].machines[0].endTime = endTime;
  }

  endTime = 0;
  for (int i = 0; i < initialDetails[0].machines.length; i++) {
    endTime += initialDetails[0].machines[i].timePerMachine;
    initialDetails[0].machines[i].endTime = endTime;
  }

  return initialDetails;
}

int getMaxFromPair(int a, int b) {
  return a > b ? a : b;
}

List<Detail> calculateEachDetailProcessEndTime(List<Detail> details) {
  int zi;
  int zj;

  for (int i = 1; i < details.length; i++) {
    for (int j = 1; j < details[0].machines.length; j++) {
      if ((details[i - 1].machines[j].timePerMachine == 0) ||
          (details[i].machines[j - 1].timePerMachine == 0)) {
        for (zi = i - 1; zi > 0; zi--) {
          //zi - наибольшее целое в диапазоне 1...i-1, такое что tzi,j ≠ 0
          if (details[zi].machines[j].timePerMachine != 0) {
            break;
          }
        }
        for (zj = j - 1; zj > 0; zj--) {
          //zj - наибольшее целое в диапазоне 1...j-1, такое что ti,zj ≠ 0
          if (details[i].machines[zj].timePerMachine != 0) {
            break;
          }
        } //Tij = tij + max(Tzij ; Tizj),
        details[i].machines[j].endTime = details[i].machines[j].timePerMachine +
            getMaxFromPair(details[zi].machines[j].endTime,
                details[i].machines[zj].endTime);
      } //Tij = tij + max(Ti−1j ;Tij−1) если ti-1j и tij-1 > 0.
      else {
        details[i].machines[j].endTime = details[i].machines[j].timePerMachine +
            getMaxFromPair(details[i - 1].machines[j].endTime,
                details[i].machines[j - 1].endTime);
      }
    }
  }
  return details;
}

List<int> getEachMachineFreeTime(List<Detail> details) {
  List<int> machFreeTime = List.empty(growable: true);
  int endTime = 0;
  int busyTime;

  for (int i = 0; i < details[0].machines.length; i++) {
    busyTime = 0;
    for (int j = 0; j < details.length; j++) {
      busyTime += details[j].machines[i].timePerMachine;
      if (j == details.length - 1) {
        endTime = details[j].machines[i].endTime;
      }
    }
    machFreeTime.add(endTime - busyTime);
  }

  return machFreeTime;
}

int getOverallFreeTime(List<int> eachFreeTime) {
  int overallFreeTime = 0;
  for (int i = 0; i < eachFreeTime.length; i++) {
    overallFreeTime += eachFreeTime[i];
  }
  return overallFreeTime;
}

List<int> getEachDetailWaitTIme(List<Detail> details) {
  List<int> detWaitTime = List.empty(growable: true);
  int waitTime = 0;
  int busyTime;

  for (int i = 0; i < details.length; i++) {
    busyTime = 0;
    for (int j = 0; j < details[0].machines.length; j++) {
      busyTime += details[i].machines[j].timePerMachine;
      if (j == details.length - 1) {
        waitTime = details[i].machines[j].endTime;
      }
    }
    detWaitTime.add(waitTime - busyTime);
  }

  return detWaitTime;
}

int getOverallWaitTime(List<int> eachWaitTime) {
  int overallWaitTime = 0;
  for (int i = 0; i < eachWaitTime.length; i++) {
    overallWaitTime += eachWaitTime[i];
  }
  return overallWaitTime;
}

List<List<int>> generateCombinations(
    {List<int> digits = const [1, 2, 3, 4, 5, 6, 7]}) {
  List<List<int>> result = [];

  void generate(List<int> current, List<int> remaining) {
    if (remaining.isEmpty) {
      result.add(List.from(current));
      return;
    }

    for (int i = 0; i < remaining.length; i++) {
      current.add(remaining[i]);
      List<int> newRemaining = List.from(remaining);
      newRemaining.removeAt(i);
      generate(current, newRemaining);
      current.removeLast();
    }
  }

  generate([], digits);
  return result;
}
