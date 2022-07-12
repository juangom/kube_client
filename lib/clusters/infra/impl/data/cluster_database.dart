import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

part 'cluster_database.g.dart';

const _uuid = Uuid();

class Clusters extends Table {
  TextColumn get id => text().clientDefault(() => _uuid.v4())();
  TextColumn get name => text()();
  TextColumn get host => text()();
  IntColumn get port => integer()();
  TextColumn get credType => text()();
  TextColumn get credential => text()();
}

@DriftDatabase(tables: [Clusters])
class KubeClientDatabase extends _$KubeClientDatabase {
  KubeClientDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Cluster>> get allClusters => select(clusters).get();
  Future<Cluster> addCluster(ClustersCompanion companion) async =>
      into(clusters).insertReturning(companion);
  Future deleteCluster(Cluster c) =>
      (delete(clusters)..where((tbl) => tbl.id.equals(c.id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
