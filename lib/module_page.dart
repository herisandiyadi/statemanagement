import 'package:flutter/material.dart';
import 'package:statemanagement/done_module_list.dart';
import 'package:statemanagement/module_list.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Module Page',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoneModuleList();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.done,
            ),
          ),
        ],
      ),
      body: ModuleList(
        doneModuleList: doneModuleList,
      ),
    );
  }
}
