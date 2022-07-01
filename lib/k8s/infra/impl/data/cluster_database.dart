import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'cluster_database.g.dart';

class Clusters extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get host => text()();
  IntColumn get port => integer()();
}

@DriftDatabase(tables: [Clusters])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

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
