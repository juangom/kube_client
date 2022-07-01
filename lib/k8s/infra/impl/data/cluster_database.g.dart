// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Cluster extends DataClass implements Insertable<Cluster> {
  final String id;
  final String name;
  final String host;
  final int port;
  final String credType;
  final String credential;
  Cluster(
      {required this.id,
      required this.name,
      required this.host,
      required this.port,
      required this.credType,
      required this.credential});
  factory Cluster.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Cluster(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      host: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}host'])!,
      port: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}port'])!,
      credType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cred_type'])!,
      credential: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}credential'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['host'] = Variable<String>(host);
    map['port'] = Variable<int>(port);
    map['cred_type'] = Variable<String>(credType);
    map['credential'] = Variable<String>(credential);
    return map;
  }

  ClustersCompanion toCompanion(bool nullToAbsent) {
    return ClustersCompanion(
      id: Value(id),
      name: Value(name),
      host: Value(host),
      port: Value(port),
      credType: Value(credType),
      credential: Value(credential),
    );
  }

  factory Cluster.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cluster(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      host: serializer.fromJson<String>(json['host']),
      port: serializer.fromJson<int>(json['port']),
      credType: serializer.fromJson<String>(json['credType']),
      credential: serializer.fromJson<String>(json['credential']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'host': serializer.toJson<String>(host),
      'port': serializer.toJson<int>(port),
      'credType': serializer.toJson<String>(credType),
      'credential': serializer.toJson<String>(credential),
    };
  }

  Cluster copyWith(
          {String? id,
          String? name,
          String? host,
          int? port,
          String? credType,
          String? credential}) =>
      Cluster(
        id: id ?? this.id,
        name: name ?? this.name,
        host: host ?? this.host,
        port: port ?? this.port,
        credType: credType ?? this.credType,
        credential: credential ?? this.credential,
      );
  @override
  String toString() {
    return (StringBuffer('Cluster(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('host: $host, ')
          ..write('port: $port, ')
          ..write('credType: $credType, ')
          ..write('credential: $credential')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, host, port, credType, credential);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cluster &&
          other.id == this.id &&
          other.name == this.name &&
          other.host == this.host &&
          other.port == this.port &&
          other.credType == this.credType &&
          other.credential == this.credential);
}

class ClustersCompanion extends UpdateCompanion<Cluster> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> host;
  final Value<int> port;
  final Value<String> credType;
  final Value<String> credential;
  const ClustersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.host = const Value.absent(),
    this.port = const Value.absent(),
    this.credType = const Value.absent(),
    this.credential = const Value.absent(),
  });
  ClustersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String host,
    required int port,
    required String credType,
    required String credential,
  })  : name = Value(name),
        host = Value(host),
        port = Value(port),
        credType = Value(credType),
        credential = Value(credential);
  static Insertable<Cluster> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? host,
    Expression<int>? port,
    Expression<String>? credType,
    Expression<String>? credential,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (host != null) 'host': host,
      if (port != null) 'port': port,
      if (credType != null) 'cred_type': credType,
      if (credential != null) 'credential': credential,
    });
  }

  ClustersCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? host,
      Value<int>? port,
      Value<String>? credType,
      Value<String>? credential}) {
    return ClustersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      credType: credType ?? this.credType,
      credential: credential ?? this.credential,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
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
    if (credType.present) {
      map['cred_type'] = Variable<String>(credType.value);
    }
    if (credential.present) {
      map['credential'] = Variable<String>(credential.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClustersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('host: $host, ')
          ..write('port: $port, ')
          ..write('credType: $credType, ')
          ..write('credential: $credential')
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
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      clientDefault: () => _uuid.v4());
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
  final VerificationMeta _credTypeMeta = const VerificationMeta('credType');
  @override
  late final GeneratedColumn<String?> credType = GeneratedColumn<String?>(
      'cred_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _credentialMeta = const VerificationMeta('credential');
  @override
  late final GeneratedColumn<String?> credential = GeneratedColumn<String?>(
      'credential', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, host, port, credType, credential];
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
    if (data.containsKey('cred_type')) {
      context.handle(_credTypeMeta,
          credType.isAcceptableOrUnknown(data['cred_type']!, _credTypeMeta));
    } else if (isInserting) {
      context.missing(_credTypeMeta);
    }
    if (data.containsKey('credential')) {
      context.handle(
          _credentialMeta,
          credential.isAcceptableOrUnknown(
              data['credential']!, _credentialMeta));
    } else if (isInserting) {
      context.missing(_credentialMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
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
