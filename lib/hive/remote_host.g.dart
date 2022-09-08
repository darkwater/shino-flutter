// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_host.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetRemoteHostCollection on Isar {
  IsarCollection<RemoteHost> get remoteHosts => getCollection();
}

const RemoteHostSchema = CollectionSchema(
  name: 'RemoteHost',
  schema:
      '{"name":"RemoteHost","idName":"id","properties":[{"name":"address","type":"String"},{"name":"name","type":"String"},{"name":"password","type":"String"},{"name":"port","type":"Long"},{"name":"publicKey","type":"String"},{"name":"username","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'address': 0,
    'name': 1,
    'password': 2,
    'port': 3,
    'publicKey': 4,
    'username': 5
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _remoteHostGetId,
  setId: _remoteHostSetId,
  getLinks: _remoteHostGetLinks,
  attachLinks: _remoteHostAttachLinks,
  serializeNative: _remoteHostSerializeNative,
  deserializeNative: _remoteHostDeserializeNative,
  deserializePropNative: _remoteHostDeserializePropNative,
  serializeWeb: _remoteHostSerializeWeb,
  deserializeWeb: _remoteHostDeserializeWeb,
  deserializePropWeb: _remoteHostDeserializePropWeb,
  version: 3,
);

int? _remoteHostGetId(RemoteHost object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _remoteHostSetId(RemoteHost object, int id) {
  object.id = id;
}

List<IsarLinkBase> _remoteHostGetLinks(RemoteHost object) {
  return [];
}

void _remoteHostSerializeNative(
    IsarCollection<RemoteHost> collection,
    IsarRawObject rawObj,
    RemoteHost object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.address;
  final _address = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_address.length) as int;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.password;
  IsarUint8List? _password;
  if (value2 != null) {
    _password = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_password?.length ?? 0) as int;
  final value3 = object.port;
  final _port = value3;
  final value4 = object.publicKey;
  IsarUint8List? _publicKey;
  if (value4 != null) {
    _publicKey = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_publicKey?.length ?? 0) as int;
  final value5 = object.username;
  final _username = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_username.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _address);
  writer.writeBytes(offsets[1], _name);
  writer.writeBytes(offsets[2], _password);
  writer.writeLong(offsets[3], _port);
  writer.writeBytes(offsets[4], _publicKey);
  writer.writeBytes(offsets[5], _username);
}

RemoteHost _remoteHostDeserializeNative(IsarCollection<RemoteHost> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = RemoteHost(
    address: reader.readString(offsets[0]),
    name: reader.readString(offsets[1]),
    password: reader.readStringOrNull(offsets[2]),
    port: reader.readLong(offsets[3]),
    publicKey: reader.readStringOrNull(offsets[4]),
    username: reader.readString(offsets[5]),
  );
  object.id = id;
  return object;
}

P _remoteHostDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _remoteHostSerializeWeb(
    IsarCollection<RemoteHost> collection, RemoteHost object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'address', object.address);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'password', object.password);
  IsarNative.jsObjectSet(jsObj, 'port', object.port);
  IsarNative.jsObjectSet(jsObj, 'publicKey', object.publicKey);
  IsarNative.jsObjectSet(jsObj, 'username', object.username);
  return jsObj;
}

RemoteHost _remoteHostDeserializeWeb(
    IsarCollection<RemoteHost> collection, dynamic jsObj) {
  final object = RemoteHost(
    address: IsarNative.jsObjectGet(jsObj, 'address') ?? '',
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    password: IsarNative.jsObjectGet(jsObj, 'password'),
    port: IsarNative.jsObjectGet(jsObj, 'port') ?? double.negativeInfinity,
    publicKey: IsarNative.jsObjectGet(jsObj, 'publicKey'),
    username: IsarNative.jsObjectGet(jsObj, 'username') ?? '',
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _remoteHostDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'address':
      return (IsarNative.jsObjectGet(jsObj, 'address') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'password':
      return (IsarNative.jsObjectGet(jsObj, 'password')) as P;
    case 'port':
      return (IsarNative.jsObjectGet(jsObj, 'port') ?? double.negativeInfinity)
          as P;
    case 'publicKey':
      return (IsarNative.jsObjectGet(jsObj, 'publicKey')) as P;
    case 'username':
      return (IsarNative.jsObjectGet(jsObj, 'username') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _remoteHostAttachLinks(IsarCollection col, int id, RemoteHost object) {}

extension RemoteHostQueryWhereSort
    on QueryBuilder<RemoteHost, RemoteHost, QWhere> {
  QueryBuilder<RemoteHost, RemoteHost, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension RemoteHostQueryWhere
    on QueryBuilder<RemoteHost, RemoteHost, QWhereClause> {
  QueryBuilder<RemoteHost, RemoteHost, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension RemoteHostQueryFilter
    on QueryBuilder<RemoteHost, RemoteHost, QFilterCondition> {
  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      addressGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'address',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'address',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'password',
      value: null,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      passwordGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'password',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'password',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'password',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> portEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'port',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> portGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'port',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> portLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'port',
      value: value,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> portBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'port',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      publicKeyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'publicKey',
      value: null,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      publicKeyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'publicKey',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      publicKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> publicKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'publicKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'username',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'username',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension RemoteHostQueryLinks
    on QueryBuilder<RemoteHost, RemoteHost, QFilterCondition> {}

extension RemoteHostQueryWhereSortBy
    on QueryBuilder<RemoteHost, RemoteHost, QSortBy> {
  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPassword() {
    return addSortByInternal('password', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPasswordDesc() {
    return addSortByInternal('password', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPort() {
    return addSortByInternal('port', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPortDesc() {
    return addSortByInternal('port', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPublicKey() {
    return addSortByInternal('publicKey', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByPublicKeyDesc() {
    return addSortByInternal('publicKey', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> sortByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension RemoteHostQueryWhereSortThenBy
    on QueryBuilder<RemoteHost, RemoteHost, QSortThenBy> {
  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPassword() {
    return addSortByInternal('password', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPasswordDesc() {
    return addSortByInternal('password', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPort() {
    return addSortByInternal('port', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPortDesc() {
    return addSortByInternal('port', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPublicKey() {
    return addSortByInternal('publicKey', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByPublicKeyDesc() {
    return addSortByInternal('publicKey', Sort.desc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<RemoteHost, RemoteHost, QAfterSortBy> thenByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension RemoteHostQueryWhereDistinct
    on QueryBuilder<RemoteHost, RemoteHost, QDistinct> {
  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('address', caseSensitive: caseSensitive);
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('password', caseSensitive: caseSensitive);
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByPort() {
    return addDistinctByInternal('port');
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByPublicKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('publicKey', caseSensitive: caseSensitive);
  }

  QueryBuilder<RemoteHost, RemoteHost, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('username', caseSensitive: caseSensitive);
  }
}

extension RemoteHostQueryProperty
    on QueryBuilder<RemoteHost, RemoteHost, QQueryProperty> {
  QueryBuilder<RemoteHost, String, QQueryOperations> addressProperty() {
    return addPropertyNameInternal('address');
  }

  QueryBuilder<RemoteHost, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<RemoteHost, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<RemoteHost, String?, QQueryOperations> passwordProperty() {
    return addPropertyNameInternal('password');
  }

  QueryBuilder<RemoteHost, int, QQueryOperations> portProperty() {
    return addPropertyNameInternal('port');
  }

  QueryBuilder<RemoteHost, String?, QQueryOperations> publicKeyProperty() {
    return addPropertyNameInternal('publicKey');
  }

  QueryBuilder<RemoteHost, String, QQueryOperations> usernameProperty() {
    return addPropertyNameInternal('username');
  }
}
