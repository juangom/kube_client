import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kube_client/core/routes.dart';
import 'package:kube_client/k8s/application/bloc/cluster/cluster_bloc.dart';
import 'package:kube_client/k8s/infra/repositories/cluster_list_repository.dart';
import 'package:kube_client/k8s/ui/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ClusterBloc(repository: DriftClusterListRepository()),
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
