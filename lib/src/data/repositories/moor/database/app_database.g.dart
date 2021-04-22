// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SessionUserData extends DataClass implements Insertable<SessionUserData> {
  final int userId;
  final int anioAcademicoId;
  final String urlServerLocal;
  final bool complete;
  SessionUserData(
      {@required this.userId,
      this.anioAcademicoId,
      this.urlServerLocal,
      this.complete});
  factory SessionUserData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return SessionUserData(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      urlServerLocal: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}url_server_local']),
      complete:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}complete']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || urlServerLocal != null) {
      map['url_server_local'] = Variable<String>(urlServerLocal);
    }
    if (!nullToAbsent || complete != null) {
      map['complete'] = Variable<bool>(complete);
    }
    return map;
  }

  SessionUserCompanion toCompanion(bool nullToAbsent) {
    return SessionUserCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      urlServerLocal: urlServerLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(urlServerLocal),
      complete: complete == null && nullToAbsent
          ? const Value.absent()
          : Value(complete),
    );
  }

  factory SessionUserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SessionUserData(
      userId: serializer.fromJson<int>(json['userId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      urlServerLocal: serializer.fromJson<String>(json['urlServerLocal']),
      complete: serializer.fromJson<bool>(json['complete']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'urlServerLocal': serializer.toJson<String>(urlServerLocal),
      'complete': serializer.toJson<bool>(complete),
    };
  }

  SessionUserData copyWith(
          {int userId,
          int anioAcademicoId,
          String urlServerLocal,
          bool complete}) =>
      SessionUserData(
        userId: userId ?? this.userId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        urlServerLocal: urlServerLocal ?? this.urlServerLocal,
        complete: complete ?? this.complete,
      );
  @override
  String toString() {
    return (StringBuffer('SessionUserData(')
          ..write('userId: $userId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('urlServerLocal: $urlServerLocal, ')
          ..write('complete: $complete')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(anioAcademicoId.hashCode,
          $mrjc(urlServerLocal.hashCode, complete.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SessionUserData &&
          other.userId == this.userId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.urlServerLocal == this.urlServerLocal &&
          other.complete == this.complete);
}

class SessionUserCompanion extends UpdateCompanion<SessionUserData> {
  final Value<int> userId;
  final Value<int> anioAcademicoId;
  final Value<String> urlServerLocal;
  final Value<bool> complete;
  const SessionUserCompanion({
    this.userId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.urlServerLocal = const Value.absent(),
    this.complete = const Value.absent(),
  });
  SessionUserCompanion.insert({
    this.userId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.urlServerLocal = const Value.absent(),
    this.complete = const Value.absent(),
  });
  static Insertable<SessionUserData> custom({
    Expression<int> userId,
    Expression<int> anioAcademicoId,
    Expression<String> urlServerLocal,
    Expression<bool> complete,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (urlServerLocal != null) 'url_server_local': urlServerLocal,
      if (complete != null) 'complete': complete,
    });
  }

  SessionUserCompanion copyWith(
      {Value<int> userId,
      Value<int> anioAcademicoId,
      Value<String> urlServerLocal,
      Value<bool> complete}) {
    return SessionUserCompanion(
      userId: userId ?? this.userId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      urlServerLocal: urlServerLocal ?? this.urlServerLocal,
      complete: complete ?? this.complete,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (urlServerLocal.present) {
      map['url_server_local'] = Variable<String>(urlServerLocal.value);
    }
    if (complete.present) {
      map['complete'] = Variable<bool>(complete.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionUserCompanion(')
          ..write('userId: $userId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('urlServerLocal: $urlServerLocal, ')
          ..write('complete: $complete')
          ..write(')'))
        .toString();
  }
}

class $SessionUserTable extends SessionUser
    with TableInfo<$SessionUserTable, SessionUserData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SessionUserTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _urlServerLocalMeta =
      const VerificationMeta('urlServerLocal');
  GeneratedTextColumn _urlServerLocal;
  @override
  GeneratedTextColumn get urlServerLocal =>
      _urlServerLocal ??= _constructUrlServerLocal();
  GeneratedTextColumn _constructUrlServerLocal() {
    return GeneratedTextColumn(
      'url_server_local',
      $tableName,
      true,
    );
  }

  final VerificationMeta _completeMeta = const VerificationMeta('complete');
  GeneratedBoolColumn _complete;
  @override
  GeneratedBoolColumn get complete => _complete ??= _constructComplete();
  GeneratedBoolColumn _constructComplete() {
    return GeneratedBoolColumn(
      'complete',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [userId, anioAcademicoId, urlServerLocal, complete];
  @override
  $SessionUserTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'session_user';
  @override
  final String actualTableName = 'session_user';
  @override
  VerificationContext validateIntegrity(Insertable<SessionUserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('url_server_local')) {
      context.handle(
          _urlServerLocalMeta,
          urlServerLocal.isAcceptableOrUnknown(
              data['url_server_local'], _urlServerLocalMeta));
    }
    if (data.containsKey('complete')) {
      context.handle(_completeMeta,
          complete.isAcceptableOrUnknown(data['complete'], _completeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  SessionUserData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SessionUserData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SessionUserTable createAlias(String alias) {
    return $SessionUserTable(_db, alias);
  }
}

class UsuarioRolGeoreferenciaData extends DataClass
    implements Insertable<UsuarioRolGeoreferenciaData> {
  final int usuarioRolGeoreferenciaId;
  final int usuarioId;
  final int rolId;
  final int geoReferenciaId;
  final int entidadId;
  UsuarioRolGeoreferenciaData(
      {@required this.usuarioRolGeoreferenciaId,
      this.usuarioId,
      this.rolId,
      this.geoReferenciaId,
      this.entidadId});
  factory UsuarioRolGeoreferenciaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return UsuarioRolGeoreferenciaData(
      usuarioRolGeoreferenciaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}usuario_rol_georeferencia_id']),
      usuarioId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}usuario_id']),
      rolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      geoReferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}geo_referencia_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || usuarioRolGeoreferenciaId != null) {
      map['usuario_rol_georeferencia_id'] =
          Variable<int>(usuarioRolGeoreferenciaId);
    }
    if (!nullToAbsent || usuarioId != null) {
      map['usuario_id'] = Variable<int>(usuarioId);
    }
    if (!nullToAbsent || rolId != null) {
      map['rol_id'] = Variable<int>(rolId);
    }
    if (!nullToAbsent || geoReferenciaId != null) {
      map['geo_referencia_id'] = Variable<int>(geoReferenciaId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    return map;
  }

  UsuarioRolGeoreferenciaCompanion toCompanion(bool nullToAbsent) {
    return UsuarioRolGeoreferenciaCompanion(
      usuarioRolGeoreferenciaId:
          usuarioRolGeoreferenciaId == null && nullToAbsent
              ? const Value.absent()
              : Value(usuarioRolGeoreferenciaId),
      usuarioId: usuarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioId),
      rolId:
          rolId == null && nullToAbsent ? const Value.absent() : Value(rolId),
      geoReferenciaId: geoReferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(geoReferenciaId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
    );
  }

  factory UsuarioRolGeoreferenciaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UsuarioRolGeoreferenciaData(
      usuarioRolGeoreferenciaId:
          serializer.fromJson<int>(json['usuarioRolGeoreferenciaId']),
      usuarioId: serializer.fromJson<int>(json['usuarioId']),
      rolId: serializer.fromJson<int>(json['rolId']),
      geoReferenciaId: serializer.fromJson<int>(json['geoReferenciaId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'usuarioRolGeoreferenciaId':
          serializer.toJson<int>(usuarioRolGeoreferenciaId),
      'usuarioId': serializer.toJson<int>(usuarioId),
      'rolId': serializer.toJson<int>(rolId),
      'geoReferenciaId': serializer.toJson<int>(geoReferenciaId),
      'entidadId': serializer.toJson<int>(entidadId),
    };
  }

  UsuarioRolGeoreferenciaData copyWith(
          {int usuarioRolGeoreferenciaId,
          int usuarioId,
          int rolId,
          int geoReferenciaId,
          int entidadId}) =>
      UsuarioRolGeoreferenciaData(
        usuarioRolGeoreferenciaId:
            usuarioRolGeoreferenciaId ?? this.usuarioRolGeoreferenciaId,
        usuarioId: usuarioId ?? this.usuarioId,
        rolId: rolId ?? this.rolId,
        geoReferenciaId: geoReferenciaId ?? this.geoReferenciaId,
        entidadId: entidadId ?? this.entidadId,
      );
  @override
  String toString() {
    return (StringBuffer('UsuarioRolGeoreferenciaData(')
          ..write('usuarioRolGeoreferenciaId: $usuarioRolGeoreferenciaId, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('rolId: $rolId, ')
          ..write('geoReferenciaId: $geoReferenciaId, ')
          ..write('entidadId: $entidadId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      usuarioRolGeoreferenciaId.hashCode,
      $mrjc(
          usuarioId.hashCode,
          $mrjc(rolId.hashCode,
              $mrjc(geoReferenciaId.hashCode, entidadId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UsuarioRolGeoreferenciaData &&
          other.usuarioRolGeoreferenciaId == this.usuarioRolGeoreferenciaId &&
          other.usuarioId == this.usuarioId &&
          other.rolId == this.rolId &&
          other.geoReferenciaId == this.geoReferenciaId &&
          other.entidadId == this.entidadId);
}

class UsuarioRolGeoreferenciaCompanion
    extends UpdateCompanion<UsuarioRolGeoreferenciaData> {
  final Value<int> usuarioRolGeoreferenciaId;
  final Value<int> usuarioId;
  final Value<int> rolId;
  final Value<int> geoReferenciaId;
  final Value<int> entidadId;
  const UsuarioRolGeoreferenciaCompanion({
    this.usuarioRolGeoreferenciaId = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.rolId = const Value.absent(),
    this.geoReferenciaId = const Value.absent(),
    this.entidadId = const Value.absent(),
  });
  UsuarioRolGeoreferenciaCompanion.insert({
    this.usuarioRolGeoreferenciaId = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.rolId = const Value.absent(),
    this.geoReferenciaId = const Value.absent(),
    this.entidadId = const Value.absent(),
  });
  static Insertable<UsuarioRolGeoreferenciaData> custom({
    Expression<int> usuarioRolGeoreferenciaId,
    Expression<int> usuarioId,
    Expression<int> rolId,
    Expression<int> geoReferenciaId,
    Expression<int> entidadId,
  }) {
    return RawValuesInsertable({
      if (usuarioRolGeoreferenciaId != null)
        'usuario_rol_georeferencia_id': usuarioRolGeoreferenciaId,
      if (usuarioId != null) 'usuario_id': usuarioId,
      if (rolId != null) 'rol_id': rolId,
      if (geoReferenciaId != null) 'geo_referencia_id': geoReferenciaId,
      if (entidadId != null) 'entidad_id': entidadId,
    });
  }

  UsuarioRolGeoreferenciaCompanion copyWith(
      {Value<int> usuarioRolGeoreferenciaId,
      Value<int> usuarioId,
      Value<int> rolId,
      Value<int> geoReferenciaId,
      Value<int> entidadId}) {
    return UsuarioRolGeoreferenciaCompanion(
      usuarioRolGeoreferenciaId:
          usuarioRolGeoreferenciaId ?? this.usuarioRolGeoreferenciaId,
      usuarioId: usuarioId ?? this.usuarioId,
      rolId: rolId ?? this.rolId,
      geoReferenciaId: geoReferenciaId ?? this.geoReferenciaId,
      entidadId: entidadId ?? this.entidadId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (usuarioRolGeoreferenciaId.present) {
      map['usuario_rol_georeferencia_id'] =
          Variable<int>(usuarioRolGeoreferenciaId.value);
    }
    if (usuarioId.present) {
      map['usuario_id'] = Variable<int>(usuarioId.value);
    }
    if (rolId.present) {
      map['rol_id'] = Variable<int>(rolId.value);
    }
    if (geoReferenciaId.present) {
      map['geo_referencia_id'] = Variable<int>(geoReferenciaId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsuarioRolGeoreferenciaCompanion(')
          ..write('usuarioRolGeoreferenciaId: $usuarioRolGeoreferenciaId, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('rolId: $rolId, ')
          ..write('geoReferenciaId: $geoReferenciaId, ')
          ..write('entidadId: $entidadId')
          ..write(')'))
        .toString();
  }
}

class $UsuarioRolGeoreferenciaTable extends UsuarioRolGeoreferencia
    with TableInfo<$UsuarioRolGeoreferenciaTable, UsuarioRolGeoreferenciaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuarioRolGeoreferenciaTable(this._db, [this._alias]);
  final VerificationMeta _usuarioRolGeoreferenciaIdMeta =
      const VerificationMeta('usuarioRolGeoreferenciaId');
  GeneratedIntColumn _usuarioRolGeoreferenciaId;
  @override
  GeneratedIntColumn get usuarioRolGeoreferenciaId =>
      _usuarioRolGeoreferenciaId ??= _constructUsuarioRolGeoreferenciaId();
  GeneratedIntColumn _constructUsuarioRolGeoreferenciaId() {
    return GeneratedIntColumn(
      'usuario_rol_georeferencia_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  GeneratedIntColumn _usuarioId;
  @override
  GeneratedIntColumn get usuarioId => _usuarioId ??= _constructUsuarioId();
  GeneratedIntColumn _constructUsuarioId() {
    return GeneratedIntColumn(
      'usuario_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rolIdMeta = const VerificationMeta('rolId');
  GeneratedIntColumn _rolId;
  @override
  GeneratedIntColumn get rolId => _rolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn(
      'rol_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _geoReferenciaIdMeta =
      const VerificationMeta('geoReferenciaId');
  GeneratedIntColumn _geoReferenciaId;
  @override
  GeneratedIntColumn get geoReferenciaId =>
      _geoReferenciaId ??= _constructGeoReferenciaId();
  GeneratedIntColumn _constructGeoReferenciaId() {
    return GeneratedIntColumn(
      'geo_referencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [usuarioRolGeoreferenciaId, usuarioId, rolId, geoReferenciaId, entidadId];
  @override
  $UsuarioRolGeoreferenciaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuario_rol_georeferencia';
  @override
  final String actualTableName = 'usuario_rol_georeferencia';
  @override
  VerificationContext validateIntegrity(
      Insertable<UsuarioRolGeoreferenciaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('usuario_rol_georeferencia_id')) {
      context.handle(
          _usuarioRolGeoreferenciaIdMeta,
          usuarioRolGeoreferenciaId.isAcceptableOrUnknown(
              data['usuario_rol_georeferencia_id'],
              _usuarioRolGeoreferenciaIdMeta));
    }
    if (data.containsKey('usuario_id')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['usuario_id'], _usuarioIdMeta));
    }
    if (data.containsKey('rol_id')) {
      context.handle(
          _rolIdMeta, rolId.isAcceptableOrUnknown(data['rol_id'], _rolIdMeta));
    }
    if (data.containsKey('geo_referencia_id')) {
      context.handle(
          _geoReferenciaIdMeta,
          geoReferenciaId.isAcceptableOrUnknown(
              data['geo_referencia_id'], _geoReferenciaIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {usuarioRolGeoreferenciaId};
  @override
  UsuarioRolGeoreferenciaData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UsuarioRolGeoreferenciaData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $UsuarioRolGeoreferenciaTable createAlias(String alias) {
    return $UsuarioRolGeoreferenciaTable(_db, alias);
  }
}

class RolData extends DataClass implements Insertable<RolData> {
  final int rolId;
  final String nombre;
  final int parentId;
  final bool estado;
  RolData({@required this.rolId, this.nombre, this.parentId, this.estado});
  factory RolData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return RolData(
      rolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || rolId != null) {
      map['rol_id'] = Variable<int>(rolId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    return map;
  }

  RolCompanion toCompanion(bool nullToAbsent) {
    return RolCompanion(
      rolId:
          rolId == null && nullToAbsent ? const Value.absent() : Value(rolId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
    );
  }

  factory RolData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RolData(
      rolId: serializer.fromJson<int>(json['rolId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      parentId: serializer.fromJson<int>(json['parentId']),
      estado: serializer.fromJson<bool>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'rolId': serializer.toJson<int>(rolId),
      'nombre': serializer.toJson<String>(nombre),
      'parentId': serializer.toJson<int>(parentId),
      'estado': serializer.toJson<bool>(estado),
    };
  }

  RolData copyWith({int rolId, String nombre, int parentId, bool estado}) =>
      RolData(
        rolId: rolId ?? this.rolId,
        nombre: nombre ?? this.nombre,
        parentId: parentId ?? this.parentId,
        estado: estado ?? this.estado,
      );
  @override
  String toString() {
    return (StringBuffer('RolData(')
          ..write('rolId: $rolId, ')
          ..write('nombre: $nombre, ')
          ..write('parentId: $parentId, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(rolId.hashCode,
      $mrjc(nombre.hashCode, $mrjc(parentId.hashCode, estado.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RolData &&
          other.rolId == this.rolId &&
          other.nombre == this.nombre &&
          other.parentId == this.parentId &&
          other.estado == this.estado);
}

class RolCompanion extends UpdateCompanion<RolData> {
  final Value<int> rolId;
  final Value<String> nombre;
  final Value<int> parentId;
  final Value<bool> estado;
  const RolCompanion({
    this.rolId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.parentId = const Value.absent(),
    this.estado = const Value.absent(),
  });
  RolCompanion.insert({
    this.rolId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.parentId = const Value.absent(),
    this.estado = const Value.absent(),
  });
  static Insertable<RolData> custom({
    Expression<int> rolId,
    Expression<String> nombre,
    Expression<int> parentId,
    Expression<bool> estado,
  }) {
    return RawValuesInsertable({
      if (rolId != null) 'rol_id': rolId,
      if (nombre != null) 'nombre': nombre,
      if (parentId != null) 'parent_id': parentId,
      if (estado != null) 'estado': estado,
    });
  }

  RolCompanion copyWith(
      {Value<int> rolId,
      Value<String> nombre,
      Value<int> parentId,
      Value<bool> estado}) {
    return RolCompanion(
      rolId: rolId ?? this.rolId,
      nombre: nombre ?? this.nombre,
      parentId: parentId ?? this.parentId,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (rolId.present) {
      map['rol_id'] = Variable<int>(rolId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RolCompanion(')
          ..write('rolId: $rolId, ')
          ..write('nombre: $nombre, ')
          ..write('parentId: $parentId, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $RolTable extends Rol with TableInfo<$RolTable, RolData> {
  final GeneratedDatabase _db;
  final String _alias;
  $RolTable(this._db, [this._alias]);
  final VerificationMeta _rolIdMeta = const VerificationMeta('rolId');
  GeneratedIntColumn _rolId;
  @override
  GeneratedIntColumn get rolId => _rolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn(
      'rol_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [rolId, nombre, parentId, estado];
  @override
  $RolTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'rol';
  @override
  final String actualTableName = 'rol';
  @override
  VerificationContext validateIntegrity(Insertable<RolData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('rol_id')) {
      context.handle(
          _rolIdMeta, rolId.isAcceptableOrUnknown(data['rol_id'], _rolIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rolId};
  @override
  RolData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RolData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RolTable createAlias(String alias) {
    return $RolTable(_db, alias);
  }
}

class GeoreferenciaData extends DataClass
    implements Insertable<GeoreferenciaData> {
  final int georeferenciaId;
  final String nombre;
  final int entidadId;
  final String geoAlias;
  final int estadoId;
  GeoreferenciaData(
      {@required this.georeferenciaId,
      this.nombre,
      this.entidadId,
      this.geoAlias,
      this.estadoId});
  factory GeoreferenciaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return GeoreferenciaData(
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      geoAlias: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}geo_alias']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || geoAlias != null) {
      map['geo_alias'] = Variable<String>(geoAlias);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    return map;
  }

  GeoreferenciaCompanion toCompanion(bool nullToAbsent) {
    return GeoreferenciaCompanion(
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      geoAlias: geoAlias == null && nullToAbsent
          ? const Value.absent()
          : Value(geoAlias),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
    );
  }

  factory GeoreferenciaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GeoreferenciaData(
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      geoAlias: serializer.fromJson<String>(json['geoAlias']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'nombre': serializer.toJson<String>(nombre),
      'entidadId': serializer.toJson<int>(entidadId),
      'geoAlias': serializer.toJson<String>(geoAlias),
      'estadoId': serializer.toJson<int>(estadoId),
    };
  }

  GeoreferenciaData copyWith(
          {int georeferenciaId,
          String nombre,
          int entidadId,
          String geoAlias,
          int estadoId}) =>
      GeoreferenciaData(
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        nombre: nombre ?? this.nombre,
        entidadId: entidadId ?? this.entidadId,
        geoAlias: geoAlias ?? this.geoAlias,
        estadoId: estadoId ?? this.estadoId,
      );
  @override
  String toString() {
    return (StringBuffer('GeoreferenciaData(')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('nombre: $nombre, ')
          ..write('entidadId: $entidadId, ')
          ..write('geoAlias: $geoAlias, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      georeferenciaId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(entidadId.hashCode,
              $mrjc(geoAlias.hashCode, estadoId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GeoreferenciaData &&
          other.georeferenciaId == this.georeferenciaId &&
          other.nombre == this.nombre &&
          other.entidadId == this.entidadId &&
          other.geoAlias == this.geoAlias &&
          other.estadoId == this.estadoId);
}

class GeoreferenciaCompanion extends UpdateCompanion<GeoreferenciaData> {
  final Value<int> georeferenciaId;
  final Value<String> nombre;
  final Value<int> entidadId;
  final Value<String> geoAlias;
  final Value<int> estadoId;
  const GeoreferenciaCompanion({
    this.georeferenciaId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.geoAlias = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  GeoreferenciaCompanion.insert({
    this.georeferenciaId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.geoAlias = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  static Insertable<GeoreferenciaData> custom({
    Expression<int> georeferenciaId,
    Expression<String> nombre,
    Expression<int> entidadId,
    Expression<String> geoAlias,
    Expression<int> estadoId,
  }) {
    return RawValuesInsertable({
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (nombre != null) 'nombre': nombre,
      if (entidadId != null) 'entidad_id': entidadId,
      if (geoAlias != null) 'geo_alias': geoAlias,
      if (estadoId != null) 'estado_id': estadoId,
    });
  }

  GeoreferenciaCompanion copyWith(
      {Value<int> georeferenciaId,
      Value<String> nombre,
      Value<int> entidadId,
      Value<String> geoAlias,
      Value<int> estadoId}) {
    return GeoreferenciaCompanion(
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      nombre: nombre ?? this.nombre,
      entidadId: entidadId ?? this.entidadId,
      geoAlias: geoAlias ?? this.geoAlias,
      estadoId: estadoId ?? this.estadoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (geoAlias.present) {
      map['geo_alias'] = Variable<String>(geoAlias.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeoreferenciaCompanion(')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('nombre: $nombre, ')
          ..write('entidadId: $entidadId, ')
          ..write('geoAlias: $geoAlias, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }
}

class $GeoreferenciaTable extends Georeferencia
    with TableInfo<$GeoreferenciaTable, GeoreferenciaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $GeoreferenciaTable(this._db, [this._alias]);
  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _geoAliasMeta = const VerificationMeta('geoAlias');
  GeneratedTextColumn _geoAlias;
  @override
  GeneratedTextColumn get geoAlias => _geoAlias ??= _constructGeoAlias();
  GeneratedTextColumn _constructGeoAlias() {
    return GeneratedTextColumn(
      'geo_alias',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [georeferenciaId, nombre, entidadId, geoAlias, estadoId];
  @override
  $GeoreferenciaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'georeferencia';
  @override
  final String actualTableName = 'georeferencia';
  @override
  VerificationContext validateIntegrity(Insertable<GeoreferenciaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('geo_alias')) {
      context.handle(_geoAliasMeta,
          geoAlias.isAcceptableOrUnknown(data['geo_alias'], _geoAliasMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {georeferenciaId};
  @override
  GeoreferenciaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GeoreferenciaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $GeoreferenciaTable createAlias(String alias) {
    return $GeoreferenciaTable(_db, alias);
  }
}

class EntidadData extends DataClass implements Insertable<EntidadData> {
  final int entidadId;
  final int tipoId;
  final int parentId;
  final String nombre;
  final String ruc;
  final String site;
  final String telefono;
  final String correo;
  final String foto;
  final int estadoId;
  EntidadData(
      {@required this.entidadId,
      this.tipoId,
      this.parentId,
      this.nombre,
      this.ruc,
      this.site,
      this.telefono,
      this.correo,
      this.foto,
      this.estadoId});
  factory EntidadData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return EntidadData(
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      ruc: stringType.mapFromDatabaseResponse(data['${effectivePrefix}ruc']),
      site: stringType.mapFromDatabaseResponse(data['${effectivePrefix}site']),
      telefono: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}telefono']),
      correo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}correo']),
      foto: stringType.mapFromDatabaseResponse(data['${effectivePrefix}foto']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || ruc != null) {
      map['ruc'] = Variable<String>(ruc);
    }
    if (!nullToAbsent || site != null) {
      map['site'] = Variable<String>(site);
    }
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    if (!nullToAbsent || correo != null) {
      map['correo'] = Variable<String>(correo);
    }
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    return map;
  }

  EntidadCompanion toCompanion(bool nullToAbsent) {
    return EntidadCompanion(
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      ruc: ruc == null && nullToAbsent ? const Value.absent() : Value(ruc),
      site: site == null && nullToAbsent ? const Value.absent() : Value(site),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      correo:
          correo == null && nullToAbsent ? const Value.absent() : Value(correo),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
    );
  }

  factory EntidadData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EntidadData(
      entidadId: serializer.fromJson<int>(json['entidadId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      parentId: serializer.fromJson<int>(json['parentId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      ruc: serializer.fromJson<String>(json['ruc']),
      site: serializer.fromJson<String>(json['site']),
      telefono: serializer.fromJson<String>(json['telefono']),
      correo: serializer.fromJson<String>(json['correo']),
      foto: serializer.fromJson<String>(json['foto']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'entidadId': serializer.toJson<int>(entidadId),
      'tipoId': serializer.toJson<int>(tipoId),
      'parentId': serializer.toJson<int>(parentId),
      'nombre': serializer.toJson<String>(nombre),
      'ruc': serializer.toJson<String>(ruc),
      'site': serializer.toJson<String>(site),
      'telefono': serializer.toJson<String>(telefono),
      'correo': serializer.toJson<String>(correo),
      'foto': serializer.toJson<String>(foto),
      'estadoId': serializer.toJson<int>(estadoId),
    };
  }

  EntidadData copyWith(
          {int entidadId,
          int tipoId,
          int parentId,
          String nombre,
          String ruc,
          String site,
          String telefono,
          String correo,
          String foto,
          int estadoId}) =>
      EntidadData(
        entidadId: entidadId ?? this.entidadId,
        tipoId: tipoId ?? this.tipoId,
        parentId: parentId ?? this.parentId,
        nombre: nombre ?? this.nombre,
        ruc: ruc ?? this.ruc,
        site: site ?? this.site,
        telefono: telefono ?? this.telefono,
        correo: correo ?? this.correo,
        foto: foto ?? this.foto,
        estadoId: estadoId ?? this.estadoId,
      );
  @override
  String toString() {
    return (StringBuffer('EntidadData(')
          ..write('entidadId: $entidadId, ')
          ..write('tipoId: $tipoId, ')
          ..write('parentId: $parentId, ')
          ..write('nombre: $nombre, ')
          ..write('ruc: $ruc, ')
          ..write('site: $site, ')
          ..write('telefono: $telefono, ')
          ..write('correo: $correo, ')
          ..write('foto: $foto, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      entidadId.hashCode,
      $mrjc(
          tipoId.hashCode,
          $mrjc(
              parentId.hashCode,
              $mrjc(
                  nombre.hashCode,
                  $mrjc(
                      ruc.hashCode,
                      $mrjc(
                          site.hashCode,
                          $mrjc(
                              telefono.hashCode,
                              $mrjc(
                                  correo.hashCode,
                                  $mrjc(foto.hashCode,
                                      estadoId.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EntidadData &&
          other.entidadId == this.entidadId &&
          other.tipoId == this.tipoId &&
          other.parentId == this.parentId &&
          other.nombre == this.nombre &&
          other.ruc == this.ruc &&
          other.site == this.site &&
          other.telefono == this.telefono &&
          other.correo == this.correo &&
          other.foto == this.foto &&
          other.estadoId == this.estadoId);
}

class EntidadCompanion extends UpdateCompanion<EntidadData> {
  final Value<int> entidadId;
  final Value<int> tipoId;
  final Value<int> parentId;
  final Value<String> nombre;
  final Value<String> ruc;
  final Value<String> site;
  final Value<String> telefono;
  final Value<String> correo;
  final Value<String> foto;
  final Value<int> estadoId;
  const EntidadCompanion({
    this.entidadId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.ruc = const Value.absent(),
    this.site = const Value.absent(),
    this.telefono = const Value.absent(),
    this.correo = const Value.absent(),
    this.foto = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  EntidadCompanion.insert({
    this.entidadId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.ruc = const Value.absent(),
    this.site = const Value.absent(),
    this.telefono = const Value.absent(),
    this.correo = const Value.absent(),
    this.foto = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  static Insertable<EntidadData> custom({
    Expression<int> entidadId,
    Expression<int> tipoId,
    Expression<int> parentId,
    Expression<String> nombre,
    Expression<String> ruc,
    Expression<String> site,
    Expression<String> telefono,
    Expression<String> correo,
    Expression<String> foto,
    Expression<int> estadoId,
  }) {
    return RawValuesInsertable({
      if (entidadId != null) 'entidad_id': entidadId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (parentId != null) 'parent_id': parentId,
      if (nombre != null) 'nombre': nombre,
      if (ruc != null) 'ruc': ruc,
      if (site != null) 'site': site,
      if (telefono != null) 'telefono': telefono,
      if (correo != null) 'correo': correo,
      if (foto != null) 'foto': foto,
      if (estadoId != null) 'estado_id': estadoId,
    });
  }

  EntidadCompanion copyWith(
      {Value<int> entidadId,
      Value<int> tipoId,
      Value<int> parentId,
      Value<String> nombre,
      Value<String> ruc,
      Value<String> site,
      Value<String> telefono,
      Value<String> correo,
      Value<String> foto,
      Value<int> estadoId}) {
    return EntidadCompanion(
      entidadId: entidadId ?? this.entidadId,
      tipoId: tipoId ?? this.tipoId,
      parentId: parentId ?? this.parentId,
      nombre: nombre ?? this.nombre,
      ruc: ruc ?? this.ruc,
      site: site ?? this.site,
      telefono: telefono ?? this.telefono,
      correo: correo ?? this.correo,
      foto: foto ?? this.foto,
      estadoId: estadoId ?? this.estadoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (ruc.present) {
      map['ruc'] = Variable<String>(ruc.value);
    }
    if (site.present) {
      map['site'] = Variable<String>(site.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (correo.present) {
      map['correo'] = Variable<String>(correo.value);
    }
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntidadCompanion(')
          ..write('entidadId: $entidadId, ')
          ..write('tipoId: $tipoId, ')
          ..write('parentId: $parentId, ')
          ..write('nombre: $nombre, ')
          ..write('ruc: $ruc, ')
          ..write('site: $site, ')
          ..write('telefono: $telefono, ')
          ..write('correo: $correo, ')
          ..write('foto: $foto, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }
}

class $EntidadTable extends Entidad with TableInfo<$EntidadTable, EntidadData> {
  final GeneratedDatabase _db;
  final String _alias;
  $EntidadTable(this._db, [this._alias]);
  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rucMeta = const VerificationMeta('ruc');
  GeneratedTextColumn _ruc;
  @override
  GeneratedTextColumn get ruc => _ruc ??= _constructRuc();
  GeneratedTextColumn _constructRuc() {
    return GeneratedTextColumn(
      'ruc',
      $tableName,
      true,
    );
  }

  final VerificationMeta _siteMeta = const VerificationMeta('site');
  GeneratedTextColumn _site;
  @override
  GeneratedTextColumn get site => _site ??= _constructSite();
  GeneratedTextColumn _constructSite() {
    return GeneratedTextColumn(
      'site',
      $tableName,
      true,
    );
  }

  final VerificationMeta _telefonoMeta = const VerificationMeta('telefono');
  GeneratedTextColumn _telefono;
  @override
  GeneratedTextColumn get telefono => _telefono ??= _constructTelefono();
  GeneratedTextColumn _constructTelefono() {
    return GeneratedTextColumn(
      'telefono',
      $tableName,
      true,
    );
  }

  final VerificationMeta _correoMeta = const VerificationMeta('correo');
  GeneratedTextColumn _correo;
  @override
  GeneratedTextColumn get correo => _correo ??= _constructCorreo();
  GeneratedTextColumn _constructCorreo() {
    return GeneratedTextColumn(
      'correo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoMeta = const VerificationMeta('foto');
  GeneratedTextColumn _foto;
  @override
  GeneratedTextColumn get foto => _foto ??= _constructFoto();
  GeneratedTextColumn _constructFoto() {
    return GeneratedTextColumn(
      'foto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        entidadId,
        tipoId,
        parentId,
        nombre,
        ruc,
        site,
        telefono,
        correo,
        foto,
        estadoId
      ];
  @override
  $EntidadTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'entidad';
  @override
  final String actualTableName = 'entidad';
  @override
  VerificationContext validateIntegrity(Insertable<EntidadData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('ruc')) {
      context.handle(
          _rucMeta, ruc.isAcceptableOrUnknown(data['ruc'], _rucMeta));
    }
    if (data.containsKey('site')) {
      context.handle(
          _siteMeta, site.isAcceptableOrUnknown(data['site'], _siteMeta));
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono'], _telefonoMeta));
    }
    if (data.containsKey('correo')) {
      context.handle(_correoMeta,
          correo.isAcceptableOrUnknown(data['correo'], _correoMeta));
    }
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto'], _fotoMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {entidadId};
  @override
  EntidadData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EntidadData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EntidadTable createAlias(String alias) {
    return $EntidadTable(_db, alias);
  }
}

class PersonaData extends DataClass implements Insertable<PersonaData> {
  final int personaId;
  final String nombres;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String celular;
  final String telefono;
  final String foto;
  final String fechaNac;
  final String genero;
  final String estadoCivil;
  final String numDoc;
  final String ocupacion;
  final int estadoId;
  final String correo;
  final String direccion;
  final String path;
  PersonaData(
      {@required this.personaId,
      this.nombres,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.celular,
      this.telefono,
      this.foto,
      this.fechaNac,
      this.genero,
      this.estadoCivil,
      this.numDoc,
      this.ocupacion,
      this.estadoId,
      this.correo,
      this.direccion,
      this.path});
  factory PersonaData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PersonaData(
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      nombres:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombres']),
      apellidoPaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_paterno']),
      apellidoMaterno: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}apellido_materno']),
      celular:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}celular']),
      telefono: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}telefono']),
      foto: stringType.mapFromDatabaseResponse(data['${effectivePrefix}foto']),
      fechaNac: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_nac']),
      genero:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}genero']),
      estadoCivil: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}estado_civil']),
      numDoc:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}num_doc']),
      ocupacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ocupacion']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      correo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}correo']),
      direccion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}direccion']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || nombres != null) {
      map['nombres'] = Variable<String>(nombres);
    }
    if (!nullToAbsent || apellidoPaterno != null) {
      map['apellido_paterno'] = Variable<String>(apellidoPaterno);
    }
    if (!nullToAbsent || apellidoMaterno != null) {
      map['apellido_materno'] = Variable<String>(apellidoMaterno);
    }
    if (!nullToAbsent || celular != null) {
      map['celular'] = Variable<String>(celular);
    }
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || fechaNac != null) {
      map['fecha_nac'] = Variable<String>(fechaNac);
    }
    if (!nullToAbsent || genero != null) {
      map['genero'] = Variable<String>(genero);
    }
    if (!nullToAbsent || estadoCivil != null) {
      map['estado_civil'] = Variable<String>(estadoCivil);
    }
    if (!nullToAbsent || numDoc != null) {
      map['num_doc'] = Variable<String>(numDoc);
    }
    if (!nullToAbsent || ocupacion != null) {
      map['ocupacion'] = Variable<String>(ocupacion);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || correo != null) {
      map['correo'] = Variable<String>(correo);
    }
    if (!nullToAbsent || direccion != null) {
      map['direccion'] = Variable<String>(direccion);
    }
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    return map;
  }

  PersonaCompanion toCompanion(bool nullToAbsent) {
    return PersonaCompanion(
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      nombres: nombres == null && nullToAbsent
          ? const Value.absent()
          : Value(nombres),
      apellidoPaterno: apellidoPaterno == null && nullToAbsent
          ? const Value.absent()
          : Value(apellidoPaterno),
      apellidoMaterno: apellidoMaterno == null && nullToAbsent
          ? const Value.absent()
          : Value(apellidoMaterno),
      celular: celular == null && nullToAbsent
          ? const Value.absent()
          : Value(celular),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      fechaNac: fechaNac == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaNac),
      genero:
          genero == null && nullToAbsent ? const Value.absent() : Value(genero),
      estadoCivil: estadoCivil == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoCivil),
      numDoc:
          numDoc == null && nullToAbsent ? const Value.absent() : Value(numDoc),
      ocupacion: ocupacion == null && nullToAbsent
          ? const Value.absent()
          : Value(ocupacion),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      correo:
          correo == null && nullToAbsent ? const Value.absent() : Value(correo),
      direccion: direccion == null && nullToAbsent
          ? const Value.absent()
          : Value(direccion),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
    );
  }

  factory PersonaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PersonaData(
      personaId: serializer.fromJson<int>(json['personaId']),
      nombres: serializer.fromJson<String>(json['nombres']),
      apellidoPaterno: serializer.fromJson<String>(json['apellidoPaterno']),
      apellidoMaterno: serializer.fromJson<String>(json['apellidoMaterno']),
      celular: serializer.fromJson<String>(json['celular']),
      telefono: serializer.fromJson<String>(json['telefono']),
      foto: serializer.fromJson<String>(json['foto']),
      fechaNac: serializer.fromJson<String>(json['fechaNac']),
      genero: serializer.fromJson<String>(json['genero']),
      estadoCivil: serializer.fromJson<String>(json['estadoCivil']),
      numDoc: serializer.fromJson<String>(json['numDoc']),
      ocupacion: serializer.fromJson<String>(json['ocupacion']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      correo: serializer.fromJson<String>(json['correo']),
      direccion: serializer.fromJson<String>(json['direccion']),
      path: serializer.fromJson<String>(json['path']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'personaId': serializer.toJson<int>(personaId),
      'nombres': serializer.toJson<String>(nombres),
      'apellidoPaterno': serializer.toJson<String>(apellidoPaterno),
      'apellidoMaterno': serializer.toJson<String>(apellidoMaterno),
      'celular': serializer.toJson<String>(celular),
      'telefono': serializer.toJson<String>(telefono),
      'foto': serializer.toJson<String>(foto),
      'fechaNac': serializer.toJson<String>(fechaNac),
      'genero': serializer.toJson<String>(genero),
      'estadoCivil': serializer.toJson<String>(estadoCivil),
      'numDoc': serializer.toJson<String>(numDoc),
      'ocupacion': serializer.toJson<String>(ocupacion),
      'estadoId': serializer.toJson<int>(estadoId),
      'correo': serializer.toJson<String>(correo),
      'direccion': serializer.toJson<String>(direccion),
      'path': serializer.toJson<String>(path),
    };
  }

  PersonaData copyWith(
          {int personaId,
          String nombres,
          String apellidoPaterno,
          String apellidoMaterno,
          String celular,
          String telefono,
          String foto,
          String fechaNac,
          String genero,
          String estadoCivil,
          String numDoc,
          String ocupacion,
          int estadoId,
          String correo,
          String direccion,
          String path}) =>
      PersonaData(
        personaId: personaId ?? this.personaId,
        nombres: nombres ?? this.nombres,
        apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
        apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
        celular: celular ?? this.celular,
        telefono: telefono ?? this.telefono,
        foto: foto ?? this.foto,
        fechaNac: fechaNac ?? this.fechaNac,
        genero: genero ?? this.genero,
        estadoCivil: estadoCivil ?? this.estadoCivil,
        numDoc: numDoc ?? this.numDoc,
        ocupacion: ocupacion ?? this.ocupacion,
        estadoId: estadoId ?? this.estadoId,
        correo: correo ?? this.correo,
        direccion: direccion ?? this.direccion,
        path: path ?? this.path,
      );
  @override
  String toString() {
    return (StringBuffer('PersonaData(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('celular: $celular, ')
          ..write('telefono: $telefono, ')
          ..write('foto: $foto, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('correo: $correo, ')
          ..write('direccion: $direccion, ')
          ..write('path: $path')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      personaId.hashCode,
      $mrjc(
          nombres.hashCode,
          $mrjc(
              apellidoPaterno.hashCode,
              $mrjc(
                  apellidoMaterno.hashCode,
                  $mrjc(
                      celular.hashCode,
                      $mrjc(
                          telefono.hashCode,
                          $mrjc(
                              foto.hashCode,
                              $mrjc(
                                  fechaNac.hashCode,
                                  $mrjc(
                                      genero.hashCode,
                                      $mrjc(
                                          estadoCivil.hashCode,
                                          $mrjc(
                                              numDoc.hashCode,
                                              $mrjc(
                                                  ocupacion.hashCode,
                                                  $mrjc(
                                                      estadoId.hashCode,
                                                      $mrjc(
                                                          correo.hashCode,
                                                          $mrjc(
                                                              direccion
                                                                  .hashCode,
                                                              path.hashCode))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PersonaData &&
          other.personaId == this.personaId &&
          other.nombres == this.nombres &&
          other.apellidoPaterno == this.apellidoPaterno &&
          other.apellidoMaterno == this.apellidoMaterno &&
          other.celular == this.celular &&
          other.telefono == this.telefono &&
          other.foto == this.foto &&
          other.fechaNac == this.fechaNac &&
          other.genero == this.genero &&
          other.estadoCivil == this.estadoCivil &&
          other.numDoc == this.numDoc &&
          other.ocupacion == this.ocupacion &&
          other.estadoId == this.estadoId &&
          other.correo == this.correo &&
          other.direccion == this.direccion &&
          other.path == this.path);
}

class PersonaCompanion extends UpdateCompanion<PersonaData> {
  final Value<int> personaId;
  final Value<String> nombres;
  final Value<String> apellidoPaterno;
  final Value<String> apellidoMaterno;
  final Value<String> celular;
  final Value<String> telefono;
  final Value<String> foto;
  final Value<String> fechaNac;
  final Value<String> genero;
  final Value<String> estadoCivil;
  final Value<String> numDoc;
  final Value<String> ocupacion;
  final Value<int> estadoId;
  final Value<String> correo;
  final Value<String> direccion;
  final Value<String> path;
  const PersonaCompanion({
    this.personaId = const Value.absent(),
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.celular = const Value.absent(),
    this.telefono = const Value.absent(),
    this.foto = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.correo = const Value.absent(),
    this.direccion = const Value.absent(),
    this.path = const Value.absent(),
  });
  PersonaCompanion.insert({
    this.personaId = const Value.absent(),
    this.nombres = const Value.absent(),
    this.apellidoPaterno = const Value.absent(),
    this.apellidoMaterno = const Value.absent(),
    this.celular = const Value.absent(),
    this.telefono = const Value.absent(),
    this.foto = const Value.absent(),
    this.fechaNac = const Value.absent(),
    this.genero = const Value.absent(),
    this.estadoCivil = const Value.absent(),
    this.numDoc = const Value.absent(),
    this.ocupacion = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.correo = const Value.absent(),
    this.direccion = const Value.absent(),
    this.path = const Value.absent(),
  });
  static Insertable<PersonaData> custom({
    Expression<int> personaId,
    Expression<String> nombres,
    Expression<String> apellidoPaterno,
    Expression<String> apellidoMaterno,
    Expression<String> celular,
    Expression<String> telefono,
    Expression<String> foto,
    Expression<String> fechaNac,
    Expression<String> genero,
    Expression<String> estadoCivil,
    Expression<String> numDoc,
    Expression<String> ocupacion,
    Expression<int> estadoId,
    Expression<String> correo,
    Expression<String> direccion,
    Expression<String> path,
  }) {
    return RawValuesInsertable({
      if (personaId != null) 'persona_id': personaId,
      if (nombres != null) 'nombres': nombres,
      if (apellidoPaterno != null) 'apellido_paterno': apellidoPaterno,
      if (apellidoMaterno != null) 'apellido_materno': apellidoMaterno,
      if (celular != null) 'celular': celular,
      if (telefono != null) 'telefono': telefono,
      if (foto != null) 'foto': foto,
      if (fechaNac != null) 'fecha_nac': fechaNac,
      if (genero != null) 'genero': genero,
      if (estadoCivil != null) 'estado_civil': estadoCivil,
      if (numDoc != null) 'num_doc': numDoc,
      if (ocupacion != null) 'ocupacion': ocupacion,
      if (estadoId != null) 'estado_id': estadoId,
      if (correo != null) 'correo': correo,
      if (direccion != null) 'direccion': direccion,
      if (path != null) 'path': path,
    });
  }

  PersonaCompanion copyWith(
      {Value<int> personaId,
      Value<String> nombres,
      Value<String> apellidoPaterno,
      Value<String> apellidoMaterno,
      Value<String> celular,
      Value<String> telefono,
      Value<String> foto,
      Value<String> fechaNac,
      Value<String> genero,
      Value<String> estadoCivil,
      Value<String> numDoc,
      Value<String> ocupacion,
      Value<int> estadoId,
      Value<String> correo,
      Value<String> direccion,
      Value<String> path}) {
    return PersonaCompanion(
      personaId: personaId ?? this.personaId,
      nombres: nombres ?? this.nombres,
      apellidoPaterno: apellidoPaterno ?? this.apellidoPaterno,
      apellidoMaterno: apellidoMaterno ?? this.apellidoMaterno,
      celular: celular ?? this.celular,
      telefono: telefono ?? this.telefono,
      foto: foto ?? this.foto,
      fechaNac: fechaNac ?? this.fechaNac,
      genero: genero ?? this.genero,
      estadoCivil: estadoCivil ?? this.estadoCivil,
      numDoc: numDoc ?? this.numDoc,
      ocupacion: ocupacion ?? this.ocupacion,
      estadoId: estadoId ?? this.estadoId,
      correo: correo ?? this.correo,
      direccion: direccion ?? this.direccion,
      path: path ?? this.path,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (nombres.present) {
      map['nombres'] = Variable<String>(nombres.value);
    }
    if (apellidoPaterno.present) {
      map['apellido_paterno'] = Variable<String>(apellidoPaterno.value);
    }
    if (apellidoMaterno.present) {
      map['apellido_materno'] = Variable<String>(apellidoMaterno.value);
    }
    if (celular.present) {
      map['celular'] = Variable<String>(celular.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
    }
    if (fechaNac.present) {
      map['fecha_nac'] = Variable<String>(fechaNac.value);
    }
    if (genero.present) {
      map['genero'] = Variable<String>(genero.value);
    }
    if (estadoCivil.present) {
      map['estado_civil'] = Variable<String>(estadoCivil.value);
    }
    if (numDoc.present) {
      map['num_doc'] = Variable<String>(numDoc.value);
    }
    if (ocupacion.present) {
      map['ocupacion'] = Variable<String>(ocupacion.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (correo.present) {
      map['correo'] = Variable<String>(correo.value);
    }
    if (direccion.present) {
      map['direccion'] = Variable<String>(direccion.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonaCompanion(')
          ..write('personaId: $personaId, ')
          ..write('nombres: $nombres, ')
          ..write('apellidoPaterno: $apellidoPaterno, ')
          ..write('apellidoMaterno: $apellidoMaterno, ')
          ..write('celular: $celular, ')
          ..write('telefono: $telefono, ')
          ..write('foto: $foto, ')
          ..write('fechaNac: $fechaNac, ')
          ..write('genero: $genero, ')
          ..write('estadoCivil: $estadoCivil, ')
          ..write('numDoc: $numDoc, ')
          ..write('ocupacion: $ocupacion, ')
          ..write('estadoId: $estadoId, ')
          ..write('correo: $correo, ')
          ..write('direccion: $direccion, ')
          ..write('path: $path')
          ..write(')'))
        .toString();
  }
}

class $PersonaTable extends Persona with TableInfo<$PersonaTable, PersonaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PersonaTable(this._db, [this._alias]);
  final VerificationMeta _personaIdMeta = const VerificationMeta('personaId');
  GeneratedIntColumn _personaId;
  @override
  GeneratedIntColumn get personaId => _personaId ??= _constructPersonaId();
  GeneratedIntColumn _constructPersonaId() {
    return GeneratedIntColumn(
      'persona_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombresMeta = const VerificationMeta('nombres');
  GeneratedTextColumn _nombres;
  @override
  GeneratedTextColumn get nombres => _nombres ??= _constructNombres();
  GeneratedTextColumn _constructNombres() {
    return GeneratedTextColumn(
      'nombres',
      $tableName,
      true,
    );
  }

  final VerificationMeta _apellidoPaternoMeta =
      const VerificationMeta('apellidoPaterno');
  GeneratedTextColumn _apellidoPaterno;
  @override
  GeneratedTextColumn get apellidoPaterno =>
      _apellidoPaterno ??= _constructApellidoPaterno();
  GeneratedTextColumn _constructApellidoPaterno() {
    return GeneratedTextColumn(
      'apellido_paterno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _apellidoMaternoMeta =
      const VerificationMeta('apellidoMaterno');
  GeneratedTextColumn _apellidoMaterno;
  @override
  GeneratedTextColumn get apellidoMaterno =>
      _apellidoMaterno ??= _constructApellidoMaterno();
  GeneratedTextColumn _constructApellidoMaterno() {
    return GeneratedTextColumn(
      'apellido_materno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _celularMeta = const VerificationMeta('celular');
  GeneratedTextColumn _celular;
  @override
  GeneratedTextColumn get celular => _celular ??= _constructCelular();
  GeneratedTextColumn _constructCelular() {
    return GeneratedTextColumn(
      'celular',
      $tableName,
      true,
    );
  }

  final VerificationMeta _telefonoMeta = const VerificationMeta('telefono');
  GeneratedTextColumn _telefono;
  @override
  GeneratedTextColumn get telefono => _telefono ??= _constructTelefono();
  GeneratedTextColumn _constructTelefono() {
    return GeneratedTextColumn(
      'telefono',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoMeta = const VerificationMeta('foto');
  GeneratedTextColumn _foto;
  @override
  GeneratedTextColumn get foto => _foto ??= _constructFoto();
  GeneratedTextColumn _constructFoto() {
    return GeneratedTextColumn(
      'foto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaNacMeta = const VerificationMeta('fechaNac');
  GeneratedTextColumn _fechaNac;
  @override
  GeneratedTextColumn get fechaNac => _fechaNac ??= _constructFechaNac();
  GeneratedTextColumn _constructFechaNac() {
    return GeneratedTextColumn(
      'fecha_nac',
      $tableName,
      true,
    );
  }

  final VerificationMeta _generoMeta = const VerificationMeta('genero');
  GeneratedTextColumn _genero;
  @override
  GeneratedTextColumn get genero => _genero ??= _constructGenero();
  GeneratedTextColumn _constructGenero() {
    return GeneratedTextColumn(
      'genero',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoCivilMeta =
      const VerificationMeta('estadoCivil');
  GeneratedTextColumn _estadoCivil;
  @override
  GeneratedTextColumn get estadoCivil =>
      _estadoCivil ??= _constructEstadoCivil();
  GeneratedTextColumn _constructEstadoCivil() {
    return GeneratedTextColumn(
      'estado_civil',
      $tableName,
      true,
    );
  }

  final VerificationMeta _numDocMeta = const VerificationMeta('numDoc');
  GeneratedTextColumn _numDoc;
  @override
  GeneratedTextColumn get numDoc => _numDoc ??= _constructNumDoc();
  GeneratedTextColumn _constructNumDoc() {
    return GeneratedTextColumn(
      'num_doc',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ocupacionMeta = const VerificationMeta('ocupacion');
  GeneratedTextColumn _ocupacion;
  @override
  GeneratedTextColumn get ocupacion => _ocupacion ??= _constructOcupacion();
  GeneratedTextColumn _constructOcupacion() {
    return GeneratedTextColumn(
      'ocupacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _correoMeta = const VerificationMeta('correo');
  GeneratedTextColumn _correo;
  @override
  GeneratedTextColumn get correo => _correo ??= _constructCorreo();
  GeneratedTextColumn _constructCorreo() {
    return GeneratedTextColumn(
      'correo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _direccionMeta = const VerificationMeta('direccion');
  GeneratedTextColumn _direccion;
  @override
  GeneratedTextColumn get direccion => _direccion ??= _constructDireccion();
  GeneratedTextColumn _constructDireccion() {
    return GeneratedTextColumn(
      'direccion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  GeneratedTextColumn _path;
  @override
  GeneratedTextColumn get path => _path ??= _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn(
      'path',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        personaId,
        nombres,
        apellidoPaterno,
        apellidoMaterno,
        celular,
        telefono,
        foto,
        fechaNac,
        genero,
        estadoCivil,
        numDoc,
        ocupacion,
        estadoId,
        correo,
        direccion,
        path
      ];
  @override
  $PersonaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'persona';
  @override
  final String actualTableName = 'persona';
  @override
  VerificationContext validateIntegrity(Insertable<PersonaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('nombres')) {
      context.handle(_nombresMeta,
          nombres.isAcceptableOrUnknown(data['nombres'], _nombresMeta));
    }
    if (data.containsKey('apellido_paterno')) {
      context.handle(
          _apellidoPaternoMeta,
          apellidoPaterno.isAcceptableOrUnknown(
              data['apellido_paterno'], _apellidoPaternoMeta));
    }
    if (data.containsKey('apellido_materno')) {
      context.handle(
          _apellidoMaternoMeta,
          apellidoMaterno.isAcceptableOrUnknown(
              data['apellido_materno'], _apellidoMaternoMeta));
    }
    if (data.containsKey('celular')) {
      context.handle(_celularMeta,
          celular.isAcceptableOrUnknown(data['celular'], _celularMeta));
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono'], _telefonoMeta));
    }
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto'], _fotoMeta));
    }
    if (data.containsKey('fecha_nac')) {
      context.handle(_fechaNacMeta,
          fechaNac.isAcceptableOrUnknown(data['fecha_nac'], _fechaNacMeta));
    }
    if (data.containsKey('genero')) {
      context.handle(_generoMeta,
          genero.isAcceptableOrUnknown(data['genero'], _generoMeta));
    }
    if (data.containsKey('estado_civil')) {
      context.handle(
          _estadoCivilMeta,
          estadoCivil.isAcceptableOrUnknown(
              data['estado_civil'], _estadoCivilMeta));
    }
    if (data.containsKey('num_doc')) {
      context.handle(_numDocMeta,
          numDoc.isAcceptableOrUnknown(data['num_doc'], _numDocMeta));
    }
    if (data.containsKey('ocupacion')) {
      context.handle(_ocupacionMeta,
          ocupacion.isAcceptableOrUnknown(data['ocupacion'], _ocupacionMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('correo')) {
      context.handle(_correoMeta,
          correo.isAcceptableOrUnknown(data['correo'], _correoMeta));
    }
    if (data.containsKey('direccion')) {
      context.handle(_direccionMeta,
          direccion.isAcceptableOrUnknown(data['direccion'], _direccionMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path'], _pathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {personaId};
  @override
  PersonaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PersonaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PersonaTable createAlias(String alias) {
    return $PersonaTable(_db, alias);
  }
}

class EmpleadoData extends DataClass implements Insertable<EmpleadoData> {
  final int empleadoId;
  final int personaId;
  final String linkURL;
  final bool estado;
  final int tipoId;
  final String web;
  EmpleadoData(
      {@required this.empleadoId,
      this.personaId,
      this.linkURL,
      this.estado,
      this.tipoId,
      this.web});
  factory EmpleadoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return EmpleadoData(
      empleadoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}empleado_id']),
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      linkURL: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}link_u_r_l']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      web: stringType.mapFromDatabaseResponse(data['${effectivePrefix}web']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || empleadoId != null) {
      map['empleado_id'] = Variable<int>(empleadoId);
    }
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || linkURL != null) {
      map['link_u_r_l'] = Variable<String>(linkURL);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || web != null) {
      map['web'] = Variable<String>(web);
    }
    return map;
  }

  EmpleadoCompanion toCompanion(bool nullToAbsent) {
    return EmpleadoCompanion(
      empleadoId: empleadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(empleadoId),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      linkURL: linkURL == null && nullToAbsent
          ? const Value.absent()
          : Value(linkURL),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      web: web == null && nullToAbsent ? const Value.absent() : Value(web),
    );
  }

  factory EmpleadoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EmpleadoData(
      empleadoId: serializer.fromJson<int>(json['empleadoId']),
      personaId: serializer.fromJson<int>(json['personaId']),
      linkURL: serializer.fromJson<String>(json['linkURL']),
      estado: serializer.fromJson<bool>(json['estado']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      web: serializer.fromJson<String>(json['web']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'empleadoId': serializer.toJson<int>(empleadoId),
      'personaId': serializer.toJson<int>(personaId),
      'linkURL': serializer.toJson<String>(linkURL),
      'estado': serializer.toJson<bool>(estado),
      'tipoId': serializer.toJson<int>(tipoId),
      'web': serializer.toJson<String>(web),
    };
  }

  EmpleadoData copyWith(
          {int empleadoId,
          int personaId,
          String linkURL,
          bool estado,
          int tipoId,
          String web}) =>
      EmpleadoData(
        empleadoId: empleadoId ?? this.empleadoId,
        personaId: personaId ?? this.personaId,
        linkURL: linkURL ?? this.linkURL,
        estado: estado ?? this.estado,
        tipoId: tipoId ?? this.tipoId,
        web: web ?? this.web,
      );
  @override
  String toString() {
    return (StringBuffer('EmpleadoData(')
          ..write('empleadoId: $empleadoId, ')
          ..write('personaId: $personaId, ')
          ..write('linkURL: $linkURL, ')
          ..write('estado: $estado, ')
          ..write('tipoId: $tipoId, ')
          ..write('web: $web')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      empleadoId.hashCode,
      $mrjc(
          personaId.hashCode,
          $mrjc(linkURL.hashCode,
              $mrjc(estado.hashCode, $mrjc(tipoId.hashCode, web.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EmpleadoData &&
          other.empleadoId == this.empleadoId &&
          other.personaId == this.personaId &&
          other.linkURL == this.linkURL &&
          other.estado == this.estado &&
          other.tipoId == this.tipoId &&
          other.web == this.web);
}

class EmpleadoCompanion extends UpdateCompanion<EmpleadoData> {
  final Value<int> empleadoId;
  final Value<int> personaId;
  final Value<String> linkURL;
  final Value<bool> estado;
  final Value<int> tipoId;
  final Value<String> web;
  const EmpleadoCompanion({
    this.empleadoId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.linkURL = const Value.absent(),
    this.estado = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.web = const Value.absent(),
  });
  EmpleadoCompanion.insert({
    this.empleadoId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.linkURL = const Value.absent(),
    this.estado = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.web = const Value.absent(),
  });
  static Insertable<EmpleadoData> custom({
    Expression<int> empleadoId,
    Expression<int> personaId,
    Expression<String> linkURL,
    Expression<bool> estado,
    Expression<int> tipoId,
    Expression<String> web,
  }) {
    return RawValuesInsertable({
      if (empleadoId != null) 'empleado_id': empleadoId,
      if (personaId != null) 'persona_id': personaId,
      if (linkURL != null) 'link_u_r_l': linkURL,
      if (estado != null) 'estado': estado,
      if (tipoId != null) 'tipo_id': tipoId,
      if (web != null) 'web': web,
    });
  }

  EmpleadoCompanion copyWith(
      {Value<int> empleadoId,
      Value<int> personaId,
      Value<String> linkURL,
      Value<bool> estado,
      Value<int> tipoId,
      Value<String> web}) {
    return EmpleadoCompanion(
      empleadoId: empleadoId ?? this.empleadoId,
      personaId: personaId ?? this.personaId,
      linkURL: linkURL ?? this.linkURL,
      estado: estado ?? this.estado,
      tipoId: tipoId ?? this.tipoId,
      web: web ?? this.web,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (empleadoId.present) {
      map['empleado_id'] = Variable<int>(empleadoId.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (linkURL.present) {
      map['link_u_r_l'] = Variable<String>(linkURL.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (web.present) {
      map['web'] = Variable<String>(web.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmpleadoCompanion(')
          ..write('empleadoId: $empleadoId, ')
          ..write('personaId: $personaId, ')
          ..write('linkURL: $linkURL, ')
          ..write('estado: $estado, ')
          ..write('tipoId: $tipoId, ')
          ..write('web: $web')
          ..write(')'))
        .toString();
  }
}

class $EmpleadoTable extends Empleado
    with TableInfo<$EmpleadoTable, EmpleadoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $EmpleadoTable(this._db, [this._alias]);
  final VerificationMeta _empleadoIdMeta = const VerificationMeta('empleadoId');
  GeneratedIntColumn _empleadoId;
  @override
  GeneratedIntColumn get empleadoId => _empleadoId ??= _constructEmpleadoId();
  GeneratedIntColumn _constructEmpleadoId() {
    return GeneratedIntColumn(
      'empleado_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _personaIdMeta = const VerificationMeta('personaId');
  GeneratedIntColumn _personaId;
  @override
  GeneratedIntColumn get personaId => _personaId ??= _constructPersonaId();
  GeneratedIntColumn _constructPersonaId() {
    return GeneratedIntColumn(
      'persona_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _linkURLMeta = const VerificationMeta('linkURL');
  GeneratedTextColumn _linkURL;
  @override
  GeneratedTextColumn get linkURL => _linkURL ??= _constructLinkURL();
  GeneratedTextColumn _constructLinkURL() {
    return GeneratedTextColumn(
      'link_u_r_l',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _webMeta = const VerificationMeta('web');
  GeneratedTextColumn _web;
  @override
  GeneratedTextColumn get web => _web ??= _constructWeb();
  GeneratedTextColumn _constructWeb() {
    return GeneratedTextColumn(
      'web',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [empleadoId, personaId, linkURL, estado, tipoId, web];
  @override
  $EmpleadoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'empleado';
  @override
  final String actualTableName = 'empleado';
  @override
  VerificationContext validateIntegrity(Insertable<EmpleadoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('empleado_id')) {
      context.handle(
          _empleadoIdMeta,
          empleadoId.isAcceptableOrUnknown(
              data['empleado_id'], _empleadoIdMeta));
    }
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('link_u_r_l')) {
      context.handle(_linkURLMeta,
          linkURL.isAcceptableOrUnknown(data['link_u_r_l'], _linkURLMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('web')) {
      context.handle(
          _webMeta, web.isAcceptableOrUnknown(data['web'], _webMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {empleadoId};
  @override
  EmpleadoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EmpleadoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EmpleadoTable createAlias(String alias) {
    return $EmpleadoTable(_db, alias);
  }
}

class AnioAcademicoData extends DataClass
    implements Insertable<AnioAcademicoData> {
  final int idAnioAcademico;
  final String nombre;
  final String fechaInicio;
  final String fechaFin;
  final String denominacion;
  final int georeferenciaId;
  final int organigramaId;
  final int estadoId;
  final int tipoId;
  final bool toogle;
  AnioAcademicoData(
      {@required this.idAnioAcademico,
      this.nombre,
      this.fechaInicio,
      this.fechaFin,
      this.denominacion,
      this.georeferenciaId,
      this.organigramaId,
      this.estadoId,
      this.tipoId,
      this.toogle});
  factory AnioAcademicoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return AnioAcademicoData(
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      fechaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      denominacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}denominacion']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      organigramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}organigrama_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      toogle:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}toogle']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<String>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<String>(fechaFin);
    }
    if (!nullToAbsent || denominacion != null) {
      map['denominacion'] = Variable<String>(denominacion);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || organigramaId != null) {
      map['organigrama_id'] = Variable<int>(organigramaId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || toogle != null) {
      map['toogle'] = Variable<bool>(toogle);
    }
    return map;
  }

  AnioAcademicoCompanion toCompanion(bool nullToAbsent) {
    return AnioAcademicoCompanion(
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      denominacion: denominacion == null && nullToAbsent
          ? const Value.absent()
          : Value(denominacion),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      organigramaId: organigramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(organigramaId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      toogle:
          toogle == null && nullToAbsent ? const Value.absent() : Value(toogle),
    );
  }

  factory AnioAcademicoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AnioAcademicoData(
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      nombre: serializer.fromJson<String>(json['nombre']),
      fechaInicio: serializer.fromJson<String>(json['fechaInicio']),
      fechaFin: serializer.fromJson<String>(json['fechaFin']),
      denominacion: serializer.fromJson<String>(json['denominacion']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      organigramaId: serializer.fromJson<int>(json['organigramaId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      toogle: serializer.fromJson<bool>(json['toogle']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'nombre': serializer.toJson<String>(nombre),
      'fechaInicio': serializer.toJson<String>(fechaInicio),
      'fechaFin': serializer.toJson<String>(fechaFin),
      'denominacion': serializer.toJson<String>(denominacion),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'organigramaId': serializer.toJson<int>(organigramaId),
      'estadoId': serializer.toJson<int>(estadoId),
      'tipoId': serializer.toJson<int>(tipoId),
      'toogle': serializer.toJson<bool>(toogle),
    };
  }

  AnioAcademicoData copyWith(
          {int idAnioAcademico,
          String nombre,
          String fechaInicio,
          String fechaFin,
          String denominacion,
          int georeferenciaId,
          int organigramaId,
          int estadoId,
          int tipoId,
          bool toogle}) =>
      AnioAcademicoData(
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        nombre: nombre ?? this.nombre,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        denominacion: denominacion ?? this.denominacion,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        organigramaId: organigramaId ?? this.organigramaId,
        estadoId: estadoId ?? this.estadoId,
        tipoId: tipoId ?? this.tipoId,
        toogle: toogle ?? this.toogle,
      );
  @override
  String toString() {
    return (StringBuffer('AnioAcademicoData(')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nombre: $nombre, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('denominacion: $denominacion, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('estadoId: $estadoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('toogle: $toogle')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idAnioAcademico.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              fechaInicio.hashCode,
              $mrjc(
                  fechaFin.hashCode,
                  $mrjc(
                      denominacion.hashCode,
                      $mrjc(
                          georeferenciaId.hashCode,
                          $mrjc(
                              organigramaId.hashCode,
                              $mrjc(
                                  estadoId.hashCode,
                                  $mrjc(tipoId.hashCode,
                                      toogle.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AnioAcademicoData &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.nombre == this.nombre &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.denominacion == this.denominacion &&
          other.georeferenciaId == this.georeferenciaId &&
          other.organigramaId == this.organigramaId &&
          other.estadoId == this.estadoId &&
          other.tipoId == this.tipoId &&
          other.toogle == this.toogle);
}

class AnioAcademicoCompanion extends UpdateCompanion<AnioAcademicoData> {
  final Value<int> idAnioAcademico;
  final Value<String> nombre;
  final Value<String> fechaInicio;
  final Value<String> fechaFin;
  final Value<String> denominacion;
  final Value<int> georeferenciaId;
  final Value<int> organigramaId;
  final Value<int> estadoId;
  final Value<int> tipoId;
  final Value<bool> toogle;
  const AnioAcademicoCompanion({
    this.idAnioAcademico = const Value.absent(),
    this.nombre = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.denominacion = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.toogle = const Value.absent(),
  });
  AnioAcademicoCompanion.insert({
    this.idAnioAcademico = const Value.absent(),
    this.nombre = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.denominacion = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.toogle = const Value.absent(),
  });
  static Insertable<AnioAcademicoData> custom({
    Expression<int> idAnioAcademico,
    Expression<String> nombre,
    Expression<String> fechaInicio,
    Expression<String> fechaFin,
    Expression<String> denominacion,
    Expression<int> georeferenciaId,
    Expression<int> organigramaId,
    Expression<int> estadoId,
    Expression<int> tipoId,
    Expression<bool> toogle,
  }) {
    return RawValuesInsertable({
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (nombre != null) 'nombre': nombre,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (denominacion != null) 'denominacion': denominacion,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (organigramaId != null) 'organigrama_id': organigramaId,
      if (estadoId != null) 'estado_id': estadoId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (toogle != null) 'toogle': toogle,
    });
  }

  AnioAcademicoCompanion copyWith(
      {Value<int> idAnioAcademico,
      Value<String> nombre,
      Value<String> fechaInicio,
      Value<String> fechaFin,
      Value<String> denominacion,
      Value<int> georeferenciaId,
      Value<int> organigramaId,
      Value<int> estadoId,
      Value<int> tipoId,
      Value<bool> toogle}) {
    return AnioAcademicoCompanion(
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      nombre: nombre ?? this.nombre,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      denominacion: denominacion ?? this.denominacion,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      organigramaId: organigramaId ?? this.organigramaId,
      estadoId: estadoId ?? this.estadoId,
      tipoId: tipoId ?? this.tipoId,
      toogle: toogle ?? this.toogle,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<String>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<String>(fechaFin.value);
    }
    if (denominacion.present) {
      map['denominacion'] = Variable<String>(denominacion.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (organigramaId.present) {
      map['organigrama_id'] = Variable<int>(organigramaId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (toogle.present) {
      map['toogle'] = Variable<bool>(toogle.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnioAcademicoCompanion(')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('nombre: $nombre, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('denominacion: $denominacion, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('estadoId: $estadoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('toogle: $toogle')
          ..write(')'))
        .toString();
  }
}

class $AnioAcademicoTable extends AnioAcademico
    with TableInfo<$AnioAcademicoTable, AnioAcademicoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AnioAcademicoTable(this._db, [this._alias]);
  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedTextColumn _fechaInicio;
  @override
  GeneratedTextColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedTextColumn _constructFechaInicio() {
    return GeneratedTextColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedTextColumn _fechaFin;
  @override
  GeneratedTextColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedTextColumn _constructFechaFin() {
    return GeneratedTextColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _denominacionMeta =
      const VerificationMeta('denominacion');
  GeneratedTextColumn _denominacion;
  @override
  GeneratedTextColumn get denominacion =>
      _denominacion ??= _constructDenominacion();
  GeneratedTextColumn _constructDenominacion() {
    return GeneratedTextColumn(
      'denominacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _organigramaIdMeta =
      const VerificationMeta('organigramaId');
  GeneratedIntColumn _organigramaId;
  @override
  GeneratedIntColumn get organigramaId =>
      _organigramaId ??= _constructOrganigramaId();
  GeneratedIntColumn _constructOrganigramaId() {
    return GeneratedIntColumn(
      'organigrama_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _toogleMeta = const VerificationMeta('toogle');
  GeneratedBoolColumn _toogle;
  @override
  GeneratedBoolColumn get toogle => _toogle ??= _constructToogle();
  GeneratedBoolColumn _constructToogle() {
    return GeneratedBoolColumn(
      'toogle',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idAnioAcademico,
        nombre,
        fechaInicio,
        fechaFin,
        denominacion,
        georeferenciaId,
        organigramaId,
        estadoId,
        tipoId,
        toogle
      ];
  @override
  $AnioAcademicoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'anio_academico';
  @override
  final String actualTableName = 'anio_academico';
  @override
  VerificationContext validateIntegrity(Insertable<AnioAcademicoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('denominacion')) {
      context.handle(
          _denominacionMeta,
          denominacion.isAcceptableOrUnknown(
              data['denominacion'], _denominacionMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('organigrama_id')) {
      context.handle(
          _organigramaIdMeta,
          organigramaId.isAcceptableOrUnknown(
              data['organigrama_id'], _organigramaIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('toogle')) {
      context.handle(_toogleMeta,
          toogle.isAcceptableOrUnknown(data['toogle'], _toogleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idAnioAcademico};
  @override
  AnioAcademicoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AnioAcademicoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AnioAcademicoTable createAlias(String alias) {
    return $AnioAcademicoTable(_db, alias);
  }
}

class ParametroConfiguracionData extends DataClass
    implements Insertable<ParametroConfiguracionData> {
  final int id;
  final String concepto;
  final String parametro;
  final int entidadId;
  final int orden;
  ParametroConfiguracionData(
      {@required this.id,
      this.concepto,
      this.parametro,
      this.entidadId,
      this.orden});
  factory ParametroConfiguracionData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ParametroConfiguracionData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      concepto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}concepto']),
      parametro: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}parametro']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      orden: intType.mapFromDatabaseResponse(data['${effectivePrefix}orden']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || concepto != null) {
      map['concepto'] = Variable<String>(concepto);
    }
    if (!nullToAbsent || parametro != null) {
      map['parametro'] = Variable<String>(parametro);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || orden != null) {
      map['orden'] = Variable<int>(orden);
    }
    return map;
  }

  ParametroConfiguracionCompanion toCompanion(bool nullToAbsent) {
    return ParametroConfiguracionCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      concepto: concepto == null && nullToAbsent
          ? const Value.absent()
          : Value(concepto),
      parametro: parametro == null && nullToAbsent
          ? const Value.absent()
          : Value(parametro),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      orden:
          orden == null && nullToAbsent ? const Value.absent() : Value(orden),
    );
  }

  factory ParametroConfiguracionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ParametroConfiguracionData(
      id: serializer.fromJson<int>(json['id']),
      concepto: serializer.fromJson<String>(json['concepto']),
      parametro: serializer.fromJson<String>(json['parametro']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      orden: serializer.fromJson<int>(json['orden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'concepto': serializer.toJson<String>(concepto),
      'parametro': serializer.toJson<String>(parametro),
      'entidadId': serializer.toJson<int>(entidadId),
      'orden': serializer.toJson<int>(orden),
    };
  }

  ParametroConfiguracionData copyWith(
          {int id,
          String concepto,
          String parametro,
          int entidadId,
          int orden}) =>
      ParametroConfiguracionData(
        id: id ?? this.id,
        concepto: concepto ?? this.concepto,
        parametro: parametro ?? this.parametro,
        entidadId: entidadId ?? this.entidadId,
        orden: orden ?? this.orden,
      );
  @override
  String toString() {
    return (StringBuffer('ParametroConfiguracionData(')
          ..write('id: $id, ')
          ..write('concepto: $concepto, ')
          ..write('parametro: $parametro, ')
          ..write('entidadId: $entidadId, ')
          ..write('orden: $orden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          concepto.hashCode,
          $mrjc(
              parametro.hashCode, $mrjc(entidadId.hashCode, orden.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ParametroConfiguracionData &&
          other.id == this.id &&
          other.concepto == this.concepto &&
          other.parametro == this.parametro &&
          other.entidadId == this.entidadId &&
          other.orden == this.orden);
}

class ParametroConfiguracionCompanion
    extends UpdateCompanion<ParametroConfiguracionData> {
  final Value<int> id;
  final Value<String> concepto;
  final Value<String> parametro;
  final Value<int> entidadId;
  final Value<int> orden;
  const ParametroConfiguracionCompanion({
    this.id = const Value.absent(),
    this.concepto = const Value.absent(),
    this.parametro = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.orden = const Value.absent(),
  });
  ParametroConfiguracionCompanion.insert({
    this.id = const Value.absent(),
    this.concepto = const Value.absent(),
    this.parametro = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.orden = const Value.absent(),
  });
  static Insertable<ParametroConfiguracionData> custom({
    Expression<int> id,
    Expression<String> concepto,
    Expression<String> parametro,
    Expression<int> entidadId,
    Expression<int> orden,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (concepto != null) 'concepto': concepto,
      if (parametro != null) 'parametro': parametro,
      if (entidadId != null) 'entidad_id': entidadId,
      if (orden != null) 'orden': orden,
    });
  }

  ParametroConfiguracionCompanion copyWith(
      {Value<int> id,
      Value<String> concepto,
      Value<String> parametro,
      Value<int> entidadId,
      Value<int> orden}) {
    return ParametroConfiguracionCompanion(
      id: id ?? this.id,
      concepto: concepto ?? this.concepto,
      parametro: parametro ?? this.parametro,
      entidadId: entidadId ?? this.entidadId,
      orden: orden ?? this.orden,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (concepto.present) {
      map['concepto'] = Variable<String>(concepto.value);
    }
    if (parametro.present) {
      map['parametro'] = Variable<String>(parametro.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (orden.present) {
      map['orden'] = Variable<int>(orden.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParametroConfiguracionCompanion(')
          ..write('id: $id, ')
          ..write('concepto: $concepto, ')
          ..write('parametro: $parametro, ')
          ..write('entidadId: $entidadId, ')
          ..write('orden: $orden')
          ..write(')'))
        .toString();
  }
}

class $ParametroConfiguracionTable extends ParametroConfiguracion
    with TableInfo<$ParametroConfiguracionTable, ParametroConfiguracionData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParametroConfiguracionTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _conceptoMeta = const VerificationMeta('concepto');
  GeneratedTextColumn _concepto;
  @override
  GeneratedTextColumn get concepto => _concepto ??= _constructConcepto();
  GeneratedTextColumn _constructConcepto() {
    return GeneratedTextColumn(
      'concepto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parametroMeta = const VerificationMeta('parametro');
  GeneratedTextColumn _parametro;
  @override
  GeneratedTextColumn get parametro => _parametro ??= _constructParametro();
  GeneratedTextColumn _constructParametro() {
    return GeneratedTextColumn(
      'parametro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ordenMeta = const VerificationMeta('orden');
  GeneratedIntColumn _orden;
  @override
  GeneratedIntColumn get orden => _orden ??= _constructOrden();
  GeneratedIntColumn _constructOrden() {
    return GeneratedIntColumn(
      'orden',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, concepto, parametro, entidadId, orden];
  @override
  $ParametroConfiguracionTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'parametro_configuracion';
  @override
  final String actualTableName = 'parametro_configuracion';
  @override
  VerificationContext validateIntegrity(
      Insertable<ParametroConfiguracionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('concepto')) {
      context.handle(_conceptoMeta,
          concepto.isAcceptableOrUnknown(data['concepto'], _conceptoMeta));
    }
    if (data.containsKey('parametro')) {
      context.handle(_parametroMeta,
          parametro.isAcceptableOrUnknown(data['parametro'], _parametroMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('orden')) {
      context.handle(
          _ordenMeta, orden.isAcceptableOrUnknown(data['orden'], _ordenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ParametroConfiguracionData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ParametroConfiguracionData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $ParametroConfiguracionTable createAlias(String alias) {
    return $ParametroConfiguracionTable(_db, alias);
  }
}

class AulaData extends DataClass implements Insertable<AulaData> {
  final int aulaId;
  final String descripcion;
  final String numero;
  final int capacidad;
  final int estado;
  AulaData(
      {@required this.aulaId,
      this.descripcion,
      this.numero,
      this.capacidad,
      this.estado});
  factory AulaData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AulaData(
      aulaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}aula_id']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      numero:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}numero']),
      capacidad:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}capacidad']),
      estado: intType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || aulaId != null) {
      map['aula_id'] = Variable<int>(aulaId);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || numero != null) {
      map['numero'] = Variable<String>(numero);
    }
    if (!nullToAbsent || capacidad != null) {
      map['capacidad'] = Variable<int>(capacidad);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<int>(estado);
    }
    return map;
  }

  AulaCompanion toCompanion(bool nullToAbsent) {
    return AulaCompanion(
      aulaId:
          aulaId == null && nullToAbsent ? const Value.absent() : Value(aulaId),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      numero:
          numero == null && nullToAbsent ? const Value.absent() : Value(numero),
      capacidad: capacidad == null && nullToAbsent
          ? const Value.absent()
          : Value(capacidad),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
    );
  }

  factory AulaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AulaData(
      aulaId: serializer.fromJson<int>(json['aulaId']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      numero: serializer.fromJson<String>(json['numero']),
      capacidad: serializer.fromJson<int>(json['capacidad']),
      estado: serializer.fromJson<int>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'aulaId': serializer.toJson<int>(aulaId),
      'descripcion': serializer.toJson<String>(descripcion),
      'numero': serializer.toJson<String>(numero),
      'capacidad': serializer.toJson<int>(capacidad),
      'estado': serializer.toJson<int>(estado),
    };
  }

  AulaData copyWith(
          {int aulaId,
          String descripcion,
          String numero,
          int capacidad,
          int estado}) =>
      AulaData(
        aulaId: aulaId ?? this.aulaId,
        descripcion: descripcion ?? this.descripcion,
        numero: numero ?? this.numero,
        capacidad: capacidad ?? this.capacidad,
        estado: estado ?? this.estado,
      );
  @override
  String toString() {
    return (StringBuffer('AulaData(')
          ..write('aulaId: $aulaId, ')
          ..write('descripcion: $descripcion, ')
          ..write('numero: $numero, ')
          ..write('capacidad: $capacidad, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      aulaId.hashCode,
      $mrjc(descripcion.hashCode,
          $mrjc(numero.hashCode, $mrjc(capacidad.hashCode, estado.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AulaData &&
          other.aulaId == this.aulaId &&
          other.descripcion == this.descripcion &&
          other.numero == this.numero &&
          other.capacidad == this.capacidad &&
          other.estado == this.estado);
}

class AulaCompanion extends UpdateCompanion<AulaData> {
  final Value<int> aulaId;
  final Value<String> descripcion;
  final Value<String> numero;
  final Value<int> capacidad;
  final Value<int> estado;
  const AulaCompanion({
    this.aulaId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.numero = const Value.absent(),
    this.capacidad = const Value.absent(),
    this.estado = const Value.absent(),
  });
  AulaCompanion.insert({
    this.aulaId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.numero = const Value.absent(),
    this.capacidad = const Value.absent(),
    this.estado = const Value.absent(),
  });
  static Insertable<AulaData> custom({
    Expression<int> aulaId,
    Expression<String> descripcion,
    Expression<String> numero,
    Expression<int> capacidad,
    Expression<int> estado,
  }) {
    return RawValuesInsertable({
      if (aulaId != null) 'aula_id': aulaId,
      if (descripcion != null) 'descripcion': descripcion,
      if (numero != null) 'numero': numero,
      if (capacidad != null) 'capacidad': capacidad,
      if (estado != null) 'estado': estado,
    });
  }

  AulaCompanion copyWith(
      {Value<int> aulaId,
      Value<String> descripcion,
      Value<String> numero,
      Value<int> capacidad,
      Value<int> estado}) {
    return AulaCompanion(
      aulaId: aulaId ?? this.aulaId,
      descripcion: descripcion ?? this.descripcion,
      numero: numero ?? this.numero,
      capacidad: capacidad ?? this.capacidad,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (aulaId.present) {
      map['aula_id'] = Variable<int>(aulaId.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (numero.present) {
      map['numero'] = Variable<String>(numero.value);
    }
    if (capacidad.present) {
      map['capacidad'] = Variable<int>(capacidad.value);
    }
    if (estado.present) {
      map['estado'] = Variable<int>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AulaCompanion(')
          ..write('aulaId: $aulaId, ')
          ..write('descripcion: $descripcion, ')
          ..write('numero: $numero, ')
          ..write('capacidad: $capacidad, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $AulaTable extends Aula with TableInfo<$AulaTable, AulaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AulaTable(this._db, [this._alias]);
  final VerificationMeta _aulaIdMeta = const VerificationMeta('aulaId');
  GeneratedIntColumn _aulaId;
  @override
  GeneratedIntColumn get aulaId => _aulaId ??= _constructAulaId();
  GeneratedIntColumn _constructAulaId() {
    return GeneratedIntColumn(
      'aula_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _numeroMeta = const VerificationMeta('numero');
  GeneratedTextColumn _numero;
  @override
  GeneratedTextColumn get numero => _numero ??= _constructNumero();
  GeneratedTextColumn _constructNumero() {
    return GeneratedTextColumn(
      'numero',
      $tableName,
      true,
    );
  }

  final VerificationMeta _capacidadMeta = const VerificationMeta('capacidad');
  GeneratedIntColumn _capacidad;
  @override
  GeneratedIntColumn get capacidad => _capacidad ??= _constructCapacidad();
  GeneratedIntColumn _constructCapacidad() {
    return GeneratedIntColumn(
      'capacidad',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedIntColumn _estado;
  @override
  GeneratedIntColumn get estado => _estado ??= _constructEstado();
  GeneratedIntColumn _constructEstado() {
    return GeneratedIntColumn(
      'estado',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [aulaId, descripcion, numero, capacidad, estado];
  @override
  $AulaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'aula';
  @override
  final String actualTableName = 'aula';
  @override
  VerificationContext validateIntegrity(Insertable<AulaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('aula_id')) {
      context.handle(_aulaIdMeta,
          aulaId.isAcceptableOrUnknown(data['aula_id'], _aulaIdMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('numero')) {
      context.handle(_numeroMeta,
          numero.isAcceptableOrUnknown(data['numero'], _numeroMeta));
    }
    if (data.containsKey('capacidad')) {
      context.handle(_capacidadMeta,
          capacidad.isAcceptableOrUnknown(data['capacidad'], _capacidadMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {aulaId};
  @override
  AulaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AulaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AulaTable createAlias(String alias) {
    return $AulaTable(_db, alias);
  }
}

class CargaAcademicaData extends DataClass
    implements Insertable<CargaAcademicaData> {
  final int cargaAcademicaId;
  final int seccionId;
  final int periodoId;
  final int aulaId;
  final int idPlanEstudio;
  final int idPlanEstudioVersion;
  final int idAnioAcademico;
  final int idEmpleadoTutor;
  final int estadoId;
  final int idPeriodoAcad;
  final int idGrupo;
  final int capacidadVacante;
  final int capacidadVacanteD;
  CargaAcademicaData(
      {@required this.cargaAcademicaId,
      this.seccionId,
      this.periodoId,
      this.aulaId,
      this.idPlanEstudio,
      this.idPlanEstudioVersion,
      this.idAnioAcademico,
      this.idEmpleadoTutor,
      this.estadoId,
      this.idPeriodoAcad,
      this.idGrupo,
      this.capacidadVacante,
      this.capacidadVacanteD});
  factory CargaAcademicaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CargaAcademicaData(
      cargaAcademicaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_academica_id']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      aulaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}aula_id']),
      idPlanEstudio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_plan_estudio']),
      idPlanEstudioVersion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_plan_estudio_version']),
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      idEmpleadoTutor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_empleado_tutor']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      idPeriodoAcad: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_periodo_acad']),
      idGrupo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_grupo']),
      capacidadVacante: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}capacidad_vacante']),
      capacidadVacanteD: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}capacidad_vacante_d']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaAcademicaId != null) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || aulaId != null) {
      map['aula_id'] = Variable<int>(aulaId);
    }
    if (!nullToAbsent || idPlanEstudio != null) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio);
    }
    if (!nullToAbsent || idPlanEstudioVersion != null) {
      map['id_plan_estudio_version'] = Variable<int>(idPlanEstudioVersion);
    }
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || idEmpleadoTutor != null) {
      map['id_empleado_tutor'] = Variable<int>(idEmpleadoTutor);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || idPeriodoAcad != null) {
      map['id_periodo_acad'] = Variable<int>(idPeriodoAcad);
    }
    if (!nullToAbsent || idGrupo != null) {
      map['id_grupo'] = Variable<int>(idGrupo);
    }
    if (!nullToAbsent || capacidadVacante != null) {
      map['capacidad_vacante'] = Variable<int>(capacidadVacante);
    }
    if (!nullToAbsent || capacidadVacanteD != null) {
      map['capacidad_vacante_d'] = Variable<int>(capacidadVacanteD);
    }
    return map;
  }

  CargaAcademicaCompanion toCompanion(bool nullToAbsent) {
    return CargaAcademicaCompanion(
      cargaAcademicaId: cargaAcademicaId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaId),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      aulaId:
          aulaId == null && nullToAbsent ? const Value.absent() : Value(aulaId),
      idPlanEstudio: idPlanEstudio == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudio),
      idPlanEstudioVersion: idPlanEstudioVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudioVersion),
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      idEmpleadoTutor: idEmpleadoTutor == null && nullToAbsent
          ? const Value.absent()
          : Value(idEmpleadoTutor),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      idPeriodoAcad: idPeriodoAcad == null && nullToAbsent
          ? const Value.absent()
          : Value(idPeriodoAcad),
      idGrupo: idGrupo == null && nullToAbsent
          ? const Value.absent()
          : Value(idGrupo),
      capacidadVacante: capacidadVacante == null && nullToAbsent
          ? const Value.absent()
          : Value(capacidadVacante),
      capacidadVacanteD: capacidadVacanteD == null && nullToAbsent
          ? const Value.absent()
          : Value(capacidadVacanteD),
    );
  }

  factory CargaAcademicaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaAcademicaData(
      cargaAcademicaId: serializer.fromJson<int>(json['cargaAcademicaId']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      periodoId: serializer.fromJson<int>(json['periodoId']),
      aulaId: serializer.fromJson<int>(json['aulaId']),
      idPlanEstudio: serializer.fromJson<int>(json['idPlanEstudio']),
      idPlanEstudioVersion:
          serializer.fromJson<int>(json['idPlanEstudioVersion']),
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      idEmpleadoTutor: serializer.fromJson<int>(json['idEmpleadoTutor']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      idPeriodoAcad: serializer.fromJson<int>(json['idPeriodoAcad']),
      idGrupo: serializer.fromJson<int>(json['idGrupo']),
      capacidadVacante: serializer.fromJson<int>(json['capacidadVacante']),
      capacidadVacanteD: serializer.fromJson<int>(json['capacidadVacanteD']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaAcademicaId': serializer.toJson<int>(cargaAcademicaId),
      'seccionId': serializer.toJson<int>(seccionId),
      'periodoId': serializer.toJson<int>(periodoId),
      'aulaId': serializer.toJson<int>(aulaId),
      'idPlanEstudio': serializer.toJson<int>(idPlanEstudio),
      'idPlanEstudioVersion': serializer.toJson<int>(idPlanEstudioVersion),
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'idEmpleadoTutor': serializer.toJson<int>(idEmpleadoTutor),
      'estadoId': serializer.toJson<int>(estadoId),
      'idPeriodoAcad': serializer.toJson<int>(idPeriodoAcad),
      'idGrupo': serializer.toJson<int>(idGrupo),
      'capacidadVacante': serializer.toJson<int>(capacidadVacante),
      'capacidadVacanteD': serializer.toJson<int>(capacidadVacanteD),
    };
  }

  CargaAcademicaData copyWith(
          {int cargaAcademicaId,
          int seccionId,
          int periodoId,
          int aulaId,
          int idPlanEstudio,
          int idPlanEstudioVersion,
          int idAnioAcademico,
          int idEmpleadoTutor,
          int estadoId,
          int idPeriodoAcad,
          int idGrupo,
          int capacidadVacante,
          int capacidadVacanteD}) =>
      CargaAcademicaData(
        cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
        seccionId: seccionId ?? this.seccionId,
        periodoId: periodoId ?? this.periodoId,
        aulaId: aulaId ?? this.aulaId,
        idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
        idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        idEmpleadoTutor: idEmpleadoTutor ?? this.idEmpleadoTutor,
        estadoId: estadoId ?? this.estadoId,
        idPeriodoAcad: idPeriodoAcad ?? this.idPeriodoAcad,
        idGrupo: idGrupo ?? this.idGrupo,
        capacidadVacante: capacidadVacante ?? this.capacidadVacante,
        capacidadVacanteD: capacidadVacanteD ?? this.capacidadVacanteD,
      );
  @override
  String toString() {
    return (StringBuffer('CargaAcademicaData(')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('seccionId: $seccionId, ')
          ..write('periodoId: $periodoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('idEmpleadoTutor: $idEmpleadoTutor, ')
          ..write('estadoId: $estadoId, ')
          ..write('idPeriodoAcad: $idPeriodoAcad, ')
          ..write('idGrupo: $idGrupo, ')
          ..write('capacidadVacante: $capacidadVacante, ')
          ..write('capacidadVacanteD: $capacidadVacanteD')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cargaAcademicaId.hashCode,
      $mrjc(
          seccionId.hashCode,
          $mrjc(
              periodoId.hashCode,
              $mrjc(
                  aulaId.hashCode,
                  $mrjc(
                      idPlanEstudio.hashCode,
                      $mrjc(
                          idPlanEstudioVersion.hashCode,
                          $mrjc(
                              idAnioAcademico.hashCode,
                              $mrjc(
                                  idEmpleadoTutor.hashCode,
                                  $mrjc(
                                      estadoId.hashCode,
                                      $mrjc(
                                          idPeriodoAcad.hashCode,
                                          $mrjc(
                                              idGrupo.hashCode,
                                              $mrjc(
                                                  capacidadVacante.hashCode,
                                                  capacidadVacanteD
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaAcademicaData &&
          other.cargaAcademicaId == this.cargaAcademicaId &&
          other.seccionId == this.seccionId &&
          other.periodoId == this.periodoId &&
          other.aulaId == this.aulaId &&
          other.idPlanEstudio == this.idPlanEstudio &&
          other.idPlanEstudioVersion == this.idPlanEstudioVersion &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.idEmpleadoTutor == this.idEmpleadoTutor &&
          other.estadoId == this.estadoId &&
          other.idPeriodoAcad == this.idPeriodoAcad &&
          other.idGrupo == this.idGrupo &&
          other.capacidadVacante == this.capacidadVacante &&
          other.capacidadVacanteD == this.capacidadVacanteD);
}

class CargaAcademicaCompanion extends UpdateCompanion<CargaAcademicaData> {
  final Value<int> cargaAcademicaId;
  final Value<int> seccionId;
  final Value<int> periodoId;
  final Value<int> aulaId;
  final Value<int> idPlanEstudio;
  final Value<int> idPlanEstudioVersion;
  final Value<int> idAnioAcademico;
  final Value<int> idEmpleadoTutor;
  final Value<int> estadoId;
  final Value<int> idPeriodoAcad;
  final Value<int> idGrupo;
  final Value<int> capacidadVacante;
  final Value<int> capacidadVacanteD;
  const CargaAcademicaCompanion({
    this.cargaAcademicaId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.idEmpleadoTutor = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.idPeriodoAcad = const Value.absent(),
    this.idGrupo = const Value.absent(),
    this.capacidadVacante = const Value.absent(),
    this.capacidadVacanteD = const Value.absent(),
  });
  CargaAcademicaCompanion.insert({
    @required int cargaAcademicaId,
    this.seccionId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.idEmpleadoTutor = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.idPeriodoAcad = const Value.absent(),
    this.idGrupo = const Value.absent(),
    this.capacidadVacante = const Value.absent(),
    this.capacidadVacanteD = const Value.absent(),
  }) : cargaAcademicaId = Value(cargaAcademicaId);
  static Insertable<CargaAcademicaData> custom({
    Expression<int> cargaAcademicaId,
    Expression<int> seccionId,
    Expression<int> periodoId,
    Expression<int> aulaId,
    Expression<int> idPlanEstudio,
    Expression<int> idPlanEstudioVersion,
    Expression<int> idAnioAcademico,
    Expression<int> idEmpleadoTutor,
    Expression<int> estadoId,
    Expression<int> idPeriodoAcad,
    Expression<int> idGrupo,
    Expression<int> capacidadVacante,
    Expression<int> capacidadVacanteD,
  }) {
    return RawValuesInsertable({
      if (cargaAcademicaId != null) 'carga_academica_id': cargaAcademicaId,
      if (seccionId != null) 'seccion_id': seccionId,
      if (periodoId != null) 'periodo_id': periodoId,
      if (aulaId != null) 'aula_id': aulaId,
      if (idPlanEstudio != null) 'id_plan_estudio': idPlanEstudio,
      if (idPlanEstudioVersion != null)
        'id_plan_estudio_version': idPlanEstudioVersion,
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (idEmpleadoTutor != null) 'id_empleado_tutor': idEmpleadoTutor,
      if (estadoId != null) 'estado_id': estadoId,
      if (idPeriodoAcad != null) 'id_periodo_acad': idPeriodoAcad,
      if (idGrupo != null) 'id_grupo': idGrupo,
      if (capacidadVacante != null) 'capacidad_vacante': capacidadVacante,
      if (capacidadVacanteD != null) 'capacidad_vacante_d': capacidadVacanteD,
    });
  }

  CargaAcademicaCompanion copyWith(
      {Value<int> cargaAcademicaId,
      Value<int> seccionId,
      Value<int> periodoId,
      Value<int> aulaId,
      Value<int> idPlanEstudio,
      Value<int> idPlanEstudioVersion,
      Value<int> idAnioAcademico,
      Value<int> idEmpleadoTutor,
      Value<int> estadoId,
      Value<int> idPeriodoAcad,
      Value<int> idGrupo,
      Value<int> capacidadVacante,
      Value<int> capacidadVacanteD}) {
    return CargaAcademicaCompanion(
      cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
      seccionId: seccionId ?? this.seccionId,
      periodoId: periodoId ?? this.periodoId,
      aulaId: aulaId ?? this.aulaId,
      idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
      idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      idEmpleadoTutor: idEmpleadoTutor ?? this.idEmpleadoTutor,
      estadoId: estadoId ?? this.estadoId,
      idPeriodoAcad: idPeriodoAcad ?? this.idPeriodoAcad,
      idGrupo: idGrupo ?? this.idGrupo,
      capacidadVacante: capacidadVacante ?? this.capacidadVacante,
      capacidadVacanteD: capacidadVacanteD ?? this.capacidadVacanteD,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaAcademicaId.present) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (aulaId.present) {
      map['aula_id'] = Variable<int>(aulaId.value);
    }
    if (idPlanEstudio.present) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio.value);
    }
    if (idPlanEstudioVersion.present) {
      map['id_plan_estudio_version'] =
          Variable<int>(idPlanEstudioVersion.value);
    }
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (idEmpleadoTutor.present) {
      map['id_empleado_tutor'] = Variable<int>(idEmpleadoTutor.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (idPeriodoAcad.present) {
      map['id_periodo_acad'] = Variable<int>(idPeriodoAcad.value);
    }
    if (idGrupo.present) {
      map['id_grupo'] = Variable<int>(idGrupo.value);
    }
    if (capacidadVacante.present) {
      map['capacidad_vacante'] = Variable<int>(capacidadVacante.value);
    }
    if (capacidadVacanteD.present) {
      map['capacidad_vacante_d'] = Variable<int>(capacidadVacanteD.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaAcademicaCompanion(')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('seccionId: $seccionId, ')
          ..write('periodoId: $periodoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('idEmpleadoTutor: $idEmpleadoTutor, ')
          ..write('estadoId: $estadoId, ')
          ..write('idPeriodoAcad: $idPeriodoAcad, ')
          ..write('idGrupo: $idGrupo, ')
          ..write('capacidadVacante: $capacidadVacante, ')
          ..write('capacidadVacanteD: $capacidadVacanteD')
          ..write(')'))
        .toString();
  }
}

class $CargaAcademicaTable extends CargaAcademica
    with TableInfo<$CargaAcademicaTable, CargaAcademicaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaAcademicaTable(this._db, [this._alias]);
  final VerificationMeta _cargaAcademicaIdMeta =
      const VerificationMeta('cargaAcademicaId');
  GeneratedIntColumn _cargaAcademicaId;
  @override
  GeneratedIntColumn get cargaAcademicaId =>
      _cargaAcademicaId ??= _constructCargaAcademicaId();
  GeneratedIntColumn _constructCargaAcademicaId() {
    return GeneratedIntColumn(
      'carga_academica_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aulaIdMeta = const VerificationMeta('aulaId');
  GeneratedIntColumn _aulaId;
  @override
  GeneratedIntColumn get aulaId => _aulaId ??= _constructAulaId();
  GeneratedIntColumn _constructAulaId() {
    return GeneratedIntColumn(
      'aula_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioMeta =
      const VerificationMeta('idPlanEstudio');
  GeneratedIntColumn _idPlanEstudio;
  @override
  GeneratedIntColumn get idPlanEstudio =>
      _idPlanEstudio ??= _constructIdPlanEstudio();
  GeneratedIntColumn _constructIdPlanEstudio() {
    return GeneratedIntColumn(
      'id_plan_estudio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioVersionMeta =
      const VerificationMeta('idPlanEstudioVersion');
  GeneratedIntColumn _idPlanEstudioVersion;
  @override
  GeneratedIntColumn get idPlanEstudioVersion =>
      _idPlanEstudioVersion ??= _constructIdPlanEstudioVersion();
  GeneratedIntColumn _constructIdPlanEstudioVersion() {
    return GeneratedIntColumn(
      'id_plan_estudio_version',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idEmpleadoTutorMeta =
      const VerificationMeta('idEmpleadoTutor');
  GeneratedIntColumn _idEmpleadoTutor;
  @override
  GeneratedIntColumn get idEmpleadoTutor =>
      _idEmpleadoTutor ??= _constructIdEmpleadoTutor();
  GeneratedIntColumn _constructIdEmpleadoTutor() {
    return GeneratedIntColumn(
      'id_empleado_tutor',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPeriodoAcadMeta =
      const VerificationMeta('idPeriodoAcad');
  GeneratedIntColumn _idPeriodoAcad;
  @override
  GeneratedIntColumn get idPeriodoAcad =>
      _idPeriodoAcad ??= _constructIdPeriodoAcad();
  GeneratedIntColumn _constructIdPeriodoAcad() {
    return GeneratedIntColumn(
      'id_periodo_acad',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idGrupoMeta = const VerificationMeta('idGrupo');
  GeneratedIntColumn _idGrupo;
  @override
  GeneratedIntColumn get idGrupo => _idGrupo ??= _constructIdGrupo();
  GeneratedIntColumn _constructIdGrupo() {
    return GeneratedIntColumn(
      'id_grupo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _capacidadVacanteMeta =
      const VerificationMeta('capacidadVacante');
  GeneratedIntColumn _capacidadVacante;
  @override
  GeneratedIntColumn get capacidadVacante =>
      _capacidadVacante ??= _constructCapacidadVacante();
  GeneratedIntColumn _constructCapacidadVacante() {
    return GeneratedIntColumn(
      'capacidad_vacante',
      $tableName,
      true,
    );
  }

  final VerificationMeta _capacidadVacanteDMeta =
      const VerificationMeta('capacidadVacanteD');
  GeneratedIntColumn _capacidadVacanteD;
  @override
  GeneratedIntColumn get capacidadVacanteD =>
      _capacidadVacanteD ??= _constructCapacidadVacanteD();
  GeneratedIntColumn _constructCapacidadVacanteD() {
    return GeneratedIntColumn(
      'capacidad_vacante_d',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        cargaAcademicaId,
        seccionId,
        periodoId,
        aulaId,
        idPlanEstudio,
        idPlanEstudioVersion,
        idAnioAcademico,
        idEmpleadoTutor,
        estadoId,
        idPeriodoAcad,
        idGrupo,
        capacidadVacante,
        capacidadVacanteD
      ];
  @override
  $CargaAcademicaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_academica';
  @override
  final String actualTableName = 'carga_academica';
  @override
  VerificationContext validateIntegrity(Insertable<CargaAcademicaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_academica_id')) {
      context.handle(
          _cargaAcademicaIdMeta,
          cargaAcademicaId.isAcceptableOrUnknown(
              data['carga_academica_id'], _cargaAcademicaIdMeta));
    } else if (isInserting) {
      context.missing(_cargaAcademicaIdMeta);
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('aula_id')) {
      context.handle(_aulaIdMeta,
          aulaId.isAcceptableOrUnknown(data['aula_id'], _aulaIdMeta));
    }
    if (data.containsKey('id_plan_estudio')) {
      context.handle(
          _idPlanEstudioMeta,
          idPlanEstudio.isAcceptableOrUnknown(
              data['id_plan_estudio'], _idPlanEstudioMeta));
    }
    if (data.containsKey('id_plan_estudio_version')) {
      context.handle(
          _idPlanEstudioVersionMeta,
          idPlanEstudioVersion.isAcceptableOrUnknown(
              data['id_plan_estudio_version'], _idPlanEstudioVersionMeta));
    }
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('id_empleado_tutor')) {
      context.handle(
          _idEmpleadoTutorMeta,
          idEmpleadoTutor.isAcceptableOrUnknown(
              data['id_empleado_tutor'], _idEmpleadoTutorMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('id_periodo_acad')) {
      context.handle(
          _idPeriodoAcadMeta,
          idPeriodoAcad.isAcceptableOrUnknown(
              data['id_periodo_acad'], _idPeriodoAcadMeta));
    }
    if (data.containsKey('id_grupo')) {
      context.handle(_idGrupoMeta,
          idGrupo.isAcceptableOrUnknown(data['id_grupo'], _idGrupoMeta));
    }
    if (data.containsKey('capacidad_vacante')) {
      context.handle(
          _capacidadVacanteMeta,
          capacidadVacante.isAcceptableOrUnknown(
              data['capacidad_vacante'], _capacidadVacanteMeta));
    }
    if (data.containsKey('capacidad_vacante_d')) {
      context.handle(
          _capacidadVacanteDMeta,
          capacidadVacanteD.isAcceptableOrUnknown(
              data['capacidad_vacante_d'], _capacidadVacanteDMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CargaAcademicaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaAcademicaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CargaAcademicaTable createAlias(String alias) {
    return $CargaAcademicaTable(_db, alias);
  }
}

class CargaCursoDocenteData extends DataClass
    implements Insertable<CargaCursoDocenteData> {
  final int cargaCursoDocenteId;
  final int cargaCursoId;
  final int docenteId;
  final bool responsable;
  CargaCursoDocenteData(
      {@required this.cargaCursoDocenteId,
      this.cargaCursoId,
      this.docenteId,
      this.responsable});
  factory CargaCursoDocenteData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return CargaCursoDocenteData(
      cargaCursoDocenteId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_curso_docente_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      docenteId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}docente_id']),
      responsable: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}responsable']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaCursoDocenteId != null) {
      map['carga_curso_docente_id'] = Variable<int>(cargaCursoDocenteId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || docenteId != null) {
      map['docente_id'] = Variable<int>(docenteId);
    }
    if (!nullToAbsent || responsable != null) {
      map['responsable'] = Variable<bool>(responsable);
    }
    return map;
  }

  CargaCursoDocenteCompanion toCompanion(bool nullToAbsent) {
    return CargaCursoDocenteCompanion(
      cargaCursoDocenteId: cargaCursoDocenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoDocenteId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      docenteId: docenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteId),
      responsable: responsable == null && nullToAbsent
          ? const Value.absent()
          : Value(responsable),
    );
  }

  factory CargaCursoDocenteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaCursoDocenteData(
      cargaCursoDocenteId:
          serializer.fromJson<int>(json['cargaCursoDocenteId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      docenteId: serializer.fromJson<int>(json['docenteId']),
      responsable: serializer.fromJson<bool>(json['responsable']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaCursoDocenteId': serializer.toJson<int>(cargaCursoDocenteId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'docenteId': serializer.toJson<int>(docenteId),
      'responsable': serializer.toJson<bool>(responsable),
    };
  }

  CargaCursoDocenteData copyWith(
          {int cargaCursoDocenteId,
          int cargaCursoId,
          int docenteId,
          bool responsable}) =>
      CargaCursoDocenteData(
        cargaCursoDocenteId: cargaCursoDocenteId ?? this.cargaCursoDocenteId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        docenteId: docenteId ?? this.docenteId,
        responsable: responsable ?? this.responsable,
      );
  @override
  String toString() {
    return (StringBuffer('CargaCursoDocenteData(')
          ..write('cargaCursoDocenteId: $cargaCursoDocenteId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('docenteId: $docenteId, ')
          ..write('responsable: $responsable')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cargaCursoDocenteId.hashCode,
      $mrjc(cargaCursoId.hashCode,
          $mrjc(docenteId.hashCode, responsable.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaCursoDocenteData &&
          other.cargaCursoDocenteId == this.cargaCursoDocenteId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.docenteId == this.docenteId &&
          other.responsable == this.responsable);
}

class CargaCursoDocenteCompanion
    extends UpdateCompanion<CargaCursoDocenteData> {
  final Value<int> cargaCursoDocenteId;
  final Value<int> cargaCursoId;
  final Value<int> docenteId;
  final Value<bool> responsable;
  const CargaCursoDocenteCompanion({
    this.cargaCursoDocenteId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.responsable = const Value.absent(),
  });
  CargaCursoDocenteCompanion.insert({
    this.cargaCursoDocenteId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.responsable = const Value.absent(),
  });
  static Insertable<CargaCursoDocenteData> custom({
    Expression<int> cargaCursoDocenteId,
    Expression<int> cargaCursoId,
    Expression<int> docenteId,
    Expression<bool> responsable,
  }) {
    return RawValuesInsertable({
      if (cargaCursoDocenteId != null)
        'carga_curso_docente_id': cargaCursoDocenteId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (docenteId != null) 'docente_id': docenteId,
      if (responsable != null) 'responsable': responsable,
    });
  }

  CargaCursoDocenteCompanion copyWith(
      {Value<int> cargaCursoDocenteId,
      Value<int> cargaCursoId,
      Value<int> docenteId,
      Value<bool> responsable}) {
    return CargaCursoDocenteCompanion(
      cargaCursoDocenteId: cargaCursoDocenteId ?? this.cargaCursoDocenteId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      docenteId: docenteId ?? this.docenteId,
      responsable: responsable ?? this.responsable,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaCursoDocenteId.present) {
      map['carga_curso_docente_id'] = Variable<int>(cargaCursoDocenteId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (docenteId.present) {
      map['docente_id'] = Variable<int>(docenteId.value);
    }
    if (responsable.present) {
      map['responsable'] = Variable<bool>(responsable.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaCursoDocenteCompanion(')
          ..write('cargaCursoDocenteId: $cargaCursoDocenteId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('docenteId: $docenteId, ')
          ..write('responsable: $responsable')
          ..write(')'))
        .toString();
  }
}

class $CargaCursoDocenteTable extends CargaCursoDocente
    with TableInfo<$CargaCursoDocenteTable, CargaCursoDocenteData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaCursoDocenteTable(this._db, [this._alias]);
  final VerificationMeta _cargaCursoDocenteIdMeta =
      const VerificationMeta('cargaCursoDocenteId');
  GeneratedIntColumn _cargaCursoDocenteId;
  @override
  GeneratedIntColumn get cargaCursoDocenteId =>
      _cargaCursoDocenteId ??= _constructCargaCursoDocenteId();
  GeneratedIntColumn _constructCargaCursoDocenteId() {
    return GeneratedIntColumn(
      'carga_curso_docente_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteIdMeta = const VerificationMeta('docenteId');
  GeneratedIntColumn _docenteId;
  @override
  GeneratedIntColumn get docenteId => _docenteId ??= _constructDocenteId();
  GeneratedIntColumn _constructDocenteId() {
    return GeneratedIntColumn(
      'docente_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _responsableMeta =
      const VerificationMeta('responsable');
  GeneratedBoolColumn _responsable;
  @override
  GeneratedBoolColumn get responsable =>
      _responsable ??= _constructResponsable();
  GeneratedBoolColumn _constructResponsable() {
    return GeneratedBoolColumn(
      'responsable',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [cargaCursoDocenteId, cargaCursoId, docenteId, responsable];
  @override
  $CargaCursoDocenteTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_curso_docente';
  @override
  final String actualTableName = 'carga_curso_docente';
  @override
  VerificationContext validateIntegrity(
      Insertable<CargaCursoDocenteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_curso_docente_id')) {
      context.handle(
          _cargaCursoDocenteIdMeta,
          cargaCursoDocenteId.isAcceptableOrUnknown(
              data['carga_curso_docente_id'], _cargaCursoDocenteIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('docente_id')) {
      context.handle(_docenteIdMeta,
          docenteId.isAcceptableOrUnknown(data['docente_id'], _docenteIdMeta));
    }
    if (data.containsKey('responsable')) {
      context.handle(
          _responsableMeta,
          responsable.isAcceptableOrUnknown(
              data['responsable'], _responsableMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cargaCursoDocenteId};
  @override
  CargaCursoDocenteData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaCursoDocenteData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CargaCursoDocenteTable createAlias(String alias) {
    return $CargaCursoDocenteTable(_db, alias);
  }
}

class CargaCursoDocenteDetData extends DataClass
    implements Insertable<CargaCursoDocenteDetData> {
  final int cargaCursoDocenteId;
  final int alumnoId;
  CargaCursoDocenteDetData({this.cargaCursoDocenteId, this.alumnoId});
  factory CargaCursoDocenteDetData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CargaCursoDocenteDetData(
      cargaCursoDocenteId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_curso_docente_id']),
      alumnoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}alumno_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaCursoDocenteId != null) {
      map['carga_curso_docente_id'] = Variable<int>(cargaCursoDocenteId);
    }
    if (!nullToAbsent || alumnoId != null) {
      map['alumno_id'] = Variable<int>(alumnoId);
    }
    return map;
  }

  CargaCursoDocenteDetCompanion toCompanion(bool nullToAbsent) {
    return CargaCursoDocenteDetCompanion(
      cargaCursoDocenteId: cargaCursoDocenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoDocenteId),
      alumnoId: alumnoId == null && nullToAbsent
          ? const Value.absent()
          : Value(alumnoId),
    );
  }

  factory CargaCursoDocenteDetData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaCursoDocenteDetData(
      cargaCursoDocenteId:
          serializer.fromJson<int>(json['cargaCursoDocenteId']),
      alumnoId: serializer.fromJson<int>(json['alumnoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaCursoDocenteId': serializer.toJson<int>(cargaCursoDocenteId),
      'alumnoId': serializer.toJson<int>(alumnoId),
    };
  }

  CargaCursoDocenteDetData copyWith({int cargaCursoDocenteId, int alumnoId}) =>
      CargaCursoDocenteDetData(
        cargaCursoDocenteId: cargaCursoDocenteId ?? this.cargaCursoDocenteId,
        alumnoId: alumnoId ?? this.alumnoId,
      );
  @override
  String toString() {
    return (StringBuffer('CargaCursoDocenteDetData(')
          ..write('cargaCursoDocenteId: $cargaCursoDocenteId, ')
          ..write('alumnoId: $alumnoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(cargaCursoDocenteId.hashCode, alumnoId.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaCursoDocenteDetData &&
          other.cargaCursoDocenteId == this.cargaCursoDocenteId &&
          other.alumnoId == this.alumnoId);
}

class CargaCursoDocenteDetCompanion
    extends UpdateCompanion<CargaCursoDocenteDetData> {
  final Value<int> cargaCursoDocenteId;
  final Value<int> alumnoId;
  const CargaCursoDocenteDetCompanion({
    this.cargaCursoDocenteId = const Value.absent(),
    this.alumnoId = const Value.absent(),
  });
  CargaCursoDocenteDetCompanion.insert({
    this.cargaCursoDocenteId = const Value.absent(),
    this.alumnoId = const Value.absent(),
  });
  static Insertable<CargaCursoDocenteDetData> custom({
    Expression<int> cargaCursoDocenteId,
    Expression<int> alumnoId,
  }) {
    return RawValuesInsertable({
      if (cargaCursoDocenteId != null)
        'carga_curso_docente_id': cargaCursoDocenteId,
      if (alumnoId != null) 'alumno_id': alumnoId,
    });
  }

  CargaCursoDocenteDetCompanion copyWith(
      {Value<int> cargaCursoDocenteId, Value<int> alumnoId}) {
    return CargaCursoDocenteDetCompanion(
      cargaCursoDocenteId: cargaCursoDocenteId ?? this.cargaCursoDocenteId,
      alumnoId: alumnoId ?? this.alumnoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaCursoDocenteId.present) {
      map['carga_curso_docente_id'] = Variable<int>(cargaCursoDocenteId.value);
    }
    if (alumnoId.present) {
      map['alumno_id'] = Variable<int>(alumnoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaCursoDocenteDetCompanion(')
          ..write('cargaCursoDocenteId: $cargaCursoDocenteId, ')
          ..write('alumnoId: $alumnoId')
          ..write(')'))
        .toString();
  }
}

class $CargaCursoDocenteDetTable extends CargaCursoDocenteDet
    with TableInfo<$CargaCursoDocenteDetTable, CargaCursoDocenteDetData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaCursoDocenteDetTable(this._db, [this._alias]);
  final VerificationMeta _cargaCursoDocenteIdMeta =
      const VerificationMeta('cargaCursoDocenteId');
  GeneratedIntColumn _cargaCursoDocenteId;
  @override
  GeneratedIntColumn get cargaCursoDocenteId =>
      _cargaCursoDocenteId ??= _constructCargaCursoDocenteId();
  GeneratedIntColumn _constructCargaCursoDocenteId() {
    return GeneratedIntColumn(
      'carga_curso_docente_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _alumnoIdMeta = const VerificationMeta('alumnoId');
  GeneratedIntColumn _alumnoId;
  @override
  GeneratedIntColumn get alumnoId => _alumnoId ??= _constructAlumnoId();
  GeneratedIntColumn _constructAlumnoId() {
    return GeneratedIntColumn(
      'alumno_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [cargaCursoDocenteId, alumnoId];
  @override
  $CargaCursoDocenteDetTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_curso_docente_det';
  @override
  final String actualTableName = 'carga_curso_docente_det';
  @override
  VerificationContext validateIntegrity(
      Insertable<CargaCursoDocenteDetData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_curso_docente_id')) {
      context.handle(
          _cargaCursoDocenteIdMeta,
          cargaCursoDocenteId.isAcceptableOrUnknown(
              data['carga_curso_docente_id'], _cargaCursoDocenteIdMeta));
    }
    if (data.containsKey('alumno_id')) {
      context.handle(_alumnoIdMeta,
          alumnoId.isAcceptableOrUnknown(data['alumno_id'], _alumnoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cargaCursoDocenteId};
  @override
  CargaCursoDocenteDetData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaCursoDocenteDetData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $CargaCursoDocenteDetTable createAlias(String alias) {
    return $CargaCursoDocenteDetTable(_db, alias);
  }
}

class CargaCursoData extends DataClass implements Insertable<CargaCursoData> {
  final int cargaCursoId;
  final int planCursoId;
  final int empleadoId;
  final int cargaAcademicaId;
  final int complejo;
  final int evaluable;
  final int idempleado;
  final int idTipoHora;
  final String descripcion;
  final DateTime fechaInicio;
  final DateTime fechafin;
  final String modo;
  final int estado;
  final int anioAcademicoId;
  final int aulaId;
  final int grupoId;
  final int idPlanEstudio;
  final int idPlanEstudioVersion;
  final int CapacidadVacanteP;
  final int CapacidadVacanteD;
  final String nombreDocente;
  final int personaIdDocente;
  final String fotoDocente;
  CargaCursoData(
      {@required this.cargaCursoId,
      this.planCursoId,
      this.empleadoId,
      this.cargaAcademicaId,
      this.complejo,
      this.evaluable,
      this.idempleado,
      this.idTipoHora,
      this.descripcion,
      this.fechaInicio,
      this.fechafin,
      this.modo,
      this.estado,
      this.anioAcademicoId,
      this.aulaId,
      this.grupoId,
      this.idPlanEstudio,
      this.idPlanEstudioVersion,
      this.CapacidadVacanteP,
      this.CapacidadVacanteD,
      this.nombreDocente,
      this.personaIdDocente,
      this.fotoDocente});
  factory CargaCursoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CargaCursoData(
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      empleadoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}empleado_id']),
      cargaAcademicaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_academica_id']),
      complejo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}complejo']),
      evaluable:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}evaluable']),
      idempleado:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idempleado']),
      idTipoHora: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_hora']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      fechaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechafin: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fechafin']),
      modo: stringType.mapFromDatabaseResponse(data['${effectivePrefix}modo']),
      estado: intType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      aulaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}aula_id']),
      grupoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grupo_id']),
      idPlanEstudio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_plan_estudio']),
      idPlanEstudioVersion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_plan_estudio_version']),
      CapacidadVacanteP: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}capacidad_vacante_p']),
      CapacidadVacanteD: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}capacidad_vacante_d']),
      nombreDocente: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_docente']),
      personaIdDocente: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}persona_id_docente']),
      fotoDocente: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}foto_docente']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || empleadoId != null) {
      map['empleado_id'] = Variable<int>(empleadoId);
    }
    if (!nullToAbsent || cargaAcademicaId != null) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId);
    }
    if (!nullToAbsent || complejo != null) {
      map['complejo'] = Variable<int>(complejo);
    }
    if (!nullToAbsent || evaluable != null) {
      map['evaluable'] = Variable<int>(evaluable);
    }
    if (!nullToAbsent || idempleado != null) {
      map['idempleado'] = Variable<int>(idempleado);
    }
    if (!nullToAbsent || idTipoHora != null) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio);
    }
    if (!nullToAbsent || fechafin != null) {
      map['fechafin'] = Variable<DateTime>(fechafin);
    }
    if (!nullToAbsent || modo != null) {
      map['modo'] = Variable<String>(modo);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<int>(estado);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || aulaId != null) {
      map['aula_id'] = Variable<int>(aulaId);
    }
    if (!nullToAbsent || grupoId != null) {
      map['grupo_id'] = Variable<int>(grupoId);
    }
    if (!nullToAbsent || idPlanEstudio != null) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio);
    }
    if (!nullToAbsent || idPlanEstudioVersion != null) {
      map['id_plan_estudio_version'] = Variable<int>(idPlanEstudioVersion);
    }
    if (!nullToAbsent || CapacidadVacanteP != null) {
      map['capacidad_vacante_p'] = Variable<int>(CapacidadVacanteP);
    }
    if (!nullToAbsent || CapacidadVacanteD != null) {
      map['capacidad_vacante_d'] = Variable<int>(CapacidadVacanteD);
    }
    if (!nullToAbsent || nombreDocente != null) {
      map['nombre_docente'] = Variable<String>(nombreDocente);
    }
    if (!nullToAbsent || personaIdDocente != null) {
      map['persona_id_docente'] = Variable<int>(personaIdDocente);
    }
    if (!nullToAbsent || fotoDocente != null) {
      map['foto_docente'] = Variable<String>(fotoDocente);
    }
    return map;
  }

  CargaCursoCompanion toCompanion(bool nullToAbsent) {
    return CargaCursoCompanion(
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      empleadoId: empleadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(empleadoId),
      cargaAcademicaId: cargaAcademicaId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaId),
      complejo: complejo == null && nullToAbsent
          ? const Value.absent()
          : Value(complejo),
      evaluable: evaluable == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluable),
      idempleado: idempleado == null && nullToAbsent
          ? const Value.absent()
          : Value(idempleado),
      idTipoHora: idTipoHora == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoHora),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechafin: fechafin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechafin),
      modo: modo == null && nullToAbsent ? const Value.absent() : Value(modo),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      aulaId:
          aulaId == null && nullToAbsent ? const Value.absent() : Value(aulaId),
      grupoId: grupoId == null && nullToAbsent
          ? const Value.absent()
          : Value(grupoId),
      idPlanEstudio: idPlanEstudio == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudio),
      idPlanEstudioVersion: idPlanEstudioVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlanEstudioVersion),
      CapacidadVacanteP: CapacidadVacanteP == null && nullToAbsent
          ? const Value.absent()
          : Value(CapacidadVacanteP),
      CapacidadVacanteD: CapacidadVacanteD == null && nullToAbsent
          ? const Value.absent()
          : Value(CapacidadVacanteD),
      nombreDocente: nombreDocente == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreDocente),
      personaIdDocente: personaIdDocente == null && nullToAbsent
          ? const Value.absent()
          : Value(personaIdDocente),
      fotoDocente: fotoDocente == null && nullToAbsent
          ? const Value.absent()
          : Value(fotoDocente),
    );
  }

  factory CargaCursoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaCursoData(
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      empleadoId: serializer.fromJson<int>(json['empleadoId']),
      cargaAcademicaId: serializer.fromJson<int>(json['cargaAcademicaId']),
      complejo: serializer.fromJson<int>(json['complejo']),
      evaluable: serializer.fromJson<int>(json['evaluable']),
      idempleado: serializer.fromJson<int>(json['idempleado']),
      idTipoHora: serializer.fromJson<int>(json['idTipoHora']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      fechaInicio: serializer.fromJson<DateTime>(json['fechaInicio']),
      fechafin: serializer.fromJson<DateTime>(json['fechafin']),
      modo: serializer.fromJson<String>(json['modo']),
      estado: serializer.fromJson<int>(json['estado']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      aulaId: serializer.fromJson<int>(json['aulaId']),
      grupoId: serializer.fromJson<int>(json['grupoId']),
      idPlanEstudio: serializer.fromJson<int>(json['idPlanEstudio']),
      idPlanEstudioVersion:
          serializer.fromJson<int>(json['idPlanEstudioVersion']),
      CapacidadVacanteP: serializer.fromJson<int>(json['CapacidadVacanteP']),
      CapacidadVacanteD: serializer.fromJson<int>(json['CapacidadVacanteD']),
      nombreDocente: serializer.fromJson<String>(json['nombreDocente']),
      personaIdDocente: serializer.fromJson<int>(json['personaIdDocente']),
      fotoDocente: serializer.fromJson<String>(json['fotoDocente']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'planCursoId': serializer.toJson<int>(planCursoId),
      'empleadoId': serializer.toJson<int>(empleadoId),
      'cargaAcademicaId': serializer.toJson<int>(cargaAcademicaId),
      'complejo': serializer.toJson<int>(complejo),
      'evaluable': serializer.toJson<int>(evaluable),
      'idempleado': serializer.toJson<int>(idempleado),
      'idTipoHora': serializer.toJson<int>(idTipoHora),
      'descripcion': serializer.toJson<String>(descripcion),
      'fechaInicio': serializer.toJson<DateTime>(fechaInicio),
      'fechafin': serializer.toJson<DateTime>(fechafin),
      'modo': serializer.toJson<String>(modo),
      'estado': serializer.toJson<int>(estado),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'aulaId': serializer.toJson<int>(aulaId),
      'grupoId': serializer.toJson<int>(grupoId),
      'idPlanEstudio': serializer.toJson<int>(idPlanEstudio),
      'idPlanEstudioVersion': serializer.toJson<int>(idPlanEstudioVersion),
      'CapacidadVacanteP': serializer.toJson<int>(CapacidadVacanteP),
      'CapacidadVacanteD': serializer.toJson<int>(CapacidadVacanteD),
      'nombreDocente': serializer.toJson<String>(nombreDocente),
      'personaIdDocente': serializer.toJson<int>(personaIdDocente),
      'fotoDocente': serializer.toJson<String>(fotoDocente),
    };
  }

  CargaCursoData copyWith(
          {int cargaCursoId,
          int planCursoId,
          int empleadoId,
          int cargaAcademicaId,
          int complejo,
          int evaluable,
          int idempleado,
          int idTipoHora,
          String descripcion,
          DateTime fechaInicio,
          DateTime fechafin,
          String modo,
          int estado,
          int anioAcademicoId,
          int aulaId,
          int grupoId,
          int idPlanEstudio,
          int idPlanEstudioVersion,
          int CapacidadVacanteP,
          int CapacidadVacanteD,
          String nombreDocente,
          int personaIdDocente,
          String fotoDocente}) =>
      CargaCursoData(
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        planCursoId: planCursoId ?? this.planCursoId,
        empleadoId: empleadoId ?? this.empleadoId,
        cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
        complejo: complejo ?? this.complejo,
        evaluable: evaluable ?? this.evaluable,
        idempleado: idempleado ?? this.idempleado,
        idTipoHora: idTipoHora ?? this.idTipoHora,
        descripcion: descripcion ?? this.descripcion,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechafin: fechafin ?? this.fechafin,
        modo: modo ?? this.modo,
        estado: estado ?? this.estado,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        aulaId: aulaId ?? this.aulaId,
        grupoId: grupoId ?? this.grupoId,
        idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
        idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
        CapacidadVacanteP: CapacidadVacanteP ?? this.CapacidadVacanteP,
        CapacidadVacanteD: CapacidadVacanteD ?? this.CapacidadVacanteD,
        nombreDocente: nombreDocente ?? this.nombreDocente,
        personaIdDocente: personaIdDocente ?? this.personaIdDocente,
        fotoDocente: fotoDocente ?? this.fotoDocente,
      );
  @override
  String toString() {
    return (StringBuffer('CargaCursoData(')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('empleadoId: $empleadoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('complejo: $complejo, ')
          ..write('evaluable: $evaluable, ')
          ..write('idempleado: $idempleado, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechafin: $fechafin, ')
          ..write('modo: $modo, ')
          ..write('estado: $estado, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('grupoId: $grupoId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('CapacidadVacanteP: $CapacidadVacanteP, ')
          ..write('CapacidadVacanteD: $CapacidadVacanteD, ')
          ..write('nombreDocente: $nombreDocente, ')
          ..write('personaIdDocente: $personaIdDocente, ')
          ..write('fotoDocente: $fotoDocente')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cargaCursoId.hashCode,
      $mrjc(
          planCursoId.hashCode,
          $mrjc(
              empleadoId.hashCode,
              $mrjc(
                  cargaAcademicaId.hashCode,
                  $mrjc(
                      complejo.hashCode,
                      $mrjc(
                          evaluable.hashCode,
                          $mrjc(
                              idempleado.hashCode,
                              $mrjc(
                                  idTipoHora.hashCode,
                                  $mrjc(
                                      descripcion.hashCode,
                                      $mrjc(
                                          fechaInicio.hashCode,
                                          $mrjc(
                                              fechafin.hashCode,
                                              $mrjc(
                                                  modo.hashCode,
                                                  $mrjc(
                                                      estado.hashCode,
                                                      $mrjc(
                                                          anioAcademicoId
                                                              .hashCode,
                                                          $mrjc(
                                                              aulaId.hashCode,
                                                              $mrjc(
                                                                  grupoId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      idPlanEstudio
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          idPlanEstudioVersion
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              CapacidadVacanteP.hashCode,
                                                                              $mrjc(CapacidadVacanteD.hashCode, $mrjc(nombreDocente.hashCode, $mrjc(personaIdDocente.hashCode, fotoDocente.hashCode)))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaCursoData &&
          other.cargaCursoId == this.cargaCursoId &&
          other.planCursoId == this.planCursoId &&
          other.empleadoId == this.empleadoId &&
          other.cargaAcademicaId == this.cargaAcademicaId &&
          other.complejo == this.complejo &&
          other.evaluable == this.evaluable &&
          other.idempleado == this.idempleado &&
          other.idTipoHora == this.idTipoHora &&
          other.descripcion == this.descripcion &&
          other.fechaInicio == this.fechaInicio &&
          other.fechafin == this.fechafin &&
          other.modo == this.modo &&
          other.estado == this.estado &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.aulaId == this.aulaId &&
          other.grupoId == this.grupoId &&
          other.idPlanEstudio == this.idPlanEstudio &&
          other.idPlanEstudioVersion == this.idPlanEstudioVersion &&
          other.CapacidadVacanteP == this.CapacidadVacanteP &&
          other.CapacidadVacanteD == this.CapacidadVacanteD &&
          other.nombreDocente == this.nombreDocente &&
          other.personaIdDocente == this.personaIdDocente &&
          other.fotoDocente == this.fotoDocente);
}

class CargaCursoCompanion extends UpdateCompanion<CargaCursoData> {
  final Value<int> cargaCursoId;
  final Value<int> planCursoId;
  final Value<int> empleadoId;
  final Value<int> cargaAcademicaId;
  final Value<int> complejo;
  final Value<int> evaluable;
  final Value<int> idempleado;
  final Value<int> idTipoHora;
  final Value<String> descripcion;
  final Value<DateTime> fechaInicio;
  final Value<DateTime> fechafin;
  final Value<String> modo;
  final Value<int> estado;
  final Value<int> anioAcademicoId;
  final Value<int> aulaId;
  final Value<int> grupoId;
  final Value<int> idPlanEstudio;
  final Value<int> idPlanEstudioVersion;
  final Value<int> CapacidadVacanteP;
  final Value<int> CapacidadVacanteD;
  final Value<String> nombreDocente;
  final Value<int> personaIdDocente;
  final Value<String> fotoDocente;
  const CargaCursoCompanion({
    this.cargaCursoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.empleadoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.complejo = const Value.absent(),
    this.evaluable = const Value.absent(),
    this.idempleado = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechafin = const Value.absent(),
    this.modo = const Value.absent(),
    this.estado = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.CapacidadVacanteP = const Value.absent(),
    this.CapacidadVacanteD = const Value.absent(),
    this.nombreDocente = const Value.absent(),
    this.personaIdDocente = const Value.absent(),
    this.fotoDocente = const Value.absent(),
  });
  CargaCursoCompanion.insert({
    this.cargaCursoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.empleadoId = const Value.absent(),
    this.cargaAcademicaId = const Value.absent(),
    this.complejo = const Value.absent(),
    this.evaluable = const Value.absent(),
    this.idempleado = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechafin = const Value.absent(),
    this.modo = const Value.absent(),
    this.estado = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.aulaId = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.idPlanEstudio = const Value.absent(),
    this.idPlanEstudioVersion = const Value.absent(),
    this.CapacidadVacanteP = const Value.absent(),
    this.CapacidadVacanteD = const Value.absent(),
    this.nombreDocente = const Value.absent(),
    this.personaIdDocente = const Value.absent(),
    this.fotoDocente = const Value.absent(),
  });
  static Insertable<CargaCursoData> custom({
    Expression<int> cargaCursoId,
    Expression<int> planCursoId,
    Expression<int> empleadoId,
    Expression<int> cargaAcademicaId,
    Expression<int> complejo,
    Expression<int> evaluable,
    Expression<int> idempleado,
    Expression<int> idTipoHora,
    Expression<String> descripcion,
    Expression<DateTime> fechaInicio,
    Expression<DateTime> fechafin,
    Expression<String> modo,
    Expression<int> estado,
    Expression<int> anioAcademicoId,
    Expression<int> aulaId,
    Expression<int> grupoId,
    Expression<int> idPlanEstudio,
    Expression<int> idPlanEstudioVersion,
    Expression<int> CapacidadVacanteP,
    Expression<int> CapacidadVacanteD,
    Expression<String> nombreDocente,
    Expression<int> personaIdDocente,
    Expression<String> fotoDocente,
  }) {
    return RawValuesInsertable({
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (empleadoId != null) 'empleado_id': empleadoId,
      if (cargaAcademicaId != null) 'carga_academica_id': cargaAcademicaId,
      if (complejo != null) 'complejo': complejo,
      if (evaluable != null) 'evaluable': evaluable,
      if (idempleado != null) 'idempleado': idempleado,
      if (idTipoHora != null) 'id_tipo_hora': idTipoHora,
      if (descripcion != null) 'descripcion': descripcion,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechafin != null) 'fechafin': fechafin,
      if (modo != null) 'modo': modo,
      if (estado != null) 'estado': estado,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (aulaId != null) 'aula_id': aulaId,
      if (grupoId != null) 'grupo_id': grupoId,
      if (idPlanEstudio != null) 'id_plan_estudio': idPlanEstudio,
      if (idPlanEstudioVersion != null)
        'id_plan_estudio_version': idPlanEstudioVersion,
      if (CapacidadVacanteP != null) 'capacidad_vacante_p': CapacidadVacanteP,
      if (CapacidadVacanteD != null) 'capacidad_vacante_d': CapacidadVacanteD,
      if (nombreDocente != null) 'nombre_docente': nombreDocente,
      if (personaIdDocente != null) 'persona_id_docente': personaIdDocente,
      if (fotoDocente != null) 'foto_docente': fotoDocente,
    });
  }

  CargaCursoCompanion copyWith(
      {Value<int> cargaCursoId,
      Value<int> planCursoId,
      Value<int> empleadoId,
      Value<int> cargaAcademicaId,
      Value<int> complejo,
      Value<int> evaluable,
      Value<int> idempleado,
      Value<int> idTipoHora,
      Value<String> descripcion,
      Value<DateTime> fechaInicio,
      Value<DateTime> fechafin,
      Value<String> modo,
      Value<int> estado,
      Value<int> anioAcademicoId,
      Value<int> aulaId,
      Value<int> grupoId,
      Value<int> idPlanEstudio,
      Value<int> idPlanEstudioVersion,
      Value<int> CapacidadVacanteP,
      Value<int> CapacidadVacanteD,
      Value<String> nombreDocente,
      Value<int> personaIdDocente,
      Value<String> fotoDocente}) {
    return CargaCursoCompanion(
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      planCursoId: planCursoId ?? this.planCursoId,
      empleadoId: empleadoId ?? this.empleadoId,
      cargaAcademicaId: cargaAcademicaId ?? this.cargaAcademicaId,
      complejo: complejo ?? this.complejo,
      evaluable: evaluable ?? this.evaluable,
      idempleado: idempleado ?? this.idempleado,
      idTipoHora: idTipoHora ?? this.idTipoHora,
      descripcion: descripcion ?? this.descripcion,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechafin: fechafin ?? this.fechafin,
      modo: modo ?? this.modo,
      estado: estado ?? this.estado,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      aulaId: aulaId ?? this.aulaId,
      grupoId: grupoId ?? this.grupoId,
      idPlanEstudio: idPlanEstudio ?? this.idPlanEstudio,
      idPlanEstudioVersion: idPlanEstudioVersion ?? this.idPlanEstudioVersion,
      CapacidadVacanteP: CapacidadVacanteP ?? this.CapacidadVacanteP,
      CapacidadVacanteD: CapacidadVacanteD ?? this.CapacidadVacanteD,
      nombreDocente: nombreDocente ?? this.nombreDocente,
      personaIdDocente: personaIdDocente ?? this.personaIdDocente,
      fotoDocente: fotoDocente ?? this.fotoDocente,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (empleadoId.present) {
      map['empleado_id'] = Variable<int>(empleadoId.value);
    }
    if (cargaAcademicaId.present) {
      map['carga_academica_id'] = Variable<int>(cargaAcademicaId.value);
    }
    if (complejo.present) {
      map['complejo'] = Variable<int>(complejo.value);
    }
    if (evaluable.present) {
      map['evaluable'] = Variable<int>(evaluable.value);
    }
    if (idempleado.present) {
      map['idempleado'] = Variable<int>(idempleado.value);
    }
    if (idTipoHora.present) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio.value);
    }
    if (fechafin.present) {
      map['fechafin'] = Variable<DateTime>(fechafin.value);
    }
    if (modo.present) {
      map['modo'] = Variable<String>(modo.value);
    }
    if (estado.present) {
      map['estado'] = Variable<int>(estado.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (aulaId.present) {
      map['aula_id'] = Variable<int>(aulaId.value);
    }
    if (grupoId.present) {
      map['grupo_id'] = Variable<int>(grupoId.value);
    }
    if (idPlanEstudio.present) {
      map['id_plan_estudio'] = Variable<int>(idPlanEstudio.value);
    }
    if (idPlanEstudioVersion.present) {
      map['id_plan_estudio_version'] =
          Variable<int>(idPlanEstudioVersion.value);
    }
    if (CapacidadVacanteP.present) {
      map['capacidad_vacante_p'] = Variable<int>(CapacidadVacanteP.value);
    }
    if (CapacidadVacanteD.present) {
      map['capacidad_vacante_d'] = Variable<int>(CapacidadVacanteD.value);
    }
    if (nombreDocente.present) {
      map['nombre_docente'] = Variable<String>(nombreDocente.value);
    }
    if (personaIdDocente.present) {
      map['persona_id_docente'] = Variable<int>(personaIdDocente.value);
    }
    if (fotoDocente.present) {
      map['foto_docente'] = Variable<String>(fotoDocente.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaCursoCompanion(')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('empleadoId: $empleadoId, ')
          ..write('cargaAcademicaId: $cargaAcademicaId, ')
          ..write('complejo: $complejo, ')
          ..write('evaluable: $evaluable, ')
          ..write('idempleado: $idempleado, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechafin: $fechafin, ')
          ..write('modo: $modo, ')
          ..write('estado: $estado, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('aulaId: $aulaId, ')
          ..write('grupoId: $grupoId, ')
          ..write('idPlanEstudio: $idPlanEstudio, ')
          ..write('idPlanEstudioVersion: $idPlanEstudioVersion, ')
          ..write('CapacidadVacanteP: $CapacidadVacanteP, ')
          ..write('CapacidadVacanteD: $CapacidadVacanteD, ')
          ..write('nombreDocente: $nombreDocente, ')
          ..write('personaIdDocente: $personaIdDocente, ')
          ..write('fotoDocente: $fotoDocente')
          ..write(')'))
        .toString();
  }
}

class $CargaCursoTable extends CargaCurso
    with TableInfo<$CargaCursoTable, CargaCursoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaCursoTable(this._db, [this._alias]);
  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _empleadoIdMeta = const VerificationMeta('empleadoId');
  GeneratedIntColumn _empleadoId;
  @override
  GeneratedIntColumn get empleadoId => _empleadoId ??= _constructEmpleadoId();
  GeneratedIntColumn _constructEmpleadoId() {
    return GeneratedIntColumn(
      'empleado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaAcademicaIdMeta =
      const VerificationMeta('cargaAcademicaId');
  GeneratedIntColumn _cargaAcademicaId;
  @override
  GeneratedIntColumn get cargaAcademicaId =>
      _cargaAcademicaId ??= _constructCargaAcademicaId();
  GeneratedIntColumn _constructCargaAcademicaId() {
    return GeneratedIntColumn(
      'carga_academica_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _complejoMeta = const VerificationMeta('complejo');
  GeneratedIntColumn _complejo;
  @override
  GeneratedIntColumn get complejo => _complejo ??= _constructComplejo();
  GeneratedIntColumn _constructComplejo() {
    return GeneratedIntColumn(
      'complejo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _evaluableMeta = const VerificationMeta('evaluable');
  GeneratedIntColumn _evaluable;
  @override
  GeneratedIntColumn get evaluable => _evaluable ??= _constructEvaluable();
  GeneratedIntColumn _constructEvaluable() {
    return GeneratedIntColumn(
      'evaluable',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idempleadoMeta = const VerificationMeta('idempleado');
  GeneratedIntColumn _idempleado;
  @override
  GeneratedIntColumn get idempleado => _idempleado ??= _constructIdempleado();
  GeneratedIntColumn _constructIdempleado() {
    return GeneratedIntColumn(
      'idempleado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTipoHoraMeta = const VerificationMeta('idTipoHora');
  GeneratedIntColumn _idTipoHora;
  @override
  GeneratedIntColumn get idTipoHora => _idTipoHora ??= _constructIdTipoHora();
  GeneratedIntColumn _constructIdTipoHora() {
    return GeneratedIntColumn(
      'id_tipo_hora',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedDateTimeColumn _fechaInicio;
  @override
  GeneratedDateTimeColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedDateTimeColumn _constructFechaInicio() {
    return GeneratedDateTimeColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechafinMeta = const VerificationMeta('fechafin');
  GeneratedDateTimeColumn _fechafin;
  @override
  GeneratedDateTimeColumn get fechafin => _fechafin ??= _constructFechafin();
  GeneratedDateTimeColumn _constructFechafin() {
    return GeneratedDateTimeColumn(
      'fechafin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _modoMeta = const VerificationMeta('modo');
  GeneratedTextColumn _modo;
  @override
  GeneratedTextColumn get modo => _modo ??= _constructModo();
  GeneratedTextColumn _constructModo() {
    return GeneratedTextColumn(
      'modo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedIntColumn _estado;
  @override
  GeneratedIntColumn get estado => _estado ??= _constructEstado();
  GeneratedIntColumn _constructEstado() {
    return GeneratedIntColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aulaIdMeta = const VerificationMeta('aulaId');
  GeneratedIntColumn _aulaId;
  @override
  GeneratedIntColumn get aulaId => _aulaId ??= _constructAulaId();
  GeneratedIntColumn _constructAulaId() {
    return GeneratedIntColumn(
      'aula_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _grupoIdMeta = const VerificationMeta('grupoId');
  GeneratedIntColumn _grupoId;
  @override
  GeneratedIntColumn get grupoId => _grupoId ??= _constructGrupoId();
  GeneratedIntColumn _constructGrupoId() {
    return GeneratedIntColumn(
      'grupo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioMeta =
      const VerificationMeta('idPlanEstudio');
  GeneratedIntColumn _idPlanEstudio;
  @override
  GeneratedIntColumn get idPlanEstudio =>
      _idPlanEstudio ??= _constructIdPlanEstudio();
  GeneratedIntColumn _constructIdPlanEstudio() {
    return GeneratedIntColumn(
      'id_plan_estudio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlanEstudioVersionMeta =
      const VerificationMeta('idPlanEstudioVersion');
  GeneratedIntColumn _idPlanEstudioVersion;
  @override
  GeneratedIntColumn get idPlanEstudioVersion =>
      _idPlanEstudioVersion ??= _constructIdPlanEstudioVersion();
  GeneratedIntColumn _constructIdPlanEstudioVersion() {
    return GeneratedIntColumn(
      'id_plan_estudio_version',
      $tableName,
      true,
    );
  }

  final VerificationMeta _CapacidadVacantePMeta =
      const VerificationMeta('CapacidadVacanteP');
  GeneratedIntColumn _CapacidadVacanteP;
  @override
  GeneratedIntColumn get CapacidadVacanteP =>
      _CapacidadVacanteP ??= _constructCapacidadVacanteP();
  GeneratedIntColumn _constructCapacidadVacanteP() {
    return GeneratedIntColumn(
      'capacidad_vacante_p',
      $tableName,
      true,
    );
  }

  final VerificationMeta _CapacidadVacanteDMeta =
      const VerificationMeta('CapacidadVacanteD');
  GeneratedIntColumn _CapacidadVacanteD;
  @override
  GeneratedIntColumn get CapacidadVacanteD =>
      _CapacidadVacanteD ??= _constructCapacidadVacanteD();
  GeneratedIntColumn _constructCapacidadVacanteD() {
    return GeneratedIntColumn(
      'capacidad_vacante_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreDocenteMeta =
      const VerificationMeta('nombreDocente');
  GeneratedTextColumn _nombreDocente;
  @override
  GeneratedTextColumn get nombreDocente =>
      _nombreDocente ??= _constructNombreDocente();
  GeneratedTextColumn _constructNombreDocente() {
    return GeneratedTextColumn(
      'nombre_docente',
      $tableName,
      true,
    );
  }

  final VerificationMeta _personaIdDocenteMeta =
      const VerificationMeta('personaIdDocente');
  GeneratedIntColumn _personaIdDocente;
  @override
  GeneratedIntColumn get personaIdDocente =>
      _personaIdDocente ??= _constructPersonaIdDocente();
  GeneratedIntColumn _constructPersonaIdDocente() {
    return GeneratedIntColumn(
      'persona_id_docente',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoDocenteMeta =
      const VerificationMeta('fotoDocente');
  GeneratedTextColumn _fotoDocente;
  @override
  GeneratedTextColumn get fotoDocente =>
      _fotoDocente ??= _constructFotoDocente();
  GeneratedTextColumn _constructFotoDocente() {
    return GeneratedTextColumn(
      'foto_docente',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        cargaCursoId,
        planCursoId,
        empleadoId,
        cargaAcademicaId,
        complejo,
        evaluable,
        idempleado,
        idTipoHora,
        descripcion,
        fechaInicio,
        fechafin,
        modo,
        estado,
        anioAcademicoId,
        aulaId,
        grupoId,
        idPlanEstudio,
        idPlanEstudioVersion,
        CapacidadVacanteP,
        CapacidadVacanteD,
        nombreDocente,
        personaIdDocente,
        fotoDocente
      ];
  @override
  $CargaCursoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_curso';
  @override
  final String actualTableName = 'carga_curso';
  @override
  VerificationContext validateIntegrity(Insertable<CargaCursoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('empleado_id')) {
      context.handle(
          _empleadoIdMeta,
          empleadoId.isAcceptableOrUnknown(
              data['empleado_id'], _empleadoIdMeta));
    }
    if (data.containsKey('carga_academica_id')) {
      context.handle(
          _cargaAcademicaIdMeta,
          cargaAcademicaId.isAcceptableOrUnknown(
              data['carga_academica_id'], _cargaAcademicaIdMeta));
    }
    if (data.containsKey('complejo')) {
      context.handle(_complejoMeta,
          complejo.isAcceptableOrUnknown(data['complejo'], _complejoMeta));
    }
    if (data.containsKey('evaluable')) {
      context.handle(_evaluableMeta,
          evaluable.isAcceptableOrUnknown(data['evaluable'], _evaluableMeta));
    }
    if (data.containsKey('idempleado')) {
      context.handle(
          _idempleadoMeta,
          idempleado.isAcceptableOrUnknown(
              data['idempleado'], _idempleadoMeta));
    }
    if (data.containsKey('id_tipo_hora')) {
      context.handle(
          _idTipoHoraMeta,
          idTipoHora.isAcceptableOrUnknown(
              data['id_tipo_hora'], _idTipoHoraMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fechafin')) {
      context.handle(_fechafinMeta,
          fechafin.isAcceptableOrUnknown(data['fechafin'], _fechafinMeta));
    }
    if (data.containsKey('modo')) {
      context.handle(
          _modoMeta, modo.isAcceptableOrUnknown(data['modo'], _modoMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('aula_id')) {
      context.handle(_aulaIdMeta,
          aulaId.isAcceptableOrUnknown(data['aula_id'], _aulaIdMeta));
    }
    if (data.containsKey('grupo_id')) {
      context.handle(_grupoIdMeta,
          grupoId.isAcceptableOrUnknown(data['grupo_id'], _grupoIdMeta));
    }
    if (data.containsKey('id_plan_estudio')) {
      context.handle(
          _idPlanEstudioMeta,
          idPlanEstudio.isAcceptableOrUnknown(
              data['id_plan_estudio'], _idPlanEstudioMeta));
    }
    if (data.containsKey('id_plan_estudio_version')) {
      context.handle(
          _idPlanEstudioVersionMeta,
          idPlanEstudioVersion.isAcceptableOrUnknown(
              data['id_plan_estudio_version'], _idPlanEstudioVersionMeta));
    }
    if (data.containsKey('capacidad_vacante_p')) {
      context.handle(
          _CapacidadVacantePMeta,
          CapacidadVacanteP.isAcceptableOrUnknown(
              data['capacidad_vacante_p'], _CapacidadVacantePMeta));
    }
    if (data.containsKey('capacidad_vacante_d')) {
      context.handle(
          _CapacidadVacanteDMeta,
          CapacidadVacanteD.isAcceptableOrUnknown(
              data['capacidad_vacante_d'], _CapacidadVacanteDMeta));
    }
    if (data.containsKey('nombre_docente')) {
      context.handle(
          _nombreDocenteMeta,
          nombreDocente.isAcceptableOrUnknown(
              data['nombre_docente'], _nombreDocenteMeta));
    }
    if (data.containsKey('persona_id_docente')) {
      context.handle(
          _personaIdDocenteMeta,
          personaIdDocente.isAcceptableOrUnknown(
              data['persona_id_docente'], _personaIdDocenteMeta));
    }
    if (data.containsKey('foto_docente')) {
      context.handle(
          _fotoDocenteMeta,
          fotoDocente.isAcceptableOrUnknown(
              data['foto_docente'], _fotoDocenteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cargaCursoId};
  @override
  CargaCursoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaCursoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CargaCursoTable createAlias(String alias) {
    return $CargaCursoTable(_db, alias);
  }
}

class Curso extends DataClass implements Insertable<Curso> {
  final int cursoId;
  final String nombre;
  final int estadoId;
  final String descripcion;
  final String cursoAlias;
  final int entidadId;
  final int nivelAcadId;
  final int tipoCursoId;
  final int tipoConceptoId;
  final String color;
  final String creditos;
  final String totalHP;
  final String totalHT;
  final String notaAprobatoria;
  final String sumilla;
  final int superId;
  final int idServicioLaboratorio;
  final int horasLaboratorio;
  final bool tipoSubcurso;
  final String foto;
  final String codigo;
  Curso(
      {@required this.cursoId,
      this.nombre,
      this.estadoId,
      this.descripcion,
      this.cursoAlias,
      this.entidadId,
      this.nivelAcadId,
      this.tipoCursoId,
      this.tipoConceptoId,
      this.color,
      this.creditos,
      this.totalHP,
      this.totalHT,
      this.notaAprobatoria,
      this.sumilla,
      this.superId,
      this.idServicioLaboratorio,
      this.horasLaboratorio,
      this.tipoSubcurso,
      this.foto,
      this.codigo});
  factory Curso.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Curso(
      cursoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}curso_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      cursoAlias: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}curso_alias']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      nivelAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_acad_id']),
      tipoCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_curso_id']),
      tipoConceptoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_concepto_id']),
      color:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color']),
      creditos: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}creditos']),
      totalHP: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_h_p']),
      totalHT: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_h_t']),
      notaAprobatoria: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nota_aprobatoria']),
      sumilla:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sumilla']),
      superId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}super_id']),
      idServicioLaboratorio: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_servicio_laboratorio']),
      horasLaboratorio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}horas_laboratorio']),
      tipoSubcurso: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_subcurso']),
      foto: stringType.mapFromDatabaseResponse(data['${effectivePrefix}foto']),
      codigo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}codigo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cursoId != null) {
      map['curso_id'] = Variable<int>(cursoId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || cursoAlias != null) {
      map['curso_alias'] = Variable<String>(cursoAlias);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || nivelAcadId != null) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId);
    }
    if (!nullToAbsent || tipoCursoId != null) {
      map['tipo_curso_id'] = Variable<int>(tipoCursoId);
    }
    if (!nullToAbsent || tipoConceptoId != null) {
      map['tipo_concepto_id'] = Variable<int>(tipoConceptoId);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || creditos != null) {
      map['creditos'] = Variable<String>(creditos);
    }
    if (!nullToAbsent || totalHP != null) {
      map['total_h_p'] = Variable<String>(totalHP);
    }
    if (!nullToAbsent || totalHT != null) {
      map['total_h_t'] = Variable<String>(totalHT);
    }
    if (!nullToAbsent || notaAprobatoria != null) {
      map['nota_aprobatoria'] = Variable<String>(notaAprobatoria);
    }
    if (!nullToAbsent || sumilla != null) {
      map['sumilla'] = Variable<String>(sumilla);
    }
    if (!nullToAbsent || superId != null) {
      map['super_id'] = Variable<int>(superId);
    }
    if (!nullToAbsent || idServicioLaboratorio != null) {
      map['id_servicio_laboratorio'] = Variable<int>(idServicioLaboratorio);
    }
    if (!nullToAbsent || horasLaboratorio != null) {
      map['horas_laboratorio'] = Variable<int>(horasLaboratorio);
    }
    if (!nullToAbsent || tipoSubcurso != null) {
      map['tipo_subcurso'] = Variable<bool>(tipoSubcurso);
    }
    if (!nullToAbsent || foto != null) {
      map['foto'] = Variable<String>(foto);
    }
    if (!nullToAbsent || codigo != null) {
      map['codigo'] = Variable<String>(codigo);
    }
    return map;
  }

  CursosCompanion toCompanion(bool nullToAbsent) {
    return CursosCompanion(
      cursoId: cursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cursoId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      cursoAlias: cursoAlias == null && nullToAbsent
          ? const Value.absent()
          : Value(cursoAlias),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      nivelAcadId: nivelAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcadId),
      tipoCursoId: tipoCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoCursoId),
      tipoConceptoId: tipoConceptoId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoConceptoId),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      creditos: creditos == null && nullToAbsent
          ? const Value.absent()
          : Value(creditos),
      totalHP: totalHP == null && nullToAbsent
          ? const Value.absent()
          : Value(totalHP),
      totalHT: totalHT == null && nullToAbsent
          ? const Value.absent()
          : Value(totalHT),
      notaAprobatoria: notaAprobatoria == null && nullToAbsent
          ? const Value.absent()
          : Value(notaAprobatoria),
      sumilla: sumilla == null && nullToAbsent
          ? const Value.absent()
          : Value(sumilla),
      superId: superId == null && nullToAbsent
          ? const Value.absent()
          : Value(superId),
      idServicioLaboratorio: idServicioLaboratorio == null && nullToAbsent
          ? const Value.absent()
          : Value(idServicioLaboratorio),
      horasLaboratorio: horasLaboratorio == null && nullToAbsent
          ? const Value.absent()
          : Value(horasLaboratorio),
      tipoSubcurso: tipoSubcurso == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoSubcurso),
      foto: foto == null && nullToAbsent ? const Value.absent() : Value(foto),
      codigo:
          codigo == null && nullToAbsent ? const Value.absent() : Value(codigo),
    );
  }

  factory Curso.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Curso(
      cursoId: serializer.fromJson<int>(json['cursoId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      cursoAlias: serializer.fromJson<String>(json['cursoAlias']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      nivelAcadId: serializer.fromJson<int>(json['nivelAcadId']),
      tipoCursoId: serializer.fromJson<int>(json['tipoCursoId']),
      tipoConceptoId: serializer.fromJson<int>(json['tipoConceptoId']),
      color: serializer.fromJson<String>(json['color']),
      creditos: serializer.fromJson<String>(json['creditos']),
      totalHP: serializer.fromJson<String>(json['totalHP']),
      totalHT: serializer.fromJson<String>(json['totalHT']),
      notaAprobatoria: serializer.fromJson<String>(json['notaAprobatoria']),
      sumilla: serializer.fromJson<String>(json['sumilla']),
      superId: serializer.fromJson<int>(json['superId']),
      idServicioLaboratorio:
          serializer.fromJson<int>(json['idServicioLaboratorio']),
      horasLaboratorio: serializer.fromJson<int>(json['horasLaboratorio']),
      tipoSubcurso: serializer.fromJson<bool>(json['tipoSubcurso']),
      foto: serializer.fromJson<String>(json['foto']),
      codigo: serializer.fromJson<String>(json['codigo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cursoId': serializer.toJson<int>(cursoId),
      'nombre': serializer.toJson<String>(nombre),
      'estadoId': serializer.toJson<int>(estadoId),
      'descripcion': serializer.toJson<String>(descripcion),
      'cursoAlias': serializer.toJson<String>(cursoAlias),
      'entidadId': serializer.toJson<int>(entidadId),
      'nivelAcadId': serializer.toJson<int>(nivelAcadId),
      'tipoCursoId': serializer.toJson<int>(tipoCursoId),
      'tipoConceptoId': serializer.toJson<int>(tipoConceptoId),
      'color': serializer.toJson<String>(color),
      'creditos': serializer.toJson<String>(creditos),
      'totalHP': serializer.toJson<String>(totalHP),
      'totalHT': serializer.toJson<String>(totalHT),
      'notaAprobatoria': serializer.toJson<String>(notaAprobatoria),
      'sumilla': serializer.toJson<String>(sumilla),
      'superId': serializer.toJson<int>(superId),
      'idServicioLaboratorio': serializer.toJson<int>(idServicioLaboratorio),
      'horasLaboratorio': serializer.toJson<int>(horasLaboratorio),
      'tipoSubcurso': serializer.toJson<bool>(tipoSubcurso),
      'foto': serializer.toJson<String>(foto),
      'codigo': serializer.toJson<String>(codigo),
    };
  }

  Curso copyWith(
          {int cursoId,
          String nombre,
          int estadoId,
          String descripcion,
          String cursoAlias,
          int entidadId,
          int nivelAcadId,
          int tipoCursoId,
          int tipoConceptoId,
          String color,
          String creditos,
          String totalHP,
          String totalHT,
          String notaAprobatoria,
          String sumilla,
          int superId,
          int idServicioLaboratorio,
          int horasLaboratorio,
          bool tipoSubcurso,
          String foto,
          String codigo}) =>
      Curso(
        cursoId: cursoId ?? this.cursoId,
        nombre: nombre ?? this.nombre,
        estadoId: estadoId ?? this.estadoId,
        descripcion: descripcion ?? this.descripcion,
        cursoAlias: cursoAlias ?? this.cursoAlias,
        entidadId: entidadId ?? this.entidadId,
        nivelAcadId: nivelAcadId ?? this.nivelAcadId,
        tipoCursoId: tipoCursoId ?? this.tipoCursoId,
        tipoConceptoId: tipoConceptoId ?? this.tipoConceptoId,
        color: color ?? this.color,
        creditos: creditos ?? this.creditos,
        totalHP: totalHP ?? this.totalHP,
        totalHT: totalHT ?? this.totalHT,
        notaAprobatoria: notaAprobatoria ?? this.notaAprobatoria,
        sumilla: sumilla ?? this.sumilla,
        superId: superId ?? this.superId,
        idServicioLaboratorio:
            idServicioLaboratorio ?? this.idServicioLaboratorio,
        horasLaboratorio: horasLaboratorio ?? this.horasLaboratorio,
        tipoSubcurso: tipoSubcurso ?? this.tipoSubcurso,
        foto: foto ?? this.foto,
        codigo: codigo ?? this.codigo,
      );
  @override
  String toString() {
    return (StringBuffer('Curso(')
          ..write('cursoId: $cursoId, ')
          ..write('nombre: $nombre, ')
          ..write('estadoId: $estadoId, ')
          ..write('descripcion: $descripcion, ')
          ..write('cursoAlias: $cursoAlias, ')
          ..write('entidadId: $entidadId, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoCursoId: $tipoCursoId, ')
          ..write('tipoConceptoId: $tipoConceptoId, ')
          ..write('color: $color, ')
          ..write('creditos: $creditos, ')
          ..write('totalHP: $totalHP, ')
          ..write('totalHT: $totalHT, ')
          ..write('notaAprobatoria: $notaAprobatoria, ')
          ..write('sumilla: $sumilla, ')
          ..write('superId: $superId, ')
          ..write('idServicioLaboratorio: $idServicioLaboratorio, ')
          ..write('horasLaboratorio: $horasLaboratorio, ')
          ..write('tipoSubcurso: $tipoSubcurso, ')
          ..write('foto: $foto, ')
          ..write('codigo: $codigo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cursoId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              estadoId.hashCode,
              $mrjc(
                  descripcion.hashCode,
                  $mrjc(
                      cursoAlias.hashCode,
                      $mrjc(
                          entidadId.hashCode,
                          $mrjc(
                              nivelAcadId.hashCode,
                              $mrjc(
                                  tipoCursoId.hashCode,
                                  $mrjc(
                                      tipoConceptoId.hashCode,
                                      $mrjc(
                                          color.hashCode,
                                          $mrjc(
                                              creditos.hashCode,
                                              $mrjc(
                                                  totalHP.hashCode,
                                                  $mrjc(
                                                      totalHT.hashCode,
                                                      $mrjc(
                                                          notaAprobatoria
                                                              .hashCode,
                                                          $mrjc(
                                                              sumilla.hashCode,
                                                              $mrjc(
                                                                  superId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      idServicioLaboratorio
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          horasLaboratorio
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              tipoSubcurso.hashCode,
                                                                              $mrjc(foto.hashCode, codigo.hashCode)))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Curso &&
          other.cursoId == this.cursoId &&
          other.nombre == this.nombre &&
          other.estadoId == this.estadoId &&
          other.descripcion == this.descripcion &&
          other.cursoAlias == this.cursoAlias &&
          other.entidadId == this.entidadId &&
          other.nivelAcadId == this.nivelAcadId &&
          other.tipoCursoId == this.tipoCursoId &&
          other.tipoConceptoId == this.tipoConceptoId &&
          other.color == this.color &&
          other.creditos == this.creditos &&
          other.totalHP == this.totalHP &&
          other.totalHT == this.totalHT &&
          other.notaAprobatoria == this.notaAprobatoria &&
          other.sumilla == this.sumilla &&
          other.superId == this.superId &&
          other.idServicioLaboratorio == this.idServicioLaboratorio &&
          other.horasLaboratorio == this.horasLaboratorio &&
          other.tipoSubcurso == this.tipoSubcurso &&
          other.foto == this.foto &&
          other.codigo == this.codigo);
}

class CursosCompanion extends UpdateCompanion<Curso> {
  final Value<int> cursoId;
  final Value<String> nombre;
  final Value<int> estadoId;
  final Value<String> descripcion;
  final Value<String> cursoAlias;
  final Value<int> entidadId;
  final Value<int> nivelAcadId;
  final Value<int> tipoCursoId;
  final Value<int> tipoConceptoId;
  final Value<String> color;
  final Value<String> creditos;
  final Value<String> totalHP;
  final Value<String> totalHT;
  final Value<String> notaAprobatoria;
  final Value<String> sumilla;
  final Value<int> superId;
  final Value<int> idServicioLaboratorio;
  final Value<int> horasLaboratorio;
  final Value<bool> tipoSubcurso;
  final Value<String> foto;
  final Value<String> codigo;
  const CursosCompanion({
    this.cursoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.cursoAlias = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoCursoId = const Value.absent(),
    this.tipoConceptoId = const Value.absent(),
    this.color = const Value.absent(),
    this.creditos = const Value.absent(),
    this.totalHP = const Value.absent(),
    this.totalHT = const Value.absent(),
    this.notaAprobatoria = const Value.absent(),
    this.sumilla = const Value.absent(),
    this.superId = const Value.absent(),
    this.idServicioLaboratorio = const Value.absent(),
    this.horasLaboratorio = const Value.absent(),
    this.tipoSubcurso = const Value.absent(),
    this.foto = const Value.absent(),
    this.codigo = const Value.absent(),
  });
  CursosCompanion.insert({
    this.cursoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.cursoAlias = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoCursoId = const Value.absent(),
    this.tipoConceptoId = const Value.absent(),
    this.color = const Value.absent(),
    this.creditos = const Value.absent(),
    this.totalHP = const Value.absent(),
    this.totalHT = const Value.absent(),
    this.notaAprobatoria = const Value.absent(),
    this.sumilla = const Value.absent(),
    this.superId = const Value.absent(),
    this.idServicioLaboratorio = const Value.absent(),
    this.horasLaboratorio = const Value.absent(),
    this.tipoSubcurso = const Value.absent(),
    this.foto = const Value.absent(),
    this.codigo = const Value.absent(),
  });
  static Insertable<Curso> custom({
    Expression<int> cursoId,
    Expression<String> nombre,
    Expression<int> estadoId,
    Expression<String> descripcion,
    Expression<String> cursoAlias,
    Expression<int> entidadId,
    Expression<int> nivelAcadId,
    Expression<int> tipoCursoId,
    Expression<int> tipoConceptoId,
    Expression<String> color,
    Expression<String> creditos,
    Expression<String> totalHP,
    Expression<String> totalHT,
    Expression<String> notaAprobatoria,
    Expression<String> sumilla,
    Expression<int> superId,
    Expression<int> idServicioLaboratorio,
    Expression<int> horasLaboratorio,
    Expression<bool> tipoSubcurso,
    Expression<String> foto,
    Expression<String> codigo,
  }) {
    return RawValuesInsertable({
      if (cursoId != null) 'curso_id': cursoId,
      if (nombre != null) 'nombre': nombre,
      if (estadoId != null) 'estado_id': estadoId,
      if (descripcion != null) 'descripcion': descripcion,
      if (cursoAlias != null) 'curso_alias': cursoAlias,
      if (entidadId != null) 'entidad_id': entidadId,
      if (nivelAcadId != null) 'nivel_acad_id': nivelAcadId,
      if (tipoCursoId != null) 'tipo_curso_id': tipoCursoId,
      if (tipoConceptoId != null) 'tipo_concepto_id': tipoConceptoId,
      if (color != null) 'color': color,
      if (creditos != null) 'creditos': creditos,
      if (totalHP != null) 'total_h_p': totalHP,
      if (totalHT != null) 'total_h_t': totalHT,
      if (notaAprobatoria != null) 'nota_aprobatoria': notaAprobatoria,
      if (sumilla != null) 'sumilla': sumilla,
      if (superId != null) 'super_id': superId,
      if (idServicioLaboratorio != null)
        'id_servicio_laboratorio': idServicioLaboratorio,
      if (horasLaboratorio != null) 'horas_laboratorio': horasLaboratorio,
      if (tipoSubcurso != null) 'tipo_subcurso': tipoSubcurso,
      if (foto != null) 'foto': foto,
      if (codigo != null) 'codigo': codigo,
    });
  }

  CursosCompanion copyWith(
      {Value<int> cursoId,
      Value<String> nombre,
      Value<int> estadoId,
      Value<String> descripcion,
      Value<String> cursoAlias,
      Value<int> entidadId,
      Value<int> nivelAcadId,
      Value<int> tipoCursoId,
      Value<int> tipoConceptoId,
      Value<String> color,
      Value<String> creditos,
      Value<String> totalHP,
      Value<String> totalHT,
      Value<String> notaAprobatoria,
      Value<String> sumilla,
      Value<int> superId,
      Value<int> idServicioLaboratorio,
      Value<int> horasLaboratorio,
      Value<bool> tipoSubcurso,
      Value<String> foto,
      Value<String> codigo}) {
    return CursosCompanion(
      cursoId: cursoId ?? this.cursoId,
      nombre: nombre ?? this.nombre,
      estadoId: estadoId ?? this.estadoId,
      descripcion: descripcion ?? this.descripcion,
      cursoAlias: cursoAlias ?? this.cursoAlias,
      entidadId: entidadId ?? this.entidadId,
      nivelAcadId: nivelAcadId ?? this.nivelAcadId,
      tipoCursoId: tipoCursoId ?? this.tipoCursoId,
      tipoConceptoId: tipoConceptoId ?? this.tipoConceptoId,
      color: color ?? this.color,
      creditos: creditos ?? this.creditos,
      totalHP: totalHP ?? this.totalHP,
      totalHT: totalHT ?? this.totalHT,
      notaAprobatoria: notaAprobatoria ?? this.notaAprobatoria,
      sumilla: sumilla ?? this.sumilla,
      superId: superId ?? this.superId,
      idServicioLaboratorio:
          idServicioLaboratorio ?? this.idServicioLaboratorio,
      horasLaboratorio: horasLaboratorio ?? this.horasLaboratorio,
      tipoSubcurso: tipoSubcurso ?? this.tipoSubcurso,
      foto: foto ?? this.foto,
      codigo: codigo ?? this.codigo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cursoId.present) {
      map['curso_id'] = Variable<int>(cursoId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (cursoAlias.present) {
      map['curso_alias'] = Variable<String>(cursoAlias.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (nivelAcadId.present) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId.value);
    }
    if (tipoCursoId.present) {
      map['tipo_curso_id'] = Variable<int>(tipoCursoId.value);
    }
    if (tipoConceptoId.present) {
      map['tipo_concepto_id'] = Variable<int>(tipoConceptoId.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (creditos.present) {
      map['creditos'] = Variable<String>(creditos.value);
    }
    if (totalHP.present) {
      map['total_h_p'] = Variable<String>(totalHP.value);
    }
    if (totalHT.present) {
      map['total_h_t'] = Variable<String>(totalHT.value);
    }
    if (notaAprobatoria.present) {
      map['nota_aprobatoria'] = Variable<String>(notaAprobatoria.value);
    }
    if (sumilla.present) {
      map['sumilla'] = Variable<String>(sumilla.value);
    }
    if (superId.present) {
      map['super_id'] = Variable<int>(superId.value);
    }
    if (idServicioLaboratorio.present) {
      map['id_servicio_laboratorio'] =
          Variable<int>(idServicioLaboratorio.value);
    }
    if (horasLaboratorio.present) {
      map['horas_laboratorio'] = Variable<int>(horasLaboratorio.value);
    }
    if (tipoSubcurso.present) {
      map['tipo_subcurso'] = Variable<bool>(tipoSubcurso.value);
    }
    if (foto.present) {
      map['foto'] = Variable<String>(foto.value);
    }
    if (codigo.present) {
      map['codigo'] = Variable<String>(codigo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CursosCompanion(')
          ..write('cursoId: $cursoId, ')
          ..write('nombre: $nombre, ')
          ..write('estadoId: $estadoId, ')
          ..write('descripcion: $descripcion, ')
          ..write('cursoAlias: $cursoAlias, ')
          ..write('entidadId: $entidadId, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoCursoId: $tipoCursoId, ')
          ..write('tipoConceptoId: $tipoConceptoId, ')
          ..write('color: $color, ')
          ..write('creditos: $creditos, ')
          ..write('totalHP: $totalHP, ')
          ..write('totalHT: $totalHT, ')
          ..write('notaAprobatoria: $notaAprobatoria, ')
          ..write('sumilla: $sumilla, ')
          ..write('superId: $superId, ')
          ..write('idServicioLaboratorio: $idServicioLaboratorio, ')
          ..write('horasLaboratorio: $horasLaboratorio, ')
          ..write('tipoSubcurso: $tipoSubcurso, ')
          ..write('foto: $foto, ')
          ..write('codigo: $codigo')
          ..write(')'))
        .toString();
  }
}

class $CursosTable extends Cursos with TableInfo<$CursosTable, Curso> {
  final GeneratedDatabase _db;
  final String _alias;
  $CursosTable(this._db, [this._alias]);
  final VerificationMeta _cursoIdMeta = const VerificationMeta('cursoId');
  GeneratedIntColumn _cursoId;
  @override
  GeneratedIntColumn get cursoId => _cursoId ??= _constructCursoId();
  GeneratedIntColumn _constructCursoId() {
    return GeneratedIntColumn(
      'curso_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cursoAliasMeta = const VerificationMeta('cursoAlias');
  GeneratedTextColumn _cursoAlias;
  @override
  GeneratedTextColumn get cursoAlias => _cursoAlias ??= _constructCursoAlias();
  GeneratedTextColumn _constructCursoAlias() {
    return GeneratedTextColumn(
      'curso_alias',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcadIdMeta =
      const VerificationMeta('nivelAcadId');
  GeneratedIntColumn _nivelAcadId;
  @override
  GeneratedIntColumn get nivelAcadId =>
      _nivelAcadId ??= _constructNivelAcadId();
  GeneratedIntColumn _constructNivelAcadId() {
    return GeneratedIntColumn(
      'nivel_acad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoCursoIdMeta =
      const VerificationMeta('tipoCursoId');
  GeneratedIntColumn _tipoCursoId;
  @override
  GeneratedIntColumn get tipoCursoId =>
      _tipoCursoId ??= _constructTipoCursoId();
  GeneratedIntColumn _constructTipoCursoId() {
    return GeneratedIntColumn(
      'tipo_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoConceptoIdMeta =
      const VerificationMeta('tipoConceptoId');
  GeneratedIntColumn _tipoConceptoId;
  @override
  GeneratedIntColumn get tipoConceptoId =>
      _tipoConceptoId ??= _constructTipoConceptoId();
  GeneratedIntColumn _constructTipoConceptoId() {
    return GeneratedIntColumn(
      'tipo_concepto_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  GeneratedTextColumn _color;
  @override
  GeneratedTextColumn get color => _color ??= _constructColor();
  GeneratedTextColumn _constructColor() {
    return GeneratedTextColumn(
      'color',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creditosMeta = const VerificationMeta('creditos');
  GeneratedTextColumn _creditos;
  @override
  GeneratedTextColumn get creditos => _creditos ??= _constructCreditos();
  GeneratedTextColumn _constructCreditos() {
    return GeneratedTextColumn(
      'creditos',
      $tableName,
      true,
    );
  }

  final VerificationMeta _totalHPMeta = const VerificationMeta('totalHP');
  GeneratedTextColumn _totalHP;
  @override
  GeneratedTextColumn get totalHP => _totalHP ??= _constructTotalHP();
  GeneratedTextColumn _constructTotalHP() {
    return GeneratedTextColumn(
      'total_h_p',
      $tableName,
      true,
    );
  }

  final VerificationMeta _totalHTMeta = const VerificationMeta('totalHT');
  GeneratedTextColumn _totalHT;
  @override
  GeneratedTextColumn get totalHT => _totalHT ??= _constructTotalHT();
  GeneratedTextColumn _constructTotalHT() {
    return GeneratedTextColumn(
      'total_h_t',
      $tableName,
      true,
    );
  }

  final VerificationMeta _notaAprobatoriaMeta =
      const VerificationMeta('notaAprobatoria');
  GeneratedTextColumn _notaAprobatoria;
  @override
  GeneratedTextColumn get notaAprobatoria =>
      _notaAprobatoria ??= _constructNotaAprobatoria();
  GeneratedTextColumn _constructNotaAprobatoria() {
    return GeneratedTextColumn(
      'nota_aprobatoria',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sumillaMeta = const VerificationMeta('sumilla');
  GeneratedTextColumn _sumilla;
  @override
  GeneratedTextColumn get sumilla => _sumilla ??= _constructSumilla();
  GeneratedTextColumn _constructSumilla() {
    return GeneratedTextColumn(
      'sumilla',
      $tableName,
      true,
    );
  }

  final VerificationMeta _superIdMeta = const VerificationMeta('superId');
  GeneratedIntColumn _superId;
  @override
  GeneratedIntColumn get superId => _superId ??= _constructSuperId();
  GeneratedIntColumn _constructSuperId() {
    return GeneratedIntColumn(
      'super_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idServicioLaboratorioMeta =
      const VerificationMeta('idServicioLaboratorio');
  GeneratedIntColumn _idServicioLaboratorio;
  @override
  GeneratedIntColumn get idServicioLaboratorio =>
      _idServicioLaboratorio ??= _constructIdServicioLaboratorio();
  GeneratedIntColumn _constructIdServicioLaboratorio() {
    return GeneratedIntColumn(
      'id_servicio_laboratorio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horasLaboratorioMeta =
      const VerificationMeta('horasLaboratorio');
  GeneratedIntColumn _horasLaboratorio;
  @override
  GeneratedIntColumn get horasLaboratorio =>
      _horasLaboratorio ??= _constructHorasLaboratorio();
  GeneratedIntColumn _constructHorasLaboratorio() {
    return GeneratedIntColumn(
      'horas_laboratorio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoSubcursoMeta =
      const VerificationMeta('tipoSubcurso');
  GeneratedBoolColumn _tipoSubcurso;
  @override
  GeneratedBoolColumn get tipoSubcurso =>
      _tipoSubcurso ??= _constructTipoSubcurso();
  GeneratedBoolColumn _constructTipoSubcurso() {
    return GeneratedBoolColumn(
      'tipo_subcurso',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fotoMeta = const VerificationMeta('foto');
  GeneratedTextColumn _foto;
  @override
  GeneratedTextColumn get foto => _foto ??= _constructFoto();
  GeneratedTextColumn _constructFoto() {
    return GeneratedTextColumn(
      'foto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _codigoMeta = const VerificationMeta('codigo');
  GeneratedTextColumn _codigo;
  @override
  GeneratedTextColumn get codigo => _codigo ??= _constructCodigo();
  GeneratedTextColumn _constructCodigo() {
    return GeneratedTextColumn(
      'codigo',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        cursoId,
        nombre,
        estadoId,
        descripcion,
        cursoAlias,
        entidadId,
        nivelAcadId,
        tipoCursoId,
        tipoConceptoId,
        color,
        creditos,
        totalHP,
        totalHT,
        notaAprobatoria,
        sumilla,
        superId,
        idServicioLaboratorio,
        horasLaboratorio,
        tipoSubcurso,
        foto,
        codigo
      ];
  @override
  $CursosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'cursos';
  @override
  final String actualTableName = 'cursos';
  @override
  VerificationContext validateIntegrity(Insertable<Curso> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('curso_id')) {
      context.handle(_cursoIdMeta,
          cursoId.isAcceptableOrUnknown(data['curso_id'], _cursoIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('curso_alias')) {
      context.handle(
          _cursoAliasMeta,
          cursoAlias.isAcceptableOrUnknown(
              data['curso_alias'], _cursoAliasMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('nivel_acad_id')) {
      context.handle(
          _nivelAcadIdMeta,
          nivelAcadId.isAcceptableOrUnknown(
              data['nivel_acad_id'], _nivelAcadIdMeta));
    }
    if (data.containsKey('tipo_curso_id')) {
      context.handle(
          _tipoCursoIdMeta,
          tipoCursoId.isAcceptableOrUnknown(
              data['tipo_curso_id'], _tipoCursoIdMeta));
    }
    if (data.containsKey('tipo_concepto_id')) {
      context.handle(
          _tipoConceptoIdMeta,
          tipoConceptoId.isAcceptableOrUnknown(
              data['tipo_concepto_id'], _tipoConceptoIdMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color'], _colorMeta));
    }
    if (data.containsKey('creditos')) {
      context.handle(_creditosMeta,
          creditos.isAcceptableOrUnknown(data['creditos'], _creditosMeta));
    }
    if (data.containsKey('total_h_p')) {
      context.handle(_totalHPMeta,
          totalHP.isAcceptableOrUnknown(data['total_h_p'], _totalHPMeta));
    }
    if (data.containsKey('total_h_t')) {
      context.handle(_totalHTMeta,
          totalHT.isAcceptableOrUnknown(data['total_h_t'], _totalHTMeta));
    }
    if (data.containsKey('nota_aprobatoria')) {
      context.handle(
          _notaAprobatoriaMeta,
          notaAprobatoria.isAcceptableOrUnknown(
              data['nota_aprobatoria'], _notaAprobatoriaMeta));
    }
    if (data.containsKey('sumilla')) {
      context.handle(_sumillaMeta,
          sumilla.isAcceptableOrUnknown(data['sumilla'], _sumillaMeta));
    }
    if (data.containsKey('super_id')) {
      context.handle(_superIdMeta,
          superId.isAcceptableOrUnknown(data['super_id'], _superIdMeta));
    }
    if (data.containsKey('id_servicio_laboratorio')) {
      context.handle(
          _idServicioLaboratorioMeta,
          idServicioLaboratorio.isAcceptableOrUnknown(
              data['id_servicio_laboratorio'], _idServicioLaboratorioMeta));
    }
    if (data.containsKey('horas_laboratorio')) {
      context.handle(
          _horasLaboratorioMeta,
          horasLaboratorio.isAcceptableOrUnknown(
              data['horas_laboratorio'], _horasLaboratorioMeta));
    }
    if (data.containsKey('tipo_subcurso')) {
      context.handle(
          _tipoSubcursoMeta,
          tipoSubcurso.isAcceptableOrUnknown(
              data['tipo_subcurso'], _tipoSubcursoMeta));
    }
    if (data.containsKey('foto')) {
      context.handle(
          _fotoMeta, foto.isAcceptableOrUnknown(data['foto'], _fotoMeta));
    }
    if (data.containsKey('codigo')) {
      context.handle(_codigoMeta,
          codigo.isAcceptableOrUnknown(data['codigo'], _codigoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cursoId};
  @override
  Curso map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Curso.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CursosTable createAlias(String alias) {
    return $CursosTable(_db, alias);
  }
}

class ParametrosDisenioData extends DataClass
    implements Insertable<ParametrosDisenioData> {
  final int parametroDisenioId;
  final String objeto;
  final String concepto;
  final String nombre;
  final String path;
  final String color1;
  final String color2;
  final String color3;
  final bool estado;
  ParametrosDisenioData(
      {@required this.parametroDisenioId,
      this.objeto,
      this.concepto,
      this.nombre,
      this.path,
      this.color1,
      this.color2,
      this.color3,
      this.estado});
  factory ParametrosDisenioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ParametrosDisenioData(
      parametroDisenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_disenio_id']),
      objeto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}objeto']),
      concepto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}concepto']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
      color1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color1']),
      color2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color2']),
      color3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color3']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || parametroDisenioId != null) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId);
    }
    if (!nullToAbsent || objeto != null) {
      map['objeto'] = Variable<String>(objeto);
    }
    if (!nullToAbsent || concepto != null) {
      map['concepto'] = Variable<String>(concepto);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    if (!nullToAbsent || color1 != null) {
      map['color1'] = Variable<String>(color1);
    }
    if (!nullToAbsent || color2 != null) {
      map['color2'] = Variable<String>(color2);
    }
    if (!nullToAbsent || color3 != null) {
      map['color3'] = Variable<String>(color3);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    return map;
  }

  ParametrosDisenioCompanion toCompanion(bool nullToAbsent) {
    return ParametrosDisenioCompanion(
      parametroDisenioId: parametroDisenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDisenioId),
      objeto:
          objeto == null && nullToAbsent ? const Value.absent() : Value(objeto),
      concepto: concepto == null && nullToAbsent
          ? const Value.absent()
          : Value(concepto),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      color1:
          color1 == null && nullToAbsent ? const Value.absent() : Value(color1),
      color2:
          color2 == null && nullToAbsent ? const Value.absent() : Value(color2),
      color3:
          color3 == null && nullToAbsent ? const Value.absent() : Value(color3),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
    );
  }

  factory ParametrosDisenioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ParametrosDisenioData(
      parametroDisenioId: serializer.fromJson<int>(json['parametroDisenioId']),
      objeto: serializer.fromJson<String>(json['objeto']),
      concepto: serializer.fromJson<String>(json['concepto']),
      nombre: serializer.fromJson<String>(json['nombre']),
      path: serializer.fromJson<String>(json['path']),
      color1: serializer.fromJson<String>(json['color1']),
      color2: serializer.fromJson<String>(json['color2']),
      color3: serializer.fromJson<String>(json['color3']),
      estado: serializer.fromJson<bool>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'parametroDisenioId': serializer.toJson<int>(parametroDisenioId),
      'objeto': serializer.toJson<String>(objeto),
      'concepto': serializer.toJson<String>(concepto),
      'nombre': serializer.toJson<String>(nombre),
      'path': serializer.toJson<String>(path),
      'color1': serializer.toJson<String>(color1),
      'color2': serializer.toJson<String>(color2),
      'color3': serializer.toJson<String>(color3),
      'estado': serializer.toJson<bool>(estado),
    };
  }

  ParametrosDisenioData copyWith(
          {int parametroDisenioId,
          String objeto,
          String concepto,
          String nombre,
          String path,
          String color1,
          String color2,
          String color3,
          bool estado}) =>
      ParametrosDisenioData(
        parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
        objeto: objeto ?? this.objeto,
        concepto: concepto ?? this.concepto,
        nombre: nombre ?? this.nombre,
        path: path ?? this.path,
        color1: color1 ?? this.color1,
        color2: color2 ?? this.color2,
        color3: color3 ?? this.color3,
        estado: estado ?? this.estado,
      );
  @override
  String toString() {
    return (StringBuffer('ParametrosDisenioData(')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('path: $path, ')
          ..write('color1: $color1, ')
          ..write('color2: $color2, ')
          ..write('color3: $color3, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      parametroDisenioId.hashCode,
      $mrjc(
          objeto.hashCode,
          $mrjc(
              concepto.hashCode,
              $mrjc(
                  nombre.hashCode,
                  $mrjc(
                      path.hashCode,
                      $mrjc(
                          color1.hashCode,
                          $mrjc(color2.hashCode,
                              $mrjc(color3.hashCode, estado.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ParametrosDisenioData &&
          other.parametroDisenioId == this.parametroDisenioId &&
          other.objeto == this.objeto &&
          other.concepto == this.concepto &&
          other.nombre == this.nombre &&
          other.path == this.path &&
          other.color1 == this.color1 &&
          other.color2 == this.color2 &&
          other.color3 == this.color3 &&
          other.estado == this.estado);
}

class ParametrosDisenioCompanion
    extends UpdateCompanion<ParametrosDisenioData> {
  final Value<int> parametroDisenioId;
  final Value<String> objeto;
  final Value<String> concepto;
  final Value<String> nombre;
  final Value<String> path;
  final Value<String> color1;
  final Value<String> color2;
  final Value<String> color3;
  final Value<bool> estado;
  const ParametrosDisenioCompanion({
    this.parametroDisenioId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.path = const Value.absent(),
    this.color1 = const Value.absent(),
    this.color2 = const Value.absent(),
    this.color3 = const Value.absent(),
    this.estado = const Value.absent(),
  });
  ParametrosDisenioCompanion.insert({
    this.parametroDisenioId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.path = const Value.absent(),
    this.color1 = const Value.absent(),
    this.color2 = const Value.absent(),
    this.color3 = const Value.absent(),
    this.estado = const Value.absent(),
  });
  static Insertable<ParametrosDisenioData> custom({
    Expression<int> parametroDisenioId,
    Expression<String> objeto,
    Expression<String> concepto,
    Expression<String> nombre,
    Expression<String> path,
    Expression<String> color1,
    Expression<String> color2,
    Expression<String> color3,
    Expression<bool> estado,
  }) {
    return RawValuesInsertable({
      if (parametroDisenioId != null)
        'parametro_disenio_id': parametroDisenioId,
      if (objeto != null) 'objeto': objeto,
      if (concepto != null) 'concepto': concepto,
      if (nombre != null) 'nombre': nombre,
      if (path != null) 'path': path,
      if (color1 != null) 'color1': color1,
      if (color2 != null) 'color2': color2,
      if (color3 != null) 'color3': color3,
      if (estado != null) 'estado': estado,
    });
  }

  ParametrosDisenioCompanion copyWith(
      {Value<int> parametroDisenioId,
      Value<String> objeto,
      Value<String> concepto,
      Value<String> nombre,
      Value<String> path,
      Value<String> color1,
      Value<String> color2,
      Value<String> color3,
      Value<bool> estado}) {
    return ParametrosDisenioCompanion(
      parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
      objeto: objeto ?? this.objeto,
      concepto: concepto ?? this.concepto,
      nombre: nombre ?? this.nombre,
      path: path ?? this.path,
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (parametroDisenioId.present) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId.value);
    }
    if (objeto.present) {
      map['objeto'] = Variable<String>(objeto.value);
    }
    if (concepto.present) {
      map['concepto'] = Variable<String>(concepto.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (color1.present) {
      map['color1'] = Variable<String>(color1.value);
    }
    if (color2.present) {
      map['color2'] = Variable<String>(color2.value);
    }
    if (color3.present) {
      map['color3'] = Variable<String>(color3.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParametrosDisenioCompanion(')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('path: $path, ')
          ..write('color1: $color1, ')
          ..write('color2: $color2, ')
          ..write('color3: $color3, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $ParametrosDisenioTable extends ParametrosDisenio
    with TableInfo<$ParametrosDisenioTable, ParametrosDisenioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ParametrosDisenioTable(this._db, [this._alias]);
  final VerificationMeta _parametroDisenioIdMeta =
      const VerificationMeta('parametroDisenioId');
  GeneratedIntColumn _parametroDisenioId;
  @override
  GeneratedIntColumn get parametroDisenioId =>
      _parametroDisenioId ??= _constructParametroDisenioId();
  GeneratedIntColumn _constructParametroDisenioId() {
    return GeneratedIntColumn(
      'parametro_disenio_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _objetoMeta = const VerificationMeta('objeto');
  GeneratedTextColumn _objeto;
  @override
  GeneratedTextColumn get objeto => _objeto ??= _constructObjeto();
  GeneratedTextColumn _constructObjeto() {
    return GeneratedTextColumn(
      'objeto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _conceptoMeta = const VerificationMeta('concepto');
  GeneratedTextColumn _concepto;
  @override
  GeneratedTextColumn get concepto => _concepto ??= _constructConcepto();
  GeneratedTextColumn _constructConcepto() {
    return GeneratedTextColumn(
      'concepto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  GeneratedTextColumn _path;
  @override
  GeneratedTextColumn get path => _path ??= _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn(
      'path',
      $tableName,
      true,
    );
  }

  final VerificationMeta _color1Meta = const VerificationMeta('color1');
  GeneratedTextColumn _color1;
  @override
  GeneratedTextColumn get color1 => _color1 ??= _constructColor1();
  GeneratedTextColumn _constructColor1() {
    return GeneratedTextColumn(
      'color1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _color2Meta = const VerificationMeta('color2');
  GeneratedTextColumn _color2;
  @override
  GeneratedTextColumn get color2 => _color2 ??= _constructColor2();
  GeneratedTextColumn _constructColor2() {
    return GeneratedTextColumn(
      'color2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _color3Meta = const VerificationMeta('color3');
  GeneratedTextColumn _color3;
  @override
  GeneratedTextColumn get color3 => _color3 ??= _constructColor3();
  GeneratedTextColumn _constructColor3() {
    return GeneratedTextColumn(
      'color3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        parametroDisenioId,
        objeto,
        concepto,
        nombre,
        path,
        color1,
        color2,
        color3,
        estado
      ];
  @override
  $ParametrosDisenioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'parametros_disenio';
  @override
  final String actualTableName = 'parametros_disenio';
  @override
  VerificationContext validateIntegrity(
      Insertable<ParametrosDisenioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('parametro_disenio_id')) {
      context.handle(
          _parametroDisenioIdMeta,
          parametroDisenioId.isAcceptableOrUnknown(
              data['parametro_disenio_id'], _parametroDisenioIdMeta));
    }
    if (data.containsKey('objeto')) {
      context.handle(_objetoMeta,
          objeto.isAcceptableOrUnknown(data['objeto'], _objetoMeta));
    }
    if (data.containsKey('concepto')) {
      context.handle(_conceptoMeta,
          concepto.isAcceptableOrUnknown(data['concepto'], _conceptoMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path'], _pathMeta));
    }
    if (data.containsKey('color1')) {
      context.handle(_color1Meta,
          color1.isAcceptableOrUnknown(data['color1'], _color1Meta));
    }
    if (data.containsKey('color2')) {
      context.handle(_color2Meta,
          color2.isAcceptableOrUnknown(data['color2'], _color2Meta));
    }
    if (data.containsKey('color3')) {
      context.handle(_color3Meta,
          color3.isAcceptableOrUnknown(data['color3'], _color3Meta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {parametroDisenioId};
  @override
  ParametrosDisenioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ParametrosDisenioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ParametrosDisenioTable createAlias(String alias) {
    return $ParametrosDisenioTable(_db, alias);
  }
}

class NivelAcademicoData extends DataClass
    implements Insertable<NivelAcademicoData> {
  final int nivelAcadId;
  final String nombre;
  final bool activo;
  final int entidadId;
  NivelAcademicoData(
      {@required this.nivelAcadId, this.nombre, this.activo, this.entidadId});
  factory NivelAcademicoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return NivelAcademicoData(
      nivelAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_acad_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      activo:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}activo']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nivelAcadId != null) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || activo != null) {
      map['activo'] = Variable<bool>(activo);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    return map;
  }

  NivelAcademicoCompanion toCompanion(bool nullToAbsent) {
    return NivelAcademicoCompanion(
      nivelAcadId: nivelAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcadId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      activo:
          activo == null && nullToAbsent ? const Value.absent() : Value(activo),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
    );
  }

  factory NivelAcademicoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NivelAcademicoData(
      nivelAcadId: serializer.fromJson<int>(json['nivelAcadId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      activo: serializer.fromJson<bool>(json['activo']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nivelAcadId': serializer.toJson<int>(nivelAcadId),
      'nombre': serializer.toJson<String>(nombre),
      'activo': serializer.toJson<bool>(activo),
      'entidadId': serializer.toJson<int>(entidadId),
    };
  }

  NivelAcademicoData copyWith(
          {int nivelAcadId, String nombre, bool activo, int entidadId}) =>
      NivelAcademicoData(
        nivelAcadId: nivelAcadId ?? this.nivelAcadId,
        nombre: nombre ?? this.nombre,
        activo: activo ?? this.activo,
        entidadId: entidadId ?? this.entidadId,
      );
  @override
  String toString() {
    return (StringBuffer('NivelAcademicoData(')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('nombre: $nombre, ')
          ..write('activo: $activo, ')
          ..write('entidadId: $entidadId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(nivelAcadId.hashCode,
      $mrjc(nombre.hashCode, $mrjc(activo.hashCode, entidadId.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NivelAcademicoData &&
          other.nivelAcadId == this.nivelAcadId &&
          other.nombre == this.nombre &&
          other.activo == this.activo &&
          other.entidadId == this.entidadId);
}

class NivelAcademicoCompanion extends UpdateCompanion<NivelAcademicoData> {
  final Value<int> nivelAcadId;
  final Value<String> nombre;
  final Value<bool> activo;
  final Value<int> entidadId;
  const NivelAcademicoCompanion({
    this.nivelAcadId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.activo = const Value.absent(),
    this.entidadId = const Value.absent(),
  });
  NivelAcademicoCompanion.insert({
    this.nivelAcadId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.activo = const Value.absent(),
    this.entidadId = const Value.absent(),
  });
  static Insertable<NivelAcademicoData> custom({
    Expression<int> nivelAcadId,
    Expression<String> nombre,
    Expression<bool> activo,
    Expression<int> entidadId,
  }) {
    return RawValuesInsertable({
      if (nivelAcadId != null) 'nivel_acad_id': nivelAcadId,
      if (nombre != null) 'nombre': nombre,
      if (activo != null) 'activo': activo,
      if (entidadId != null) 'entidad_id': entidadId,
    });
  }

  NivelAcademicoCompanion copyWith(
      {Value<int> nivelAcadId,
      Value<String> nombre,
      Value<bool> activo,
      Value<int> entidadId}) {
    return NivelAcademicoCompanion(
      nivelAcadId: nivelAcadId ?? this.nivelAcadId,
      nombre: nombre ?? this.nombre,
      activo: activo ?? this.activo,
      entidadId: entidadId ?? this.entidadId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nivelAcadId.present) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (activo.present) {
      map['activo'] = Variable<bool>(activo.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NivelAcademicoCompanion(')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('nombre: $nombre, ')
          ..write('activo: $activo, ')
          ..write('entidadId: $entidadId')
          ..write(')'))
        .toString();
  }
}

class $NivelAcademicoTable extends NivelAcademico
    with TableInfo<$NivelAcademicoTable, NivelAcademicoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NivelAcademicoTable(this._db, [this._alias]);
  final VerificationMeta _nivelAcadIdMeta =
      const VerificationMeta('nivelAcadId');
  GeneratedIntColumn _nivelAcadId;
  @override
  GeneratedIntColumn get nivelAcadId =>
      _nivelAcadId ??= _constructNivelAcadId();
  GeneratedIntColumn _constructNivelAcadId() {
    return GeneratedIntColumn(
      'nivel_acad_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _activoMeta = const VerificationMeta('activo');
  GeneratedBoolColumn _activo;
  @override
  GeneratedBoolColumn get activo => _activo ??= _constructActivo();
  GeneratedBoolColumn _constructActivo() {
    return GeneratedBoolColumn(
      'activo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [nivelAcadId, nombre, activo, entidadId];
  @override
  $NivelAcademicoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'nivel_academico';
  @override
  final String actualTableName = 'nivel_academico';
  @override
  VerificationContext validateIntegrity(Insertable<NivelAcademicoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nivel_acad_id')) {
      context.handle(
          _nivelAcadIdMeta,
          nivelAcadId.isAcceptableOrUnknown(
              data['nivel_acad_id'], _nivelAcadIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('activo')) {
      context.handle(_activoMeta,
          activo.isAcceptableOrUnknown(data['activo'], _activoMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nivelAcadId};
  @override
  NivelAcademicoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NivelAcademicoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NivelAcademicoTable createAlias(String alias) {
    return $NivelAcademicoTable(_db, alias);
  }
}

class Periodo extends DataClass implements Insertable<Periodo> {
  final int periodoId;
  final String nombre;
  final int estadoId;
  final String aliasPeriodo;
  final String fecComienzo;
  final String fecTermino;
  final int tipoId;
  final int superId;
  final int geoReferenciaId;
  final int organigramaId;
  final int entidadId;
  final bool activo;
  final int cicloId;
  final int docenteId;
  final String gruponombre;
  final int grupoId;
  final String nivelAcademico;
  final int nivelAcademicoId;
  final int tutorId;
  Periodo(
      {@required this.periodoId,
      this.nombre,
      this.estadoId,
      this.aliasPeriodo,
      this.fecComienzo,
      this.fecTermino,
      this.tipoId,
      this.superId,
      this.geoReferenciaId,
      this.organigramaId,
      this.entidadId,
      this.activo,
      this.cicloId,
      this.docenteId,
      this.gruponombre,
      this.grupoId,
      this.nivelAcademico,
      this.nivelAcademicoId,
      this.tutorId});
  factory Periodo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Periodo(
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      aliasPeriodo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}alias_periodo']),
      fecComienzo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fec_comienzo']),
      fecTermino: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fec_termino']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      superId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}super_id']),
      geoReferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}geo_referencia_id']),
      organigramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}organigrama_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      activo:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}activo']),
      cicloId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}ciclo_id']),
      docenteId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}docente_id']),
      gruponombre: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}gruponombre']),
      grupoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}grupo_id']),
      nivelAcademico: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_academico']),
      nivelAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}nivel_academico_id']),
      tutorId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tutor_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || aliasPeriodo != null) {
      map['alias_periodo'] = Variable<String>(aliasPeriodo);
    }
    if (!nullToAbsent || fecComienzo != null) {
      map['fec_comienzo'] = Variable<String>(fecComienzo);
    }
    if (!nullToAbsent || fecTermino != null) {
      map['fec_termino'] = Variable<String>(fecTermino);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || superId != null) {
      map['super_id'] = Variable<int>(superId);
    }
    if (!nullToAbsent || geoReferenciaId != null) {
      map['geo_referencia_id'] = Variable<int>(geoReferenciaId);
    }
    if (!nullToAbsent || organigramaId != null) {
      map['organigrama_id'] = Variable<int>(organigramaId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || activo != null) {
      map['activo'] = Variable<bool>(activo);
    }
    if (!nullToAbsent || cicloId != null) {
      map['ciclo_id'] = Variable<int>(cicloId);
    }
    if (!nullToAbsent || docenteId != null) {
      map['docente_id'] = Variable<int>(docenteId);
    }
    if (!nullToAbsent || gruponombre != null) {
      map['gruponombre'] = Variable<String>(gruponombre);
    }
    if (!nullToAbsent || grupoId != null) {
      map['grupo_id'] = Variable<int>(grupoId);
    }
    if (!nullToAbsent || nivelAcademico != null) {
      map['nivel_academico'] = Variable<String>(nivelAcademico);
    }
    if (!nullToAbsent || nivelAcademicoId != null) {
      map['nivel_academico_id'] = Variable<int>(nivelAcademicoId);
    }
    if (!nullToAbsent || tutorId != null) {
      map['tutor_id'] = Variable<int>(tutorId);
    }
    return map;
  }

  PeriodosCompanion toCompanion(bool nullToAbsent) {
    return PeriodosCompanion(
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      aliasPeriodo: aliasPeriodo == null && nullToAbsent
          ? const Value.absent()
          : Value(aliasPeriodo),
      fecComienzo: fecComienzo == null && nullToAbsent
          ? const Value.absent()
          : Value(fecComienzo),
      fecTermino: fecTermino == null && nullToAbsent
          ? const Value.absent()
          : Value(fecTermino),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      superId: superId == null && nullToAbsent
          ? const Value.absent()
          : Value(superId),
      geoReferenciaId: geoReferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(geoReferenciaId),
      organigramaId: organigramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(organigramaId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      activo:
          activo == null && nullToAbsent ? const Value.absent() : Value(activo),
      cicloId: cicloId == null && nullToAbsent
          ? const Value.absent()
          : Value(cicloId),
      docenteId: docenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteId),
      gruponombre: gruponombre == null && nullToAbsent
          ? const Value.absent()
          : Value(gruponombre),
      grupoId: grupoId == null && nullToAbsent
          ? const Value.absent()
          : Value(grupoId),
      nivelAcademico: nivelAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcademico),
      nivelAcademicoId: nivelAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcademicoId),
      tutorId: tutorId == null && nullToAbsent
          ? const Value.absent()
          : Value(tutorId),
    );
  }

  factory Periodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Periodo(
      periodoId: serializer.fromJson<int>(json['periodoId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      aliasPeriodo: serializer.fromJson<String>(json['aliasPeriodo']),
      fecComienzo: serializer.fromJson<String>(json['fecComienzo']),
      fecTermino: serializer.fromJson<String>(json['fecTermino']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      superId: serializer.fromJson<int>(json['superId']),
      geoReferenciaId: serializer.fromJson<int>(json['geoReferenciaId']),
      organigramaId: serializer.fromJson<int>(json['organigramaId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      activo: serializer.fromJson<bool>(json['activo']),
      cicloId: serializer.fromJson<int>(json['cicloId']),
      docenteId: serializer.fromJson<int>(json['docenteId']),
      gruponombre: serializer.fromJson<String>(json['gruponombre']),
      grupoId: serializer.fromJson<int>(json['grupoId']),
      nivelAcademico: serializer.fromJson<String>(json['nivelAcademico']),
      nivelAcademicoId: serializer.fromJson<int>(json['nivelAcademicoId']),
      tutorId: serializer.fromJson<int>(json['tutorId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'periodoId': serializer.toJson<int>(periodoId),
      'nombre': serializer.toJson<String>(nombre),
      'estadoId': serializer.toJson<int>(estadoId),
      'aliasPeriodo': serializer.toJson<String>(aliasPeriodo),
      'fecComienzo': serializer.toJson<String>(fecComienzo),
      'fecTermino': serializer.toJson<String>(fecTermino),
      'tipoId': serializer.toJson<int>(tipoId),
      'superId': serializer.toJson<int>(superId),
      'geoReferenciaId': serializer.toJson<int>(geoReferenciaId),
      'organigramaId': serializer.toJson<int>(organigramaId),
      'entidadId': serializer.toJson<int>(entidadId),
      'activo': serializer.toJson<bool>(activo),
      'cicloId': serializer.toJson<int>(cicloId),
      'docenteId': serializer.toJson<int>(docenteId),
      'gruponombre': serializer.toJson<String>(gruponombre),
      'grupoId': serializer.toJson<int>(grupoId),
      'nivelAcademico': serializer.toJson<String>(nivelAcademico),
      'nivelAcademicoId': serializer.toJson<int>(nivelAcademicoId),
      'tutorId': serializer.toJson<int>(tutorId),
    };
  }

  Periodo copyWith(
          {int periodoId,
          String nombre,
          int estadoId,
          String aliasPeriodo,
          String fecComienzo,
          String fecTermino,
          int tipoId,
          int superId,
          int geoReferenciaId,
          int organigramaId,
          int entidadId,
          bool activo,
          int cicloId,
          int docenteId,
          String gruponombre,
          int grupoId,
          String nivelAcademico,
          int nivelAcademicoId,
          int tutorId}) =>
      Periodo(
        periodoId: periodoId ?? this.periodoId,
        nombre: nombre ?? this.nombre,
        estadoId: estadoId ?? this.estadoId,
        aliasPeriodo: aliasPeriodo ?? this.aliasPeriodo,
        fecComienzo: fecComienzo ?? this.fecComienzo,
        fecTermino: fecTermino ?? this.fecTermino,
        tipoId: tipoId ?? this.tipoId,
        superId: superId ?? this.superId,
        geoReferenciaId: geoReferenciaId ?? this.geoReferenciaId,
        organigramaId: organigramaId ?? this.organigramaId,
        entidadId: entidadId ?? this.entidadId,
        activo: activo ?? this.activo,
        cicloId: cicloId ?? this.cicloId,
        docenteId: docenteId ?? this.docenteId,
        gruponombre: gruponombre ?? this.gruponombre,
        grupoId: grupoId ?? this.grupoId,
        nivelAcademico: nivelAcademico ?? this.nivelAcademico,
        nivelAcademicoId: nivelAcademicoId ?? this.nivelAcademicoId,
        tutorId: tutorId ?? this.tutorId,
      );
  @override
  String toString() {
    return (StringBuffer('Periodo(')
          ..write('periodoId: $periodoId, ')
          ..write('nombre: $nombre, ')
          ..write('estadoId: $estadoId, ')
          ..write('aliasPeriodo: $aliasPeriodo, ')
          ..write('fecComienzo: $fecComienzo, ')
          ..write('fecTermino: $fecTermino, ')
          ..write('tipoId: $tipoId, ')
          ..write('superId: $superId, ')
          ..write('geoReferenciaId: $geoReferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('entidadId: $entidadId, ')
          ..write('activo: $activo, ')
          ..write('cicloId: $cicloId, ')
          ..write('docenteId: $docenteId, ')
          ..write('gruponombre: $gruponombre, ')
          ..write('grupoId: $grupoId, ')
          ..write('nivelAcademico: $nivelAcademico, ')
          ..write('nivelAcademicoId: $nivelAcademicoId, ')
          ..write('tutorId: $tutorId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      periodoId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              estadoId.hashCode,
              $mrjc(
                  aliasPeriodo.hashCode,
                  $mrjc(
                      fecComienzo.hashCode,
                      $mrjc(
                          fecTermino.hashCode,
                          $mrjc(
                              tipoId.hashCode,
                              $mrjc(
                                  superId.hashCode,
                                  $mrjc(
                                      geoReferenciaId.hashCode,
                                      $mrjc(
                                          organigramaId.hashCode,
                                          $mrjc(
                                              entidadId.hashCode,
                                              $mrjc(
                                                  activo.hashCode,
                                                  $mrjc(
                                                      cicloId.hashCode,
                                                      $mrjc(
                                                          docenteId.hashCode,
                                                          $mrjc(
                                                              gruponombre
                                                                  .hashCode,
                                                              $mrjc(
                                                                  grupoId
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      nivelAcademico
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          nivelAcademicoId
                                                                              .hashCode,
                                                                          tutorId
                                                                              .hashCode)))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Periodo &&
          other.periodoId == this.periodoId &&
          other.nombre == this.nombre &&
          other.estadoId == this.estadoId &&
          other.aliasPeriodo == this.aliasPeriodo &&
          other.fecComienzo == this.fecComienzo &&
          other.fecTermino == this.fecTermino &&
          other.tipoId == this.tipoId &&
          other.superId == this.superId &&
          other.geoReferenciaId == this.geoReferenciaId &&
          other.organigramaId == this.organigramaId &&
          other.entidadId == this.entidadId &&
          other.activo == this.activo &&
          other.cicloId == this.cicloId &&
          other.docenteId == this.docenteId &&
          other.gruponombre == this.gruponombre &&
          other.grupoId == this.grupoId &&
          other.nivelAcademico == this.nivelAcademico &&
          other.nivelAcademicoId == this.nivelAcademicoId &&
          other.tutorId == this.tutorId);
}

class PeriodosCompanion extends UpdateCompanion<Periodo> {
  final Value<int> periodoId;
  final Value<String> nombre;
  final Value<int> estadoId;
  final Value<String> aliasPeriodo;
  final Value<String> fecComienzo;
  final Value<String> fecTermino;
  final Value<int> tipoId;
  final Value<int> superId;
  final Value<int> geoReferenciaId;
  final Value<int> organigramaId;
  final Value<int> entidadId;
  final Value<bool> activo;
  final Value<int> cicloId;
  final Value<int> docenteId;
  final Value<String> gruponombre;
  final Value<int> grupoId;
  final Value<String> nivelAcademico;
  final Value<int> nivelAcademicoId;
  final Value<int> tutorId;
  const PeriodosCompanion({
    this.periodoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.aliasPeriodo = const Value.absent(),
    this.fecComienzo = const Value.absent(),
    this.fecTermino = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.superId = const Value.absent(),
    this.geoReferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.activo = const Value.absent(),
    this.cicloId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.gruponombre = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.nivelAcademico = const Value.absent(),
    this.nivelAcademicoId = const Value.absent(),
    this.tutorId = const Value.absent(),
  });
  PeriodosCompanion.insert({
    this.periodoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.aliasPeriodo = const Value.absent(),
    this.fecComienzo = const Value.absent(),
    this.fecTermino = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.superId = const Value.absent(),
    this.geoReferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.activo = const Value.absent(),
    this.cicloId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.gruponombre = const Value.absent(),
    this.grupoId = const Value.absent(),
    this.nivelAcademico = const Value.absent(),
    this.nivelAcademicoId = const Value.absent(),
    this.tutorId = const Value.absent(),
  });
  static Insertable<Periodo> custom({
    Expression<int> periodoId,
    Expression<String> nombre,
    Expression<int> estadoId,
    Expression<String> aliasPeriodo,
    Expression<String> fecComienzo,
    Expression<String> fecTermino,
    Expression<int> tipoId,
    Expression<int> superId,
    Expression<int> geoReferenciaId,
    Expression<int> organigramaId,
    Expression<int> entidadId,
    Expression<bool> activo,
    Expression<int> cicloId,
    Expression<int> docenteId,
    Expression<String> gruponombre,
    Expression<int> grupoId,
    Expression<String> nivelAcademico,
    Expression<int> nivelAcademicoId,
    Expression<int> tutorId,
  }) {
    return RawValuesInsertable({
      if (periodoId != null) 'periodo_id': periodoId,
      if (nombre != null) 'nombre': nombre,
      if (estadoId != null) 'estado_id': estadoId,
      if (aliasPeriodo != null) 'alias_periodo': aliasPeriodo,
      if (fecComienzo != null) 'fec_comienzo': fecComienzo,
      if (fecTermino != null) 'fec_termino': fecTermino,
      if (tipoId != null) 'tipo_id': tipoId,
      if (superId != null) 'super_id': superId,
      if (geoReferenciaId != null) 'geo_referencia_id': geoReferenciaId,
      if (organigramaId != null) 'organigrama_id': organigramaId,
      if (entidadId != null) 'entidad_id': entidadId,
      if (activo != null) 'activo': activo,
      if (cicloId != null) 'ciclo_id': cicloId,
      if (docenteId != null) 'docente_id': docenteId,
      if (gruponombre != null) 'gruponombre': gruponombre,
      if (grupoId != null) 'grupo_id': grupoId,
      if (nivelAcademico != null) 'nivel_academico': nivelAcademico,
      if (nivelAcademicoId != null) 'nivel_academico_id': nivelAcademicoId,
      if (tutorId != null) 'tutor_id': tutorId,
    });
  }

  PeriodosCompanion copyWith(
      {Value<int> periodoId,
      Value<String> nombre,
      Value<int> estadoId,
      Value<String> aliasPeriodo,
      Value<String> fecComienzo,
      Value<String> fecTermino,
      Value<int> tipoId,
      Value<int> superId,
      Value<int> geoReferenciaId,
      Value<int> organigramaId,
      Value<int> entidadId,
      Value<bool> activo,
      Value<int> cicloId,
      Value<int> docenteId,
      Value<String> gruponombre,
      Value<int> grupoId,
      Value<String> nivelAcademico,
      Value<int> nivelAcademicoId,
      Value<int> tutorId}) {
    return PeriodosCompanion(
      periodoId: periodoId ?? this.periodoId,
      nombre: nombre ?? this.nombre,
      estadoId: estadoId ?? this.estadoId,
      aliasPeriodo: aliasPeriodo ?? this.aliasPeriodo,
      fecComienzo: fecComienzo ?? this.fecComienzo,
      fecTermino: fecTermino ?? this.fecTermino,
      tipoId: tipoId ?? this.tipoId,
      superId: superId ?? this.superId,
      geoReferenciaId: geoReferenciaId ?? this.geoReferenciaId,
      organigramaId: organigramaId ?? this.organigramaId,
      entidadId: entidadId ?? this.entidadId,
      activo: activo ?? this.activo,
      cicloId: cicloId ?? this.cicloId,
      docenteId: docenteId ?? this.docenteId,
      gruponombre: gruponombre ?? this.gruponombre,
      grupoId: grupoId ?? this.grupoId,
      nivelAcademico: nivelAcademico ?? this.nivelAcademico,
      nivelAcademicoId: nivelAcademicoId ?? this.nivelAcademicoId,
      tutorId: tutorId ?? this.tutorId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (aliasPeriodo.present) {
      map['alias_periodo'] = Variable<String>(aliasPeriodo.value);
    }
    if (fecComienzo.present) {
      map['fec_comienzo'] = Variable<String>(fecComienzo.value);
    }
    if (fecTermino.present) {
      map['fec_termino'] = Variable<String>(fecTermino.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (superId.present) {
      map['super_id'] = Variable<int>(superId.value);
    }
    if (geoReferenciaId.present) {
      map['geo_referencia_id'] = Variable<int>(geoReferenciaId.value);
    }
    if (organigramaId.present) {
      map['organigrama_id'] = Variable<int>(organigramaId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (activo.present) {
      map['activo'] = Variable<bool>(activo.value);
    }
    if (cicloId.present) {
      map['ciclo_id'] = Variable<int>(cicloId.value);
    }
    if (docenteId.present) {
      map['docente_id'] = Variable<int>(docenteId.value);
    }
    if (gruponombre.present) {
      map['gruponombre'] = Variable<String>(gruponombre.value);
    }
    if (grupoId.present) {
      map['grupo_id'] = Variable<int>(grupoId.value);
    }
    if (nivelAcademico.present) {
      map['nivel_academico'] = Variable<String>(nivelAcademico.value);
    }
    if (nivelAcademicoId.present) {
      map['nivel_academico_id'] = Variable<int>(nivelAcademicoId.value);
    }
    if (tutorId.present) {
      map['tutor_id'] = Variable<int>(tutorId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeriodosCompanion(')
          ..write('periodoId: $periodoId, ')
          ..write('nombre: $nombre, ')
          ..write('estadoId: $estadoId, ')
          ..write('aliasPeriodo: $aliasPeriodo, ')
          ..write('fecComienzo: $fecComienzo, ')
          ..write('fecTermino: $fecTermino, ')
          ..write('tipoId: $tipoId, ')
          ..write('superId: $superId, ')
          ..write('geoReferenciaId: $geoReferenciaId, ')
          ..write('organigramaId: $organigramaId, ')
          ..write('entidadId: $entidadId, ')
          ..write('activo: $activo, ')
          ..write('cicloId: $cicloId, ')
          ..write('docenteId: $docenteId, ')
          ..write('gruponombre: $gruponombre, ')
          ..write('grupoId: $grupoId, ')
          ..write('nivelAcademico: $nivelAcademico, ')
          ..write('nivelAcademicoId: $nivelAcademicoId, ')
          ..write('tutorId: $tutorId')
          ..write(')'))
        .toString();
  }
}

class $PeriodosTable extends Periodos with TableInfo<$PeriodosTable, Periodo> {
  final GeneratedDatabase _db;
  final String _alias;
  $PeriodosTable(this._db, [this._alias]);
  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aliasPeriodoMeta =
      const VerificationMeta('aliasPeriodo');
  GeneratedTextColumn _aliasPeriodo;
  @override
  GeneratedTextColumn get aliasPeriodo =>
      _aliasPeriodo ??= _constructAliasPeriodo();
  GeneratedTextColumn _constructAliasPeriodo() {
    return GeneratedTextColumn(
      'alias_periodo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fecComienzoMeta =
      const VerificationMeta('fecComienzo');
  GeneratedTextColumn _fecComienzo;
  @override
  GeneratedTextColumn get fecComienzo =>
      _fecComienzo ??= _constructFecComienzo();
  GeneratedTextColumn _constructFecComienzo() {
    return GeneratedTextColumn(
      'fec_comienzo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fecTerminoMeta = const VerificationMeta('fecTermino');
  GeneratedTextColumn _fecTermino;
  @override
  GeneratedTextColumn get fecTermino => _fecTermino ??= _constructFecTermino();
  GeneratedTextColumn _constructFecTermino() {
    return GeneratedTextColumn(
      'fec_termino',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _superIdMeta = const VerificationMeta('superId');
  GeneratedIntColumn _superId;
  @override
  GeneratedIntColumn get superId => _superId ??= _constructSuperId();
  GeneratedIntColumn _constructSuperId() {
    return GeneratedIntColumn(
      'super_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _geoReferenciaIdMeta =
      const VerificationMeta('geoReferenciaId');
  GeneratedIntColumn _geoReferenciaId;
  @override
  GeneratedIntColumn get geoReferenciaId =>
      _geoReferenciaId ??= _constructGeoReferenciaId();
  GeneratedIntColumn _constructGeoReferenciaId() {
    return GeneratedIntColumn(
      'geo_referencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _organigramaIdMeta =
      const VerificationMeta('organigramaId');
  GeneratedIntColumn _organigramaId;
  @override
  GeneratedIntColumn get organigramaId =>
      _organigramaId ??= _constructOrganigramaId();
  GeneratedIntColumn _constructOrganigramaId() {
    return GeneratedIntColumn(
      'organigrama_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _activoMeta = const VerificationMeta('activo');
  GeneratedBoolColumn _activo;
  @override
  GeneratedBoolColumn get activo => _activo ??= _constructActivo();
  GeneratedBoolColumn _constructActivo() {
    return GeneratedBoolColumn(
      'activo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cicloIdMeta = const VerificationMeta('cicloId');
  GeneratedIntColumn _cicloId;
  @override
  GeneratedIntColumn get cicloId => _cicloId ??= _constructCicloId();
  GeneratedIntColumn _constructCicloId() {
    return GeneratedIntColumn(
      'ciclo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteIdMeta = const VerificationMeta('docenteId');
  GeneratedIntColumn _docenteId;
  @override
  GeneratedIntColumn get docenteId => _docenteId ??= _constructDocenteId();
  GeneratedIntColumn _constructDocenteId() {
    return GeneratedIntColumn(
      'docente_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _gruponombreMeta =
      const VerificationMeta('gruponombre');
  GeneratedTextColumn _gruponombre;
  @override
  GeneratedTextColumn get gruponombre =>
      _gruponombre ??= _constructGruponombre();
  GeneratedTextColumn _constructGruponombre() {
    return GeneratedTextColumn(
      'gruponombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _grupoIdMeta = const VerificationMeta('grupoId');
  GeneratedIntColumn _grupoId;
  @override
  GeneratedIntColumn get grupoId => _grupoId ??= _constructGrupoId();
  GeneratedIntColumn _constructGrupoId() {
    return GeneratedIntColumn(
      'grupo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcademicoMeta =
      const VerificationMeta('nivelAcademico');
  GeneratedTextColumn _nivelAcademico;
  @override
  GeneratedTextColumn get nivelAcademico =>
      _nivelAcademico ??= _constructNivelAcademico();
  GeneratedTextColumn _constructNivelAcademico() {
    return GeneratedTextColumn(
      'nivel_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcademicoIdMeta =
      const VerificationMeta('nivelAcademicoId');
  GeneratedIntColumn _nivelAcademicoId;
  @override
  GeneratedIntColumn get nivelAcademicoId =>
      _nivelAcademicoId ??= _constructNivelAcademicoId();
  GeneratedIntColumn _constructNivelAcademicoId() {
    return GeneratedIntColumn(
      'nivel_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tutorIdMeta = const VerificationMeta('tutorId');
  GeneratedIntColumn _tutorId;
  @override
  GeneratedIntColumn get tutorId => _tutorId ??= _constructTutorId();
  GeneratedIntColumn _constructTutorId() {
    return GeneratedIntColumn(
      'tutor_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        periodoId,
        nombre,
        estadoId,
        aliasPeriodo,
        fecComienzo,
        fecTermino,
        tipoId,
        superId,
        geoReferenciaId,
        organigramaId,
        entidadId,
        activo,
        cicloId,
        docenteId,
        gruponombre,
        grupoId,
        nivelAcademico,
        nivelAcademicoId,
        tutorId
      ];
  @override
  $PeriodosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'periodos';
  @override
  final String actualTableName = 'periodos';
  @override
  VerificationContext validateIntegrity(Insertable<Periodo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('alias_periodo')) {
      context.handle(
          _aliasPeriodoMeta,
          aliasPeriodo.isAcceptableOrUnknown(
              data['alias_periodo'], _aliasPeriodoMeta));
    }
    if (data.containsKey('fec_comienzo')) {
      context.handle(
          _fecComienzoMeta,
          fecComienzo.isAcceptableOrUnknown(
              data['fec_comienzo'], _fecComienzoMeta));
    }
    if (data.containsKey('fec_termino')) {
      context.handle(
          _fecTerminoMeta,
          fecTermino.isAcceptableOrUnknown(
              data['fec_termino'], _fecTerminoMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('super_id')) {
      context.handle(_superIdMeta,
          superId.isAcceptableOrUnknown(data['super_id'], _superIdMeta));
    }
    if (data.containsKey('geo_referencia_id')) {
      context.handle(
          _geoReferenciaIdMeta,
          geoReferenciaId.isAcceptableOrUnknown(
              data['geo_referencia_id'], _geoReferenciaIdMeta));
    }
    if (data.containsKey('organigrama_id')) {
      context.handle(
          _organigramaIdMeta,
          organigramaId.isAcceptableOrUnknown(
              data['organigrama_id'], _organigramaIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('activo')) {
      context.handle(_activoMeta,
          activo.isAcceptableOrUnknown(data['activo'], _activoMeta));
    }
    if (data.containsKey('ciclo_id')) {
      context.handle(_cicloIdMeta,
          cicloId.isAcceptableOrUnknown(data['ciclo_id'], _cicloIdMeta));
    }
    if (data.containsKey('docente_id')) {
      context.handle(_docenteIdMeta,
          docenteId.isAcceptableOrUnknown(data['docente_id'], _docenteIdMeta));
    }
    if (data.containsKey('gruponombre')) {
      context.handle(
          _gruponombreMeta,
          gruponombre.isAcceptableOrUnknown(
              data['gruponombre'], _gruponombreMeta));
    }
    if (data.containsKey('grupo_id')) {
      context.handle(_grupoIdMeta,
          grupoId.isAcceptableOrUnknown(data['grupo_id'], _grupoIdMeta));
    }
    if (data.containsKey('nivel_academico')) {
      context.handle(
          _nivelAcademicoMeta,
          nivelAcademico.isAcceptableOrUnknown(
              data['nivel_academico'], _nivelAcademicoMeta));
    }
    if (data.containsKey('nivel_academico_id')) {
      context.handle(
          _nivelAcademicoIdMeta,
          nivelAcademicoId.isAcceptableOrUnknown(
              data['nivel_academico_id'], _nivelAcademicoIdMeta));
    }
    if (data.containsKey('tutor_id')) {
      context.handle(_tutorIdMeta,
          tutorId.isAcceptableOrUnknown(data['tutor_id'], _tutorIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {periodoId};
  @override
  Periodo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Periodo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PeriodosTable createAlias(String alias) {
    return $PeriodosTable(_db, alias);
  }
}

class PlanCurso extends DataClass implements Insertable<PlanCurso> {
  final int planCursoId;
  final int cursoId;
  final int periodoId;
  final int planEstudiosId;
  PlanCurso(
      {@required this.planCursoId,
      this.cursoId,
      this.periodoId,
      this.planEstudiosId});
  factory PlanCurso.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return PlanCurso(
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      cursoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}curso_id']),
      periodoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}periodo_id']),
      planEstudiosId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_estudios_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || cursoId != null) {
      map['curso_id'] = Variable<int>(cursoId);
    }
    if (!nullToAbsent || periodoId != null) {
      map['periodo_id'] = Variable<int>(periodoId);
    }
    if (!nullToAbsent || planEstudiosId != null) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId);
    }
    return map;
  }

  PlanCursosCompanion toCompanion(bool nullToAbsent) {
    return PlanCursosCompanion(
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      cursoId: cursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cursoId),
      periodoId: periodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodoId),
      planEstudiosId: planEstudiosId == null && nullToAbsent
          ? const Value.absent()
          : Value(planEstudiosId),
    );
  }

  factory PlanCurso.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlanCurso(
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      cursoId: serializer.fromJson<int>(json['cursoId']),
      periodoId: serializer.fromJson<int>(json['periodoId']),
      planEstudiosId: serializer.fromJson<int>(json['planEstudiosId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planCursoId': serializer.toJson<int>(planCursoId),
      'cursoId': serializer.toJson<int>(cursoId),
      'periodoId': serializer.toJson<int>(periodoId),
      'planEstudiosId': serializer.toJson<int>(planEstudiosId),
    };
  }

  PlanCurso copyWith(
          {int planCursoId, int cursoId, int periodoId, int planEstudiosId}) =>
      PlanCurso(
        planCursoId: planCursoId ?? this.planCursoId,
        cursoId: cursoId ?? this.cursoId,
        periodoId: periodoId ?? this.periodoId,
        planEstudiosId: planEstudiosId ?? this.planEstudiosId,
      );
  @override
  String toString() {
    return (StringBuffer('PlanCurso(')
          ..write('planCursoId: $planCursoId, ')
          ..write('cursoId: $cursoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('planEstudiosId: $planEstudiosId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      planCursoId.hashCode,
      $mrjc(cursoId.hashCode,
          $mrjc(periodoId.hashCode, planEstudiosId.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlanCurso &&
          other.planCursoId == this.planCursoId &&
          other.cursoId == this.cursoId &&
          other.periodoId == this.periodoId &&
          other.planEstudiosId == this.planEstudiosId);
}

class PlanCursosCompanion extends UpdateCompanion<PlanCurso> {
  final Value<int> planCursoId;
  final Value<int> cursoId;
  final Value<int> periodoId;
  final Value<int> planEstudiosId;
  const PlanCursosCompanion({
    this.planCursoId = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.planEstudiosId = const Value.absent(),
  });
  PlanCursosCompanion.insert({
    this.planCursoId = const Value.absent(),
    this.cursoId = const Value.absent(),
    this.periodoId = const Value.absent(),
    this.planEstudiosId = const Value.absent(),
  });
  static Insertable<PlanCurso> custom({
    Expression<int> planCursoId,
    Expression<int> cursoId,
    Expression<int> periodoId,
    Expression<int> planEstudiosId,
  }) {
    return RawValuesInsertable({
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (cursoId != null) 'curso_id': cursoId,
      if (periodoId != null) 'periodo_id': periodoId,
      if (planEstudiosId != null) 'plan_estudios_id': planEstudiosId,
    });
  }

  PlanCursosCompanion copyWith(
      {Value<int> planCursoId,
      Value<int> cursoId,
      Value<int> periodoId,
      Value<int> planEstudiosId}) {
    return PlanCursosCompanion(
      planCursoId: planCursoId ?? this.planCursoId,
      cursoId: cursoId ?? this.cursoId,
      periodoId: periodoId ?? this.periodoId,
      planEstudiosId: planEstudiosId ?? this.planEstudiosId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (cursoId.present) {
      map['curso_id'] = Variable<int>(cursoId.value);
    }
    if (periodoId.present) {
      map['periodo_id'] = Variable<int>(periodoId.value);
    }
    if (planEstudiosId.present) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanCursosCompanion(')
          ..write('planCursoId: $planCursoId, ')
          ..write('cursoId: $cursoId, ')
          ..write('periodoId: $periodoId, ')
          ..write('planEstudiosId: $planEstudiosId')
          ..write(')'))
        .toString();
  }
}

class $PlanCursosTable extends PlanCursos
    with TableInfo<$PlanCursosTable, PlanCurso> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlanCursosTable(this._db, [this._alias]);
  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cursoIdMeta = const VerificationMeta('cursoId');
  GeneratedIntColumn _cursoId;
  @override
  GeneratedIntColumn get cursoId => _cursoId ??= _constructCursoId();
  GeneratedIntColumn _constructCursoId() {
    return GeneratedIntColumn(
      'curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _periodoIdMeta = const VerificationMeta('periodoId');
  GeneratedIntColumn _periodoId;
  @override
  GeneratedIntColumn get periodoId => _periodoId ??= _constructPeriodoId();
  GeneratedIntColumn _constructPeriodoId() {
    return GeneratedIntColumn(
      'periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _planEstudiosIdMeta =
      const VerificationMeta('planEstudiosId');
  GeneratedIntColumn _planEstudiosId;
  @override
  GeneratedIntColumn get planEstudiosId =>
      _planEstudiosId ??= _constructPlanEstudiosId();
  GeneratedIntColumn _constructPlanEstudiosId() {
    return GeneratedIntColumn(
      'plan_estudios_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [planCursoId, cursoId, periodoId, planEstudiosId];
  @override
  $PlanCursosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plan_cursos';
  @override
  final String actualTableName = 'plan_cursos';
  @override
  VerificationContext validateIntegrity(Insertable<PlanCurso> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('curso_id')) {
      context.handle(_cursoIdMeta,
          cursoId.isAcceptableOrUnknown(data['curso_id'], _cursoIdMeta));
    }
    if (data.containsKey('periodo_id')) {
      context.handle(_periodoIdMeta,
          periodoId.isAcceptableOrUnknown(data['periodo_id'], _periodoIdMeta));
    }
    if (data.containsKey('plan_estudios_id')) {
      context.handle(
          _planEstudiosIdMeta,
          planEstudiosId.isAcceptableOrUnknown(
              data['plan_estudios_id'], _planEstudiosIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planCursoId};
  @override
  PlanCurso map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlanCurso.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlanCursosTable createAlias(String alias) {
    return $PlanCursosTable(_db, alias);
  }
}

class PlanEstudioData extends DataClass implements Insertable<PlanEstudioData> {
  final int planEstudiosId;
  final int programaEduId;
  final String nombrePlan;
  final String aliasPlan;
  final int estadoId;
  final String nroResolucion;
  final String fechaResolucion;
  PlanEstudioData(
      {@required this.planEstudiosId,
      this.programaEduId,
      this.nombrePlan,
      this.aliasPlan,
      this.estadoId,
      this.nroResolucion,
      this.fechaResolucion});
  factory PlanEstudioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PlanEstudioData(
      planEstudiosId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_estudios_id']),
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      nombrePlan: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_plan']),
      aliasPlan: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}alias_plan']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      nroResolucion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_resolucion']),
      fechaResolucion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_resolucion']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || planEstudiosId != null) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId);
    }
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || nombrePlan != null) {
      map['nombre_plan'] = Variable<String>(nombrePlan);
    }
    if (!nullToAbsent || aliasPlan != null) {
      map['alias_plan'] = Variable<String>(aliasPlan);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || nroResolucion != null) {
      map['nro_resolucion'] = Variable<String>(nroResolucion);
    }
    if (!nullToAbsent || fechaResolucion != null) {
      map['fecha_resolucion'] = Variable<String>(fechaResolucion);
    }
    return map;
  }

  PlanEstudioCompanion toCompanion(bool nullToAbsent) {
    return PlanEstudioCompanion(
      planEstudiosId: planEstudiosId == null && nullToAbsent
          ? const Value.absent()
          : Value(planEstudiosId),
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      nombrePlan: nombrePlan == null && nullToAbsent
          ? const Value.absent()
          : Value(nombrePlan),
      aliasPlan: aliasPlan == null && nullToAbsent
          ? const Value.absent()
          : Value(aliasPlan),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      nroResolucion: nroResolucion == null && nullToAbsent
          ? const Value.absent()
          : Value(nroResolucion),
      fechaResolucion: fechaResolucion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaResolucion),
    );
  }

  factory PlanEstudioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlanEstudioData(
      planEstudiosId: serializer.fromJson<int>(json['planEstudiosId']),
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      nombrePlan: serializer.fromJson<String>(json['nombrePlan']),
      aliasPlan: serializer.fromJson<String>(json['aliasPlan']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      nroResolucion: serializer.fromJson<String>(json['nroResolucion']),
      fechaResolucion: serializer.fromJson<String>(json['fechaResolucion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planEstudiosId': serializer.toJson<int>(planEstudiosId),
      'programaEduId': serializer.toJson<int>(programaEduId),
      'nombrePlan': serializer.toJson<String>(nombrePlan),
      'aliasPlan': serializer.toJson<String>(aliasPlan),
      'estadoId': serializer.toJson<int>(estadoId),
      'nroResolucion': serializer.toJson<String>(nroResolucion),
      'fechaResolucion': serializer.toJson<String>(fechaResolucion),
    };
  }

  PlanEstudioData copyWith(
          {int planEstudiosId,
          int programaEduId,
          String nombrePlan,
          String aliasPlan,
          int estadoId,
          String nroResolucion,
          String fechaResolucion}) =>
      PlanEstudioData(
        planEstudiosId: planEstudiosId ?? this.planEstudiosId,
        programaEduId: programaEduId ?? this.programaEduId,
        nombrePlan: nombrePlan ?? this.nombrePlan,
        aliasPlan: aliasPlan ?? this.aliasPlan,
        estadoId: estadoId ?? this.estadoId,
        nroResolucion: nroResolucion ?? this.nroResolucion,
        fechaResolucion: fechaResolucion ?? this.fechaResolucion,
      );
  @override
  String toString() {
    return (StringBuffer('PlanEstudioData(')
          ..write('planEstudiosId: $planEstudiosId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombrePlan: $nombrePlan, ')
          ..write('aliasPlan: $aliasPlan, ')
          ..write('estadoId: $estadoId, ')
          ..write('nroResolucion: $nroResolucion, ')
          ..write('fechaResolucion: $fechaResolucion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      planEstudiosId.hashCode,
      $mrjc(
          programaEduId.hashCode,
          $mrjc(
              nombrePlan.hashCode,
              $mrjc(
                  aliasPlan.hashCode,
                  $mrjc(
                      estadoId.hashCode,
                      $mrjc(nroResolucion.hashCode,
                          fechaResolucion.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlanEstudioData &&
          other.planEstudiosId == this.planEstudiosId &&
          other.programaEduId == this.programaEduId &&
          other.nombrePlan == this.nombrePlan &&
          other.aliasPlan == this.aliasPlan &&
          other.estadoId == this.estadoId &&
          other.nroResolucion == this.nroResolucion &&
          other.fechaResolucion == this.fechaResolucion);
}

class PlanEstudioCompanion extends UpdateCompanion<PlanEstudioData> {
  final Value<int> planEstudiosId;
  final Value<int> programaEduId;
  final Value<String> nombrePlan;
  final Value<String> aliasPlan;
  final Value<int> estadoId;
  final Value<String> nroResolucion;
  final Value<String> fechaResolucion;
  const PlanEstudioCompanion({
    this.planEstudiosId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.nombrePlan = const Value.absent(),
    this.aliasPlan = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.nroResolucion = const Value.absent(),
    this.fechaResolucion = const Value.absent(),
  });
  PlanEstudioCompanion.insert({
    this.planEstudiosId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.nombrePlan = const Value.absent(),
    this.aliasPlan = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.nroResolucion = const Value.absent(),
    this.fechaResolucion = const Value.absent(),
  });
  static Insertable<PlanEstudioData> custom({
    Expression<int> planEstudiosId,
    Expression<int> programaEduId,
    Expression<String> nombrePlan,
    Expression<String> aliasPlan,
    Expression<int> estadoId,
    Expression<String> nroResolucion,
    Expression<String> fechaResolucion,
  }) {
    return RawValuesInsertable({
      if (planEstudiosId != null) 'plan_estudios_id': planEstudiosId,
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (nombrePlan != null) 'nombre_plan': nombrePlan,
      if (aliasPlan != null) 'alias_plan': aliasPlan,
      if (estadoId != null) 'estado_id': estadoId,
      if (nroResolucion != null) 'nro_resolucion': nroResolucion,
      if (fechaResolucion != null) 'fecha_resolucion': fechaResolucion,
    });
  }

  PlanEstudioCompanion copyWith(
      {Value<int> planEstudiosId,
      Value<int> programaEduId,
      Value<String> nombrePlan,
      Value<String> aliasPlan,
      Value<int> estadoId,
      Value<String> nroResolucion,
      Value<String> fechaResolucion}) {
    return PlanEstudioCompanion(
      planEstudiosId: planEstudiosId ?? this.planEstudiosId,
      programaEduId: programaEduId ?? this.programaEduId,
      nombrePlan: nombrePlan ?? this.nombrePlan,
      aliasPlan: aliasPlan ?? this.aliasPlan,
      estadoId: estadoId ?? this.estadoId,
      nroResolucion: nroResolucion ?? this.nroResolucion,
      fechaResolucion: fechaResolucion ?? this.fechaResolucion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planEstudiosId.present) {
      map['plan_estudios_id'] = Variable<int>(planEstudiosId.value);
    }
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (nombrePlan.present) {
      map['nombre_plan'] = Variable<String>(nombrePlan.value);
    }
    if (aliasPlan.present) {
      map['alias_plan'] = Variable<String>(aliasPlan.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (nroResolucion.present) {
      map['nro_resolucion'] = Variable<String>(nroResolucion.value);
    }
    if (fechaResolucion.present) {
      map['fecha_resolucion'] = Variable<String>(fechaResolucion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanEstudioCompanion(')
          ..write('planEstudiosId: $planEstudiosId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombrePlan: $nombrePlan, ')
          ..write('aliasPlan: $aliasPlan, ')
          ..write('estadoId: $estadoId, ')
          ..write('nroResolucion: $nroResolucion, ')
          ..write('fechaResolucion: $fechaResolucion')
          ..write(')'))
        .toString();
  }
}

class $PlanEstudioTable extends PlanEstudio
    with TableInfo<$PlanEstudioTable, PlanEstudioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlanEstudioTable(this._db, [this._alias]);
  final VerificationMeta _planEstudiosIdMeta =
      const VerificationMeta('planEstudiosId');
  GeneratedIntColumn _planEstudiosId;
  @override
  GeneratedIntColumn get planEstudiosId =>
      _planEstudiosId ??= _constructPlanEstudiosId();
  GeneratedIntColumn _constructPlanEstudiosId() {
    return GeneratedIntColumn(
      'plan_estudios_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombrePlanMeta = const VerificationMeta('nombrePlan');
  GeneratedTextColumn _nombrePlan;
  @override
  GeneratedTextColumn get nombrePlan => _nombrePlan ??= _constructNombrePlan();
  GeneratedTextColumn _constructNombrePlan() {
    return GeneratedTextColumn(
      'nombre_plan',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aliasPlanMeta = const VerificationMeta('aliasPlan');
  GeneratedTextColumn _aliasPlan;
  @override
  GeneratedTextColumn get aliasPlan => _aliasPlan ??= _constructAliasPlan();
  GeneratedTextColumn _constructAliasPlan() {
    return GeneratedTextColumn(
      'alias_plan',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nroResolucionMeta =
      const VerificationMeta('nroResolucion');
  GeneratedTextColumn _nroResolucion;
  @override
  GeneratedTextColumn get nroResolucion =>
      _nroResolucion ??= _constructNroResolucion();
  GeneratedTextColumn _constructNroResolucion() {
    return GeneratedTextColumn(
      'nro_resolucion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaResolucionMeta =
      const VerificationMeta('fechaResolucion');
  GeneratedTextColumn _fechaResolucion;
  @override
  GeneratedTextColumn get fechaResolucion =>
      _fechaResolucion ??= _constructFechaResolucion();
  GeneratedTextColumn _constructFechaResolucion() {
    return GeneratedTextColumn(
      'fecha_resolucion',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        planEstudiosId,
        programaEduId,
        nombrePlan,
        aliasPlan,
        estadoId,
        nroResolucion,
        fechaResolucion
      ];
  @override
  $PlanEstudioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plan_estudio';
  @override
  final String actualTableName = 'plan_estudio';
  @override
  VerificationContext validateIntegrity(Insertable<PlanEstudioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plan_estudios_id')) {
      context.handle(
          _planEstudiosIdMeta,
          planEstudiosId.isAcceptableOrUnknown(
              data['plan_estudios_id'], _planEstudiosIdMeta));
    }
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('nombre_plan')) {
      context.handle(
          _nombrePlanMeta,
          nombrePlan.isAcceptableOrUnknown(
              data['nombre_plan'], _nombrePlanMeta));
    }
    if (data.containsKey('alias_plan')) {
      context.handle(_aliasPlanMeta,
          aliasPlan.isAcceptableOrUnknown(data['alias_plan'], _aliasPlanMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('nro_resolucion')) {
      context.handle(
          _nroResolucionMeta,
          nroResolucion.isAcceptableOrUnknown(
              data['nro_resolucion'], _nroResolucionMeta));
    }
    if (data.containsKey('fecha_resolucion')) {
      context.handle(
          _fechaResolucionMeta,
          fechaResolucion.isAcceptableOrUnknown(
              data['fecha_resolucion'], _fechaResolucionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planEstudiosId};
  @override
  PlanEstudioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlanEstudioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlanEstudioTable createAlias(String alias) {
    return $PlanEstudioTable(_db, alias);
  }
}

class ProgramasEducativoData extends DataClass
    implements Insertable<ProgramasEducativoData> {
  final int programaEduId;
  final String nombre;
  final String nroCiclos;
  final int nivelAcadId;
  final int tipoEvaluacionId;
  final int estadoId;
  final int entidadId;
  final int tipoInformeSiagieId;
  final bool toogle;
  final int tipoProgramaId;
  final int tipoMatriculaId;
  ProgramasEducativoData(
      {@required this.programaEduId,
      this.nombre,
      this.nroCiclos,
      this.nivelAcadId,
      this.tipoEvaluacionId,
      this.estadoId,
      this.entidadId,
      this.tipoInformeSiagieId,
      this.toogle,
      this.tipoProgramaId,
      this.tipoMatriculaId});
  factory ProgramasEducativoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ProgramasEducativoData(
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      nroCiclos: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_ciclos']),
      nivelAcadId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nivel_acad_id']),
      tipoEvaluacionId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_evaluacion_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      tipoInformeSiagieId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_informe_siagie_id']),
      toogle:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}toogle']),
      tipoProgramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_programa_id']),
      tipoMatriculaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_matricula_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || nroCiclos != null) {
      map['nro_ciclos'] = Variable<String>(nroCiclos);
    }
    if (!nullToAbsent || nivelAcadId != null) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId);
    }
    if (!nullToAbsent || tipoEvaluacionId != null) {
      map['tipo_evaluacion_id'] = Variable<int>(tipoEvaluacionId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || tipoInformeSiagieId != null) {
      map['tipo_informe_siagie_id'] = Variable<int>(tipoInformeSiagieId);
    }
    if (!nullToAbsent || toogle != null) {
      map['toogle'] = Variable<bool>(toogle);
    }
    if (!nullToAbsent || tipoProgramaId != null) {
      map['tipo_programa_id'] = Variable<int>(tipoProgramaId);
    }
    if (!nullToAbsent || tipoMatriculaId != null) {
      map['tipo_matricula_id'] = Variable<int>(tipoMatriculaId);
    }
    return map;
  }

  ProgramasEducativoCompanion toCompanion(bool nullToAbsent) {
    return ProgramasEducativoCompanion(
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      nroCiclos: nroCiclos == null && nullToAbsent
          ? const Value.absent()
          : Value(nroCiclos),
      nivelAcadId: nivelAcadId == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelAcadId),
      tipoEvaluacionId: tipoEvaluacionId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoEvaluacionId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      tipoInformeSiagieId: tipoInformeSiagieId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoInformeSiagieId),
      toogle:
          toogle == null && nullToAbsent ? const Value.absent() : Value(toogle),
      tipoProgramaId: tipoProgramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoProgramaId),
      tipoMatriculaId: tipoMatriculaId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoMatriculaId),
    );
  }

  factory ProgramasEducativoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ProgramasEducativoData(
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      nroCiclos: serializer.fromJson<String>(json['nroCiclos']),
      nivelAcadId: serializer.fromJson<int>(json['nivelAcadId']),
      tipoEvaluacionId: serializer.fromJson<int>(json['tipoEvaluacionId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      tipoInformeSiagieId:
          serializer.fromJson<int>(json['tipoInformeSiagieId']),
      toogle: serializer.fromJson<bool>(json['toogle']),
      tipoProgramaId: serializer.fromJson<int>(json['tipoProgramaId']),
      tipoMatriculaId: serializer.fromJson<int>(json['tipoMatriculaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'programaEduId': serializer.toJson<int>(programaEduId),
      'nombre': serializer.toJson<String>(nombre),
      'nroCiclos': serializer.toJson<String>(nroCiclos),
      'nivelAcadId': serializer.toJson<int>(nivelAcadId),
      'tipoEvaluacionId': serializer.toJson<int>(tipoEvaluacionId),
      'estadoId': serializer.toJson<int>(estadoId),
      'entidadId': serializer.toJson<int>(entidadId),
      'tipoInformeSiagieId': serializer.toJson<int>(tipoInformeSiagieId),
      'toogle': serializer.toJson<bool>(toogle),
      'tipoProgramaId': serializer.toJson<int>(tipoProgramaId),
      'tipoMatriculaId': serializer.toJson<int>(tipoMatriculaId),
    };
  }

  ProgramasEducativoData copyWith(
          {int programaEduId,
          String nombre,
          String nroCiclos,
          int nivelAcadId,
          int tipoEvaluacionId,
          int estadoId,
          int entidadId,
          int tipoInformeSiagieId,
          bool toogle,
          int tipoProgramaId,
          int tipoMatriculaId}) =>
      ProgramasEducativoData(
        programaEduId: programaEduId ?? this.programaEduId,
        nombre: nombre ?? this.nombre,
        nroCiclos: nroCiclos ?? this.nroCiclos,
        nivelAcadId: nivelAcadId ?? this.nivelAcadId,
        tipoEvaluacionId: tipoEvaluacionId ?? this.tipoEvaluacionId,
        estadoId: estadoId ?? this.estadoId,
        entidadId: entidadId ?? this.entidadId,
        tipoInformeSiagieId: tipoInformeSiagieId ?? this.tipoInformeSiagieId,
        toogle: toogle ?? this.toogle,
        tipoProgramaId: tipoProgramaId ?? this.tipoProgramaId,
        tipoMatriculaId: tipoMatriculaId ?? this.tipoMatriculaId,
      );
  @override
  String toString() {
    return (StringBuffer('ProgramasEducativoData(')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombre: $nombre, ')
          ..write('nroCiclos: $nroCiclos, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoEvaluacionId: $tipoEvaluacionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('tipoInformeSiagieId: $tipoInformeSiagieId, ')
          ..write('toogle: $toogle, ')
          ..write('tipoProgramaId: $tipoProgramaId, ')
          ..write('tipoMatriculaId: $tipoMatriculaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      programaEduId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              nroCiclos.hashCode,
              $mrjc(
                  nivelAcadId.hashCode,
                  $mrjc(
                      tipoEvaluacionId.hashCode,
                      $mrjc(
                          estadoId.hashCode,
                          $mrjc(
                              entidadId.hashCode,
                              $mrjc(
                                  tipoInformeSiagieId.hashCode,
                                  $mrjc(
                                      toogle.hashCode,
                                      $mrjc(tipoProgramaId.hashCode,
                                          tipoMatriculaId.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ProgramasEducativoData &&
          other.programaEduId == this.programaEduId &&
          other.nombre == this.nombre &&
          other.nroCiclos == this.nroCiclos &&
          other.nivelAcadId == this.nivelAcadId &&
          other.tipoEvaluacionId == this.tipoEvaluacionId &&
          other.estadoId == this.estadoId &&
          other.entidadId == this.entidadId &&
          other.tipoInformeSiagieId == this.tipoInformeSiagieId &&
          other.toogle == this.toogle &&
          other.tipoProgramaId == this.tipoProgramaId &&
          other.tipoMatriculaId == this.tipoMatriculaId);
}

class ProgramasEducativoCompanion
    extends UpdateCompanion<ProgramasEducativoData> {
  final Value<int> programaEduId;
  final Value<String> nombre;
  final Value<String> nroCiclos;
  final Value<int> nivelAcadId;
  final Value<int> tipoEvaluacionId;
  final Value<int> estadoId;
  final Value<int> entidadId;
  final Value<int> tipoInformeSiagieId;
  final Value<bool> toogle;
  final Value<int> tipoProgramaId;
  final Value<int> tipoMatriculaId;
  const ProgramasEducativoCompanion({
    this.programaEduId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.nroCiclos = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoEvaluacionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.tipoInformeSiagieId = const Value.absent(),
    this.toogle = const Value.absent(),
    this.tipoProgramaId = const Value.absent(),
    this.tipoMatriculaId = const Value.absent(),
  });
  ProgramasEducativoCompanion.insert({
    this.programaEduId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.nroCiclos = const Value.absent(),
    this.nivelAcadId = const Value.absent(),
    this.tipoEvaluacionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.tipoInformeSiagieId = const Value.absent(),
    this.toogle = const Value.absent(),
    this.tipoProgramaId = const Value.absent(),
    this.tipoMatriculaId = const Value.absent(),
  });
  static Insertable<ProgramasEducativoData> custom({
    Expression<int> programaEduId,
    Expression<String> nombre,
    Expression<String> nroCiclos,
    Expression<int> nivelAcadId,
    Expression<int> tipoEvaluacionId,
    Expression<int> estadoId,
    Expression<int> entidadId,
    Expression<int> tipoInformeSiagieId,
    Expression<bool> toogle,
    Expression<int> tipoProgramaId,
    Expression<int> tipoMatriculaId,
  }) {
    return RawValuesInsertable({
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (nombre != null) 'nombre': nombre,
      if (nroCiclos != null) 'nro_ciclos': nroCiclos,
      if (nivelAcadId != null) 'nivel_acad_id': nivelAcadId,
      if (tipoEvaluacionId != null) 'tipo_evaluacion_id': tipoEvaluacionId,
      if (estadoId != null) 'estado_id': estadoId,
      if (entidadId != null) 'entidad_id': entidadId,
      if (tipoInformeSiagieId != null)
        'tipo_informe_siagie_id': tipoInformeSiagieId,
      if (toogle != null) 'toogle': toogle,
      if (tipoProgramaId != null) 'tipo_programa_id': tipoProgramaId,
      if (tipoMatriculaId != null) 'tipo_matricula_id': tipoMatriculaId,
    });
  }

  ProgramasEducativoCompanion copyWith(
      {Value<int> programaEduId,
      Value<String> nombre,
      Value<String> nroCiclos,
      Value<int> nivelAcadId,
      Value<int> tipoEvaluacionId,
      Value<int> estadoId,
      Value<int> entidadId,
      Value<int> tipoInformeSiagieId,
      Value<bool> toogle,
      Value<int> tipoProgramaId,
      Value<int> tipoMatriculaId}) {
    return ProgramasEducativoCompanion(
      programaEduId: programaEduId ?? this.programaEduId,
      nombre: nombre ?? this.nombre,
      nroCiclos: nroCiclos ?? this.nroCiclos,
      nivelAcadId: nivelAcadId ?? this.nivelAcadId,
      tipoEvaluacionId: tipoEvaluacionId ?? this.tipoEvaluacionId,
      estadoId: estadoId ?? this.estadoId,
      entidadId: entidadId ?? this.entidadId,
      tipoInformeSiagieId: tipoInformeSiagieId ?? this.tipoInformeSiagieId,
      toogle: toogle ?? this.toogle,
      tipoProgramaId: tipoProgramaId ?? this.tipoProgramaId,
      tipoMatriculaId: tipoMatriculaId ?? this.tipoMatriculaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (nroCiclos.present) {
      map['nro_ciclos'] = Variable<String>(nroCiclos.value);
    }
    if (nivelAcadId.present) {
      map['nivel_acad_id'] = Variable<int>(nivelAcadId.value);
    }
    if (tipoEvaluacionId.present) {
      map['tipo_evaluacion_id'] = Variable<int>(tipoEvaluacionId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (tipoInformeSiagieId.present) {
      map['tipo_informe_siagie_id'] = Variable<int>(tipoInformeSiagieId.value);
    }
    if (toogle.present) {
      map['toogle'] = Variable<bool>(toogle.value);
    }
    if (tipoProgramaId.present) {
      map['tipo_programa_id'] = Variable<int>(tipoProgramaId.value);
    }
    if (tipoMatriculaId.present) {
      map['tipo_matricula_id'] = Variable<int>(tipoMatriculaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProgramasEducativoCompanion(')
          ..write('programaEduId: $programaEduId, ')
          ..write('nombre: $nombre, ')
          ..write('nroCiclos: $nroCiclos, ')
          ..write('nivelAcadId: $nivelAcadId, ')
          ..write('tipoEvaluacionId: $tipoEvaluacionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('tipoInformeSiagieId: $tipoInformeSiagieId, ')
          ..write('toogle: $toogle, ')
          ..write('tipoProgramaId: $tipoProgramaId, ')
          ..write('tipoMatriculaId: $tipoMatriculaId')
          ..write(')'))
        .toString();
  }
}

class $ProgramasEducativoTable extends ProgramasEducativo
    with TableInfo<$ProgramasEducativoTable, ProgramasEducativoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProgramasEducativoTable(this._db, [this._alias]);
  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nroCiclosMeta = const VerificationMeta('nroCiclos');
  GeneratedTextColumn _nroCiclos;
  @override
  GeneratedTextColumn get nroCiclos => _nroCiclos ??= _constructNroCiclos();
  GeneratedTextColumn _constructNroCiclos() {
    return GeneratedTextColumn(
      'nro_ciclos',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nivelAcadIdMeta =
      const VerificationMeta('nivelAcadId');
  GeneratedIntColumn _nivelAcadId;
  @override
  GeneratedIntColumn get nivelAcadId =>
      _nivelAcadId ??= _constructNivelAcadId();
  GeneratedIntColumn _constructNivelAcadId() {
    return GeneratedIntColumn(
      'nivel_acad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoEvaluacionIdMeta =
      const VerificationMeta('tipoEvaluacionId');
  GeneratedIntColumn _tipoEvaluacionId;
  @override
  GeneratedIntColumn get tipoEvaluacionId =>
      _tipoEvaluacionId ??= _constructTipoEvaluacionId();
  GeneratedIntColumn _constructTipoEvaluacionId() {
    return GeneratedIntColumn(
      'tipo_evaluacion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoInformeSiagieIdMeta =
      const VerificationMeta('tipoInformeSiagieId');
  GeneratedIntColumn _tipoInformeSiagieId;
  @override
  GeneratedIntColumn get tipoInformeSiagieId =>
      _tipoInformeSiagieId ??= _constructTipoInformeSiagieId();
  GeneratedIntColumn _constructTipoInformeSiagieId() {
    return GeneratedIntColumn(
      'tipo_informe_siagie_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _toogleMeta = const VerificationMeta('toogle');
  GeneratedBoolColumn _toogle;
  @override
  GeneratedBoolColumn get toogle => _toogle ??= _constructToogle();
  GeneratedBoolColumn _constructToogle() {
    return GeneratedBoolColumn(
      'toogle',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoProgramaIdMeta =
      const VerificationMeta('tipoProgramaId');
  GeneratedIntColumn _tipoProgramaId;
  @override
  GeneratedIntColumn get tipoProgramaId =>
      _tipoProgramaId ??= _constructTipoProgramaId();
  GeneratedIntColumn _constructTipoProgramaId() {
    return GeneratedIntColumn(
      'tipo_programa_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoMatriculaIdMeta =
      const VerificationMeta('tipoMatriculaId');
  GeneratedIntColumn _tipoMatriculaId;
  @override
  GeneratedIntColumn get tipoMatriculaId =>
      _tipoMatriculaId ??= _constructTipoMatriculaId();
  GeneratedIntColumn _constructTipoMatriculaId() {
    return GeneratedIntColumn(
      'tipo_matricula_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        programaEduId,
        nombre,
        nroCiclos,
        nivelAcadId,
        tipoEvaluacionId,
        estadoId,
        entidadId,
        tipoInformeSiagieId,
        toogle,
        tipoProgramaId,
        tipoMatriculaId
      ];
  @override
  $ProgramasEducativoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'programas_educativo';
  @override
  final String actualTableName = 'programas_educativo';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProgramasEducativoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('nro_ciclos')) {
      context.handle(_nroCiclosMeta,
          nroCiclos.isAcceptableOrUnknown(data['nro_ciclos'], _nroCiclosMeta));
    }
    if (data.containsKey('nivel_acad_id')) {
      context.handle(
          _nivelAcadIdMeta,
          nivelAcadId.isAcceptableOrUnknown(
              data['nivel_acad_id'], _nivelAcadIdMeta));
    }
    if (data.containsKey('tipo_evaluacion_id')) {
      context.handle(
          _tipoEvaluacionIdMeta,
          tipoEvaluacionId.isAcceptableOrUnknown(
              data['tipo_evaluacion_id'], _tipoEvaluacionIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('tipo_informe_siagie_id')) {
      context.handle(
          _tipoInformeSiagieIdMeta,
          tipoInformeSiagieId.isAcceptableOrUnknown(
              data['tipo_informe_siagie_id'], _tipoInformeSiagieIdMeta));
    }
    if (data.containsKey('toogle')) {
      context.handle(_toogleMeta,
          toogle.isAcceptableOrUnknown(data['toogle'], _toogleMeta));
    }
    if (data.containsKey('tipo_programa_id')) {
      context.handle(
          _tipoProgramaIdMeta,
          tipoProgramaId.isAcceptableOrUnknown(
              data['tipo_programa_id'], _tipoProgramaIdMeta));
    }
    if (data.containsKey('tipo_matricula_id')) {
      context.handle(
          _tipoMatriculaIdMeta,
          tipoMatriculaId.isAcceptableOrUnknown(
              data['tipo_matricula_id'], _tipoMatriculaIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {programaEduId};
  @override
  ProgramasEducativoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ProgramasEducativoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProgramasEducativoTable createAlias(String alias) {
    return $ProgramasEducativoTable(_db, alias);
  }
}

class SeccionData extends DataClass implements Insertable<SeccionData> {
  final int seccionId;
  final String nombre;
  final String descripcion;
  final bool estado;
  final int georeferenciaId;
  SeccionData(
      {@required this.seccionId,
      this.nombre,
      this.descripcion,
      this.estado,
      this.georeferenciaId});
  factory SeccionData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return SeccionData(
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    return map;
  }

  SeccionCompanion toCompanion(bool nullToAbsent) {
    return SeccionCompanion(
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
    );
  }

  factory SeccionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SeccionData(
      seccionId: serializer.fromJson<int>(json['seccionId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      estado: serializer.fromJson<bool>(json['estado']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'seccionId': serializer.toJson<int>(seccionId),
      'nombre': serializer.toJson<String>(nombre),
      'descripcion': serializer.toJson<String>(descripcion),
      'estado': serializer.toJson<bool>(estado),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
    };
  }

  SeccionData copyWith(
          {int seccionId,
          String nombre,
          String descripcion,
          bool estado,
          int georeferenciaId}) =>
      SeccionData(
        seccionId: seccionId ?? this.seccionId,
        nombre: nombre ?? this.nombre,
        descripcion: descripcion ?? this.descripcion,
        estado: estado ?? this.estado,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      );
  @override
  String toString() {
    return (StringBuffer('SeccionData(')
          ..write('seccionId: $seccionId, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('estado: $estado, ')
          ..write('georeferenciaId: $georeferenciaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      seccionId.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(descripcion.hashCode,
              $mrjc(estado.hashCode, georeferenciaId.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SeccionData &&
          other.seccionId == this.seccionId &&
          other.nombre == this.nombre &&
          other.descripcion == this.descripcion &&
          other.estado == this.estado &&
          other.georeferenciaId == this.georeferenciaId);
}

class SeccionCompanion extends UpdateCompanion<SeccionData> {
  final Value<int> seccionId;
  final Value<String> nombre;
  final Value<String> descripcion;
  final Value<bool> estado;
  final Value<int> georeferenciaId;
  const SeccionCompanion({
    this.seccionId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.estado = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
  });
  SeccionCompanion.insert({
    this.seccionId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.estado = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
  });
  static Insertable<SeccionData> custom({
    Expression<int> seccionId,
    Expression<String> nombre,
    Expression<String> descripcion,
    Expression<bool> estado,
    Expression<int> georeferenciaId,
  }) {
    return RawValuesInsertable({
      if (seccionId != null) 'seccion_id': seccionId,
      if (nombre != null) 'nombre': nombre,
      if (descripcion != null) 'descripcion': descripcion,
      if (estado != null) 'estado': estado,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
    });
  }

  SeccionCompanion copyWith(
      {Value<int> seccionId,
      Value<String> nombre,
      Value<String> descripcion,
      Value<bool> estado,
      Value<int> georeferenciaId}) {
    return SeccionCompanion(
      seccionId: seccionId ?? this.seccionId,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      estado: estado ?? this.estado,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeccionCompanion(')
          ..write('seccionId: $seccionId, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('estado: $estado, ')
          ..write('georeferenciaId: $georeferenciaId')
          ..write(')'))
        .toString();
  }
}

class $SeccionTable extends Seccion with TableInfo<$SeccionTable, SeccionData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SeccionTable(this._db, [this._alias]);
  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [seccionId, nombre, descripcion, estado, georeferenciaId];
  @override
  $SeccionTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'seccion';
  @override
  final String actualTableName = 'seccion';
  @override
  VerificationContext validateIntegrity(Insertable<SeccionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {seccionId};
  @override
  SeccionData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SeccionData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SeccionTable createAlias(String alias) {
    return $SeccionTable(_db, alias);
  }
}

class SilaboEventoData extends DataClass
    implements Insertable<SilaboEventoData> {
  final int silaboEventoId;
  final String titulo;
  final String descripcionGeneral;
  final int planCursoId;
  final int entidadId;
  final int docenteId;
  final int seccionId;
  final int estadoId;
  final int anioAcademicoId;
  final int georeferenciaId;
  final int silaboBaseId;
  final int cargaCursoId;
  final int parametroDisenioId;
  final String fechaInicio;
  final String fechaFin;
  SilaboEventoData(
      {@required this.silaboEventoId,
      this.titulo,
      this.descripcionGeneral,
      this.planCursoId,
      this.entidadId,
      this.docenteId,
      this.seccionId,
      this.estadoId,
      this.anioAcademicoId,
      this.georeferenciaId,
      this.silaboBaseId,
      this.cargaCursoId,
      this.parametroDisenioId,
      this.fechaInicio,
      this.fechaFin});
  factory SilaboEventoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SilaboEventoData(
      silaboEventoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_evento_id']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      descripcionGeneral: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}descripcion_general']),
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      docenteId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}docente_id']),
      seccionId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}seccion_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      silaboBaseId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}silabo_base_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      parametroDisenioId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}parametro_disenio_id']),
      fechaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || silaboEventoId != null) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || descripcionGeneral != null) {
      map['descripcion_general'] = Variable<String>(descripcionGeneral);
    }
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || docenteId != null) {
      map['docente_id'] = Variable<int>(docenteId);
    }
    if (!nullToAbsent || seccionId != null) {
      map['seccion_id'] = Variable<int>(seccionId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || silaboBaseId != null) {
      map['silabo_base_id'] = Variable<int>(silaboBaseId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || parametroDisenioId != null) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<String>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<String>(fechaFin);
    }
    return map;
  }

  SilaboEventoCompanion toCompanion(bool nullToAbsent) {
    return SilaboEventoCompanion(
      silaboEventoId: silaboEventoId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboEventoId),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      descripcionGeneral: descripcionGeneral == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcionGeneral),
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      docenteId: docenteId == null && nullToAbsent
          ? const Value.absent()
          : Value(docenteId),
      seccionId: seccionId == null && nullToAbsent
          ? const Value.absent()
          : Value(seccionId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      silaboBaseId: silaboBaseId == null && nullToAbsent
          ? const Value.absent()
          : Value(silaboBaseId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      parametroDisenioId: parametroDisenioId == null && nullToAbsent
          ? const Value.absent()
          : Value(parametroDisenioId),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
    );
  }

  factory SilaboEventoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SilaboEventoData(
      silaboEventoId: serializer.fromJson<int>(json['silaboEventoId']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descripcionGeneral:
          serializer.fromJson<String>(json['descripcionGeneral']),
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      docenteId: serializer.fromJson<int>(json['docenteId']),
      seccionId: serializer.fromJson<int>(json['seccionId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      silaboBaseId: serializer.fromJson<int>(json['silaboBaseId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      parametroDisenioId: serializer.fromJson<int>(json['parametroDisenioId']),
      fechaInicio: serializer.fromJson<String>(json['fechaInicio']),
      fechaFin: serializer.fromJson<String>(json['fechaFin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'silaboEventoId': serializer.toJson<int>(silaboEventoId),
      'titulo': serializer.toJson<String>(titulo),
      'descripcionGeneral': serializer.toJson<String>(descripcionGeneral),
      'planCursoId': serializer.toJson<int>(planCursoId),
      'entidadId': serializer.toJson<int>(entidadId),
      'docenteId': serializer.toJson<int>(docenteId),
      'seccionId': serializer.toJson<int>(seccionId),
      'estadoId': serializer.toJson<int>(estadoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'silaboBaseId': serializer.toJson<int>(silaboBaseId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'parametroDisenioId': serializer.toJson<int>(parametroDisenioId),
      'fechaInicio': serializer.toJson<String>(fechaInicio),
      'fechaFin': serializer.toJson<String>(fechaFin),
    };
  }

  SilaboEventoData copyWith(
          {int silaboEventoId,
          String titulo,
          String descripcionGeneral,
          int planCursoId,
          int entidadId,
          int docenteId,
          int seccionId,
          int estadoId,
          int anioAcademicoId,
          int georeferenciaId,
          int silaboBaseId,
          int cargaCursoId,
          int parametroDisenioId,
          String fechaInicio,
          String fechaFin}) =>
      SilaboEventoData(
        silaboEventoId: silaboEventoId ?? this.silaboEventoId,
        titulo: titulo ?? this.titulo,
        descripcionGeneral: descripcionGeneral ?? this.descripcionGeneral,
        planCursoId: planCursoId ?? this.planCursoId,
        entidadId: entidadId ?? this.entidadId,
        docenteId: docenteId ?? this.docenteId,
        seccionId: seccionId ?? this.seccionId,
        estadoId: estadoId ?? this.estadoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        silaboBaseId: silaboBaseId ?? this.silaboBaseId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
      );
  @override
  String toString() {
    return (StringBuffer('SilaboEventoData(')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcionGeneral: $descripcionGeneral, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('docenteId: $docenteId, ')
          ..write('seccionId: $seccionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('silaboBaseId: $silaboBaseId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      silaboEventoId.hashCode,
      $mrjc(
          titulo.hashCode,
          $mrjc(
              descripcionGeneral.hashCode,
              $mrjc(
                  planCursoId.hashCode,
                  $mrjc(
                      entidadId.hashCode,
                      $mrjc(
                          docenteId.hashCode,
                          $mrjc(
                              seccionId.hashCode,
                              $mrjc(
                                  estadoId.hashCode,
                                  $mrjc(
                                      anioAcademicoId.hashCode,
                                      $mrjc(
                                          georeferenciaId.hashCode,
                                          $mrjc(
                                              silaboBaseId.hashCode,
                                              $mrjc(
                                                  cargaCursoId.hashCode,
                                                  $mrjc(
                                                      parametroDisenioId
                                                          .hashCode,
                                                      $mrjc(
                                                          fechaInicio.hashCode,
                                                          fechaFin
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SilaboEventoData &&
          other.silaboEventoId == this.silaboEventoId &&
          other.titulo == this.titulo &&
          other.descripcionGeneral == this.descripcionGeneral &&
          other.planCursoId == this.planCursoId &&
          other.entidadId == this.entidadId &&
          other.docenteId == this.docenteId &&
          other.seccionId == this.seccionId &&
          other.estadoId == this.estadoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.georeferenciaId == this.georeferenciaId &&
          other.silaboBaseId == this.silaboBaseId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.parametroDisenioId == this.parametroDisenioId &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin);
}

class SilaboEventoCompanion extends UpdateCompanion<SilaboEventoData> {
  final Value<int> silaboEventoId;
  final Value<String> titulo;
  final Value<String> descripcionGeneral;
  final Value<int> planCursoId;
  final Value<int> entidadId;
  final Value<int> docenteId;
  final Value<int> seccionId;
  final Value<int> estadoId;
  final Value<int> anioAcademicoId;
  final Value<int> georeferenciaId;
  final Value<int> silaboBaseId;
  final Value<int> cargaCursoId;
  final Value<int> parametroDisenioId;
  final Value<String> fechaInicio;
  final Value<String> fechaFin;
  const SilaboEventoCompanion({
    this.silaboEventoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcionGeneral = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.silaboBaseId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.parametroDisenioId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
  });
  SilaboEventoCompanion.insert({
    this.silaboEventoId = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcionGeneral = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.docenteId = const Value.absent(),
    this.seccionId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.silaboBaseId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.parametroDisenioId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
  });
  static Insertable<SilaboEventoData> custom({
    Expression<int> silaboEventoId,
    Expression<String> titulo,
    Expression<String> descripcionGeneral,
    Expression<int> planCursoId,
    Expression<int> entidadId,
    Expression<int> docenteId,
    Expression<int> seccionId,
    Expression<int> estadoId,
    Expression<int> anioAcademicoId,
    Expression<int> georeferenciaId,
    Expression<int> silaboBaseId,
    Expression<int> cargaCursoId,
    Expression<int> parametroDisenioId,
    Expression<String> fechaInicio,
    Expression<String> fechaFin,
  }) {
    return RawValuesInsertable({
      if (silaboEventoId != null) 'silabo_evento_id': silaboEventoId,
      if (titulo != null) 'titulo': titulo,
      if (descripcionGeneral != null) 'descripcion_general': descripcionGeneral,
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (entidadId != null) 'entidad_id': entidadId,
      if (docenteId != null) 'docente_id': docenteId,
      if (seccionId != null) 'seccion_id': seccionId,
      if (estadoId != null) 'estado_id': estadoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (silaboBaseId != null) 'silabo_base_id': silaboBaseId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (parametroDisenioId != null)
        'parametro_disenio_id': parametroDisenioId,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
    });
  }

  SilaboEventoCompanion copyWith(
      {Value<int> silaboEventoId,
      Value<String> titulo,
      Value<String> descripcionGeneral,
      Value<int> planCursoId,
      Value<int> entidadId,
      Value<int> docenteId,
      Value<int> seccionId,
      Value<int> estadoId,
      Value<int> anioAcademicoId,
      Value<int> georeferenciaId,
      Value<int> silaboBaseId,
      Value<int> cargaCursoId,
      Value<int> parametroDisenioId,
      Value<String> fechaInicio,
      Value<String> fechaFin}) {
    return SilaboEventoCompanion(
      silaboEventoId: silaboEventoId ?? this.silaboEventoId,
      titulo: titulo ?? this.titulo,
      descripcionGeneral: descripcionGeneral ?? this.descripcionGeneral,
      planCursoId: planCursoId ?? this.planCursoId,
      entidadId: entidadId ?? this.entidadId,
      docenteId: docenteId ?? this.docenteId,
      seccionId: seccionId ?? this.seccionId,
      estadoId: estadoId ?? this.estadoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      silaboBaseId: silaboBaseId ?? this.silaboBaseId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      parametroDisenioId: parametroDisenioId ?? this.parametroDisenioId,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (silaboEventoId.present) {
      map['silabo_evento_id'] = Variable<int>(silaboEventoId.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descripcionGeneral.present) {
      map['descripcion_general'] = Variable<String>(descripcionGeneral.value);
    }
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (docenteId.present) {
      map['docente_id'] = Variable<int>(docenteId.value);
    }
    if (seccionId.present) {
      map['seccion_id'] = Variable<int>(seccionId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (silaboBaseId.present) {
      map['silabo_base_id'] = Variable<int>(silaboBaseId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (parametroDisenioId.present) {
      map['parametro_disenio_id'] = Variable<int>(parametroDisenioId.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<String>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<String>(fechaFin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SilaboEventoCompanion(')
          ..write('silaboEventoId: $silaboEventoId, ')
          ..write('titulo: $titulo, ')
          ..write('descripcionGeneral: $descripcionGeneral, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('entidadId: $entidadId, ')
          ..write('docenteId: $docenteId, ')
          ..write('seccionId: $seccionId, ')
          ..write('estadoId: $estadoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('silaboBaseId: $silaboBaseId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('parametroDisenioId: $parametroDisenioId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin')
          ..write(')'))
        .toString();
  }
}

class $SilaboEventoTable extends SilaboEvento
    with TableInfo<$SilaboEventoTable, SilaboEventoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $SilaboEventoTable(this._db, [this._alias]);
  final VerificationMeta _silaboEventoIdMeta =
      const VerificationMeta('silaboEventoId');
  GeneratedIntColumn _silaboEventoId;
  @override
  GeneratedIntColumn get silaboEventoId =>
      _silaboEventoId ??= _constructSilaboEventoId();
  GeneratedIntColumn _constructSilaboEventoId() {
    return GeneratedIntColumn(
      'silabo_evento_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn(
      'titulo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionGeneralMeta =
      const VerificationMeta('descripcionGeneral');
  GeneratedTextColumn _descripcionGeneral;
  @override
  GeneratedTextColumn get descripcionGeneral =>
      _descripcionGeneral ??= _constructDescripcionGeneral();
  GeneratedTextColumn _constructDescripcionGeneral() {
    return GeneratedTextColumn(
      'descripcion_general',
      $tableName,
      true,
    );
  }

  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _docenteIdMeta = const VerificationMeta('docenteId');
  GeneratedIntColumn _docenteId;
  @override
  GeneratedIntColumn get docenteId => _docenteId ??= _constructDocenteId();
  GeneratedIntColumn _constructDocenteId() {
    return GeneratedIntColumn(
      'docente_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _seccionIdMeta = const VerificationMeta('seccionId');
  GeneratedIntColumn _seccionId;
  @override
  GeneratedIntColumn get seccionId => _seccionId ??= _constructSeccionId();
  GeneratedIntColumn _constructSeccionId() {
    return GeneratedIntColumn(
      'seccion_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _silaboBaseIdMeta =
      const VerificationMeta('silaboBaseId');
  GeneratedIntColumn _silaboBaseId;
  @override
  GeneratedIntColumn get silaboBaseId =>
      _silaboBaseId ??= _constructSilaboBaseId();
  GeneratedIntColumn _constructSilaboBaseId() {
    return GeneratedIntColumn(
      'silabo_base_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parametroDisenioIdMeta =
      const VerificationMeta('parametroDisenioId');
  GeneratedIntColumn _parametroDisenioId;
  @override
  GeneratedIntColumn get parametroDisenioId =>
      _parametroDisenioId ??= _constructParametroDisenioId();
  GeneratedIntColumn _constructParametroDisenioId() {
    return GeneratedIntColumn(
      'parametro_disenio_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedTextColumn _fechaInicio;
  @override
  GeneratedTextColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedTextColumn _constructFechaInicio() {
    return GeneratedTextColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedTextColumn _fechaFin;
  @override
  GeneratedTextColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedTextColumn _constructFechaFin() {
    return GeneratedTextColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        silaboEventoId,
        titulo,
        descripcionGeneral,
        planCursoId,
        entidadId,
        docenteId,
        seccionId,
        estadoId,
        anioAcademicoId,
        georeferenciaId,
        silaboBaseId,
        cargaCursoId,
        parametroDisenioId,
        fechaInicio,
        fechaFin
      ];
  @override
  $SilaboEventoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'silabo_evento';
  @override
  final String actualTableName = 'silabo_evento';
  @override
  VerificationContext validateIntegrity(Insertable<SilaboEventoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('silabo_evento_id')) {
      context.handle(
          _silaboEventoIdMeta,
          silaboEventoId.isAcceptableOrUnknown(
              data['silabo_evento_id'], _silaboEventoIdMeta));
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('descripcion_general')) {
      context.handle(
          _descripcionGeneralMeta,
          descripcionGeneral.isAcceptableOrUnknown(
              data['descripcion_general'], _descripcionGeneralMeta));
    }
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('docente_id')) {
      context.handle(_docenteIdMeta,
          docenteId.isAcceptableOrUnknown(data['docente_id'], _docenteIdMeta));
    }
    if (data.containsKey('seccion_id')) {
      context.handle(_seccionIdMeta,
          seccionId.isAcceptableOrUnknown(data['seccion_id'], _seccionIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('silabo_base_id')) {
      context.handle(
          _silaboBaseIdMeta,
          silaboBaseId.isAcceptableOrUnknown(
              data['silabo_base_id'], _silaboBaseIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('parametro_disenio_id')) {
      context.handle(
          _parametroDisenioIdMeta,
          parametroDisenioId.isAcceptableOrUnknown(
              data['parametro_disenio_id'], _parametroDisenioIdMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {silaboEventoId};
  @override
  SilaboEventoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SilaboEventoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SilaboEventoTable createAlias(String alias) {
    return $SilaboEventoTable(_db, alias);
  }
}

class CalendarioPeriodoData extends DataClass
    implements Insertable<CalendarioPeriodoData> {
  final int calendarioPeriodoId;
  final DateTime fechaInicio;
  final DateTime fechaFin;
  final int calendarioAcademicoId;
  final int tipoId;
  final int estadoId;
  final int diazPlazo;
  CalendarioPeriodoData(
      {@required this.calendarioPeriodoId,
      this.fechaInicio,
      this.fechaFin,
      this.calendarioAcademicoId,
      this.tipoId,
      this.estadoId,
      this.diazPlazo});
  factory CalendarioPeriodoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CalendarioPeriodoData(
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      fechaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      calendarioAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_academico_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      diazPlazo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}diaz_plazo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<DateTime>(fechaFin);
    }
    if (!nullToAbsent || calendarioAcademicoId != null) {
      map['calendario_academico_id'] = Variable<int>(calendarioAcademicoId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || diazPlazo != null) {
      map['diaz_plazo'] = Variable<int>(diazPlazo);
    }
    return map;
  }

  CalendarioPeriodoCompanion toCompanion(bool nullToAbsent) {
    return CalendarioPeriodoCompanion(
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      calendarioAcademicoId: calendarioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioAcademicoId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      diazPlazo: diazPlazo == null && nullToAbsent
          ? const Value.absent()
          : Value(diazPlazo),
    );
  }

  factory CalendarioPeriodoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioPeriodoData(
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      fechaInicio: serializer.fromJson<DateTime>(json['fechaInicio']),
      fechaFin: serializer.fromJson<DateTime>(json['fechaFin']),
      calendarioAcademicoId:
          serializer.fromJson<int>(json['calendarioAcademicoId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      diazPlazo: serializer.fromJson<int>(json['diazPlazo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'fechaInicio': serializer.toJson<DateTime>(fechaInicio),
      'fechaFin': serializer.toJson<DateTime>(fechaFin),
      'calendarioAcademicoId': serializer.toJson<int>(calendarioAcademicoId),
      'tipoId': serializer.toJson<int>(tipoId),
      'estadoId': serializer.toJson<int>(estadoId),
      'diazPlazo': serializer.toJson<int>(diazPlazo),
    };
  }

  CalendarioPeriodoData copyWith(
          {int calendarioPeriodoId,
          DateTime fechaInicio,
          DateTime fechaFin,
          int calendarioAcademicoId,
          int tipoId,
          int estadoId,
          int diazPlazo}) =>
      CalendarioPeriodoData(
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        calendarioAcademicoId:
            calendarioAcademicoId ?? this.calendarioAcademicoId,
        tipoId: tipoId ?? this.tipoId,
        estadoId: estadoId ?? this.estadoId,
        diazPlazo: diazPlazo ?? this.diazPlazo,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoData(')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('diazPlazo: $diazPlazo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioPeriodoId.hashCode,
      $mrjc(
          fechaInicio.hashCode,
          $mrjc(
              fechaFin.hashCode,
              $mrjc(
                  calendarioAcademicoId.hashCode,
                  $mrjc(tipoId.hashCode,
                      $mrjc(estadoId.hashCode, diazPlazo.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioPeriodoData &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.calendarioAcademicoId == this.calendarioAcademicoId &&
          other.tipoId == this.tipoId &&
          other.estadoId == this.estadoId &&
          other.diazPlazo == this.diazPlazo);
}

class CalendarioPeriodoCompanion
    extends UpdateCompanion<CalendarioPeriodoData> {
  final Value<int> calendarioPeriodoId;
  final Value<DateTime> fechaInicio;
  final Value<DateTime> fechaFin;
  final Value<int> calendarioAcademicoId;
  final Value<int> tipoId;
  final Value<int> estadoId;
  final Value<int> diazPlazo;
  const CalendarioPeriodoCompanion({
    this.calendarioPeriodoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.calendarioAcademicoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.diazPlazo = const Value.absent(),
  });
  CalendarioPeriodoCompanion.insert({
    this.calendarioPeriodoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.calendarioAcademicoId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.diazPlazo = const Value.absent(),
  });
  static Insertable<CalendarioPeriodoData> custom({
    Expression<int> calendarioPeriodoId,
    Expression<DateTime> fechaInicio,
    Expression<DateTime> fechaFin,
    Expression<int> calendarioAcademicoId,
    Expression<int> tipoId,
    Expression<int> estadoId,
    Expression<int> diazPlazo,
  }) {
    return RawValuesInsertable({
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (calendarioAcademicoId != null)
        'calendario_academico_id': calendarioAcademicoId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (estadoId != null) 'estado_id': estadoId,
      if (diazPlazo != null) 'diaz_plazo': diazPlazo,
    });
  }

  CalendarioPeriodoCompanion copyWith(
      {Value<int> calendarioPeriodoId,
      Value<DateTime> fechaInicio,
      Value<DateTime> fechaFin,
      Value<int> calendarioAcademicoId,
      Value<int> tipoId,
      Value<int> estadoId,
      Value<int> diazPlazo}) {
    return CalendarioPeriodoCompanion(
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      calendarioAcademicoId:
          calendarioAcademicoId ?? this.calendarioAcademicoId,
      tipoId: tipoId ?? this.tipoId,
      estadoId: estadoId ?? this.estadoId,
      diazPlazo: diazPlazo ?? this.diazPlazo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<DateTime>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<DateTime>(fechaFin.value);
    }
    if (calendarioAcademicoId.present) {
      map['calendario_academico_id'] =
          Variable<int>(calendarioAcademicoId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (diazPlazo.present) {
      map['diaz_plazo'] = Variable<int>(diazPlazo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoCompanion(')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('tipoId: $tipoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('diazPlazo: $diazPlazo')
          ..write(')'))
        .toString();
  }
}

class $CalendarioPeriodoTable extends CalendarioPeriodo
    with TableInfo<$CalendarioPeriodoTable, CalendarioPeriodoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioPeriodoTable(this._db, [this._alias]);
  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedDateTimeColumn _fechaInicio;
  @override
  GeneratedDateTimeColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedDateTimeColumn _constructFechaInicio() {
    return GeneratedDateTimeColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedDateTimeColumn _fechaFin;
  @override
  GeneratedDateTimeColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedDateTimeColumn _constructFechaFin() {
    return GeneratedDateTimeColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioAcademicoIdMeta =
      const VerificationMeta('calendarioAcademicoId');
  GeneratedIntColumn _calendarioAcademicoId;
  @override
  GeneratedIntColumn get calendarioAcademicoId =>
      _calendarioAcademicoId ??= _constructCalendarioAcademicoId();
  GeneratedIntColumn _constructCalendarioAcademicoId() {
    return GeneratedIntColumn(
      'calendario_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _diazPlazoMeta = const VerificationMeta('diazPlazo');
  GeneratedIntColumn _diazPlazo;
  @override
  GeneratedIntColumn get diazPlazo => _diazPlazo ??= _constructDiazPlazo();
  GeneratedIntColumn _constructDiazPlazo() {
    return GeneratedIntColumn(
      'diaz_plazo',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        calendarioPeriodoId,
        fechaInicio,
        fechaFin,
        calendarioAcademicoId,
        tipoId,
        estadoId,
        diazPlazo
      ];
  @override
  $CalendarioPeriodoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario_periodo';
  @override
  final String actualTableName = 'calendario_periodo';
  @override
  VerificationContext validateIntegrity(
      Insertable<CalendarioPeriodoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('calendario_academico_id')) {
      context.handle(
          _calendarioAcademicoIdMeta,
          calendarioAcademicoId.isAcceptableOrUnknown(
              data['calendario_academico_id'], _calendarioAcademicoIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('diaz_plazo')) {
      context.handle(_diazPlazoMeta,
          diazPlazo.isAcceptableOrUnknown(data['diaz_plazo'], _diazPlazoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioPeriodoId};
  @override
  CalendarioPeriodoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioPeriodoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CalendarioPeriodoTable createAlias(String alias) {
    return $CalendarioPeriodoTable(_db, alias);
  }
}

class CalendarioPeriodoDetalleData extends DataClass
    implements Insertable<CalendarioPeriodoDetalleData> {
  final int calendarioPeriodoDetId;
  final int calendarioPeriodoId;
  final String descripcion;
  final int fechaInicio;
  final int fechaFin;
  final int diasPlazo;
  final int tipoId;
  CalendarioPeriodoDetalleData(
      {@required this.calendarioPeriodoDetId,
      this.calendarioPeriodoId,
      this.descripcion,
      this.fechaInicio,
      this.fechaFin,
      this.diasPlazo,
      this.tipoId});
  factory CalendarioPeriodoDetalleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CalendarioPeriodoDetalleData(
      calendarioPeriodoDetId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_det_id']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      fechaInicio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      diasPlazo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}dias_plazo']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioPeriodoDetId != null) {
      map['calendario_periodo_det_id'] = Variable<int>(calendarioPeriodoDetId);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<int>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<int>(fechaFin);
    }
    if (!nullToAbsent || diasPlazo != null) {
      map['dias_plazo'] = Variable<int>(diasPlazo);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    return map;
  }

  CalendarioPeriodoDetalleCompanion toCompanion(bool nullToAbsent) {
    return CalendarioPeriodoDetalleCompanion(
      calendarioPeriodoDetId: calendarioPeriodoDetId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoDetId),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      diasPlazo: diasPlazo == null && nullToAbsent
          ? const Value.absent()
          : Value(diasPlazo),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
    );
  }

  factory CalendarioPeriodoDetalleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioPeriodoDetalleData(
      calendarioPeriodoDetId:
          serializer.fromJson<int>(json['calendarioPeriodoDetId']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      fechaInicio: serializer.fromJson<int>(json['fechaInicio']),
      fechaFin: serializer.fromJson<int>(json['fechaFin']),
      diasPlazo: serializer.fromJson<int>(json['diasPlazo']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioPeriodoDetId': serializer.toJson<int>(calendarioPeriodoDetId),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'descripcion': serializer.toJson<String>(descripcion),
      'fechaInicio': serializer.toJson<int>(fechaInicio),
      'fechaFin': serializer.toJson<int>(fechaFin),
      'diasPlazo': serializer.toJson<int>(diasPlazo),
      'tipoId': serializer.toJson<int>(tipoId),
    };
  }

  CalendarioPeriodoDetalleData copyWith(
          {int calendarioPeriodoDetId,
          int calendarioPeriodoId,
          String descripcion,
          int fechaInicio,
          int fechaFin,
          int diasPlazo,
          int tipoId}) =>
      CalendarioPeriodoDetalleData(
        calendarioPeriodoDetId:
            calendarioPeriodoDetId ?? this.calendarioPeriodoDetId,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        descripcion: descripcion ?? this.descripcion,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        diasPlazo: diasPlazo ?? this.diasPlazo,
        tipoId: tipoId ?? this.tipoId,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoDetalleData(')
          ..write('calendarioPeriodoDetId: $calendarioPeriodoDetId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('diasPlazo: $diasPlazo, ')
          ..write('tipoId: $tipoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioPeriodoDetId.hashCode,
      $mrjc(
          calendarioPeriodoId.hashCode,
          $mrjc(
              descripcion.hashCode,
              $mrjc(
                  fechaInicio.hashCode,
                  $mrjc(fechaFin.hashCode,
                      $mrjc(diasPlazo.hashCode, tipoId.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioPeriodoDetalleData &&
          other.calendarioPeriodoDetId == this.calendarioPeriodoDetId &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.descripcion == this.descripcion &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.diasPlazo == this.diasPlazo &&
          other.tipoId == this.tipoId);
}

class CalendarioPeriodoDetalleCompanion
    extends UpdateCompanion<CalendarioPeriodoDetalleData> {
  final Value<int> calendarioPeriodoDetId;
  final Value<int> calendarioPeriodoId;
  final Value<String> descripcion;
  final Value<int> fechaInicio;
  final Value<int> fechaFin;
  final Value<int> diasPlazo;
  final Value<int> tipoId;
  const CalendarioPeriodoDetalleCompanion({
    this.calendarioPeriodoDetId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.diasPlazo = const Value.absent(),
    this.tipoId = const Value.absent(),
  });
  CalendarioPeriodoDetalleCompanion.insert({
    this.calendarioPeriodoDetId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.diasPlazo = const Value.absent(),
    this.tipoId = const Value.absent(),
  });
  static Insertable<CalendarioPeriodoDetalleData> custom({
    Expression<int> calendarioPeriodoDetId,
    Expression<int> calendarioPeriodoId,
    Expression<String> descripcion,
    Expression<int> fechaInicio,
    Expression<int> fechaFin,
    Expression<int> diasPlazo,
    Expression<int> tipoId,
  }) {
    return RawValuesInsertable({
      if (calendarioPeriodoDetId != null)
        'calendario_periodo_det_id': calendarioPeriodoDetId,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (descripcion != null) 'descripcion': descripcion,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (diasPlazo != null) 'dias_plazo': diasPlazo,
      if (tipoId != null) 'tipo_id': tipoId,
    });
  }

  CalendarioPeriodoDetalleCompanion copyWith(
      {Value<int> calendarioPeriodoDetId,
      Value<int> calendarioPeriodoId,
      Value<String> descripcion,
      Value<int> fechaInicio,
      Value<int> fechaFin,
      Value<int> diasPlazo,
      Value<int> tipoId}) {
    return CalendarioPeriodoDetalleCompanion(
      calendarioPeriodoDetId:
          calendarioPeriodoDetId ?? this.calendarioPeriodoDetId,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      descripcion: descripcion ?? this.descripcion,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      diasPlazo: diasPlazo ?? this.diasPlazo,
      tipoId: tipoId ?? this.tipoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioPeriodoDetId.present) {
      map['calendario_periodo_det_id'] =
          Variable<int>(calendarioPeriodoDetId.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<int>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<int>(fechaFin.value);
    }
    if (diasPlazo.present) {
      map['dias_plazo'] = Variable<int>(diasPlazo.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioPeriodoDetalleCompanion(')
          ..write('calendarioPeriodoDetId: $calendarioPeriodoDetId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('diasPlazo: $diasPlazo, ')
          ..write('tipoId: $tipoId')
          ..write(')'))
        .toString();
  }
}

class $CalendarioPeriodoDetalleTable extends CalendarioPeriodoDetalle
    with
        TableInfo<$CalendarioPeriodoDetalleTable,
            CalendarioPeriodoDetalleData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioPeriodoDetalleTable(this._db, [this._alias]);
  final VerificationMeta _calendarioPeriodoDetIdMeta =
      const VerificationMeta('calendarioPeriodoDetId');
  GeneratedIntColumn _calendarioPeriodoDetId;
  @override
  GeneratedIntColumn get calendarioPeriodoDetId =>
      _calendarioPeriodoDetId ??= _constructCalendarioPeriodoDetId();
  GeneratedIntColumn _constructCalendarioPeriodoDetId() {
    return GeneratedIntColumn(
      'calendario_periodo_det_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedIntColumn _fechaInicio;
  @override
  GeneratedIntColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedIntColumn _constructFechaInicio() {
    return GeneratedIntColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedIntColumn _fechaFin;
  @override
  GeneratedIntColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedIntColumn _constructFechaFin() {
    return GeneratedIntColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _diasPlazoMeta = const VerificationMeta('diasPlazo');
  GeneratedIntColumn _diasPlazo;
  @override
  GeneratedIntColumn get diasPlazo => _diasPlazo ??= _constructDiasPlazo();
  GeneratedIntColumn _constructDiasPlazo() {
    return GeneratedIntColumn(
      'dias_plazo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        calendarioPeriodoDetId,
        calendarioPeriodoId,
        descripcion,
        fechaInicio,
        fechaFin,
        diasPlazo,
        tipoId
      ];
  @override
  $CalendarioPeriodoDetalleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario_periodo_detalle';
  @override
  final String actualTableName = 'calendario_periodo_detalle';
  @override
  VerificationContext validateIntegrity(
      Insertable<CalendarioPeriodoDetalleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_periodo_det_id')) {
      context.handle(
          _calendarioPeriodoDetIdMeta,
          calendarioPeriodoDetId.isAcceptableOrUnknown(
              data['calendario_periodo_det_id'], _calendarioPeriodoDetIdMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('dias_plazo')) {
      context.handle(_diasPlazoMeta,
          diasPlazo.isAcceptableOrUnknown(data['dias_plazo'], _diasPlazoMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioPeriodoDetId};
  @override
  CalendarioPeriodoDetalleData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioPeriodoDetalleData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $CalendarioPeriodoDetalleTable createAlias(String alias) {
    return $CalendarioPeriodoDetalleTable(_db, alias);
  }
}

class CargaCursoCalendarioPeriodoData extends DataClass
    implements Insertable<CargaCursoCalendarioPeriodoData> {
  final int cargaCursoCalendarioPeriodoId;
  final int cargaCursoId;
  final int calendarioPeriodoId;
  final int estadoId;
  final int fechaInicio;
  final int fechaFin;
  final String horaInicio;
  final String horaFin;
  final int calendarioPeriodoDetId;
  final int tipoId;
  final int planCursoId;
  final int anioAcademicoId;
  final int cargaAcademicaid;
  final String paths;
  CargaCursoCalendarioPeriodoData(
      {@required this.cargaCursoCalendarioPeriodoId,
      this.cargaCursoId,
      this.calendarioPeriodoId,
      this.estadoId,
      this.fechaInicio,
      this.fechaFin,
      this.horaInicio,
      this.horaFin,
      this.calendarioPeriodoDetId,
      this.tipoId,
      this.planCursoId,
      this.anioAcademicoId,
      this.cargaAcademicaid,
      this.paths});
  factory CargaCursoCalendarioPeriodoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CargaCursoCalendarioPeriodoData(
      cargaCursoCalendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}carga_curso_calendario_periodo_id']),
      cargaCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_curso_id']),
      calendarioPeriodoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_id']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
      fechaInicio: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_inicio']),
      fechaFin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fecha_fin']),
      horaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_inicio']),
      horaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_fin']),
      calendarioPeriodoDetId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_periodo_det_id']),
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      planCursoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}plan_curso_id']),
      anioAcademicoId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}anio_academico_id']),
      cargaAcademicaid: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}carga_academicaid']),
      paths:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}paths']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || cargaCursoCalendarioPeriodoId != null) {
      map['carga_curso_calendario_periodo_id'] =
          Variable<int>(cargaCursoCalendarioPeriodoId);
    }
    if (!nullToAbsent || cargaCursoId != null) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId);
    }
    if (!nullToAbsent || calendarioPeriodoId != null) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    if (!nullToAbsent || fechaInicio != null) {
      map['fecha_inicio'] = Variable<int>(fechaInicio);
    }
    if (!nullToAbsent || fechaFin != null) {
      map['fecha_fin'] = Variable<int>(fechaFin);
    }
    if (!nullToAbsent || horaInicio != null) {
      map['hora_inicio'] = Variable<String>(horaInicio);
    }
    if (!nullToAbsent || horaFin != null) {
      map['hora_fin'] = Variable<String>(horaFin);
    }
    if (!nullToAbsent || calendarioPeriodoDetId != null) {
      map['calendario_periodo_det_id'] = Variable<int>(calendarioPeriodoDetId);
    }
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || planCursoId != null) {
      map['plan_curso_id'] = Variable<int>(planCursoId);
    }
    if (!nullToAbsent || anioAcademicoId != null) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId);
    }
    if (!nullToAbsent || cargaAcademicaid != null) {
      map['carga_academicaid'] = Variable<int>(cargaAcademicaid);
    }
    if (!nullToAbsent || paths != null) {
      map['paths'] = Variable<String>(paths);
    }
    return map;
  }

  CargaCursoCalendarioPeriodoCompanion toCompanion(bool nullToAbsent) {
    return CargaCursoCalendarioPeriodoCompanion(
      cargaCursoCalendarioPeriodoId:
          cargaCursoCalendarioPeriodoId == null && nullToAbsent
              ? const Value.absent()
              : Value(cargaCursoCalendarioPeriodoId),
      cargaCursoId: cargaCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaCursoId),
      calendarioPeriodoId: calendarioPeriodoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoId),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
      fechaInicio: fechaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaInicio),
      fechaFin: fechaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFin),
      horaInicio: horaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(horaInicio),
      horaFin: horaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(horaFin),
      calendarioPeriodoDetId: calendarioPeriodoDetId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioPeriodoDetId),
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      planCursoId: planCursoId == null && nullToAbsent
          ? const Value.absent()
          : Value(planCursoId),
      anioAcademicoId: anioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(anioAcademicoId),
      cargaAcademicaid: cargaAcademicaid == null && nullToAbsent
          ? const Value.absent()
          : Value(cargaAcademicaid),
      paths:
          paths == null && nullToAbsent ? const Value.absent() : Value(paths),
    );
  }

  factory CargaCursoCalendarioPeriodoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CargaCursoCalendarioPeriodoData(
      cargaCursoCalendarioPeriodoId:
          serializer.fromJson<int>(json['cargaCursoCalendarioPeriodoId']),
      cargaCursoId: serializer.fromJson<int>(json['cargaCursoId']),
      calendarioPeriodoId:
          serializer.fromJson<int>(json['calendarioPeriodoId']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
      fechaInicio: serializer.fromJson<int>(json['fechaInicio']),
      fechaFin: serializer.fromJson<int>(json['fechaFin']),
      horaInicio: serializer.fromJson<String>(json['horaInicio']),
      horaFin: serializer.fromJson<String>(json['horaFin']),
      calendarioPeriodoDetId:
          serializer.fromJson<int>(json['calendarioPeriodoDetId']),
      tipoId: serializer.fromJson<int>(json['tipoId']),
      planCursoId: serializer.fromJson<int>(json['planCursoId']),
      anioAcademicoId: serializer.fromJson<int>(json['anioAcademicoId']),
      cargaAcademicaid: serializer.fromJson<int>(json['cargaAcademicaid']),
      paths: serializer.fromJson<String>(json['paths']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cargaCursoCalendarioPeriodoId':
          serializer.toJson<int>(cargaCursoCalendarioPeriodoId),
      'cargaCursoId': serializer.toJson<int>(cargaCursoId),
      'calendarioPeriodoId': serializer.toJson<int>(calendarioPeriodoId),
      'estadoId': serializer.toJson<int>(estadoId),
      'fechaInicio': serializer.toJson<int>(fechaInicio),
      'fechaFin': serializer.toJson<int>(fechaFin),
      'horaInicio': serializer.toJson<String>(horaInicio),
      'horaFin': serializer.toJson<String>(horaFin),
      'calendarioPeriodoDetId': serializer.toJson<int>(calendarioPeriodoDetId),
      'tipoId': serializer.toJson<int>(tipoId),
      'planCursoId': serializer.toJson<int>(planCursoId),
      'anioAcademicoId': serializer.toJson<int>(anioAcademicoId),
      'cargaAcademicaid': serializer.toJson<int>(cargaAcademicaid),
      'paths': serializer.toJson<String>(paths),
    };
  }

  CargaCursoCalendarioPeriodoData copyWith(
          {int cargaCursoCalendarioPeriodoId,
          int cargaCursoId,
          int calendarioPeriodoId,
          int estadoId,
          int fechaInicio,
          int fechaFin,
          String horaInicio,
          String horaFin,
          int calendarioPeriodoDetId,
          int tipoId,
          int planCursoId,
          int anioAcademicoId,
          int cargaAcademicaid,
          String paths}) =>
      CargaCursoCalendarioPeriodoData(
        cargaCursoCalendarioPeriodoId:
            cargaCursoCalendarioPeriodoId ?? this.cargaCursoCalendarioPeriodoId,
        cargaCursoId: cargaCursoId ?? this.cargaCursoId,
        calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
        estadoId: estadoId ?? this.estadoId,
        fechaInicio: fechaInicio ?? this.fechaInicio,
        fechaFin: fechaFin ?? this.fechaFin,
        horaInicio: horaInicio ?? this.horaInicio,
        horaFin: horaFin ?? this.horaFin,
        calendarioPeriodoDetId:
            calendarioPeriodoDetId ?? this.calendarioPeriodoDetId,
        tipoId: tipoId ?? this.tipoId,
        planCursoId: planCursoId ?? this.planCursoId,
        anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
        cargaAcademicaid: cargaAcademicaid ?? this.cargaAcademicaid,
        paths: paths ?? this.paths,
      );
  @override
  String toString() {
    return (StringBuffer('CargaCursoCalendarioPeriodoData(')
          ..write(
              'cargaCursoCalendarioPeriodoId: $cargaCursoCalendarioPeriodoId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin, ')
          ..write('calendarioPeriodoDetId: $calendarioPeriodoDetId, ')
          ..write('tipoId: $tipoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('cargaAcademicaid: $cargaAcademicaid, ')
          ..write('paths: $paths')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      cargaCursoCalendarioPeriodoId.hashCode,
      $mrjc(
          cargaCursoId.hashCode,
          $mrjc(
              calendarioPeriodoId.hashCode,
              $mrjc(
                  estadoId.hashCode,
                  $mrjc(
                      fechaInicio.hashCode,
                      $mrjc(
                          fechaFin.hashCode,
                          $mrjc(
                              horaInicio.hashCode,
                              $mrjc(
                                  horaFin.hashCode,
                                  $mrjc(
                                      calendarioPeriodoDetId.hashCode,
                                      $mrjc(
                                          tipoId.hashCode,
                                          $mrjc(
                                              planCursoId.hashCode,
                                              $mrjc(
                                                  anioAcademicoId.hashCode,
                                                  $mrjc(
                                                      cargaAcademicaid.hashCode,
                                                      paths
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CargaCursoCalendarioPeriodoData &&
          other.cargaCursoCalendarioPeriodoId ==
              this.cargaCursoCalendarioPeriodoId &&
          other.cargaCursoId == this.cargaCursoId &&
          other.calendarioPeriodoId == this.calendarioPeriodoId &&
          other.estadoId == this.estadoId &&
          other.fechaInicio == this.fechaInicio &&
          other.fechaFin == this.fechaFin &&
          other.horaInicio == this.horaInicio &&
          other.horaFin == this.horaFin &&
          other.calendarioPeriodoDetId == this.calendarioPeriodoDetId &&
          other.tipoId == this.tipoId &&
          other.planCursoId == this.planCursoId &&
          other.anioAcademicoId == this.anioAcademicoId &&
          other.cargaAcademicaid == this.cargaAcademicaid &&
          other.paths == this.paths);
}

class CargaCursoCalendarioPeriodoCompanion
    extends UpdateCompanion<CargaCursoCalendarioPeriodoData> {
  final Value<int> cargaCursoCalendarioPeriodoId;
  final Value<int> cargaCursoId;
  final Value<int> calendarioPeriodoId;
  final Value<int> estadoId;
  final Value<int> fechaInicio;
  final Value<int> fechaFin;
  final Value<String> horaInicio;
  final Value<String> horaFin;
  final Value<int> calendarioPeriodoDetId;
  final Value<int> tipoId;
  final Value<int> planCursoId;
  final Value<int> anioAcademicoId;
  final Value<int> cargaAcademicaid;
  final Value<String> paths;
  const CargaCursoCalendarioPeriodoCompanion({
    this.cargaCursoCalendarioPeriodoId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
    this.calendarioPeriodoDetId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.cargaAcademicaid = const Value.absent(),
    this.paths = const Value.absent(),
  });
  CargaCursoCalendarioPeriodoCompanion.insert({
    this.cargaCursoCalendarioPeriodoId = const Value.absent(),
    this.cargaCursoId = const Value.absent(),
    this.calendarioPeriodoId = const Value.absent(),
    this.estadoId = const Value.absent(),
    this.fechaInicio = const Value.absent(),
    this.fechaFin = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
    this.calendarioPeriodoDetId = const Value.absent(),
    this.tipoId = const Value.absent(),
    this.planCursoId = const Value.absent(),
    this.anioAcademicoId = const Value.absent(),
    this.cargaAcademicaid = const Value.absent(),
    this.paths = const Value.absent(),
  });
  static Insertable<CargaCursoCalendarioPeriodoData> custom({
    Expression<int> cargaCursoCalendarioPeriodoId,
    Expression<int> cargaCursoId,
    Expression<int> calendarioPeriodoId,
    Expression<int> estadoId,
    Expression<int> fechaInicio,
    Expression<int> fechaFin,
    Expression<String> horaInicio,
    Expression<String> horaFin,
    Expression<int> calendarioPeriodoDetId,
    Expression<int> tipoId,
    Expression<int> planCursoId,
    Expression<int> anioAcademicoId,
    Expression<int> cargaAcademicaid,
    Expression<String> paths,
  }) {
    return RawValuesInsertable({
      if (cargaCursoCalendarioPeriodoId != null)
        'carga_curso_calendario_periodo_id': cargaCursoCalendarioPeriodoId,
      if (cargaCursoId != null) 'carga_curso_id': cargaCursoId,
      if (calendarioPeriodoId != null)
        'calendario_periodo_id': calendarioPeriodoId,
      if (estadoId != null) 'estado_id': estadoId,
      if (fechaInicio != null) 'fecha_inicio': fechaInicio,
      if (fechaFin != null) 'fecha_fin': fechaFin,
      if (horaInicio != null) 'hora_inicio': horaInicio,
      if (horaFin != null) 'hora_fin': horaFin,
      if (calendarioPeriodoDetId != null)
        'calendario_periodo_det_id': calendarioPeriodoDetId,
      if (tipoId != null) 'tipo_id': tipoId,
      if (planCursoId != null) 'plan_curso_id': planCursoId,
      if (anioAcademicoId != null) 'anio_academico_id': anioAcademicoId,
      if (cargaAcademicaid != null) 'carga_academicaid': cargaAcademicaid,
      if (paths != null) 'paths': paths,
    });
  }

  CargaCursoCalendarioPeriodoCompanion copyWith(
      {Value<int> cargaCursoCalendarioPeriodoId,
      Value<int> cargaCursoId,
      Value<int> calendarioPeriodoId,
      Value<int> estadoId,
      Value<int> fechaInicio,
      Value<int> fechaFin,
      Value<String> horaInicio,
      Value<String> horaFin,
      Value<int> calendarioPeriodoDetId,
      Value<int> tipoId,
      Value<int> planCursoId,
      Value<int> anioAcademicoId,
      Value<int> cargaAcademicaid,
      Value<String> paths}) {
    return CargaCursoCalendarioPeriodoCompanion(
      cargaCursoCalendarioPeriodoId:
          cargaCursoCalendarioPeriodoId ?? this.cargaCursoCalendarioPeriodoId,
      cargaCursoId: cargaCursoId ?? this.cargaCursoId,
      calendarioPeriodoId: calendarioPeriodoId ?? this.calendarioPeriodoId,
      estadoId: estadoId ?? this.estadoId,
      fechaInicio: fechaInicio ?? this.fechaInicio,
      fechaFin: fechaFin ?? this.fechaFin,
      horaInicio: horaInicio ?? this.horaInicio,
      horaFin: horaFin ?? this.horaFin,
      calendarioPeriodoDetId:
          calendarioPeriodoDetId ?? this.calendarioPeriodoDetId,
      tipoId: tipoId ?? this.tipoId,
      planCursoId: planCursoId ?? this.planCursoId,
      anioAcademicoId: anioAcademicoId ?? this.anioAcademicoId,
      cargaAcademicaid: cargaAcademicaid ?? this.cargaAcademicaid,
      paths: paths ?? this.paths,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cargaCursoCalendarioPeriodoId.present) {
      map['carga_curso_calendario_periodo_id'] =
          Variable<int>(cargaCursoCalendarioPeriodoId.value);
    }
    if (cargaCursoId.present) {
      map['carga_curso_id'] = Variable<int>(cargaCursoId.value);
    }
    if (calendarioPeriodoId.present) {
      map['calendario_periodo_id'] = Variable<int>(calendarioPeriodoId.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    if (fechaInicio.present) {
      map['fecha_inicio'] = Variable<int>(fechaInicio.value);
    }
    if (fechaFin.present) {
      map['fecha_fin'] = Variable<int>(fechaFin.value);
    }
    if (horaInicio.present) {
      map['hora_inicio'] = Variable<String>(horaInicio.value);
    }
    if (horaFin.present) {
      map['hora_fin'] = Variable<String>(horaFin.value);
    }
    if (calendarioPeriodoDetId.present) {
      map['calendario_periodo_det_id'] =
          Variable<int>(calendarioPeriodoDetId.value);
    }
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (planCursoId.present) {
      map['plan_curso_id'] = Variable<int>(planCursoId.value);
    }
    if (anioAcademicoId.present) {
      map['anio_academico_id'] = Variable<int>(anioAcademicoId.value);
    }
    if (cargaAcademicaid.present) {
      map['carga_academicaid'] = Variable<int>(cargaAcademicaid.value);
    }
    if (paths.present) {
      map['paths'] = Variable<String>(paths.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CargaCursoCalendarioPeriodoCompanion(')
          ..write(
              'cargaCursoCalendarioPeriodoId: $cargaCursoCalendarioPeriodoId, ')
          ..write('cargaCursoId: $cargaCursoId, ')
          ..write('calendarioPeriodoId: $calendarioPeriodoId, ')
          ..write('estadoId: $estadoId, ')
          ..write('fechaInicio: $fechaInicio, ')
          ..write('fechaFin: $fechaFin, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin, ')
          ..write('calendarioPeriodoDetId: $calendarioPeriodoDetId, ')
          ..write('tipoId: $tipoId, ')
          ..write('planCursoId: $planCursoId, ')
          ..write('anioAcademicoId: $anioAcademicoId, ')
          ..write('cargaAcademicaid: $cargaAcademicaid, ')
          ..write('paths: $paths')
          ..write(')'))
        .toString();
  }
}

class $CargaCursoCalendarioPeriodoTable extends CargaCursoCalendarioPeriodo
    with
        TableInfo<$CargaCursoCalendarioPeriodoTable,
            CargaCursoCalendarioPeriodoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CargaCursoCalendarioPeriodoTable(this._db, [this._alias]);
  final VerificationMeta _cargaCursoCalendarioPeriodoIdMeta =
      const VerificationMeta('cargaCursoCalendarioPeriodoId');
  GeneratedIntColumn _cargaCursoCalendarioPeriodoId;
  @override
  GeneratedIntColumn get cargaCursoCalendarioPeriodoId =>
      _cargaCursoCalendarioPeriodoId ??=
          _constructCargaCursoCalendarioPeriodoId();
  GeneratedIntColumn _constructCargaCursoCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'carga_curso_calendario_periodo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cargaCursoIdMeta =
      const VerificationMeta('cargaCursoId');
  GeneratedIntColumn _cargaCursoId;
  @override
  GeneratedIntColumn get cargaCursoId =>
      _cargaCursoId ??= _constructCargaCursoId();
  GeneratedIntColumn _constructCargaCursoId() {
    return GeneratedIntColumn(
      'carga_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoIdMeta =
      const VerificationMeta('calendarioPeriodoId');
  GeneratedIntColumn _calendarioPeriodoId;
  @override
  GeneratedIntColumn get calendarioPeriodoId =>
      _calendarioPeriodoId ??= _constructCalendarioPeriodoId();
  GeneratedIntColumn _constructCalendarioPeriodoId() {
    return GeneratedIntColumn(
      'calendario_periodo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaInicioMeta =
      const VerificationMeta('fechaInicio');
  GeneratedIntColumn _fechaInicio;
  @override
  GeneratedIntColumn get fechaInicio =>
      _fechaInicio ??= _constructFechaInicio();
  GeneratedIntColumn _constructFechaInicio() {
    return GeneratedIntColumn(
      'fecha_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaFinMeta = const VerificationMeta('fechaFin');
  GeneratedIntColumn _fechaFin;
  @override
  GeneratedIntColumn get fechaFin => _fechaFin ??= _constructFechaFin();
  GeneratedIntColumn _constructFechaFin() {
    return GeneratedIntColumn(
      'fecha_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaInicioMeta = const VerificationMeta('horaInicio');
  GeneratedTextColumn _horaInicio;
  @override
  GeneratedTextColumn get horaInicio => _horaInicio ??= _constructHoraInicio();
  GeneratedTextColumn _constructHoraInicio() {
    return GeneratedTextColumn(
      'hora_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaFinMeta = const VerificationMeta('horaFin');
  GeneratedTextColumn _horaFin;
  @override
  GeneratedTextColumn get horaFin => _horaFin ??= _constructHoraFin();
  GeneratedTextColumn _constructHoraFin() {
    return GeneratedTextColumn(
      'hora_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _calendarioPeriodoDetIdMeta =
      const VerificationMeta('calendarioPeriodoDetId');
  GeneratedIntColumn _calendarioPeriodoDetId;
  @override
  GeneratedIntColumn get calendarioPeriodoDetId =>
      _calendarioPeriodoDetId ??= _constructCalendarioPeriodoDetId();
  GeneratedIntColumn _constructCalendarioPeriodoDetId() {
    return GeneratedIntColumn(
      'calendario_periodo_det_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _planCursoIdMeta =
      const VerificationMeta('planCursoId');
  GeneratedIntColumn _planCursoId;
  @override
  GeneratedIntColumn get planCursoId =>
      _planCursoId ??= _constructPlanCursoId();
  GeneratedIntColumn _constructPlanCursoId() {
    return GeneratedIntColumn(
      'plan_curso_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _anioAcademicoIdMeta =
      const VerificationMeta('anioAcademicoId');
  GeneratedIntColumn _anioAcademicoId;
  @override
  GeneratedIntColumn get anioAcademicoId =>
      _anioAcademicoId ??= _constructAnioAcademicoId();
  GeneratedIntColumn _constructAnioAcademicoId() {
    return GeneratedIntColumn(
      'anio_academico_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cargaAcademicaidMeta =
      const VerificationMeta('cargaAcademicaid');
  GeneratedIntColumn _cargaAcademicaid;
  @override
  GeneratedIntColumn get cargaAcademicaid =>
      _cargaAcademicaid ??= _constructCargaAcademicaid();
  GeneratedIntColumn _constructCargaAcademicaid() {
    return GeneratedIntColumn(
      'carga_academicaid',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pathsMeta = const VerificationMeta('paths');
  GeneratedTextColumn _paths;
  @override
  GeneratedTextColumn get paths => _paths ??= _constructPaths();
  GeneratedTextColumn _constructPaths() {
    return GeneratedTextColumn(
      'paths',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        cargaCursoCalendarioPeriodoId,
        cargaCursoId,
        calendarioPeriodoId,
        estadoId,
        fechaInicio,
        fechaFin,
        horaInicio,
        horaFin,
        calendarioPeriodoDetId,
        tipoId,
        planCursoId,
        anioAcademicoId,
        cargaAcademicaid,
        paths
      ];
  @override
  $CargaCursoCalendarioPeriodoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carga_curso_calendario_periodo';
  @override
  final String actualTableName = 'carga_curso_calendario_periodo';
  @override
  VerificationContext validateIntegrity(
      Insertable<CargaCursoCalendarioPeriodoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('carga_curso_calendario_periodo_id')) {
      context.handle(
          _cargaCursoCalendarioPeriodoIdMeta,
          cargaCursoCalendarioPeriodoId.isAcceptableOrUnknown(
              data['carga_curso_calendario_periodo_id'],
              _cargaCursoCalendarioPeriodoIdMeta));
    }
    if (data.containsKey('carga_curso_id')) {
      context.handle(
          _cargaCursoIdMeta,
          cargaCursoId.isAcceptableOrUnknown(
              data['carga_curso_id'], _cargaCursoIdMeta));
    }
    if (data.containsKey('calendario_periodo_id')) {
      context.handle(
          _calendarioPeriodoIdMeta,
          calendarioPeriodoId.isAcceptableOrUnknown(
              data['calendario_periodo_id'], _calendarioPeriodoIdMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    if (data.containsKey('fecha_inicio')) {
      context.handle(
          _fechaInicioMeta,
          fechaInicio.isAcceptableOrUnknown(
              data['fecha_inicio'], _fechaInicioMeta));
    }
    if (data.containsKey('fecha_fin')) {
      context.handle(_fechaFinMeta,
          fechaFin.isAcceptableOrUnknown(data['fecha_fin'], _fechaFinMeta));
    }
    if (data.containsKey('hora_inicio')) {
      context.handle(
          _horaInicioMeta,
          horaInicio.isAcceptableOrUnknown(
              data['hora_inicio'], _horaInicioMeta));
    }
    if (data.containsKey('hora_fin')) {
      context.handle(_horaFinMeta,
          horaFin.isAcceptableOrUnknown(data['hora_fin'], _horaFinMeta));
    }
    if (data.containsKey('calendario_periodo_det_id')) {
      context.handle(
          _calendarioPeriodoDetIdMeta,
          calendarioPeriodoDetId.isAcceptableOrUnknown(
              data['calendario_periodo_det_id'], _calendarioPeriodoDetIdMeta));
    }
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('plan_curso_id')) {
      context.handle(
          _planCursoIdMeta,
          planCursoId.isAcceptableOrUnknown(
              data['plan_curso_id'], _planCursoIdMeta));
    }
    if (data.containsKey('anio_academico_id')) {
      context.handle(
          _anioAcademicoIdMeta,
          anioAcademicoId.isAcceptableOrUnknown(
              data['anio_academico_id'], _anioAcademicoIdMeta));
    }
    if (data.containsKey('carga_academicaid')) {
      context.handle(
          _cargaAcademicaidMeta,
          cargaAcademicaid.isAcceptableOrUnknown(
              data['carga_academicaid'], _cargaAcademicaidMeta));
    }
    if (data.containsKey('paths')) {
      context.handle(
          _pathsMeta, paths.isAcceptableOrUnknown(data['paths'], _pathsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cargaCursoCalendarioPeriodoId};
  @override
  CargaCursoCalendarioPeriodoData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CargaCursoCalendarioPeriodoData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $CargaCursoCalendarioPeriodoTable createAlias(String alias) {
    return $CargaCursoCalendarioPeriodoTable(_db, alias);
  }
}

class Tipo extends DataClass implements Insertable<Tipo> {
  final int tipoId;
  final String objeto;
  final String concepto;
  final String nombre;
  final String codigo;
  final int parentId;
  Tipo(
      {@required this.tipoId,
      this.objeto,
      this.concepto,
      this.nombre,
      this.codigo,
      this.parentId});
  factory Tipo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Tipo(
      tipoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo_id']),
      objeto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}objeto']),
      concepto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}concepto']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      codigo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}codigo']),
      parentId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}parent_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || tipoId != null) {
      map['tipo_id'] = Variable<int>(tipoId);
    }
    if (!nullToAbsent || objeto != null) {
      map['objeto'] = Variable<String>(objeto);
    }
    if (!nullToAbsent || concepto != null) {
      map['concepto'] = Variable<String>(concepto);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || codigo != null) {
      map['codigo'] = Variable<String>(codigo);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<int>(parentId);
    }
    return map;
  }

  TiposCompanion toCompanion(bool nullToAbsent) {
    return TiposCompanion(
      tipoId:
          tipoId == null && nullToAbsent ? const Value.absent() : Value(tipoId),
      objeto:
          objeto == null && nullToAbsent ? const Value.absent() : Value(objeto),
      concepto: concepto == null && nullToAbsent
          ? const Value.absent()
          : Value(concepto),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      codigo:
          codigo == null && nullToAbsent ? const Value.absent() : Value(codigo),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
    );
  }

  factory Tipo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tipo(
      tipoId: serializer.fromJson<int>(json['tipoId']),
      objeto: serializer.fromJson<String>(json['objeto']),
      concepto: serializer.fromJson<String>(json['concepto']),
      nombre: serializer.fromJson<String>(json['nombre']),
      codigo: serializer.fromJson<String>(json['codigo']),
      parentId: serializer.fromJson<int>(json['parentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tipoId': serializer.toJson<int>(tipoId),
      'objeto': serializer.toJson<String>(objeto),
      'concepto': serializer.toJson<String>(concepto),
      'nombre': serializer.toJson<String>(nombre),
      'codigo': serializer.toJson<String>(codigo),
      'parentId': serializer.toJson<int>(parentId),
    };
  }

  Tipo copyWith(
          {int tipoId,
          String objeto,
          String concepto,
          String nombre,
          String codigo,
          int parentId}) =>
      Tipo(
        tipoId: tipoId ?? this.tipoId,
        objeto: objeto ?? this.objeto,
        concepto: concepto ?? this.concepto,
        nombre: nombre ?? this.nombre,
        codigo: codigo ?? this.codigo,
        parentId: parentId ?? this.parentId,
      );
  @override
  String toString() {
    return (StringBuffer('Tipo(')
          ..write('tipoId: $tipoId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tipoId.hashCode,
      $mrjc(
          objeto.hashCode,
          $mrjc(
              concepto.hashCode,
              $mrjc(nombre.hashCode,
                  $mrjc(codigo.hashCode, parentId.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tipo &&
          other.tipoId == this.tipoId &&
          other.objeto == this.objeto &&
          other.concepto == this.concepto &&
          other.nombre == this.nombre &&
          other.codigo == this.codigo &&
          other.parentId == this.parentId);
}

class TiposCompanion extends UpdateCompanion<Tipo> {
  final Value<int> tipoId;
  final Value<String> objeto;
  final Value<String> concepto;
  final Value<String> nombre;
  final Value<String> codigo;
  final Value<int> parentId;
  const TiposCompanion({
    this.tipoId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.codigo = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  TiposCompanion.insert({
    this.tipoId = const Value.absent(),
    this.objeto = const Value.absent(),
    this.concepto = const Value.absent(),
    this.nombre = const Value.absent(),
    this.codigo = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  static Insertable<Tipo> custom({
    Expression<int> tipoId,
    Expression<String> objeto,
    Expression<String> concepto,
    Expression<String> nombre,
    Expression<String> codigo,
    Expression<int> parentId,
  }) {
    return RawValuesInsertable({
      if (tipoId != null) 'tipo_id': tipoId,
      if (objeto != null) 'objeto': objeto,
      if (concepto != null) 'concepto': concepto,
      if (nombre != null) 'nombre': nombre,
      if (codigo != null) 'codigo': codigo,
      if (parentId != null) 'parent_id': parentId,
    });
  }

  TiposCompanion copyWith(
      {Value<int> tipoId,
      Value<String> objeto,
      Value<String> concepto,
      Value<String> nombre,
      Value<String> codigo,
      Value<int> parentId}) {
    return TiposCompanion(
      tipoId: tipoId ?? this.tipoId,
      objeto: objeto ?? this.objeto,
      concepto: concepto ?? this.concepto,
      nombre: nombre ?? this.nombre,
      codigo: codigo ?? this.codigo,
      parentId: parentId ?? this.parentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tipoId.present) {
      map['tipo_id'] = Variable<int>(tipoId.value);
    }
    if (objeto.present) {
      map['objeto'] = Variable<String>(objeto.value);
    }
    if (concepto.present) {
      map['concepto'] = Variable<String>(concepto.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (codigo.present) {
      map['codigo'] = Variable<String>(codigo.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TiposCompanion(')
          ..write('tipoId: $tipoId, ')
          ..write('objeto: $objeto, ')
          ..write('concepto: $concepto, ')
          ..write('nombre: $nombre, ')
          ..write('codigo: $codigo, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }
}

class $TiposTable extends Tipos with TableInfo<$TiposTable, Tipo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TiposTable(this._db, [this._alias]);
  final VerificationMeta _tipoIdMeta = const VerificationMeta('tipoId');
  GeneratedIntColumn _tipoId;
  @override
  GeneratedIntColumn get tipoId => _tipoId ??= _constructTipoId();
  GeneratedIntColumn _constructTipoId() {
    return GeneratedIntColumn(
      'tipo_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _objetoMeta = const VerificationMeta('objeto');
  GeneratedTextColumn _objeto;
  @override
  GeneratedTextColumn get objeto => _objeto ??= _constructObjeto();
  GeneratedTextColumn _constructObjeto() {
    return GeneratedTextColumn(
      'objeto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _conceptoMeta = const VerificationMeta('concepto');
  GeneratedTextColumn _concepto;
  @override
  GeneratedTextColumn get concepto => _concepto ??= _constructConcepto();
  GeneratedTextColumn _constructConcepto() {
    return GeneratedTextColumn(
      'concepto',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _codigoMeta = const VerificationMeta('codigo');
  GeneratedTextColumn _codigo;
  @override
  GeneratedTextColumn get codigo => _codigo ??= _constructCodigo();
  GeneratedTextColumn _constructCodigo() {
    return GeneratedTextColumn(
      'codigo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  GeneratedIntColumn _parentId;
  @override
  GeneratedIntColumn get parentId => _parentId ??= _constructParentId();
  GeneratedIntColumn _constructParentId() {
    return GeneratedIntColumn(
      'parent_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [tipoId, objeto, concepto, nombre, codigo, parentId];
  @override
  $TiposTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tipos';
  @override
  final String actualTableName = 'tipos';
  @override
  VerificationContext validateIntegrity(Insertable<Tipo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tipo_id')) {
      context.handle(_tipoIdMeta,
          tipoId.isAcceptableOrUnknown(data['tipo_id'], _tipoIdMeta));
    }
    if (data.containsKey('objeto')) {
      context.handle(_objetoMeta,
          objeto.isAcceptableOrUnknown(data['objeto'], _objetoMeta));
    }
    if (data.containsKey('concepto')) {
      context.handle(_conceptoMeta,
          concepto.isAcceptableOrUnknown(data['concepto'], _conceptoMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('codigo')) {
      context.handle(_codigoMeta,
          codigo.isAcceptableOrUnknown(data['codigo'], _codigoMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id'], _parentIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tipoId};
  @override
  Tipo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tipo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TiposTable createAlias(String alias) {
    return $TiposTable(_db, alias);
  }
}

class HoraData extends DataClass implements Insertable<HoraData> {
  final int idHora;
  final String horaInicio;
  final String horaFin;
  HoraData({@required this.idHora, this.horaInicio, this.horaFin});
  factory HoraData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return HoraData(
      idHora:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_hora']),
      horaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_inicio']),
      horaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_fin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idHora != null) {
      map['id_hora'] = Variable<int>(idHora);
    }
    if (!nullToAbsent || horaInicio != null) {
      map['hora_inicio'] = Variable<String>(horaInicio);
    }
    if (!nullToAbsent || horaFin != null) {
      map['hora_fin'] = Variable<String>(horaFin);
    }
    return map;
  }

  HoraCompanion toCompanion(bool nullToAbsent) {
    return HoraCompanion(
      idHora:
          idHora == null && nullToAbsent ? const Value.absent() : Value(idHora),
      horaInicio: horaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(horaInicio),
      horaFin: horaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(horaFin),
    );
  }

  factory HoraData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HoraData(
      idHora: serializer.fromJson<int>(json['idHora']),
      horaInicio: serializer.fromJson<String>(json['horaInicio']),
      horaFin: serializer.fromJson<String>(json['horaFin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idHora': serializer.toJson<int>(idHora),
      'horaInicio': serializer.toJson<String>(horaInicio),
      'horaFin': serializer.toJson<String>(horaFin),
    };
  }

  HoraData copyWith({int idHora, String horaInicio, String horaFin}) =>
      HoraData(
        idHora: idHora ?? this.idHora,
        horaInicio: horaInicio ?? this.horaInicio,
        horaFin: horaFin ?? this.horaFin,
      );
  @override
  String toString() {
    return (StringBuffer('HoraData(')
          ..write('idHora: $idHora, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idHora.hashCode, $mrjc(horaInicio.hashCode, horaFin.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HoraData &&
          other.idHora == this.idHora &&
          other.horaInicio == this.horaInicio &&
          other.horaFin == this.horaFin);
}

class HoraCompanion extends UpdateCompanion<HoraData> {
  final Value<int> idHora;
  final Value<String> horaInicio;
  final Value<String> horaFin;
  const HoraCompanion({
    this.idHora = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
  });
  HoraCompanion.insert({
    this.idHora = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
  });
  static Insertable<HoraData> custom({
    Expression<int> idHora,
    Expression<String> horaInicio,
    Expression<String> horaFin,
  }) {
    return RawValuesInsertable({
      if (idHora != null) 'id_hora': idHora,
      if (horaInicio != null) 'hora_inicio': horaInicio,
      if (horaFin != null) 'hora_fin': horaFin,
    });
  }

  HoraCompanion copyWith(
      {Value<int> idHora, Value<String> horaInicio, Value<String> horaFin}) {
    return HoraCompanion(
      idHora: idHora ?? this.idHora,
      horaInicio: horaInicio ?? this.horaInicio,
      horaFin: horaFin ?? this.horaFin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idHora.present) {
      map['id_hora'] = Variable<int>(idHora.value);
    }
    if (horaInicio.present) {
      map['hora_inicio'] = Variable<String>(horaInicio.value);
    }
    if (horaFin.present) {
      map['hora_fin'] = Variable<String>(horaFin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HoraCompanion(')
          ..write('idHora: $idHora, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin')
          ..write(')'))
        .toString();
  }
}

class $HoraTable extends Hora with TableInfo<$HoraTable, HoraData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HoraTable(this._db, [this._alias]);
  final VerificationMeta _idHoraMeta = const VerificationMeta('idHora');
  GeneratedIntColumn _idHora;
  @override
  GeneratedIntColumn get idHora => _idHora ??= _constructIdHora();
  GeneratedIntColumn _constructIdHora() {
    return GeneratedIntColumn(
      'id_hora',
      $tableName,
      false,
    );
  }

  final VerificationMeta _horaInicioMeta = const VerificationMeta('horaInicio');
  GeneratedTextColumn _horaInicio;
  @override
  GeneratedTextColumn get horaInicio => _horaInicio ??= _constructHoraInicio();
  GeneratedTextColumn _constructHoraInicio() {
    return GeneratedTextColumn(
      'hora_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaFinMeta = const VerificationMeta('horaFin');
  GeneratedTextColumn _horaFin;
  @override
  GeneratedTextColumn get horaFin => _horaFin ??= _constructHoraFin();
  GeneratedTextColumn _constructHoraFin() {
    return GeneratedTextColumn(
      'hora_fin',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [idHora, horaInicio, horaFin];
  @override
  $HoraTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'hora';
  @override
  final String actualTableName = 'hora';
  @override
  VerificationContext validateIntegrity(Insertable<HoraData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_hora')) {
      context.handle(_idHoraMeta,
          idHora.isAcceptableOrUnknown(data['id_hora'], _idHoraMeta));
    }
    if (data.containsKey('hora_inicio')) {
      context.handle(
          _horaInicioMeta,
          horaInicio.isAcceptableOrUnknown(
              data['hora_inicio'], _horaInicioMeta));
    }
    if (data.containsKey('hora_fin')) {
      context.handle(_horaFinMeta,
          horaFin.isAcceptableOrUnknown(data['hora_fin'], _horaFinMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idHora};
  @override
  HoraData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HoraData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HoraTable createAlias(String alias) {
    return $HoraTable(_db, alias);
  }
}

class HorarioProgramaData extends DataClass
    implements Insertable<HorarioProgramaData> {
  final int idHorarioPrograma;
  final int idHorario;
  final int activo;
  final int idProgramaEducativo;
  final int idAnioAcademico;
  final int idUsuarioActualizacion;
  final int idUsuarioCreacion;
  final String fechaCreacion;
  final String fechaActualizacion;
  HorarioProgramaData(
      {@required this.idHorarioPrograma,
      this.idHorario,
      this.activo,
      this.idProgramaEducativo,
      this.idAnioAcademico,
      this.idUsuarioActualizacion,
      this.idUsuarioCreacion,
      this.fechaCreacion,
      this.fechaActualizacion});
  factory HorarioProgramaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return HorarioProgramaData(
      idHorarioPrograma: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_horario_programa']),
      idHorario:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_horario']),
      activo: intType.mapFromDatabaseResponse(data['${effectivePrefix}activo']),
      idProgramaEducativo: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_programa_educativo']),
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      idUsuarioActualizacion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_actualizacion']),
      idUsuarioCreacion: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_creacion']),
      fechaCreacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fecha_creacion']),
      fechaActualizacion: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}fecha_actualizacion']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idHorarioPrograma != null) {
      map['id_horario_programa'] = Variable<int>(idHorarioPrograma);
    }
    if (!nullToAbsent || idHorario != null) {
      map['id_horario'] = Variable<int>(idHorario);
    }
    if (!nullToAbsent || activo != null) {
      map['activo'] = Variable<int>(activo);
    }
    if (!nullToAbsent || idProgramaEducativo != null) {
      map['id_programa_educativo'] = Variable<int>(idProgramaEducativo);
    }
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || idUsuarioActualizacion != null) {
      map['id_usuario_actualizacion'] = Variable<int>(idUsuarioActualizacion);
    }
    if (!nullToAbsent || idUsuarioCreacion != null) {
      map['id_usuario_creacion'] = Variable<int>(idUsuarioCreacion);
    }
    if (!nullToAbsent || fechaCreacion != null) {
      map['fecha_creacion'] = Variable<String>(fechaCreacion);
    }
    if (!nullToAbsent || fechaActualizacion != null) {
      map['fecha_actualizacion'] = Variable<String>(fechaActualizacion);
    }
    return map;
  }

  HorarioProgramaCompanion toCompanion(bool nullToAbsent) {
    return HorarioProgramaCompanion(
      idHorarioPrograma: idHorarioPrograma == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorarioPrograma),
      idHorario: idHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorario),
      activo:
          activo == null && nullToAbsent ? const Value.absent() : Value(activo),
      idProgramaEducativo: idProgramaEducativo == null && nullToAbsent
          ? const Value.absent()
          : Value(idProgramaEducativo),
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      idUsuarioActualizacion: idUsuarioActualizacion == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioActualizacion),
      idUsuarioCreacion: idUsuarioCreacion == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioCreacion),
      fechaCreacion: fechaCreacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaCreacion),
      fechaActualizacion: fechaActualizacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaActualizacion),
    );
  }

  factory HorarioProgramaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HorarioProgramaData(
      idHorarioPrograma: serializer.fromJson<int>(json['idHorarioPrograma']),
      idHorario: serializer.fromJson<int>(json['idHorario']),
      activo: serializer.fromJson<int>(json['activo']),
      idProgramaEducativo:
          serializer.fromJson<int>(json['idProgramaEducativo']),
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      idUsuarioActualizacion:
          serializer.fromJson<int>(json['idUsuarioActualizacion']),
      idUsuarioCreacion: serializer.fromJson<int>(json['idUsuarioCreacion']),
      fechaCreacion: serializer.fromJson<String>(json['fechaCreacion']),
      fechaActualizacion:
          serializer.fromJson<String>(json['fechaActualizacion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idHorarioPrograma': serializer.toJson<int>(idHorarioPrograma),
      'idHorario': serializer.toJson<int>(idHorario),
      'activo': serializer.toJson<int>(activo),
      'idProgramaEducativo': serializer.toJson<int>(idProgramaEducativo),
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'idUsuarioActualizacion': serializer.toJson<int>(idUsuarioActualizacion),
      'idUsuarioCreacion': serializer.toJson<int>(idUsuarioCreacion),
      'fechaCreacion': serializer.toJson<String>(fechaCreacion),
      'fechaActualizacion': serializer.toJson<String>(fechaActualizacion),
    };
  }

  HorarioProgramaData copyWith(
          {int idHorarioPrograma,
          int idHorario,
          int activo,
          int idProgramaEducativo,
          int idAnioAcademico,
          int idUsuarioActualizacion,
          int idUsuarioCreacion,
          String fechaCreacion,
          String fechaActualizacion}) =>
      HorarioProgramaData(
        idHorarioPrograma: idHorarioPrograma ?? this.idHorarioPrograma,
        idHorario: idHorario ?? this.idHorario,
        activo: activo ?? this.activo,
        idProgramaEducativo: idProgramaEducativo ?? this.idProgramaEducativo,
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        idUsuarioActualizacion:
            idUsuarioActualizacion ?? this.idUsuarioActualizacion,
        idUsuarioCreacion: idUsuarioCreacion ?? this.idUsuarioCreacion,
        fechaCreacion: fechaCreacion ?? this.fechaCreacion,
        fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
      );
  @override
  String toString() {
    return (StringBuffer('HorarioProgramaData(')
          ..write('idHorarioPrograma: $idHorarioPrograma, ')
          ..write('idHorario: $idHorario, ')
          ..write('activo: $activo, ')
          ..write('idProgramaEducativo: $idProgramaEducativo, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('idUsuarioActualizacion: $idUsuarioActualizacion, ')
          ..write('idUsuarioCreacion: $idUsuarioCreacion, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('fechaActualizacion: $fechaActualizacion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idHorarioPrograma.hashCode,
      $mrjc(
          idHorario.hashCode,
          $mrjc(
              activo.hashCode,
              $mrjc(
                  idProgramaEducativo.hashCode,
                  $mrjc(
                      idAnioAcademico.hashCode,
                      $mrjc(
                          idUsuarioActualizacion.hashCode,
                          $mrjc(
                              idUsuarioCreacion.hashCode,
                              $mrjc(fechaCreacion.hashCode,
                                  fechaActualizacion.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HorarioProgramaData &&
          other.idHorarioPrograma == this.idHorarioPrograma &&
          other.idHorario == this.idHorario &&
          other.activo == this.activo &&
          other.idProgramaEducativo == this.idProgramaEducativo &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.idUsuarioActualizacion == this.idUsuarioActualizacion &&
          other.idUsuarioCreacion == this.idUsuarioCreacion &&
          other.fechaCreacion == this.fechaCreacion &&
          other.fechaActualizacion == this.fechaActualizacion);
}

class HorarioProgramaCompanion extends UpdateCompanion<HorarioProgramaData> {
  final Value<int> idHorarioPrograma;
  final Value<int> idHorario;
  final Value<int> activo;
  final Value<int> idProgramaEducativo;
  final Value<int> idAnioAcademico;
  final Value<int> idUsuarioActualizacion;
  final Value<int> idUsuarioCreacion;
  final Value<String> fechaCreacion;
  final Value<String> fechaActualizacion;
  const HorarioProgramaCompanion({
    this.idHorarioPrograma = const Value.absent(),
    this.idHorario = const Value.absent(),
    this.activo = const Value.absent(),
    this.idProgramaEducativo = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.idUsuarioActualizacion = const Value.absent(),
    this.idUsuarioCreacion = const Value.absent(),
    this.fechaCreacion = const Value.absent(),
    this.fechaActualizacion = const Value.absent(),
  });
  HorarioProgramaCompanion.insert({
    this.idHorarioPrograma = const Value.absent(),
    this.idHorario = const Value.absent(),
    this.activo = const Value.absent(),
    this.idProgramaEducativo = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.idUsuarioActualizacion = const Value.absent(),
    this.idUsuarioCreacion = const Value.absent(),
    this.fechaCreacion = const Value.absent(),
    this.fechaActualizacion = const Value.absent(),
  });
  static Insertable<HorarioProgramaData> custom({
    Expression<int> idHorarioPrograma,
    Expression<int> idHorario,
    Expression<int> activo,
    Expression<int> idProgramaEducativo,
    Expression<int> idAnioAcademico,
    Expression<int> idUsuarioActualizacion,
    Expression<int> idUsuarioCreacion,
    Expression<String> fechaCreacion,
    Expression<String> fechaActualizacion,
  }) {
    return RawValuesInsertable({
      if (idHorarioPrograma != null) 'id_horario_programa': idHorarioPrograma,
      if (idHorario != null) 'id_horario': idHorario,
      if (activo != null) 'activo': activo,
      if (idProgramaEducativo != null)
        'id_programa_educativo': idProgramaEducativo,
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (idUsuarioActualizacion != null)
        'id_usuario_actualizacion': idUsuarioActualizacion,
      if (idUsuarioCreacion != null) 'id_usuario_creacion': idUsuarioCreacion,
      if (fechaCreacion != null) 'fecha_creacion': fechaCreacion,
      if (fechaActualizacion != null) 'fecha_actualizacion': fechaActualizacion,
    });
  }

  HorarioProgramaCompanion copyWith(
      {Value<int> idHorarioPrograma,
      Value<int> idHorario,
      Value<int> activo,
      Value<int> idProgramaEducativo,
      Value<int> idAnioAcademico,
      Value<int> idUsuarioActualizacion,
      Value<int> idUsuarioCreacion,
      Value<String> fechaCreacion,
      Value<String> fechaActualizacion}) {
    return HorarioProgramaCompanion(
      idHorarioPrograma: idHorarioPrograma ?? this.idHorarioPrograma,
      idHorario: idHorario ?? this.idHorario,
      activo: activo ?? this.activo,
      idProgramaEducativo: idProgramaEducativo ?? this.idProgramaEducativo,
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      idUsuarioActualizacion:
          idUsuarioActualizacion ?? this.idUsuarioActualizacion,
      idUsuarioCreacion: idUsuarioCreacion ?? this.idUsuarioCreacion,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
      fechaActualizacion: fechaActualizacion ?? this.fechaActualizacion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idHorarioPrograma.present) {
      map['id_horario_programa'] = Variable<int>(idHorarioPrograma.value);
    }
    if (idHorario.present) {
      map['id_horario'] = Variable<int>(idHorario.value);
    }
    if (activo.present) {
      map['activo'] = Variable<int>(activo.value);
    }
    if (idProgramaEducativo.present) {
      map['id_programa_educativo'] = Variable<int>(idProgramaEducativo.value);
    }
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (idUsuarioActualizacion.present) {
      map['id_usuario_actualizacion'] =
          Variable<int>(idUsuarioActualizacion.value);
    }
    if (idUsuarioCreacion.present) {
      map['id_usuario_creacion'] = Variable<int>(idUsuarioCreacion.value);
    }
    if (fechaCreacion.present) {
      map['fecha_creacion'] = Variable<String>(fechaCreacion.value);
    }
    if (fechaActualizacion.present) {
      map['fecha_actualizacion'] = Variable<String>(fechaActualizacion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HorarioProgramaCompanion(')
          ..write('idHorarioPrograma: $idHorarioPrograma, ')
          ..write('idHorario: $idHorario, ')
          ..write('activo: $activo, ')
          ..write('idProgramaEducativo: $idProgramaEducativo, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('idUsuarioActualizacion: $idUsuarioActualizacion, ')
          ..write('idUsuarioCreacion: $idUsuarioCreacion, ')
          ..write('fechaCreacion: $fechaCreacion, ')
          ..write('fechaActualizacion: $fechaActualizacion')
          ..write(')'))
        .toString();
  }
}

class $HorarioProgramaTable extends HorarioPrograma
    with TableInfo<$HorarioProgramaTable, HorarioProgramaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HorarioProgramaTable(this._db, [this._alias]);
  final VerificationMeta _idHorarioProgramaMeta =
      const VerificationMeta('idHorarioPrograma');
  GeneratedIntColumn _idHorarioPrograma;
  @override
  GeneratedIntColumn get idHorarioPrograma =>
      _idHorarioPrograma ??= _constructIdHorarioPrograma();
  GeneratedIntColumn _constructIdHorarioPrograma() {
    return GeneratedIntColumn(
      'id_horario_programa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idHorarioMeta = const VerificationMeta('idHorario');
  GeneratedIntColumn _idHorario;
  @override
  GeneratedIntColumn get idHorario => _idHorario ??= _constructIdHorario();
  GeneratedIntColumn _constructIdHorario() {
    return GeneratedIntColumn(
      'id_horario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _activoMeta = const VerificationMeta('activo');
  GeneratedIntColumn _activo;
  @override
  GeneratedIntColumn get activo => _activo ??= _constructActivo();
  GeneratedIntColumn _constructActivo() {
    return GeneratedIntColumn(
      'activo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idProgramaEducativoMeta =
      const VerificationMeta('idProgramaEducativo');
  GeneratedIntColumn _idProgramaEducativo;
  @override
  GeneratedIntColumn get idProgramaEducativo =>
      _idProgramaEducativo ??= _constructIdProgramaEducativo();
  GeneratedIntColumn _constructIdProgramaEducativo() {
    return GeneratedIntColumn(
      'id_programa_educativo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idUsuarioActualizacionMeta =
      const VerificationMeta('idUsuarioActualizacion');
  GeneratedIntColumn _idUsuarioActualizacion;
  @override
  GeneratedIntColumn get idUsuarioActualizacion =>
      _idUsuarioActualizacion ??= _constructIdUsuarioActualizacion();
  GeneratedIntColumn _constructIdUsuarioActualizacion() {
    return GeneratedIntColumn(
      'id_usuario_actualizacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idUsuarioCreacionMeta =
      const VerificationMeta('idUsuarioCreacion');
  GeneratedIntColumn _idUsuarioCreacion;
  @override
  GeneratedIntColumn get idUsuarioCreacion =>
      _idUsuarioCreacion ??= _constructIdUsuarioCreacion();
  GeneratedIntColumn _constructIdUsuarioCreacion() {
    return GeneratedIntColumn(
      'id_usuario_creacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaCreacionMeta =
      const VerificationMeta('fechaCreacion');
  GeneratedTextColumn _fechaCreacion;
  @override
  GeneratedTextColumn get fechaCreacion =>
      _fechaCreacion ??= _constructFechaCreacion();
  GeneratedTextColumn _constructFechaCreacion() {
    return GeneratedTextColumn(
      'fecha_creacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fechaActualizacionMeta =
      const VerificationMeta('fechaActualizacion');
  GeneratedTextColumn _fechaActualizacion;
  @override
  GeneratedTextColumn get fechaActualizacion =>
      _fechaActualizacion ??= _constructFechaActualizacion();
  GeneratedTextColumn _constructFechaActualizacion() {
    return GeneratedTextColumn(
      'fecha_actualizacion',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idHorarioPrograma,
        idHorario,
        activo,
        idProgramaEducativo,
        idAnioAcademico,
        idUsuarioActualizacion,
        idUsuarioCreacion,
        fechaCreacion,
        fechaActualizacion
      ];
  @override
  $HorarioProgramaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'horario_programa';
  @override
  final String actualTableName = 'horario_programa';
  @override
  VerificationContext validateIntegrity(
      Insertable<HorarioProgramaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_horario_programa')) {
      context.handle(
          _idHorarioProgramaMeta,
          idHorarioPrograma.isAcceptableOrUnknown(
              data['id_horario_programa'], _idHorarioProgramaMeta));
    }
    if (data.containsKey('id_horario')) {
      context.handle(_idHorarioMeta,
          idHorario.isAcceptableOrUnknown(data['id_horario'], _idHorarioMeta));
    }
    if (data.containsKey('activo')) {
      context.handle(_activoMeta,
          activo.isAcceptableOrUnknown(data['activo'], _activoMeta));
    }
    if (data.containsKey('id_programa_educativo')) {
      context.handle(
          _idProgramaEducativoMeta,
          idProgramaEducativo.isAcceptableOrUnknown(
              data['id_programa_educativo'], _idProgramaEducativoMeta));
    }
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('id_usuario_actualizacion')) {
      context.handle(
          _idUsuarioActualizacionMeta,
          idUsuarioActualizacion.isAcceptableOrUnknown(
              data['id_usuario_actualizacion'], _idUsuarioActualizacionMeta));
    }
    if (data.containsKey('id_usuario_creacion')) {
      context.handle(
          _idUsuarioCreacionMeta,
          idUsuarioCreacion.isAcceptableOrUnknown(
              data['id_usuario_creacion'], _idUsuarioCreacionMeta));
    }
    if (data.containsKey('fecha_creacion')) {
      context.handle(
          _fechaCreacionMeta,
          fechaCreacion.isAcceptableOrUnknown(
              data['fecha_creacion'], _fechaCreacionMeta));
    }
    if (data.containsKey('fecha_actualizacion')) {
      context.handle(
          _fechaActualizacionMeta,
          fechaActualizacion.isAcceptableOrUnknown(
              data['fecha_actualizacion'], _fechaActualizacionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idHorarioPrograma};
  @override
  HorarioProgramaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HorarioProgramaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HorarioProgramaTable createAlias(String alias) {
    return $HorarioProgramaTable(_db, alias);
  }
}

class HorarioHoraData extends DataClass implements Insertable<HorarioHoraData> {
  final int idHorarioHora;
  final int horaId;
  final int detalleHoraId;
  HorarioHoraData(
      {@required this.idHorarioHora, this.horaId, this.detalleHoraId});
  factory HorarioHoraData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return HorarioHoraData(
      idHorarioHora: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_horario_hora']),
      horaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}hora_id']),
      detalleHoraId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}detalle_hora_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idHorarioHora != null) {
      map['id_horario_hora'] = Variable<int>(idHorarioHora);
    }
    if (!nullToAbsent || horaId != null) {
      map['hora_id'] = Variable<int>(horaId);
    }
    if (!nullToAbsent || detalleHoraId != null) {
      map['detalle_hora_id'] = Variable<int>(detalleHoraId);
    }
    return map;
  }

  HorarioHoraCompanion toCompanion(bool nullToAbsent) {
    return HorarioHoraCompanion(
      idHorarioHora: idHorarioHora == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorarioHora),
      horaId:
          horaId == null && nullToAbsent ? const Value.absent() : Value(horaId),
      detalleHoraId: detalleHoraId == null && nullToAbsent
          ? const Value.absent()
          : Value(detalleHoraId),
    );
  }

  factory HorarioHoraData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HorarioHoraData(
      idHorarioHora: serializer.fromJson<int>(json['idHorarioHora']),
      horaId: serializer.fromJson<int>(json['horaId']),
      detalleHoraId: serializer.fromJson<int>(json['detalleHoraId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idHorarioHora': serializer.toJson<int>(idHorarioHora),
      'horaId': serializer.toJson<int>(horaId),
      'detalleHoraId': serializer.toJson<int>(detalleHoraId),
    };
  }

  HorarioHoraData copyWith(
          {int idHorarioHora, int horaId, int detalleHoraId}) =>
      HorarioHoraData(
        idHorarioHora: idHorarioHora ?? this.idHorarioHora,
        horaId: horaId ?? this.horaId,
        detalleHoraId: detalleHoraId ?? this.detalleHoraId,
      );
  @override
  String toString() {
    return (StringBuffer('HorarioHoraData(')
          ..write('idHorarioHora: $idHorarioHora, ')
          ..write('horaId: $horaId, ')
          ..write('detalleHoraId: $detalleHoraId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idHorarioHora.hashCode, $mrjc(horaId.hashCode, detalleHoraId.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HorarioHoraData &&
          other.idHorarioHora == this.idHorarioHora &&
          other.horaId == this.horaId &&
          other.detalleHoraId == this.detalleHoraId);
}

class HorarioHoraCompanion extends UpdateCompanion<HorarioHoraData> {
  final Value<int> idHorarioHora;
  final Value<int> horaId;
  final Value<int> detalleHoraId;
  const HorarioHoraCompanion({
    this.idHorarioHora = const Value.absent(),
    this.horaId = const Value.absent(),
    this.detalleHoraId = const Value.absent(),
  });
  HorarioHoraCompanion.insert({
    this.idHorarioHora = const Value.absent(),
    this.horaId = const Value.absent(),
    this.detalleHoraId = const Value.absent(),
  });
  static Insertable<HorarioHoraData> custom({
    Expression<int> idHorarioHora,
    Expression<int> horaId,
    Expression<int> detalleHoraId,
  }) {
    return RawValuesInsertable({
      if (idHorarioHora != null) 'id_horario_hora': idHorarioHora,
      if (horaId != null) 'hora_id': horaId,
      if (detalleHoraId != null) 'detalle_hora_id': detalleHoraId,
    });
  }

  HorarioHoraCompanion copyWith(
      {Value<int> idHorarioHora, Value<int> horaId, Value<int> detalleHoraId}) {
    return HorarioHoraCompanion(
      idHorarioHora: idHorarioHora ?? this.idHorarioHora,
      horaId: horaId ?? this.horaId,
      detalleHoraId: detalleHoraId ?? this.detalleHoraId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idHorarioHora.present) {
      map['id_horario_hora'] = Variable<int>(idHorarioHora.value);
    }
    if (horaId.present) {
      map['hora_id'] = Variable<int>(horaId.value);
    }
    if (detalleHoraId.present) {
      map['detalle_hora_id'] = Variable<int>(detalleHoraId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HorarioHoraCompanion(')
          ..write('idHorarioHora: $idHorarioHora, ')
          ..write('horaId: $horaId, ')
          ..write('detalleHoraId: $detalleHoraId')
          ..write(')'))
        .toString();
  }
}

class $HorarioHoraTable extends HorarioHora
    with TableInfo<$HorarioHoraTable, HorarioHoraData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HorarioHoraTable(this._db, [this._alias]);
  final VerificationMeta _idHorarioHoraMeta =
      const VerificationMeta('idHorarioHora');
  GeneratedIntColumn _idHorarioHora;
  @override
  GeneratedIntColumn get idHorarioHora =>
      _idHorarioHora ??= _constructIdHorarioHora();
  GeneratedIntColumn _constructIdHorarioHora() {
    return GeneratedIntColumn(
      'id_horario_hora',
      $tableName,
      false,
    );
  }

  final VerificationMeta _horaIdMeta = const VerificationMeta('horaId');
  GeneratedIntColumn _horaId;
  @override
  GeneratedIntColumn get horaId => _horaId ??= _constructHoraId();
  GeneratedIntColumn _constructHoraId() {
    return GeneratedIntColumn(
      'hora_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _detalleHoraIdMeta =
      const VerificationMeta('detalleHoraId');
  GeneratedIntColumn _detalleHoraId;
  @override
  GeneratedIntColumn get detalleHoraId =>
      _detalleHoraId ??= _constructDetalleHoraId();
  GeneratedIntColumn _constructDetalleHoraId() {
    return GeneratedIntColumn(
      'detalle_hora_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [idHorarioHora, horaId, detalleHoraId];
  @override
  $HorarioHoraTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'horario_hora';
  @override
  final String actualTableName = 'horario_hora';
  @override
  VerificationContext validateIntegrity(Insertable<HorarioHoraData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_horario_hora')) {
      context.handle(
          _idHorarioHoraMeta,
          idHorarioHora.isAcceptableOrUnknown(
              data['id_horario_hora'], _idHorarioHoraMeta));
    }
    if (data.containsKey('hora_id')) {
      context.handle(_horaIdMeta,
          horaId.isAcceptableOrUnknown(data['hora_id'], _horaIdMeta));
    }
    if (data.containsKey('detalle_hora_id')) {
      context.handle(
          _detalleHoraIdMeta,
          detalleHoraId.isAcceptableOrUnknown(
              data['detalle_hora_id'], _detalleHoraIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idHorarioHora};
  @override
  HorarioHoraData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HorarioHoraData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HorarioHoraTable createAlias(String alias) {
    return $HorarioHoraTable(_db, alias);
  }
}

class DetalleHorarioData extends DataClass
    implements Insertable<DetalleHorarioData> {
  final int idDetalleHorario;
  final int idTipoHora;
  final int idTipoTurno;
  final String horaInicio;
  final String horaFin;
  final int idHorarioDia;
  final int timeChange;
  DetalleHorarioData(
      {this.idDetalleHorario,
      this.idTipoHora,
      this.idTipoTurno,
      this.horaInicio,
      this.horaFin,
      this.idHorarioDia,
      this.timeChange});
  factory DetalleHorarioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return DetalleHorarioData(
      idDetalleHorario: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_detalle_horario']),
      idTipoHora: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_hora']),
      idTipoTurno: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_turno']),
      horaInicio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_inicio']),
      horaFin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_fin']),
      idHorarioDia: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_horario_dia']),
      timeChange: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_change']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idDetalleHorario != null) {
      map['id_detalle_horario'] = Variable<int>(idDetalleHorario);
    }
    if (!nullToAbsent || idTipoHora != null) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora);
    }
    if (!nullToAbsent || idTipoTurno != null) {
      map['id_tipo_turno'] = Variable<int>(idTipoTurno);
    }
    if (!nullToAbsent || horaInicio != null) {
      map['hora_inicio'] = Variable<String>(horaInicio);
    }
    if (!nullToAbsent || horaFin != null) {
      map['hora_fin'] = Variable<String>(horaFin);
    }
    if (!nullToAbsent || idHorarioDia != null) {
      map['id_horario_dia'] = Variable<int>(idHorarioDia);
    }
    if (!nullToAbsent || timeChange != null) {
      map['time_change'] = Variable<int>(timeChange);
    }
    return map;
  }

  DetalleHorarioCompanion toCompanion(bool nullToAbsent) {
    return DetalleHorarioCompanion(
      idDetalleHorario: idDetalleHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idDetalleHorario),
      idTipoHora: idTipoHora == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoHora),
      idTipoTurno: idTipoTurno == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoTurno),
      horaInicio: horaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(horaInicio),
      horaFin: horaFin == null && nullToAbsent
          ? const Value.absent()
          : Value(horaFin),
      idHorarioDia: idHorarioDia == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorarioDia),
      timeChange: timeChange == null && nullToAbsent
          ? const Value.absent()
          : Value(timeChange),
    );
  }

  factory DetalleHorarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DetalleHorarioData(
      idDetalleHorario: serializer.fromJson<int>(json['idDetalleHorario']),
      idTipoHora: serializer.fromJson<int>(json['idTipoHora']),
      idTipoTurno: serializer.fromJson<int>(json['idTipoTurno']),
      horaInicio: serializer.fromJson<String>(json['horaInicio']),
      horaFin: serializer.fromJson<String>(json['horaFin']),
      idHorarioDia: serializer.fromJson<int>(json['idHorarioDia']),
      timeChange: serializer.fromJson<int>(json['timeChange']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idDetalleHorario': serializer.toJson<int>(idDetalleHorario),
      'idTipoHora': serializer.toJson<int>(idTipoHora),
      'idTipoTurno': serializer.toJson<int>(idTipoTurno),
      'horaInicio': serializer.toJson<String>(horaInicio),
      'horaFin': serializer.toJson<String>(horaFin),
      'idHorarioDia': serializer.toJson<int>(idHorarioDia),
      'timeChange': serializer.toJson<int>(timeChange),
    };
  }

  DetalleHorarioData copyWith(
          {int idDetalleHorario,
          int idTipoHora,
          int idTipoTurno,
          String horaInicio,
          String horaFin,
          int idHorarioDia,
          int timeChange}) =>
      DetalleHorarioData(
        idDetalleHorario: idDetalleHorario ?? this.idDetalleHorario,
        idTipoHora: idTipoHora ?? this.idTipoHora,
        idTipoTurno: idTipoTurno ?? this.idTipoTurno,
        horaInicio: horaInicio ?? this.horaInicio,
        horaFin: horaFin ?? this.horaFin,
        idHorarioDia: idHorarioDia ?? this.idHorarioDia,
        timeChange: timeChange ?? this.timeChange,
      );
  @override
  String toString() {
    return (StringBuffer('DetalleHorarioData(')
          ..write('idDetalleHorario: $idDetalleHorario, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('idTipoTurno: $idTipoTurno, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin, ')
          ..write('idHorarioDia: $idHorarioDia, ')
          ..write('timeChange: $timeChange')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idDetalleHorario.hashCode,
      $mrjc(
          idTipoHora.hashCode,
          $mrjc(
              idTipoTurno.hashCode,
              $mrjc(
                  horaInicio.hashCode,
                  $mrjc(horaFin.hashCode,
                      $mrjc(idHorarioDia.hashCode, timeChange.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DetalleHorarioData &&
          other.idDetalleHorario == this.idDetalleHorario &&
          other.idTipoHora == this.idTipoHora &&
          other.idTipoTurno == this.idTipoTurno &&
          other.horaInicio == this.horaInicio &&
          other.horaFin == this.horaFin &&
          other.idHorarioDia == this.idHorarioDia &&
          other.timeChange == this.timeChange);
}

class DetalleHorarioCompanion extends UpdateCompanion<DetalleHorarioData> {
  final Value<int> idDetalleHorario;
  final Value<int> idTipoHora;
  final Value<int> idTipoTurno;
  final Value<String> horaInicio;
  final Value<String> horaFin;
  final Value<int> idHorarioDia;
  final Value<int> timeChange;
  const DetalleHorarioCompanion({
    this.idDetalleHorario = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.idTipoTurno = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
    this.idHorarioDia = const Value.absent(),
    this.timeChange = const Value.absent(),
  });
  DetalleHorarioCompanion.insert({
    this.idDetalleHorario = const Value.absent(),
    this.idTipoHora = const Value.absent(),
    this.idTipoTurno = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFin = const Value.absent(),
    this.idHorarioDia = const Value.absent(),
    this.timeChange = const Value.absent(),
  });
  static Insertable<DetalleHorarioData> custom({
    Expression<int> idDetalleHorario,
    Expression<int> idTipoHora,
    Expression<int> idTipoTurno,
    Expression<String> horaInicio,
    Expression<String> horaFin,
    Expression<int> idHorarioDia,
    Expression<int> timeChange,
  }) {
    return RawValuesInsertable({
      if (idDetalleHorario != null) 'id_detalle_horario': idDetalleHorario,
      if (idTipoHora != null) 'id_tipo_hora': idTipoHora,
      if (idTipoTurno != null) 'id_tipo_turno': idTipoTurno,
      if (horaInicio != null) 'hora_inicio': horaInicio,
      if (horaFin != null) 'hora_fin': horaFin,
      if (idHorarioDia != null) 'id_horario_dia': idHorarioDia,
      if (timeChange != null) 'time_change': timeChange,
    });
  }

  DetalleHorarioCompanion copyWith(
      {Value<int> idDetalleHorario,
      Value<int> idTipoHora,
      Value<int> idTipoTurno,
      Value<String> horaInicio,
      Value<String> horaFin,
      Value<int> idHorarioDia,
      Value<int> timeChange}) {
    return DetalleHorarioCompanion(
      idDetalleHorario: idDetalleHorario ?? this.idDetalleHorario,
      idTipoHora: idTipoHora ?? this.idTipoHora,
      idTipoTurno: idTipoTurno ?? this.idTipoTurno,
      horaInicio: horaInicio ?? this.horaInicio,
      horaFin: horaFin ?? this.horaFin,
      idHorarioDia: idHorarioDia ?? this.idHorarioDia,
      timeChange: timeChange ?? this.timeChange,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idDetalleHorario.present) {
      map['id_detalle_horario'] = Variable<int>(idDetalleHorario.value);
    }
    if (idTipoHora.present) {
      map['id_tipo_hora'] = Variable<int>(idTipoHora.value);
    }
    if (idTipoTurno.present) {
      map['id_tipo_turno'] = Variable<int>(idTipoTurno.value);
    }
    if (horaInicio.present) {
      map['hora_inicio'] = Variable<String>(horaInicio.value);
    }
    if (horaFin.present) {
      map['hora_fin'] = Variable<String>(horaFin.value);
    }
    if (idHorarioDia.present) {
      map['id_horario_dia'] = Variable<int>(idHorarioDia.value);
    }
    if (timeChange.present) {
      map['time_change'] = Variable<int>(timeChange.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DetalleHorarioCompanion(')
          ..write('idDetalleHorario: $idDetalleHorario, ')
          ..write('idTipoHora: $idTipoHora, ')
          ..write('idTipoTurno: $idTipoTurno, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFin: $horaFin, ')
          ..write('idHorarioDia: $idHorarioDia, ')
          ..write('timeChange: $timeChange')
          ..write(')'))
        .toString();
  }
}

class $DetalleHorarioTable extends DetalleHorario
    with TableInfo<$DetalleHorarioTable, DetalleHorarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $DetalleHorarioTable(this._db, [this._alias]);
  final VerificationMeta _idDetalleHorarioMeta =
      const VerificationMeta('idDetalleHorario');
  GeneratedIntColumn _idDetalleHorario;
  @override
  GeneratedIntColumn get idDetalleHorario =>
      _idDetalleHorario ??= _constructIdDetalleHorario();
  GeneratedIntColumn _constructIdDetalleHorario() {
    return GeneratedIntColumn(
      'id_detalle_horario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTipoHoraMeta = const VerificationMeta('idTipoHora');
  GeneratedIntColumn _idTipoHora;
  @override
  GeneratedIntColumn get idTipoHora => _idTipoHora ??= _constructIdTipoHora();
  GeneratedIntColumn _constructIdTipoHora() {
    return GeneratedIntColumn(
      'id_tipo_hora',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTipoTurnoMeta =
      const VerificationMeta('idTipoTurno');
  GeneratedIntColumn _idTipoTurno;
  @override
  GeneratedIntColumn get idTipoTurno =>
      _idTipoTurno ??= _constructIdTipoTurno();
  GeneratedIntColumn _constructIdTipoTurno() {
    return GeneratedIntColumn(
      'id_tipo_turno',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaInicioMeta = const VerificationMeta('horaInicio');
  GeneratedTextColumn _horaInicio;
  @override
  GeneratedTextColumn get horaInicio => _horaInicio ??= _constructHoraInicio();
  GeneratedTextColumn _constructHoraInicio() {
    return GeneratedTextColumn(
      'hora_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaFinMeta = const VerificationMeta('horaFin');
  GeneratedTextColumn _horaFin;
  @override
  GeneratedTextColumn get horaFin => _horaFin ??= _constructHoraFin();
  GeneratedTextColumn _constructHoraFin() {
    return GeneratedTextColumn(
      'hora_fin',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idHorarioDiaMeta =
      const VerificationMeta('idHorarioDia');
  GeneratedIntColumn _idHorarioDia;
  @override
  GeneratedIntColumn get idHorarioDia =>
      _idHorarioDia ??= _constructIdHorarioDia();
  GeneratedIntColumn _constructIdHorarioDia() {
    return GeneratedIntColumn(
      'id_horario_dia',
      $tableName,
      true,
    );
  }

  final VerificationMeta _timeChangeMeta = const VerificationMeta('timeChange');
  GeneratedIntColumn _timeChange;
  @override
  GeneratedIntColumn get timeChange => _timeChange ??= _constructTimeChange();
  GeneratedIntColumn _constructTimeChange() {
    return GeneratedIntColumn(
      'time_change',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idDetalleHorario,
        idTipoHora,
        idTipoTurno,
        horaInicio,
        horaFin,
        idHorarioDia,
        timeChange
      ];
  @override
  $DetalleHorarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'detalle_horario';
  @override
  final String actualTableName = 'detalle_horario';
  @override
  VerificationContext validateIntegrity(Insertable<DetalleHorarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_detalle_horario')) {
      context.handle(
          _idDetalleHorarioMeta,
          idDetalleHorario.isAcceptableOrUnknown(
              data['id_detalle_horario'], _idDetalleHorarioMeta));
    }
    if (data.containsKey('id_tipo_hora')) {
      context.handle(
          _idTipoHoraMeta,
          idTipoHora.isAcceptableOrUnknown(
              data['id_tipo_hora'], _idTipoHoraMeta));
    }
    if (data.containsKey('id_tipo_turno')) {
      context.handle(
          _idTipoTurnoMeta,
          idTipoTurno.isAcceptableOrUnknown(
              data['id_tipo_turno'], _idTipoTurnoMeta));
    }
    if (data.containsKey('hora_inicio')) {
      context.handle(
          _horaInicioMeta,
          horaInicio.isAcceptableOrUnknown(
              data['hora_inicio'], _horaInicioMeta));
    }
    if (data.containsKey('hora_fin')) {
      context.handle(_horaFinMeta,
          horaFin.isAcceptableOrUnknown(data['hora_fin'], _horaFinMeta));
    }
    if (data.containsKey('id_horario_dia')) {
      context.handle(
          _idHorarioDiaMeta,
          idHorarioDia.isAcceptableOrUnknown(
              data['id_horario_dia'], _idHorarioDiaMeta));
    }
    if (data.containsKey('time_change')) {
      context.handle(
          _timeChangeMeta,
          timeChange.isAcceptableOrUnknown(
              data['time_change'], _timeChangeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idDetalleHorario};
  @override
  DetalleHorarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DetalleHorarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DetalleHorarioTable createAlias(String alias) {
    return $DetalleHorarioTable(_db, alias);
  }
}

class DiaData extends DataClass implements Insertable<DiaData> {
  final int diaId;
  final String nombre;
  final bool estado;
  final String alias_;
  DiaData({@required this.diaId, this.nombre, this.estado, this.alias_});
  factory DiaData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return DiaData(
      diaId: intType.mapFromDatabaseResponse(data['${effectivePrefix}dia_id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      alias_:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}alias']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || diaId != null) {
      map['dia_id'] = Variable<int>(diaId);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || alias_ != null) {
      map['alias'] = Variable<String>(alias_);
    }
    return map;
  }

  DiaCompanion toCompanion(bool nullToAbsent) {
    return DiaCompanion(
      diaId:
          diaId == null && nullToAbsent ? const Value.absent() : Value(diaId),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      alias_:
          alias_ == null && nullToAbsent ? const Value.absent() : Value(alias_),
    );
  }

  factory DiaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DiaData(
      diaId: serializer.fromJson<int>(json['diaId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      estado: serializer.fromJson<bool>(json['estado']),
      alias_: serializer.fromJson<String>(json['alias_']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'diaId': serializer.toJson<int>(diaId),
      'nombre': serializer.toJson<String>(nombre),
      'estado': serializer.toJson<bool>(estado),
      'alias_': serializer.toJson<String>(alias_),
    };
  }

  DiaData copyWith({int diaId, String nombre, bool estado, String alias_}) =>
      DiaData(
        diaId: diaId ?? this.diaId,
        nombre: nombre ?? this.nombre,
        estado: estado ?? this.estado,
        alias_: alias_ ?? this.alias_,
      );
  @override
  String toString() {
    return (StringBuffer('DiaData(')
          ..write('diaId: $diaId, ')
          ..write('nombre: $nombre, ')
          ..write('estado: $estado, ')
          ..write('alias_: $alias_')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(diaId.hashCode,
      $mrjc(nombre.hashCode, $mrjc(estado.hashCode, alias_.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DiaData &&
          other.diaId == this.diaId &&
          other.nombre == this.nombre &&
          other.estado == this.estado &&
          other.alias_ == this.alias_);
}

class DiaCompanion extends UpdateCompanion<DiaData> {
  final Value<int> diaId;
  final Value<String> nombre;
  final Value<bool> estado;
  final Value<String> alias_;
  const DiaCompanion({
    this.diaId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estado = const Value.absent(),
    this.alias_ = const Value.absent(),
  });
  DiaCompanion.insert({
    this.diaId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.estado = const Value.absent(),
    this.alias_ = const Value.absent(),
  });
  static Insertable<DiaData> custom({
    Expression<int> diaId,
    Expression<String> nombre,
    Expression<bool> estado,
    Expression<String> alias_,
  }) {
    return RawValuesInsertable({
      if (diaId != null) 'dia_id': diaId,
      if (nombre != null) 'nombre': nombre,
      if (estado != null) 'estado': estado,
      if (alias_ != null) 'alias': alias_,
    });
  }

  DiaCompanion copyWith(
      {Value<int> diaId,
      Value<String> nombre,
      Value<bool> estado,
      Value<String> alias_}) {
    return DiaCompanion(
      diaId: diaId ?? this.diaId,
      nombre: nombre ?? this.nombre,
      estado: estado ?? this.estado,
      alias_: alias_ ?? this.alias_,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (diaId.present) {
      map['dia_id'] = Variable<int>(diaId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (alias_.present) {
      map['alias'] = Variable<String>(alias_.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiaCompanion(')
          ..write('diaId: $diaId, ')
          ..write('nombre: $nombre, ')
          ..write('estado: $estado, ')
          ..write('alias_: $alias_')
          ..write(')'))
        .toString();
  }
}

class $DiaTable extends Dia with TableInfo<$DiaTable, DiaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $DiaTable(this._db, [this._alias]);
  final VerificationMeta _diaIdMeta = const VerificationMeta('diaId');
  GeneratedIntColumn _diaId;
  @override
  GeneratedIntColumn get diaId => _diaId ??= _constructDiaId();
  GeneratedIntColumn _constructDiaId() {
    return GeneratedIntColumn(
      'dia_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _alias_Meta = const VerificationMeta('alias_');
  GeneratedTextColumn _alias_;
  @override
  GeneratedTextColumn get alias_ => _alias_ ??= _constructAlias();
  GeneratedTextColumn _constructAlias() {
    return GeneratedTextColumn(
      'alias',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [diaId, nombre, estado, alias_];
  @override
  $DiaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'dia';
  @override
  final String actualTableName = 'dia';
  @override
  VerificationContext validateIntegrity(Insertable<DiaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('dia_id')) {
      context.handle(
          _diaIdMeta, diaId.isAcceptableOrUnknown(data['dia_id'], _diaIdMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('alias')) {
      context.handle(_alias_Meta,
          alias_.isAcceptableOrUnknown(data['alias'], _alias_Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {diaId};
  @override
  DiaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DiaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DiaTable createAlias(String alias) {
    return $DiaTable(_db, alias);
  }
}

class HorarioDiaData extends DataClass implements Insertable<HorarioDiaData> {
  final int idHorarioDia;
  final int idHorario;
  final int idDia;
  HorarioDiaData({@required this.idHorarioDia, this.idHorario, this.idDia});
  factory HorarioDiaData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return HorarioDiaData(
      idHorarioDia: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_horario_dia']),
      idHorario:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_horario']),
      idDia: intType.mapFromDatabaseResponse(data['${effectivePrefix}id_dia']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idHorarioDia != null) {
      map['id_horario_dia'] = Variable<int>(idHorarioDia);
    }
    if (!nullToAbsent || idHorario != null) {
      map['id_horario'] = Variable<int>(idHorario);
    }
    if (!nullToAbsent || idDia != null) {
      map['id_dia'] = Variable<int>(idDia);
    }
    return map;
  }

  HorarioDiaCompanion toCompanion(bool nullToAbsent) {
    return HorarioDiaCompanion(
      idHorarioDia: idHorarioDia == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorarioDia),
      idHorario: idHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorario),
      idDia:
          idDia == null && nullToAbsent ? const Value.absent() : Value(idDia),
    );
  }

  factory HorarioDiaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HorarioDiaData(
      idHorarioDia: serializer.fromJson<int>(json['idHorarioDia']),
      idHorario: serializer.fromJson<int>(json['idHorario']),
      idDia: serializer.fromJson<int>(json['idDia']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idHorarioDia': serializer.toJson<int>(idHorarioDia),
      'idHorario': serializer.toJson<int>(idHorario),
      'idDia': serializer.toJson<int>(idDia),
    };
  }

  HorarioDiaData copyWith({int idHorarioDia, int idHorario, int idDia}) =>
      HorarioDiaData(
        idHorarioDia: idHorarioDia ?? this.idHorarioDia,
        idHorario: idHorario ?? this.idHorario,
        idDia: idDia ?? this.idDia,
      );
  @override
  String toString() {
    return (StringBuffer('HorarioDiaData(')
          ..write('idHorarioDia: $idHorarioDia, ')
          ..write('idHorario: $idHorario, ')
          ..write('idDia: $idDia')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idHorarioDia.hashCode, $mrjc(idHorario.hashCode, idDia.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HorarioDiaData &&
          other.idHorarioDia == this.idHorarioDia &&
          other.idHorario == this.idHorario &&
          other.idDia == this.idDia);
}

class HorarioDiaCompanion extends UpdateCompanion<HorarioDiaData> {
  final Value<int> idHorarioDia;
  final Value<int> idHorario;
  final Value<int> idDia;
  const HorarioDiaCompanion({
    this.idHorarioDia = const Value.absent(),
    this.idHorario = const Value.absent(),
    this.idDia = const Value.absent(),
  });
  HorarioDiaCompanion.insert({
    @required int idHorarioDia,
    this.idHorario = const Value.absent(),
    this.idDia = const Value.absent(),
  }) : idHorarioDia = Value(idHorarioDia);
  static Insertable<HorarioDiaData> custom({
    Expression<int> idHorarioDia,
    Expression<int> idHorario,
    Expression<int> idDia,
  }) {
    return RawValuesInsertable({
      if (idHorarioDia != null) 'id_horario_dia': idHorarioDia,
      if (idHorario != null) 'id_horario': idHorario,
      if (idDia != null) 'id_dia': idDia,
    });
  }

  HorarioDiaCompanion copyWith(
      {Value<int> idHorarioDia, Value<int> idHorario, Value<int> idDia}) {
    return HorarioDiaCompanion(
      idHorarioDia: idHorarioDia ?? this.idHorarioDia,
      idHorario: idHorario ?? this.idHorario,
      idDia: idDia ?? this.idDia,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idHorarioDia.present) {
      map['id_horario_dia'] = Variable<int>(idHorarioDia.value);
    }
    if (idHorario.present) {
      map['id_horario'] = Variable<int>(idHorario.value);
    }
    if (idDia.present) {
      map['id_dia'] = Variable<int>(idDia.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HorarioDiaCompanion(')
          ..write('idHorarioDia: $idHorarioDia, ')
          ..write('idHorario: $idHorario, ')
          ..write('idDia: $idDia')
          ..write(')'))
        .toString();
  }
}

class $HorarioDiaTable extends HorarioDia
    with TableInfo<$HorarioDiaTable, HorarioDiaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HorarioDiaTable(this._db, [this._alias]);
  final VerificationMeta _idHorarioDiaMeta =
      const VerificationMeta('idHorarioDia');
  GeneratedIntColumn _idHorarioDia;
  @override
  GeneratedIntColumn get idHorarioDia =>
      _idHorarioDia ??= _constructIdHorarioDia();
  GeneratedIntColumn _constructIdHorarioDia() {
    return GeneratedIntColumn(
      'id_horario_dia',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idHorarioMeta = const VerificationMeta('idHorario');
  GeneratedIntColumn _idHorario;
  @override
  GeneratedIntColumn get idHorario => _idHorario ??= _constructIdHorario();
  GeneratedIntColumn _constructIdHorario() {
    return GeneratedIntColumn(
      'id_horario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idDiaMeta = const VerificationMeta('idDia');
  GeneratedIntColumn _idDia;
  @override
  GeneratedIntColumn get idDia => _idDia ??= _constructIdDia();
  GeneratedIntColumn _constructIdDia() {
    return GeneratedIntColumn(
      'id_dia',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [idHorarioDia, idHorario, idDia];
  @override
  $HorarioDiaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'horario_dia';
  @override
  final String actualTableName = 'horario_dia';
  @override
  VerificationContext validateIntegrity(Insertable<HorarioDiaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_horario_dia')) {
      context.handle(
          _idHorarioDiaMeta,
          idHorarioDia.isAcceptableOrUnknown(
              data['id_horario_dia'], _idHorarioDiaMeta));
    } else if (isInserting) {
      context.missing(_idHorarioDiaMeta);
    }
    if (data.containsKey('id_horario')) {
      context.handle(_idHorarioMeta,
          idHorario.isAcceptableOrUnknown(data['id_horario'], _idHorarioMeta));
    }
    if (data.containsKey('id_dia')) {
      context.handle(
          _idDiaMeta, idDia.isAcceptableOrUnknown(data['id_dia'], _idDiaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idDia};
  @override
  HorarioDiaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HorarioDiaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HorarioDiaTable createAlias(String alias) {
    return $HorarioDiaTable(_db, alias);
  }
}

class CursosDetHorarioData extends DataClass
    implements Insertable<CursosDetHorarioData> {
  final int idCursosDetHorario;
  final int idDetHorario;
  final int idCargaCurso;
  CursosDetHorarioData(
      {@required this.idCursosDetHorario,
      this.idDetHorario,
      this.idCargaCurso});
  factory CursosDetHorarioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CursosDetHorarioData(
      idCursosDetHorario: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_cursos_det_horario']),
      idDetHorario: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_det_horario']),
      idCargaCurso: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_carga_curso']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idCursosDetHorario != null) {
      map['id_cursos_det_horario'] = Variable<int>(idCursosDetHorario);
    }
    if (!nullToAbsent || idDetHorario != null) {
      map['id_det_horario'] = Variable<int>(idDetHorario);
    }
    if (!nullToAbsent || idCargaCurso != null) {
      map['id_carga_curso'] = Variable<int>(idCargaCurso);
    }
    return map;
  }

  CursosDetHorarioCompanion toCompanion(bool nullToAbsent) {
    return CursosDetHorarioCompanion(
      idCursosDetHorario: idCursosDetHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idCursosDetHorario),
      idDetHorario: idDetHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idDetHorario),
      idCargaCurso: idCargaCurso == null && nullToAbsent
          ? const Value.absent()
          : Value(idCargaCurso),
    );
  }

  factory CursosDetHorarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CursosDetHorarioData(
      idCursosDetHorario: serializer.fromJson<int>(json['idCursosDetHorario']),
      idDetHorario: serializer.fromJson<int>(json['idDetHorario']),
      idCargaCurso: serializer.fromJson<int>(json['idCargaCurso']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idCursosDetHorario': serializer.toJson<int>(idCursosDetHorario),
      'idDetHorario': serializer.toJson<int>(idDetHorario),
      'idCargaCurso': serializer.toJson<int>(idCargaCurso),
    };
  }

  CursosDetHorarioData copyWith(
          {int idCursosDetHorario, int idDetHorario, int idCargaCurso}) =>
      CursosDetHorarioData(
        idCursosDetHorario: idCursosDetHorario ?? this.idCursosDetHorario,
        idDetHorario: idDetHorario ?? this.idDetHorario,
        idCargaCurso: idCargaCurso ?? this.idCargaCurso,
      );
  @override
  String toString() {
    return (StringBuffer('CursosDetHorarioData(')
          ..write('idCursosDetHorario: $idCursosDetHorario, ')
          ..write('idDetHorario: $idDetHorario, ')
          ..write('idCargaCurso: $idCargaCurso')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(idCursosDetHorario.hashCode,
      $mrjc(idDetHorario.hashCode, idCargaCurso.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CursosDetHorarioData &&
          other.idCursosDetHorario == this.idCursosDetHorario &&
          other.idDetHorario == this.idDetHorario &&
          other.idCargaCurso == this.idCargaCurso);
}

class CursosDetHorarioCompanion extends UpdateCompanion<CursosDetHorarioData> {
  final Value<int> idCursosDetHorario;
  final Value<int> idDetHorario;
  final Value<int> idCargaCurso;
  const CursosDetHorarioCompanion({
    this.idCursosDetHorario = const Value.absent(),
    this.idDetHorario = const Value.absent(),
    this.idCargaCurso = const Value.absent(),
  });
  CursosDetHorarioCompanion.insert({
    this.idCursosDetHorario = const Value.absent(),
    this.idDetHorario = const Value.absent(),
    this.idCargaCurso = const Value.absent(),
  });
  static Insertable<CursosDetHorarioData> custom({
    Expression<int> idCursosDetHorario,
    Expression<int> idDetHorario,
    Expression<int> idCargaCurso,
  }) {
    return RawValuesInsertable({
      if (idCursosDetHorario != null)
        'id_cursos_det_horario': idCursosDetHorario,
      if (idDetHorario != null) 'id_det_horario': idDetHorario,
      if (idCargaCurso != null) 'id_carga_curso': idCargaCurso,
    });
  }

  CursosDetHorarioCompanion copyWith(
      {Value<int> idCursosDetHorario,
      Value<int> idDetHorario,
      Value<int> idCargaCurso}) {
    return CursosDetHorarioCompanion(
      idCursosDetHorario: idCursosDetHorario ?? this.idCursosDetHorario,
      idDetHorario: idDetHorario ?? this.idDetHorario,
      idCargaCurso: idCargaCurso ?? this.idCargaCurso,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idCursosDetHorario.present) {
      map['id_cursos_det_horario'] = Variable<int>(idCursosDetHorario.value);
    }
    if (idDetHorario.present) {
      map['id_det_horario'] = Variable<int>(idDetHorario.value);
    }
    if (idCargaCurso.present) {
      map['id_carga_curso'] = Variable<int>(idCargaCurso.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CursosDetHorarioCompanion(')
          ..write('idCursosDetHorario: $idCursosDetHorario, ')
          ..write('idDetHorario: $idDetHorario, ')
          ..write('idCargaCurso: $idCargaCurso')
          ..write(')'))
        .toString();
  }
}

class $CursosDetHorarioTable extends CursosDetHorario
    with TableInfo<$CursosDetHorarioTable, CursosDetHorarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CursosDetHorarioTable(this._db, [this._alias]);
  final VerificationMeta _idCursosDetHorarioMeta =
      const VerificationMeta('idCursosDetHorario');
  GeneratedIntColumn _idCursosDetHorario;
  @override
  GeneratedIntColumn get idCursosDetHorario =>
      _idCursosDetHorario ??= _constructIdCursosDetHorario();
  GeneratedIntColumn _constructIdCursosDetHorario() {
    return GeneratedIntColumn(
      'id_cursos_det_horario',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idDetHorarioMeta =
      const VerificationMeta('idDetHorario');
  GeneratedIntColumn _idDetHorario;
  @override
  GeneratedIntColumn get idDetHorario =>
      _idDetHorario ??= _constructIdDetHorario();
  GeneratedIntColumn _constructIdDetHorario() {
    return GeneratedIntColumn(
      'id_det_horario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idCargaCursoMeta =
      const VerificationMeta('idCargaCurso');
  GeneratedIntColumn _idCargaCurso;
  @override
  GeneratedIntColumn get idCargaCurso =>
      _idCargaCurso ??= _constructIdCargaCurso();
  GeneratedIntColumn _constructIdCargaCurso() {
    return GeneratedIntColumn(
      'id_carga_curso',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idCursosDetHorario, idDetHorario, idCargaCurso];
  @override
  $CursosDetHorarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'cursos_det_horario';
  @override
  final String actualTableName = 'cursos_det_horario';
  @override
  VerificationContext validateIntegrity(
      Insertable<CursosDetHorarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_cursos_det_horario')) {
      context.handle(
          _idCursosDetHorarioMeta,
          idCursosDetHorario.isAcceptableOrUnknown(
              data['id_cursos_det_horario'], _idCursosDetHorarioMeta));
    }
    if (data.containsKey('id_det_horario')) {
      context.handle(
          _idDetHorarioMeta,
          idDetHorario.isAcceptableOrUnknown(
              data['id_det_horario'], _idDetHorarioMeta));
    }
    if (data.containsKey('id_carga_curso')) {
      context.handle(
          _idCargaCursoMeta,
          idCargaCurso.isAcceptableOrUnknown(
              data['id_carga_curso'], _idCargaCursoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idCursosDetHorario};
  @override
  CursosDetHorarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CursosDetHorarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CursosDetHorarioTable createAlias(String alias) {
    return $CursosDetHorarioTable(_db, alias);
  }
}

class HorarioData extends DataClass implements Insertable<HorarioData> {
  final int idHorario;
  final String nombre;
  final String descripcion;
  final String fecCreacion;
  final String fecActualizacion;
  final bool estado;
  final int idUsuario;
  final int entidadId;
  final int georeferenciaId;
  final int organigramaId;
  HorarioData(
      {@required this.idHorario,
      this.nombre,
      this.descripcion,
      this.fecCreacion,
      this.fecActualizacion,
      this.estado,
      this.idUsuario,
      this.entidadId,
      this.georeferenciaId,
      this.organigramaId});
  factory HorarioData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return HorarioData(
      idHorario:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_horario']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      descripcion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion']),
      fecCreacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fec_creacion']),
      fecActualizacion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fec_actualizacion']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      idUsuario:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_usuario']),
      entidadId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}entidad_id']),
      georeferenciaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}georeferencia_id']),
      organigramaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}organigrama_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idHorario != null) {
      map['id_horario'] = Variable<int>(idHorario);
    }
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || descripcion != null) {
      map['descripcion'] = Variable<String>(descripcion);
    }
    if (!nullToAbsent || fecCreacion != null) {
      map['fec_creacion'] = Variable<String>(fecCreacion);
    }
    if (!nullToAbsent || fecActualizacion != null) {
      map['fec_actualizacion'] = Variable<String>(fecActualizacion);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || idUsuario != null) {
      map['id_usuario'] = Variable<int>(idUsuario);
    }
    if (!nullToAbsent || entidadId != null) {
      map['entidad_id'] = Variable<int>(entidadId);
    }
    if (!nullToAbsent || georeferenciaId != null) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId);
    }
    if (!nullToAbsent || organigramaId != null) {
      map['organigrama_id'] = Variable<int>(organigramaId);
    }
    return map;
  }

  HorarioCompanion toCompanion(bool nullToAbsent) {
    return HorarioCompanion(
      idHorario: idHorario == null && nullToAbsent
          ? const Value.absent()
          : Value(idHorario),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      descripcion: descripcion == null && nullToAbsent
          ? const Value.absent()
          : Value(descripcion),
      fecCreacion: fecCreacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fecCreacion),
      fecActualizacion: fecActualizacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fecActualizacion),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      idUsuario: idUsuario == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuario),
      entidadId: entidadId == null && nullToAbsent
          ? const Value.absent()
          : Value(entidadId),
      georeferenciaId: georeferenciaId == null && nullToAbsent
          ? const Value.absent()
          : Value(georeferenciaId),
      organigramaId: organigramaId == null && nullToAbsent
          ? const Value.absent()
          : Value(organigramaId),
    );
  }

  factory HorarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return HorarioData(
      idHorario: serializer.fromJson<int>(json['idHorario']),
      nombre: serializer.fromJson<String>(json['nombre']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      fecCreacion: serializer.fromJson<String>(json['fecCreacion']),
      fecActualizacion: serializer.fromJson<String>(json['fecActualizacion']),
      estado: serializer.fromJson<bool>(json['estado']),
      idUsuario: serializer.fromJson<int>(json['idUsuario']),
      entidadId: serializer.fromJson<int>(json['entidadId']),
      georeferenciaId: serializer.fromJson<int>(json['georeferenciaId']),
      organigramaId: serializer.fromJson<int>(json['organigramaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idHorario': serializer.toJson<int>(idHorario),
      'nombre': serializer.toJson<String>(nombre),
      'descripcion': serializer.toJson<String>(descripcion),
      'fecCreacion': serializer.toJson<String>(fecCreacion),
      'fecActualizacion': serializer.toJson<String>(fecActualizacion),
      'estado': serializer.toJson<bool>(estado),
      'idUsuario': serializer.toJson<int>(idUsuario),
      'entidadId': serializer.toJson<int>(entidadId),
      'georeferenciaId': serializer.toJson<int>(georeferenciaId),
      'organigramaId': serializer.toJson<int>(organigramaId),
    };
  }

  HorarioData copyWith(
          {int idHorario,
          String nombre,
          String descripcion,
          String fecCreacion,
          String fecActualizacion,
          bool estado,
          int idUsuario,
          int entidadId,
          int georeferenciaId,
          int organigramaId}) =>
      HorarioData(
        idHorario: idHorario ?? this.idHorario,
        nombre: nombre ?? this.nombre,
        descripcion: descripcion ?? this.descripcion,
        fecCreacion: fecCreacion ?? this.fecCreacion,
        fecActualizacion: fecActualizacion ?? this.fecActualizacion,
        estado: estado ?? this.estado,
        idUsuario: idUsuario ?? this.idUsuario,
        entidadId: entidadId ?? this.entidadId,
        georeferenciaId: georeferenciaId ?? this.georeferenciaId,
        organigramaId: organigramaId ?? this.organigramaId,
      );
  @override
  String toString() {
    return (StringBuffer('HorarioData(')
          ..write('idHorario: $idHorario, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('fecCreacion: $fecCreacion, ')
          ..write('fecActualizacion: $fecActualizacion, ')
          ..write('estado: $estado, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idHorario.hashCode,
      $mrjc(
          nombre.hashCode,
          $mrjc(
              descripcion.hashCode,
              $mrjc(
                  fecCreacion.hashCode,
                  $mrjc(
                      fecActualizacion.hashCode,
                      $mrjc(
                          estado.hashCode,
                          $mrjc(
                              idUsuario.hashCode,
                              $mrjc(
                                  entidadId.hashCode,
                                  $mrjc(georeferenciaId.hashCode,
                                      organigramaId.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is HorarioData &&
          other.idHorario == this.idHorario &&
          other.nombre == this.nombre &&
          other.descripcion == this.descripcion &&
          other.fecCreacion == this.fecCreacion &&
          other.fecActualizacion == this.fecActualizacion &&
          other.estado == this.estado &&
          other.idUsuario == this.idUsuario &&
          other.entidadId == this.entidadId &&
          other.georeferenciaId == this.georeferenciaId &&
          other.organigramaId == this.organigramaId);
}

class HorarioCompanion extends UpdateCompanion<HorarioData> {
  final Value<int> idHorario;
  final Value<String> nombre;
  final Value<String> descripcion;
  final Value<String> fecCreacion;
  final Value<String> fecActualizacion;
  final Value<bool> estado;
  final Value<int> idUsuario;
  final Value<int> entidadId;
  final Value<int> georeferenciaId;
  final Value<int> organigramaId;
  const HorarioCompanion({
    this.idHorario = const Value.absent(),
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fecCreacion = const Value.absent(),
    this.fecActualizacion = const Value.absent(),
    this.estado = const Value.absent(),
    this.idUsuario = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
  });
  HorarioCompanion.insert({
    this.idHorario = const Value.absent(),
    this.nombre = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fecCreacion = const Value.absent(),
    this.fecActualizacion = const Value.absent(),
    this.estado = const Value.absent(),
    this.idUsuario = const Value.absent(),
    this.entidadId = const Value.absent(),
    this.georeferenciaId = const Value.absent(),
    this.organigramaId = const Value.absent(),
  });
  static Insertable<HorarioData> custom({
    Expression<int> idHorario,
    Expression<String> nombre,
    Expression<String> descripcion,
    Expression<String> fecCreacion,
    Expression<String> fecActualizacion,
    Expression<bool> estado,
    Expression<int> idUsuario,
    Expression<int> entidadId,
    Expression<int> georeferenciaId,
    Expression<int> organigramaId,
  }) {
    return RawValuesInsertable({
      if (idHorario != null) 'id_horario': idHorario,
      if (nombre != null) 'nombre': nombre,
      if (descripcion != null) 'descripcion': descripcion,
      if (fecCreacion != null) 'fec_creacion': fecCreacion,
      if (fecActualizacion != null) 'fec_actualizacion': fecActualizacion,
      if (estado != null) 'estado': estado,
      if (idUsuario != null) 'id_usuario': idUsuario,
      if (entidadId != null) 'entidad_id': entidadId,
      if (georeferenciaId != null) 'georeferencia_id': georeferenciaId,
      if (organigramaId != null) 'organigrama_id': organigramaId,
    });
  }

  HorarioCompanion copyWith(
      {Value<int> idHorario,
      Value<String> nombre,
      Value<String> descripcion,
      Value<String> fecCreacion,
      Value<String> fecActualizacion,
      Value<bool> estado,
      Value<int> idUsuario,
      Value<int> entidadId,
      Value<int> georeferenciaId,
      Value<int> organigramaId}) {
    return HorarioCompanion(
      idHorario: idHorario ?? this.idHorario,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      fecCreacion: fecCreacion ?? this.fecCreacion,
      fecActualizacion: fecActualizacion ?? this.fecActualizacion,
      estado: estado ?? this.estado,
      idUsuario: idUsuario ?? this.idUsuario,
      entidadId: entidadId ?? this.entidadId,
      georeferenciaId: georeferenciaId ?? this.georeferenciaId,
      organigramaId: organigramaId ?? this.organigramaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idHorario.present) {
      map['id_horario'] = Variable<int>(idHorario.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (fecCreacion.present) {
      map['fec_creacion'] = Variable<String>(fecCreacion.value);
    }
    if (fecActualizacion.present) {
      map['fec_actualizacion'] = Variable<String>(fecActualizacion.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (idUsuario.present) {
      map['id_usuario'] = Variable<int>(idUsuario.value);
    }
    if (entidadId.present) {
      map['entidad_id'] = Variable<int>(entidadId.value);
    }
    if (georeferenciaId.present) {
      map['georeferencia_id'] = Variable<int>(georeferenciaId.value);
    }
    if (organigramaId.present) {
      map['organigrama_id'] = Variable<int>(organigramaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HorarioCompanion(')
          ..write('idHorario: $idHorario, ')
          ..write('nombre: $nombre, ')
          ..write('descripcion: $descripcion, ')
          ..write('fecCreacion: $fecCreacion, ')
          ..write('fecActualizacion: $fecActualizacion, ')
          ..write('estado: $estado, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('entidadId: $entidadId, ')
          ..write('georeferenciaId: $georeferenciaId, ')
          ..write('organigramaId: $organigramaId')
          ..write(')'))
        .toString();
  }
}

class $HorarioTable extends Horario with TableInfo<$HorarioTable, HorarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $HorarioTable(this._db, [this._alias]);
  final VerificationMeta _idHorarioMeta = const VerificationMeta('idHorario');
  GeneratedIntColumn _idHorario;
  @override
  GeneratedIntColumn get idHorario => _idHorario ??= _constructIdHorario();
  GeneratedIntColumn _constructIdHorario() {
    return GeneratedIntColumn(
      'id_horario',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  GeneratedTextColumn _descripcion;
  @override
  GeneratedTextColumn get descripcion =>
      _descripcion ??= _constructDescripcion();
  GeneratedTextColumn _constructDescripcion() {
    return GeneratedTextColumn(
      'descripcion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fecCreacionMeta =
      const VerificationMeta('fecCreacion');
  GeneratedTextColumn _fecCreacion;
  @override
  GeneratedTextColumn get fecCreacion =>
      _fecCreacion ??= _constructFecCreacion();
  GeneratedTextColumn _constructFecCreacion() {
    return GeneratedTextColumn(
      'fec_creacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fecActualizacionMeta =
      const VerificationMeta('fecActualizacion');
  GeneratedTextColumn _fecActualizacion;
  @override
  GeneratedTextColumn get fecActualizacion =>
      _fecActualizacion ??= _constructFecActualizacion();
  GeneratedTextColumn _constructFecActualizacion() {
    return GeneratedTextColumn(
      'fec_actualizacion',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idUsuarioMeta = const VerificationMeta('idUsuario');
  GeneratedIntColumn _idUsuario;
  @override
  GeneratedIntColumn get idUsuario => _idUsuario ??= _constructIdUsuario();
  GeneratedIntColumn _constructIdUsuario() {
    return GeneratedIntColumn(
      'id_usuario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _entidadIdMeta = const VerificationMeta('entidadId');
  GeneratedIntColumn _entidadId;
  @override
  GeneratedIntColumn get entidadId => _entidadId ??= _constructEntidadId();
  GeneratedIntColumn _constructEntidadId() {
    return GeneratedIntColumn(
      'entidad_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _georeferenciaIdMeta =
      const VerificationMeta('georeferenciaId');
  GeneratedIntColumn _georeferenciaId;
  @override
  GeneratedIntColumn get georeferenciaId =>
      _georeferenciaId ??= _constructGeoreferenciaId();
  GeneratedIntColumn _constructGeoreferenciaId() {
    return GeneratedIntColumn(
      'georeferencia_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _organigramaIdMeta =
      const VerificationMeta('organigramaId');
  GeneratedIntColumn _organigramaId;
  @override
  GeneratedIntColumn get organigramaId =>
      _organigramaId ??= _constructOrganigramaId();
  GeneratedIntColumn _constructOrganigramaId() {
    return GeneratedIntColumn(
      'organigrama_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idHorario,
        nombre,
        descripcion,
        fecCreacion,
        fecActualizacion,
        estado,
        idUsuario,
        entidadId,
        georeferenciaId,
        organigramaId
      ];
  @override
  $HorarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'horario';
  @override
  final String actualTableName = 'horario';
  @override
  VerificationContext validateIntegrity(Insertable<HorarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_horario')) {
      context.handle(_idHorarioMeta,
          idHorario.isAcceptableOrUnknown(data['id_horario'], _idHorarioMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion'], _descripcionMeta));
    }
    if (data.containsKey('fec_creacion')) {
      context.handle(
          _fecCreacionMeta,
          fecCreacion.isAcceptableOrUnknown(
              data['fec_creacion'], _fecCreacionMeta));
    }
    if (data.containsKey('fec_actualizacion')) {
      context.handle(
          _fecActualizacionMeta,
          fecActualizacion.isAcceptableOrUnknown(
              data['fec_actualizacion'], _fecActualizacionMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('id_usuario')) {
      context.handle(_idUsuarioMeta,
          idUsuario.isAcceptableOrUnknown(data['id_usuario'], _idUsuarioMeta));
    }
    if (data.containsKey('entidad_id')) {
      context.handle(_entidadIdMeta,
          entidadId.isAcceptableOrUnknown(data['entidad_id'], _entidadIdMeta));
    }
    if (data.containsKey('georeferencia_id')) {
      context.handle(
          _georeferenciaIdMeta,
          georeferenciaId.isAcceptableOrUnknown(
              data['georeferencia_id'], _georeferenciaIdMeta));
    }
    if (data.containsKey('organigrama_id')) {
      context.handle(
          _organigramaIdMeta,
          organigramaId.isAcceptableOrUnknown(
              data['organigrama_id'], _organigramaIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idHorario};
  @override
  HorarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return HorarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $HorarioTable createAlias(String alias) {
    return $HorarioTable(_db, alias);
  }
}

class CalendarioAcademicoData extends DataClass
    implements Insertable<CalendarioAcademicoData> {
  final int calendarioAcademicoId;
  final int programaEduId;
  final int idAnioAcademico;
  final int estadoId;
  CalendarioAcademicoData(
      {@required this.calendarioAcademicoId,
      this.programaEduId,
      this.idAnioAcademico,
      this.estadoId});
  factory CalendarioAcademicoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return CalendarioAcademicoData(
      calendarioAcademicoId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}calendario_academico_id']),
      programaEduId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}programa_edu_id']),
      idAnioAcademico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_anio_academico']),
      estadoId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}estado_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || calendarioAcademicoId != null) {
      map['calendario_academico_id'] = Variable<int>(calendarioAcademicoId);
    }
    if (!nullToAbsent || programaEduId != null) {
      map['programa_edu_id'] = Variable<int>(programaEduId);
    }
    if (!nullToAbsent || idAnioAcademico != null) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico);
    }
    if (!nullToAbsent || estadoId != null) {
      map['estado_id'] = Variable<int>(estadoId);
    }
    return map;
  }

  CalendarioAcademicoCompanion toCompanion(bool nullToAbsent) {
    return CalendarioAcademicoCompanion(
      calendarioAcademicoId: calendarioAcademicoId == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarioAcademicoId),
      programaEduId: programaEduId == null && nullToAbsent
          ? const Value.absent()
          : Value(programaEduId),
      idAnioAcademico: idAnioAcademico == null && nullToAbsent
          ? const Value.absent()
          : Value(idAnioAcademico),
      estadoId: estadoId == null && nullToAbsent
          ? const Value.absent()
          : Value(estadoId),
    );
  }

  factory CalendarioAcademicoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CalendarioAcademicoData(
      calendarioAcademicoId:
          serializer.fromJson<int>(json['calendarioAcademicoId']),
      programaEduId: serializer.fromJson<int>(json['programaEduId']),
      idAnioAcademico: serializer.fromJson<int>(json['idAnioAcademico']),
      estadoId: serializer.fromJson<int>(json['estadoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'calendarioAcademicoId': serializer.toJson<int>(calendarioAcademicoId),
      'programaEduId': serializer.toJson<int>(programaEduId),
      'idAnioAcademico': serializer.toJson<int>(idAnioAcademico),
      'estadoId': serializer.toJson<int>(estadoId),
    };
  }

  CalendarioAcademicoData copyWith(
          {int calendarioAcademicoId,
          int programaEduId,
          int idAnioAcademico,
          int estadoId}) =>
      CalendarioAcademicoData(
        calendarioAcademicoId:
            calendarioAcademicoId ?? this.calendarioAcademicoId,
        programaEduId: programaEduId ?? this.programaEduId,
        idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
        estadoId: estadoId ?? this.estadoId,
      );
  @override
  String toString() {
    return (StringBuffer('CalendarioAcademicoData(')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      calendarioAcademicoId.hashCode,
      $mrjc(programaEduId.hashCode,
          $mrjc(idAnioAcademico.hashCode, estadoId.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CalendarioAcademicoData &&
          other.calendarioAcademicoId == this.calendarioAcademicoId &&
          other.programaEduId == this.programaEduId &&
          other.idAnioAcademico == this.idAnioAcademico &&
          other.estadoId == this.estadoId);
}

class CalendarioAcademicoCompanion
    extends UpdateCompanion<CalendarioAcademicoData> {
  final Value<int> calendarioAcademicoId;
  final Value<int> programaEduId;
  final Value<int> idAnioAcademico;
  final Value<int> estadoId;
  const CalendarioAcademicoCompanion({
    this.calendarioAcademicoId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  CalendarioAcademicoCompanion.insert({
    this.calendarioAcademicoId = const Value.absent(),
    this.programaEduId = const Value.absent(),
    this.idAnioAcademico = const Value.absent(),
    this.estadoId = const Value.absent(),
  });
  static Insertable<CalendarioAcademicoData> custom({
    Expression<int> calendarioAcademicoId,
    Expression<int> programaEduId,
    Expression<int> idAnioAcademico,
    Expression<int> estadoId,
  }) {
    return RawValuesInsertable({
      if (calendarioAcademicoId != null)
        'calendario_academico_id': calendarioAcademicoId,
      if (programaEduId != null) 'programa_edu_id': programaEduId,
      if (idAnioAcademico != null) 'id_anio_academico': idAnioAcademico,
      if (estadoId != null) 'estado_id': estadoId,
    });
  }

  CalendarioAcademicoCompanion copyWith(
      {Value<int> calendarioAcademicoId,
      Value<int> programaEduId,
      Value<int> idAnioAcademico,
      Value<int> estadoId}) {
    return CalendarioAcademicoCompanion(
      calendarioAcademicoId:
          calendarioAcademicoId ?? this.calendarioAcademicoId,
      programaEduId: programaEduId ?? this.programaEduId,
      idAnioAcademico: idAnioAcademico ?? this.idAnioAcademico,
      estadoId: estadoId ?? this.estadoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (calendarioAcademicoId.present) {
      map['calendario_academico_id'] =
          Variable<int>(calendarioAcademicoId.value);
    }
    if (programaEduId.present) {
      map['programa_edu_id'] = Variable<int>(programaEduId.value);
    }
    if (idAnioAcademico.present) {
      map['id_anio_academico'] = Variable<int>(idAnioAcademico.value);
    }
    if (estadoId.present) {
      map['estado_id'] = Variable<int>(estadoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalendarioAcademicoCompanion(')
          ..write('calendarioAcademicoId: $calendarioAcademicoId, ')
          ..write('programaEduId: $programaEduId, ')
          ..write('idAnioAcademico: $idAnioAcademico, ')
          ..write('estadoId: $estadoId')
          ..write(')'))
        .toString();
  }
}

class $CalendarioAcademicoTable extends CalendarioAcademico
    with TableInfo<$CalendarioAcademicoTable, CalendarioAcademicoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $CalendarioAcademicoTable(this._db, [this._alias]);
  final VerificationMeta _calendarioAcademicoIdMeta =
      const VerificationMeta('calendarioAcademicoId');
  GeneratedIntColumn _calendarioAcademicoId;
  @override
  GeneratedIntColumn get calendarioAcademicoId =>
      _calendarioAcademicoId ??= _constructCalendarioAcademicoId();
  GeneratedIntColumn _constructCalendarioAcademicoId() {
    return GeneratedIntColumn(
      'calendario_academico_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _programaEduIdMeta =
      const VerificationMeta('programaEduId');
  GeneratedIntColumn _programaEduId;
  @override
  GeneratedIntColumn get programaEduId =>
      _programaEduId ??= _constructProgramaEduId();
  GeneratedIntColumn _constructProgramaEduId() {
    return GeneratedIntColumn(
      'programa_edu_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idAnioAcademicoMeta =
      const VerificationMeta('idAnioAcademico');
  GeneratedIntColumn _idAnioAcademico;
  @override
  GeneratedIntColumn get idAnioAcademico =>
      _idAnioAcademico ??= _constructIdAnioAcademico();
  GeneratedIntColumn _constructIdAnioAcademico() {
    return GeneratedIntColumn(
      'id_anio_academico',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoIdMeta = const VerificationMeta('estadoId');
  GeneratedIntColumn _estadoId;
  @override
  GeneratedIntColumn get estadoId => _estadoId ??= _constructEstadoId();
  GeneratedIntColumn _constructEstadoId() {
    return GeneratedIntColumn(
      'estado_id',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [calendarioAcademicoId, programaEduId, idAnioAcademico, estadoId];
  @override
  $CalendarioAcademicoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'calendario_academico';
  @override
  final String actualTableName = 'calendario_academico';
  @override
  VerificationContext validateIntegrity(
      Insertable<CalendarioAcademicoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('calendario_academico_id')) {
      context.handle(
          _calendarioAcademicoIdMeta,
          calendarioAcademicoId.isAcceptableOrUnknown(
              data['calendario_academico_id'], _calendarioAcademicoIdMeta));
    }
    if (data.containsKey('programa_edu_id')) {
      context.handle(
          _programaEduIdMeta,
          programaEduId.isAcceptableOrUnknown(
              data['programa_edu_id'], _programaEduIdMeta));
    }
    if (data.containsKey('id_anio_academico')) {
      context.handle(
          _idAnioAcademicoMeta,
          idAnioAcademico.isAcceptableOrUnknown(
              data['id_anio_academico'], _idAnioAcademicoMeta));
    }
    if (data.containsKey('estado_id')) {
      context.handle(_estadoIdMeta,
          estadoId.isAcceptableOrUnknown(data['estado_id'], _estadoIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {calendarioAcademicoId};
  @override
  CalendarioAcademicoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CalendarioAcademicoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CalendarioAcademicoTable createAlias(String alias) {
    return $CalendarioAcademicoTable(_db, alias);
  }
}

class UsuarioData extends DataClass implements Insertable<UsuarioData> {
  final int usuarioId;
  final int personaId;
  final String usuario;
  final String password;
  final bool estado;
  final bool habilitarAcceso;
  UsuarioData(
      {@required this.usuarioId,
      this.personaId,
      this.usuario,
      this.password,
      this.estado,
      this.habilitarAcceso});
  factory UsuarioData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return UsuarioData(
      usuarioId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}usuario_id']),
      personaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}persona_id']),
      usuario:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usuario']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      estado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}estado']),
      habilitarAcceso: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}habilitar_acceso']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || usuarioId != null) {
      map['usuario_id'] = Variable<int>(usuarioId);
    }
    if (!nullToAbsent || personaId != null) {
      map['persona_id'] = Variable<int>(personaId);
    }
    if (!nullToAbsent || usuario != null) {
      map['usuario'] = Variable<String>(usuario);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || estado != null) {
      map['estado'] = Variable<bool>(estado);
    }
    if (!nullToAbsent || habilitarAcceso != null) {
      map['habilitar_acceso'] = Variable<bool>(habilitarAcceso);
    }
    return map;
  }

  UsuarioCompanion toCompanion(bool nullToAbsent) {
    return UsuarioCompanion(
      usuarioId: usuarioId == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioId),
      personaId: personaId == null && nullToAbsent
          ? const Value.absent()
          : Value(personaId),
      usuario: usuario == null && nullToAbsent
          ? const Value.absent()
          : Value(usuario),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      estado:
          estado == null && nullToAbsent ? const Value.absent() : Value(estado),
      habilitarAcceso: habilitarAcceso == null && nullToAbsent
          ? const Value.absent()
          : Value(habilitarAcceso),
    );
  }

  factory UsuarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UsuarioData(
      usuarioId: serializer.fromJson<int>(json['usuarioId']),
      personaId: serializer.fromJson<int>(json['personaId']),
      usuario: serializer.fromJson<String>(json['usuario']),
      password: serializer.fromJson<String>(json['password']),
      estado: serializer.fromJson<bool>(json['estado']),
      habilitarAcceso: serializer.fromJson<bool>(json['habilitarAcceso']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'usuarioId': serializer.toJson<int>(usuarioId),
      'personaId': serializer.toJson<int>(personaId),
      'usuario': serializer.toJson<String>(usuario),
      'password': serializer.toJson<String>(password),
      'estado': serializer.toJson<bool>(estado),
      'habilitarAcceso': serializer.toJson<bool>(habilitarAcceso),
    };
  }

  UsuarioData copyWith(
          {int usuarioId,
          int personaId,
          String usuario,
          String password,
          bool estado,
          bool habilitarAcceso}) =>
      UsuarioData(
        usuarioId: usuarioId ?? this.usuarioId,
        personaId: personaId ?? this.personaId,
        usuario: usuario ?? this.usuario,
        password: password ?? this.password,
        estado: estado ?? this.estado,
        habilitarAcceso: habilitarAcceso ?? this.habilitarAcceso,
      );
  @override
  String toString() {
    return (StringBuffer('UsuarioData(')
          ..write('usuarioId: $usuarioId, ')
          ..write('personaId: $personaId, ')
          ..write('usuario: $usuario, ')
          ..write('password: $password, ')
          ..write('estado: $estado, ')
          ..write('habilitarAcceso: $habilitarAcceso')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      usuarioId.hashCode,
      $mrjc(
          personaId.hashCode,
          $mrjc(
              usuario.hashCode,
              $mrjc(password.hashCode,
                  $mrjc(estado.hashCode, habilitarAcceso.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UsuarioData &&
          other.usuarioId == this.usuarioId &&
          other.personaId == this.personaId &&
          other.usuario == this.usuario &&
          other.password == this.password &&
          other.estado == this.estado &&
          other.habilitarAcceso == this.habilitarAcceso);
}

class UsuarioCompanion extends UpdateCompanion<UsuarioData> {
  final Value<int> usuarioId;
  final Value<int> personaId;
  final Value<String> usuario;
  final Value<String> password;
  final Value<bool> estado;
  final Value<bool> habilitarAcceso;
  const UsuarioCompanion({
    this.usuarioId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.usuario = const Value.absent(),
    this.password = const Value.absent(),
    this.estado = const Value.absent(),
    this.habilitarAcceso = const Value.absent(),
  });
  UsuarioCompanion.insert({
    this.usuarioId = const Value.absent(),
    this.personaId = const Value.absent(),
    this.usuario = const Value.absent(),
    this.password = const Value.absent(),
    this.estado = const Value.absent(),
    this.habilitarAcceso = const Value.absent(),
  });
  static Insertable<UsuarioData> custom({
    Expression<int> usuarioId,
    Expression<int> personaId,
    Expression<String> usuario,
    Expression<String> password,
    Expression<bool> estado,
    Expression<bool> habilitarAcceso,
  }) {
    return RawValuesInsertable({
      if (usuarioId != null) 'usuario_id': usuarioId,
      if (personaId != null) 'persona_id': personaId,
      if (usuario != null) 'usuario': usuario,
      if (password != null) 'password': password,
      if (estado != null) 'estado': estado,
      if (habilitarAcceso != null) 'habilitar_acceso': habilitarAcceso,
    });
  }

  UsuarioCompanion copyWith(
      {Value<int> usuarioId,
      Value<int> personaId,
      Value<String> usuario,
      Value<String> password,
      Value<bool> estado,
      Value<bool> habilitarAcceso}) {
    return UsuarioCompanion(
      usuarioId: usuarioId ?? this.usuarioId,
      personaId: personaId ?? this.personaId,
      usuario: usuario ?? this.usuario,
      password: password ?? this.password,
      estado: estado ?? this.estado,
      habilitarAcceso: habilitarAcceso ?? this.habilitarAcceso,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (usuarioId.present) {
      map['usuario_id'] = Variable<int>(usuarioId.value);
    }
    if (personaId.present) {
      map['persona_id'] = Variable<int>(personaId.value);
    }
    if (usuario.present) {
      map['usuario'] = Variable<String>(usuario.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (estado.present) {
      map['estado'] = Variable<bool>(estado.value);
    }
    if (habilitarAcceso.present) {
      map['habilitar_acceso'] = Variable<bool>(habilitarAcceso.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsuarioCompanion(')
          ..write('usuarioId: $usuarioId, ')
          ..write('personaId: $personaId, ')
          ..write('usuario: $usuario, ')
          ..write('password: $password, ')
          ..write('estado: $estado, ')
          ..write('habilitarAcceso: $habilitarAcceso')
          ..write(')'))
        .toString();
  }
}

class $UsuarioTable extends Usuario with TableInfo<$UsuarioTable, UsuarioData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuarioTable(this._db, [this._alias]);
  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  GeneratedIntColumn _usuarioId;
  @override
  GeneratedIntColumn get usuarioId => _usuarioId ??= _constructUsuarioId();
  GeneratedIntColumn _constructUsuarioId() {
    return GeneratedIntColumn(
      'usuario_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _personaIdMeta = const VerificationMeta('personaId');
  GeneratedIntColumn _personaId;
  @override
  GeneratedIntColumn get personaId => _personaId ??= _constructPersonaId();
  GeneratedIntColumn _constructPersonaId() {
    return GeneratedIntColumn(
      'persona_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usuarioMeta = const VerificationMeta('usuario');
  GeneratedTextColumn _usuario;
  @override
  GeneratedTextColumn get usuario => _usuario ??= _constructUsuario();
  GeneratedTextColumn _constructUsuario() {
    return GeneratedTextColumn(
      'usuario',
      $tableName,
      true,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      true,
    );
  }

  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  GeneratedBoolColumn _estado;
  @override
  GeneratedBoolColumn get estado => _estado ??= _constructEstado();
  GeneratedBoolColumn _constructEstado() {
    return GeneratedBoolColumn(
      'estado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _habilitarAccesoMeta =
      const VerificationMeta('habilitarAcceso');
  GeneratedBoolColumn _habilitarAcceso;
  @override
  GeneratedBoolColumn get habilitarAcceso =>
      _habilitarAcceso ??= _constructHabilitarAcceso();
  GeneratedBoolColumn _constructHabilitarAcceso() {
    return GeneratedBoolColumn(
      'habilitar_acceso',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [usuarioId, personaId, usuario, password, estado, habilitarAcceso];
  @override
  $UsuarioTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuario';
  @override
  final String actualTableName = 'usuario';
  @override
  VerificationContext validateIntegrity(Insertable<UsuarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('usuario_id')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['usuario_id'], _usuarioIdMeta));
    }
    if (data.containsKey('persona_id')) {
      context.handle(_personaIdMeta,
          personaId.isAcceptableOrUnknown(data['persona_id'], _personaIdMeta));
    }
    if (data.containsKey('usuario')) {
      context.handle(_usuarioMeta,
          usuario.isAcceptableOrUnknown(data['usuario'], _usuarioMeta));
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado'], _estadoMeta));
    }
    if (data.containsKey('habilitar_acceso')) {
      context.handle(
          _habilitarAccesoMeta,
          habilitarAcceso.isAcceptableOrUnknown(
              data['habilitar_acceso'], _habilitarAccesoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {usuarioId};
  @override
  UsuarioData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UsuarioData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsuarioTable createAlias(String alias) {
    return $UsuarioTable(_db, alias);
  }
}

class WebConfig extends DataClass implements Insertable<WebConfig> {
  final String nombre;
  final String content;
  WebConfig({this.nombre, this.content});
  factory WebConfig.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return WebConfig(
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      content:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nombre != null) {
      map['nombre'] = Variable<String>(nombre);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    return map;
  }

  WebConfigsCompanion toCompanion(bool nullToAbsent) {
    return WebConfigsCompanion(
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
    );
  }

  factory WebConfig.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WebConfig(
      nombre: serializer.fromJson<String>(json['nombre']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nombre': serializer.toJson<String>(nombre),
      'content': serializer.toJson<String>(content),
    };
  }

  WebConfig copyWith({String nombre, String content}) => WebConfig(
        nombre: nombre ?? this.nombre,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('WebConfig(')
          ..write('nombre: $nombre, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(nombre.hashCode, content.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WebConfig &&
          other.nombre == this.nombre &&
          other.content == this.content);
}

class WebConfigsCompanion extends UpdateCompanion<WebConfig> {
  final Value<String> nombre;
  final Value<String> content;
  const WebConfigsCompanion({
    this.nombre = const Value.absent(),
    this.content = const Value.absent(),
  });
  WebConfigsCompanion.insert({
    this.nombre = const Value.absent(),
    this.content = const Value.absent(),
  });
  static Insertable<WebConfig> custom({
    Expression<String> nombre,
    Expression<String> content,
  }) {
    return RawValuesInsertable({
      if (nombre != null) 'nombre': nombre,
      if (content != null) 'content': content,
    });
  }

  WebConfigsCompanion copyWith({Value<String> nombre, Value<String> content}) {
    return WebConfigsCompanion(
      nombre: nombre ?? this.nombre,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WebConfigsCompanion(')
          ..write('nombre: $nombre, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $WebConfigsTable extends WebConfigs
    with TableInfo<$WebConfigsTable, WebConfig> {
  final GeneratedDatabase _db;
  final String _alias;
  $WebConfigsTable(this._db, [this._alias]);
  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      true,
    );
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn(
      'content',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [nombre, content];
  @override
  $WebConfigsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'web_configs';
  @override
  final String actualTableName = 'web_configs';
  @override
  VerificationContext validateIntegrity(Insertable<WebConfig> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre'], _nombreMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content'], _contentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nombre, content};
  @override
  WebConfig map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WebConfig.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WebConfigsTable createAlias(String alias) {
    return $WebConfigsTable(_db, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $SessionUserTable _sessionUser;
  $SessionUserTable get sessionUser => _sessionUser ??= $SessionUserTable(this);
  $UsuarioRolGeoreferenciaTable _usuarioRolGeoreferencia;
  $UsuarioRolGeoreferenciaTable get usuarioRolGeoreferencia =>
      _usuarioRolGeoreferencia ??= $UsuarioRolGeoreferenciaTable(this);
  $RolTable _rol;
  $RolTable get rol => _rol ??= $RolTable(this);
  $GeoreferenciaTable _georeferencia;
  $GeoreferenciaTable get georeferencia =>
      _georeferencia ??= $GeoreferenciaTable(this);
  $EntidadTable _entidad;
  $EntidadTable get entidad => _entidad ??= $EntidadTable(this);
  $PersonaTable _persona;
  $PersonaTable get persona => _persona ??= $PersonaTable(this);
  $EmpleadoTable _empleado;
  $EmpleadoTable get empleado => _empleado ??= $EmpleadoTable(this);
  $AnioAcademicoTable _anioAcademico;
  $AnioAcademicoTable get anioAcademico =>
      _anioAcademico ??= $AnioAcademicoTable(this);
  $ParametroConfiguracionTable _parametroConfiguracion;
  $ParametroConfiguracionTable get parametroConfiguracion =>
      _parametroConfiguracion ??= $ParametroConfiguracionTable(this);
  $AulaTable _aula;
  $AulaTable get aula => _aula ??= $AulaTable(this);
  $CargaAcademicaTable _cargaAcademica;
  $CargaAcademicaTable get cargaAcademica =>
      _cargaAcademica ??= $CargaAcademicaTable(this);
  $CargaCursoDocenteTable _cargaCursoDocente;
  $CargaCursoDocenteTable get cargaCursoDocente =>
      _cargaCursoDocente ??= $CargaCursoDocenteTable(this);
  $CargaCursoDocenteDetTable _cargaCursoDocenteDet;
  $CargaCursoDocenteDetTable get cargaCursoDocenteDet =>
      _cargaCursoDocenteDet ??= $CargaCursoDocenteDetTable(this);
  $CargaCursoTable _cargaCurso;
  $CargaCursoTable get cargaCurso => _cargaCurso ??= $CargaCursoTable(this);
  $CursosTable _cursos;
  $CursosTable get cursos => _cursos ??= $CursosTable(this);
  $ParametrosDisenioTable _parametrosDisenio;
  $ParametrosDisenioTable get parametrosDisenio =>
      _parametrosDisenio ??= $ParametrosDisenioTable(this);
  $NivelAcademicoTable _nivelAcademico;
  $NivelAcademicoTable get nivelAcademico =>
      _nivelAcademico ??= $NivelAcademicoTable(this);
  $PeriodosTable _periodos;
  $PeriodosTable get periodos => _periodos ??= $PeriodosTable(this);
  $PlanCursosTable _planCursos;
  $PlanCursosTable get planCursos => _planCursos ??= $PlanCursosTable(this);
  $PlanEstudioTable _planEstudio;
  $PlanEstudioTable get planEstudio => _planEstudio ??= $PlanEstudioTable(this);
  $ProgramasEducativoTable _programasEducativo;
  $ProgramasEducativoTable get programasEducativo =>
      _programasEducativo ??= $ProgramasEducativoTable(this);
  $SeccionTable _seccion;
  $SeccionTable get seccion => _seccion ??= $SeccionTable(this);
  $SilaboEventoTable _silaboEvento;
  $SilaboEventoTable get silaboEvento =>
      _silaboEvento ??= $SilaboEventoTable(this);
  $CalendarioPeriodoTable _calendarioPeriodo;
  $CalendarioPeriodoTable get calendarioPeriodo =>
      _calendarioPeriodo ??= $CalendarioPeriodoTable(this);
  $CalendarioPeriodoDetalleTable _calendarioPeriodoDetalle;
  $CalendarioPeriodoDetalleTable get calendarioPeriodoDetalle =>
      _calendarioPeriodoDetalle ??= $CalendarioPeriodoDetalleTable(this);
  $CargaCursoCalendarioPeriodoTable _cargaCursoCalendarioPeriodo;
  $CargaCursoCalendarioPeriodoTable get cargaCursoCalendarioPeriodo =>
      _cargaCursoCalendarioPeriodo ??= $CargaCursoCalendarioPeriodoTable(this);
  $TiposTable _tipos;
  $TiposTable get tipos => _tipos ??= $TiposTable(this);
  $HoraTable _hora;
  $HoraTable get hora => _hora ??= $HoraTable(this);
  $HorarioProgramaTable _horarioPrograma;
  $HorarioProgramaTable get horarioPrograma =>
      _horarioPrograma ??= $HorarioProgramaTable(this);
  $HorarioHoraTable _horarioHora;
  $HorarioHoraTable get horarioHora => _horarioHora ??= $HorarioHoraTable(this);
  $DetalleHorarioTable _detalleHorario;
  $DetalleHorarioTable get detalleHorario =>
      _detalleHorario ??= $DetalleHorarioTable(this);
  $DiaTable _dia;
  $DiaTable get dia => _dia ??= $DiaTable(this);
  $HorarioDiaTable _horarioDia;
  $HorarioDiaTable get horarioDia => _horarioDia ??= $HorarioDiaTable(this);
  $CursosDetHorarioTable _cursosDetHorario;
  $CursosDetHorarioTable get cursosDetHorario =>
      _cursosDetHorario ??= $CursosDetHorarioTable(this);
  $HorarioTable _horario;
  $HorarioTable get horario => _horario ??= $HorarioTable(this);
  $CalendarioAcademicoTable _calendarioAcademico;
  $CalendarioAcademicoTable get calendarioAcademico =>
      _calendarioAcademico ??= $CalendarioAcademicoTable(this);
  $UsuarioTable _usuario;
  $UsuarioTable get usuario => _usuario ??= $UsuarioTable(this);
  $WebConfigsTable _webConfigs;
  $WebConfigsTable get webConfigs => _webConfigs ??= $WebConfigsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        sessionUser,
        usuarioRolGeoreferencia,
        rol,
        georeferencia,
        entidad,
        persona,
        empleado,
        anioAcademico,
        parametroConfiguracion,
        aula,
        cargaAcademica,
        cargaCursoDocente,
        cargaCursoDocenteDet,
        cargaCurso,
        cursos,
        parametrosDisenio,
        nivelAcademico,
        periodos,
        planCursos,
        planEstudio,
        programasEducativo,
        seccion,
        silaboEvento,
        calendarioPeriodo,
        calendarioPeriodoDetalle,
        cargaCursoCalendarioPeriodo,
        tipos,
        hora,
        horarioPrograma,
        horarioHora,
        detalleHorario,
        dia,
        horarioDia,
        cursosDetHorario,
        horario,
        calendarioAcademico,
        usuario,
        webConfigs
      ];
}
