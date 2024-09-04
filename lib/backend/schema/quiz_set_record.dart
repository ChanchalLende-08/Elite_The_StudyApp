import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizSetRecord extends FirestoreRecord {
  QuizSetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "questionNum" field.
  String? _questionNum;
  String get questionNum => _questionNum ?? '';
  bool hasQuestionNum() => _questionNum != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "Options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  bool hasOptions() => _options != null;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _questionNum = snapshotData['questionNum'] as String?;
    _correctAnswer = snapshotData['correctAnswer'] as String?;
    _options = getDataList(snapshotData['Options']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QuizSet');

  static Stream<QuizSetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizSetRecord.fromSnapshot(s));

  static Future<QuizSetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizSetRecord.fromSnapshot(s));

  static QuizSetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizSetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizSetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizSetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizSetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizSetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizSetRecordData({
  String? question,
  String? questionNum,
  String? correctAnswer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'questionNum': questionNum,
      'correctAnswer': correctAnswer,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizSetRecordDocumentEquality implements Equality<QuizSetRecord> {
  const QuizSetRecordDocumentEquality();

  @override
  bool equals(QuizSetRecord? e1, QuizSetRecord? e2) {
    const listEquality = ListEquality();
    return e1?.question == e2?.question &&
        e1?.questionNum == e2?.questionNum &&
        e1?.correctAnswer == e2?.correctAnswer &&
        listEquality.equals(e1?.options, e2?.options);
  }

  @override
  int hash(QuizSetRecord? e) => const ListEquality()
      .hash([e?.question, e?.questionNum, e?.correctAnswer, e?.options]);

  @override
  bool isValidKey(Object? o) => o is QuizSetRecord;
}
