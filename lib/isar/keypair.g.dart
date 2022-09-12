// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keypair.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetKeypairCollection on Isar {
  IsarCollection<Keypair> get keypairs => getCollection();
}

const KeypairSchema = CollectionSchema(
  name: 'Keypair',
  schema:
      '{"name":"Keypair","idName":"id","properties":[{"name":"name","type":"String"},{"name":"privateKeyId","type":"String"},{"name":"publicKey","type":"ByteList"},{"name":"publicKeyBase64","type":"String"},{"name":"publicKeyOpenSSH","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'name': 0,
    'privateKeyId': 1,
    'publicKey': 2,
    'publicKeyBase64': 3,
    'publicKeyOpenSSH': 4
  },
  listProperties: {'publicKey'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'hosts': 0},
  backlinkLinkNames: {'hosts': 'keypair'},
  getId: _keypairGetId,
  setId: _keypairSetId,
  getLinks: _keypairGetLinks,
  attachLinks: _keypairAttachLinks,
  serializeNative: _keypairSerializeNative,
  deserializeNative: _keypairDeserializeNative,
  deserializePropNative: _keypairDeserializePropNative,
  serializeWeb: _keypairSerializeWeb,
  deserializeWeb: _keypairDeserializeWeb,
  deserializePropWeb: _keypairDeserializePropWeb,
  version: 3,
);

int? _keypairGetId(Keypair object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _keypairSetId(Keypair object, int id) {
  object.id = id;
}

List<IsarLinkBase> _keypairGetLinks(Keypair object) {
  return [object.hosts];
}

void _keypairSerializeNative(
    IsarCollection<Keypair> collection,
    IsarRawObject rawObj,
    Keypair object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_name.length) as int;
  final value1 = object.privateKeyId;
  final _privateKeyId = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_privateKeyId.length) as int;
  final value2 = object.publicKey;
  dynamicSize += (value2.length) * 1;
  final _publicKey = value2;
  final value3 = object.publicKeyBase64;
  final _publicKeyBase64 = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_publicKeyBase64.length) as int;
  final value4 = object.publicKeyOpenSSH;
  final _publicKeyOpenSSH = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_publicKeyOpenSSH.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _name);
  writer.writeBytes(offsets[1], _privateKeyId);
  writer.writeBytes(offsets[2], _publicKey);
  writer.writeBytes(offsets[3], _publicKeyBase64);
  writer.writeBytes(offsets[4], _publicKeyOpenSSH);
}

Keypair _keypairDeserializeNative(IsarCollection<Keypair> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Keypair(
    name: reader.readString(offsets[0]),
    privateKeyId: reader.readString(offsets[1]),
    publicKey: reader.readBytes(offsets[2]),
  );
  object.id = id;
  _keypairAttachLinks(collection, id, object);
  return object;
}

P _keypairDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBytes(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _keypairSerializeWeb(
    IsarCollection<Keypair> collection, Keypair object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'privateKeyId', object.privateKeyId);
  IsarNative.jsObjectSet(jsObj, 'publicKey', object.publicKey);
  IsarNative.jsObjectSet(jsObj, 'publicKeyBase64', object.publicKeyBase64);
  IsarNative.jsObjectSet(jsObj, 'publicKeyOpenSSH', object.publicKeyOpenSSH);
  return jsObj;
}

Keypair _keypairDeserializeWeb(
    IsarCollection<Keypair> collection, dynamic jsObj) {
  final object = Keypair(
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    privateKeyId: IsarNative.jsObjectGet(jsObj, 'privateKeyId') ?? '',
    publicKey: IsarNative.jsObjectGet(jsObj, 'publicKey') ?? Uint8List(0),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  _keypairAttachLinks(collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _keypairDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'privateKeyId':
      return (IsarNative.jsObjectGet(jsObj, 'privateKeyId') ?? '') as P;
    case 'publicKey':
      return (IsarNative.jsObjectGet(jsObj, 'publicKey') ?? Uint8List(0)) as P;
    case 'publicKeyBase64':
      return (IsarNative.jsObjectGet(jsObj, 'publicKeyBase64') ?? '') as P;
    case 'publicKeyOpenSSH':
      return (IsarNative.jsObjectGet(jsObj, 'publicKeyOpenSSH') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _keypairAttachLinks(IsarCollection col, int id, Keypair object) {
  object.hosts.attach(col, col.isar.remoteHosts, 'hosts', id);
}

extension KeypairQueryWhereSort on QueryBuilder<Keypair, Keypair, QWhere> {
  QueryBuilder<Keypair, Keypair, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension KeypairQueryWhere on QueryBuilder<Keypair, Keypair, QWhereClause> {
  QueryBuilder<Keypair, Keypair, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Keypair, Keypair, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Keypair, Keypair, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Keypair, Keypair, QAfterWhereClause> idBetween(
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

extension KeypairQueryFilter
    on QueryBuilder<Keypair, Keypair, QFilterCondition> {
  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'privateKeyId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'privateKeyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> privateKeyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'privateKeyId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyBase64GreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64LessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64Between(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'publicKeyBase64',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyBase64StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64Contains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'publicKeyBase64',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBase64Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'publicKeyBase64',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyOpenSSHEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyOpenSSHGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyOpenSSHLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyOpenSSHBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'publicKeyOpenSSH',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyOpenSSHStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyOpenSSHEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition>
      publicKeyOpenSSHContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'publicKeyOpenSSH',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyOpenSSHMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'publicKeyOpenSSH',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension KeypairQueryLinks
    on QueryBuilder<Keypair, Keypair, QFilterCondition> {
  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> hosts(
      FilterQuery<RemoteHost> q) {
    return linkInternal(
      isar.remoteHosts,
      q,
      'hosts',
    );
  }
}

extension KeypairQueryWhereSortBy on QueryBuilder<Keypair, Keypair, QSortBy> {
  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPrivateKeyId() {
    return addSortByInternal('privateKeyId', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPrivateKeyIdDesc() {
    return addSortByInternal('privateKeyId', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKeyBase64() {
    return addSortByInternal('publicKeyBase64', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKeyBase64Desc() {
    return addSortByInternal('publicKeyBase64', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKeyOpenSSH() {
    return addSortByInternal('publicKeyOpenSSH', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKeyOpenSSHDesc() {
    return addSortByInternal('publicKeyOpenSSH', Sort.desc);
  }
}

extension KeypairQueryWhereSortThenBy
    on QueryBuilder<Keypair, Keypair, QSortThenBy> {
  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPrivateKeyId() {
    return addSortByInternal('privateKeyId', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPrivateKeyIdDesc() {
    return addSortByInternal('privateKeyId', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKeyBase64() {
    return addSortByInternal('publicKeyBase64', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKeyBase64Desc() {
    return addSortByInternal('publicKeyBase64', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKeyOpenSSH() {
    return addSortByInternal('publicKeyOpenSSH', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKeyOpenSSHDesc() {
    return addSortByInternal('publicKeyOpenSSH', Sort.desc);
  }
}

extension KeypairQueryWhereDistinct
    on QueryBuilder<Keypair, Keypair, QDistinct> {
  QueryBuilder<Keypair, Keypair, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByPrivateKeyId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('privateKeyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByPublicKeyBase64(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('publicKeyBase64',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByPublicKeyOpenSSH(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('publicKeyOpenSSH',
        caseSensitive: caseSensitive);
  }
}

extension KeypairQueryProperty
    on QueryBuilder<Keypair, Keypair, QQueryProperty> {
  QueryBuilder<Keypair, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Keypair, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Keypair, String, QQueryOperations> privateKeyIdProperty() {
    return addPropertyNameInternal('privateKeyId');
  }

  QueryBuilder<Keypair, Uint8List, QQueryOperations> publicKeyProperty() {
    return addPropertyNameInternal('publicKey');
  }

  QueryBuilder<Keypair, String, QQueryOperations> publicKeyBase64Property() {
    return addPropertyNameInternal('publicKeyBase64');
  }

  QueryBuilder<Keypair, String, QQueryOperations> publicKeyOpenSSHProperty() {
    return addPropertyNameInternal('publicKeyOpenSSH');
  }
}
