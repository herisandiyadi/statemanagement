import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/module_tile.dart';
import 'package:statemanagement/provider/done_module_provider.dart';

class ModuleList extends StatefulWidget {
  final List<String> doneModuleList;

  const ModuleList({Key? key, required this.doneModuleList}) : super(key: key);
  @override
  State<ModuleList> createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> moduleList = [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Memulai Pemrograman dengan Dart',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  // final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: moduleList.length,
        itemBuilder: (context, index) {
          return Consumer(
            builder: (context, DoneModuleProvider data, widget) {
              return ModuleTile(
                moduleName: moduleList[index],
                isDone: data.doneModuleList.contains(moduleList[index]),
                onClick: () {
                  data.complete(moduleList[index]);
                },
              );
            },
          );
        });
  }
}
