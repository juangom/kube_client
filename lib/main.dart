import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kube_client/core/routes.dart';
import 'package:kube_client/core/setup.dart';
import 'package:kube_client/clusters/application/bloc/cluster/cluster_bloc.dart';
import 'package:kube_client/clusters/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/clusters/ui/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ClusterBloc(
            repository: getIt<ClusterListRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Kubernetes client',
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const HomePage(),
      ),
    );
  }
}
