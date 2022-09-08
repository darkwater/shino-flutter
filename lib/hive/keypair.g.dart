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
      '{"name":"Keypair","idName":"id","properties":[{"name":"privateKeyId","type":"String"},{"name":"publicKey","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'privateKeyId': 0, 'publicKey': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
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
  return [];
}

void _keypairSerializeNative(
    IsarCollection<Keypair> collection,
    IsarRawObject rawObj,
    Keypair object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.privateKeyId;
  final _privateKeyId = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_privateKeyId.length) as int;
  final value1 = object.publicKey;
  final _publicKey = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_publicKey.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _privateKeyId);
  writer.writeBytes(offsets[1], _publicKey);
}

Keypair _keypairDeserializeNative(IsarCollection<Keypair> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Keypair(
    privateKeyId: reader.readString(offsets[0]),
    publicKey: reader.readString(offsets[1]),
  );
  object.id = id;
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
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _keypairSerializeWeb(
    IsarCollection<Keypair> collection, Keypair object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'privateKeyId', object.privateKeyId);
  IsarNative.jsObjectSet(jsObj, 'publicKey', object.publicKey);
  return jsObj;
}

Keypair _keypairDeserializeWeb(
    IsarCollection<Keypair> collection, dynamic jsObj) {
  final object = Keypair(
    privateKeyId: IsarNative.jsObjectGet(jsObj, 'privateKeyId') ?? '',
    publicKey: IsarNative.jsObjectGet(jsObj, 'publicKey') ?? '',
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _keypairDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'privateKeyId':
      return (IsarNative.jsObjectGet(jsObj, 'privateKeyId') ?? '') as P;
    case 'publicKey':
      return (IsarNative.jsObjectGet(jsObj, 'publicKey') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _keypairAttachLinks(IsarCollection col, int id, Keypair object) {}

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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyGreaterThan(
    String value, {
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyLessThan(
    String value, {
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyStartsWith(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyEndsWith(
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

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'publicKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Keypair, Keypair, QAfterFilterCondition> publicKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'publicKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension KeypairQueryLinks
    on QueryBuilder<Keypair, Keypair, QFilterCondition> {}

extension KeypairQueryWhereSortBy on QueryBuilder<Keypair, Keypair, QSortBy> {
  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPrivateKeyId() {
    return addSortByInternal('privateKeyId', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPrivateKeyIdDesc() {
    return addSortByInternal('privateKeyId', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKey() {
    return addSortByInternal('publicKey', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> sortByPublicKeyDesc() {
    return addSortByInternal('publicKey', Sort.desc);
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

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPrivateKeyId() {
    return addSortByInternal('privateKeyId', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPrivateKeyIdDesc() {
    return addSortByInternal('privateKeyId', Sort.desc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKey() {
    return addSortByInternal('publicKey', Sort.asc);
  }

  QueryBuilder<Keypair, Keypair, QAfterSortBy> thenByPublicKeyDesc() {
    return addSortByInternal('publicKey', Sort.desc);
  }
}

extension KeypairQueryWhereDistinct
    on QueryBuilder<Keypair, Keypair, QDistinct> {
  QueryBuilder<Keypair, Keypair, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByPrivateKeyId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('privateKeyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Keypair, Keypair, QDistinct> distinctByPublicKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('publicKey', caseSensitive: caseSensitive);
  }
}

extension KeypairQueryProperty
    on QueryBuilder<Keypair, Keypair, QQueryProperty> {
  QueryBuilder<Keypair, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Keypair, String, QQueryOperations> privateKeyIdProperty() {
    return addPropertyNameInternal('privateKeyId');
  }

  QueryBuilder<Keypair, String, QQueryOperations> publicKeyProperty() {
    return addPropertyNameInternal('publicKey');
  }
}
