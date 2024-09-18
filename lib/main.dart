import 'package:demo_project/bloc/counter/counter_bloc.dart';
import 'package:demo_project/firebase_options.dart';
import 'package:demo_project/utils/routes/routes.dart';
import 'package:demo_project/utils/routes/routes_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesName.ui,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

