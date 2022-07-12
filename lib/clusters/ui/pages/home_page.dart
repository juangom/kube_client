import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kube_client/clusters/application/bloc/cluster/cluster_bloc.dart';
import 'package:kube_client/clusters/domain/entities/cluster.dart';
import 'package:kube_client/clusters/ui/widgets/appbar.dart';
import 'package:kube_client/clusters/ui/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: AppDrawer(),
        body: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClusterBloc, ClusterState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.clusters.length,
          itemBuilder: (context, index) {
            final cluster = state.clusters[index];
            final icon = cluster.status == ClusterStatus.up
                ? const Icon(Icons.cloud_done)
                : const Icon(Icons.cloud_off);
            return ListTile(
              title: Text(cluster.name),
              subtitle: Text('${cluster.host}:${cluster.port}'),
              leading: icon,
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.dataset_linked),
              ),
            );
          },
        );
      },
    );
  }
}
