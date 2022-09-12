// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPreferencesCollection on Isar {
  IsarCollection<Preferences> get preferencess => getCollection();
}

const PreferencesSchema = CollectionSchema(
  name: 'Preferences',
  schema:
      '{"name":"Preferences","idName":"id","properties":[{"name":"defaultUsername","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'defaultUsername': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _preferencesGetId,
  getLinks: _preferencesGetLinks,
  attachLinks: _preferencesAttachLinks,
  serializeNative: _preferencesSerializeNative,
  deserializeNative: _preferencesDeserializeNative,
  deserializePropNative: _preferencesDeserializePropNative,
  serializeWeb: _preferencesSerializeWeb,
  deserializeWeb: _preferencesDeserializeWeb,
  deserializePropWeb: _preferencesDeserializePropWeb,
  version: 3,
);

int? _preferencesGetId(Preferences object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

List<IsarLinkBase> _preferencesGetLinks(Preferences object) {
  return [];
}

void _preferencesSerializeNative(
    IsarCollection<Preferences> collection,
    IsarRawObject rawObj,
    Preferences object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.defaultUsername;
  final _defaultUsername = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_defaultUsername.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _defaultUsername);
}

Preferences _preferencesDeserializeNative(
    IsarCollection<Preferences> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = Preferences();
  object.defaultUsername = reader.readString(offsets[0]);
  return object;
}

P _preferencesDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _preferencesSerializeWeb(
    IsarCollection<Preferences> collection, Preferences object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'defaultUsername', object.defaultUsername);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  return jsObj;
}

Preferences _preferencesDeserializeWeb(
    IsarCollection<Preferences> collection, dynamic jsObj) {
  final object = Preferences();
  object.defaultUsername =
      IsarNative.jsObjectGet(jsObj, 'defaultUsername') ?? '';
  return object;
}

P _preferencesDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'defaultUsername':
      return (IsarNative.jsObjectGet(jsObj, 'defaultUsername') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _preferencesAttachLinks(IsarCollection col, int id, Preferences object) {}

extension PreferencesQueryWhereSort
    on QueryBuilder<Preferences, Preferences, QWhere> {
  QueryBuilder<Preferences, Preferences, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PreferencesQueryWhere
    on QueryBuilder<Preferences, Preferences, QWhereClause> {
  QueryBuilder<Preferences, Preferences, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterWhereClause> idNotEqualTo(
      int id) {
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

  QueryBuilder<Preferences, Preferences, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Preferences, Preferences, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Preferences, Preferences, QAfterWhereClause> idBetween(
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

extension PreferencesQueryFilter
    on QueryBuilder<Preferences, Preferences, QFilterCondition> {
  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultUsername',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'defaultUsername',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition>
      defaultUsernameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'defaultUsername',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Preferences, Preferences, QAfterFilterCondition> idBetween(
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
}

extension PreferencesQueryLinks
    on QueryBuilder<Preferences, Preferences, QFilterCondition> {}

extension PreferencesQueryWhereSortBy
    on QueryBuilder<Preferences, Preferences, QSortBy> {
  QueryBuilder<Preferences, Preferences, QAfterSortBy> sortByDefaultUsername() {
    return addSortByInternal('defaultUsername', Sort.asc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy>
      sortByDefaultUsernameDesc() {
    return addSortByInternal('defaultUsername', Sort.desc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension PreferencesQueryWhereSortThenBy
    on QueryBuilder<Preferences, Preferences, QSortThenBy> {
  QueryBuilder<Preferences, Preferences, QAfterSortBy> thenByDefaultUsername() {
    return addSortByInternal('defaultUsername', Sort.asc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy>
      thenByDefaultUsernameDesc() {
    return addSortByInternal('defaultUsername', Sort.desc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Preferences, Preferences, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension PreferencesQueryWhereDistinct
    on QueryBuilder<Preferences, Preferences, QDistinct> {
  QueryBuilder<Preferences, Preferences, QDistinct> distinctByDefaultUsername(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('defaultUsername',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Preferences, Preferences, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension PreferencesQueryProperty
    on QueryBuilder<Preferences, Preferences, QQueryProperty> {
  QueryBuilder<Preferences, String, QQueryOperations>
      defaultUsernameProperty() {
    return addPropertyNameInternal('defaultUsername');
  }

  QueryBuilder<Preferences, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}
