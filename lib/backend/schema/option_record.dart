import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptionRecord extends FirestoreRecord {
  OptionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "optionId" field.
  String? _optionId;
  String get optionId => _optionId ?? '';
  bool hasOptionId() => _optionId != null;

  // "questionId" field.
  String? _questionId;
  String get questionId => _questionId ?? '';
  bool hasQuestionId() => _questionId != null;

  // "optionText" field.
  String? _optionText;
  String get optionText => _optionText ?? '';
  bool hasOptionText() => _optionText != null;

  // "isCorrect" field.
  bool? _isCorrect;
  bool get isCorrect => _isCorrect ?? false;
  bool hasIsCorrect() => _isCorrect != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _optionId = snapshotData['optionId'] as String?;
    _questionId = snapshotData['questionId'] as String?;
    _optionText = snapshotData['optionText'] as String?;
    _isCorrect = snapshotData['isCorrect'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('option')
          : FirebaseFirestore.instance.collectionGroup('option');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('option').doc(id);

  static Stream<OptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OptionRecord.fromSnapshot(s));

  static Future<OptionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OptionRecord.fromSnapshot(s));

  static OptionRecord fromSnapshot(DocumentSnapshot snapshot) => OptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOptionRecordData({
  String? optionId,
  String? questionId,
  String? optionText,
  bool? isCorrect,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'optionId': optionId,
      'questionId': questionId,
      'optionText': optionText,
      'isCorrect': isCorrect,
    }.withoutNulls,
  );

  return firestoreData;
}

class OptionRecordDocumentEquality implements Equality<OptionRecord> {
  const OptionRecordDocumentEquality();

  @override
  bool equals(OptionRecord? e1, OptionRecord? e2) {
    return e1?.optionId == e2?.optionId &&
        e1?.questionId == e2?.questionId &&
        e1?.optionText == e2?.optionText &&
        e1?.isCorrect == e2?.isCorrect;
  }

  @override
  int hash(OptionRecord? e) => const ListEquality()
      .hash([e?.optionId, e?.questionId, e?.optionText, e?.isCorrect]);

  @override
  bool isValidKey(Object? o) => o is OptionRecord;
}
