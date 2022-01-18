import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/module_page.dart';
import 'package:statemanagement/provider/done_module_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ModulePage(),
      ),
    );
  }
}
