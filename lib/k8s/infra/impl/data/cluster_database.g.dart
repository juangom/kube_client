// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Cluster extends DataClass implements Insertable<Cluster> {
  final int id;
  final String name;
  final String host;
  final int port;
  Cluster(
      {required this.id,
      required this.name,
      required this.host,
      required this.port});
  factory Cluster.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Cluster(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      host: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}host'])!,
      port: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}port'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['host'] = Variable<String>(host);
    map['port'] = Variable<int>(port);
    return map;
  }

  ClustersCompanion toCompanion(bool nullToAbsent) {
    return ClustersCompanion(
      id: Value(id),
      name: Value(name),
      host: Value(host),
      port: Value(port),
    );
  }

  factory Cluster.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cluster(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      host: serializer.fromJson<String>(json['host']),
      port: serializer.fromJson<int>(json['port']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'host': serializer.toJson<String>(host),
      'port': serializer.toJson<int>(port),
    };
  }

  Cluster copyWith({int? id, String? name, String? host, int? port}) => Cluster(
        id: id ?? this.id,
        name: name ?? this.name,
        host: host ?? this.host,
        port: port ?? this.port,
      );
  @override
  String toString() {
    return (StringBuffer('Cluster(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('host: $host, ')
          ..write('port: $port')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, host, port);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cluster &&
          other.id == this.id &&
          other.name == this.name &&
          other.host == this.host &&
          other.port == this.port);
}

class ClustersCompanion extends UpdateCompanion<Cluster> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> host;
  final Value<int> port;
  const ClustersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.host = const Value.absent(),
    this.port = const Value.absent(),
  });
  ClustersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String host,
    required int port,
  })  : name = Value(name),
        host = Value(host),
        port = Value(port);
  static Insertable<Cluster> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? host,
    Expression<int>? port,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (host != null) 'host': host,
      if (port != null) 'port': port,
    });
  }

  ClustersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? host,
      Value<int>? port}) {
    return ClustersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (host.present) {
      map['host'] = Variable<String>(host.value);
    }
    if (port.present) {
      map['port'] = Variable<int>(port.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClustersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('host: $host, ')
          ..write('port: $port')
          ..write(')'))
        .toString();
  }
}

class $ClustersTable extends Clusters with TableInfo<$ClustersTable, Cluster> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClustersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _hostMeta = const VerificationMeta('host');
  @override
  late final GeneratedColumn<String?> host = GeneratedColumn<String?>(
      'host', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _portMeta = const VerificationMeta('port');
  @override
  late final GeneratedColumn<int?> port = GeneratedColumn<int?>(
      'port', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, host, port];
  @override
  String get aliasedName => _alias ?? 'clusters';
  @override
  String get actualTableName => 'clusters';
  @override
  VerificationContext validateIntegrity(Insertable<Cluster> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('host')) {
      context.handle(
          _hostMeta, host.isAcceptableOrUnknown(data['host']!, _hostMeta));
    } else if (isInserting) {
      context.missing(_hostMeta);
    }
    if (data.containsKey('port')) {
      context.handle(
          _portMeta, port.isAcceptableOrUnknown(data['port']!, _portMeta));
    } else if (isInserting) {
      context.missing(_portMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cluster map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Cluster.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ClustersTable createAlias(String alias) {
    return $ClustersTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ClustersTable clusters = $ClustersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [clusters];
}
