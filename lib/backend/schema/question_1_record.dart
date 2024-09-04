import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Question1Record extends FirestoreRecord {
  Question1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "questionId" field.
  String? _questionId;
  String get questionId => _questionId ?? '';
  bool hasQuestionId() => _questionId != null;

  // "questionText" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  bool hasQuestionText() => _questionText != null;

  // "correcAnswer" field.
  String? _correcAnswer;
  String get correcAnswer => _correcAnswer ?? '';
  bool hasCorrecAnswer() => _correcAnswer != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _questionId = snapshotData['questionId'] as String?;
    _questionText = snapshotData['questionText'] as String?;
    _correcAnswer = snapshotData['correcAnswer'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('question_1')
          : FirebaseFirestore.instance.collectionGroup('question_1');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('question_1').doc(id);

  static Stream<Question1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Question1Record.fromSnapshot(s));

  static Future<Question1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Question1Record.fromSnapshot(s));

  static Question1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Question1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Question1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Question1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Question1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Question1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestion1RecordData({
  String? questionId,
  String? questionText,
  String? correcAnswer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'questionId': questionId,
      'questionText': questionText,
      'correcAnswer': correcAnswer,
    }.withoutNulls,
  );

  return firestoreData;
}

class Question1RecordDocumentEquality implements Equality<Question1Record> {
  const Question1RecordDocumentEquality();

  @override
  bool equals(Question1Record? e1, Question1Record? e2) {
    return e1?.questionId == e2?.questionId &&
        e1?.questionText == e2?.questionText &&
        e1?.correcAnswer == e2?.correcAnswer;
  }

  @override
  int hash(Question1Record? e) => const ListEquality()
      .hash([e?.questionId, e?.questionText, e?.correcAnswer]);

  @override
  bool isValidKey(Object? o) => o is Question1Record;
}
