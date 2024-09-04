import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Quiz5Record extends FirestoreRecord {
  Quiz5Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "question_no" field.
  int? _questionNo;
  int get questionNo => _questionNo ?? 0;
  bool hasQuestionNo() => _questionNo != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "correctans" field.
  String? _correctans;
  String get correctans => _correctans ?? '';
  bool hasCorrectans() => _correctans != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  bool hasOptions() => _options != null;

  void _initializeFields() {
    _questionNo = castToType<int>(snapshotData['question_no']);
    _question = snapshotData['question'] as String?;
    _correctans = snapshotData['correctans'] as String?;
    _options = getDataList(snapshotData['options']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz5');

  static Stream<Quiz5Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Quiz5Record.fromSnapshot(s));

  static Future<Quiz5Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Quiz5Record.fromSnapshot(s));

  static Quiz5Record fromSnapshot(DocumentSnapshot snapshot) => Quiz5Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Quiz5Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Quiz5Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Quiz5Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Quiz5Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuiz5RecordData({
  int? questionNo,
  String? question,
  String? correctans,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question_no': questionNo,
      'question': question,
      'correctans': correctans,
    }.withoutNulls,
  );

  return firestoreData;
}

class Quiz5RecordDocumentEquality implements Equality<Quiz5Record> {
  const Quiz5RecordDocumentEquality();

  @override
  bool equals(Quiz5Record? e1, Quiz5Record? e2) {
    const listEquality = ListEquality();
    return e1?.questionNo == e2?.questionNo &&
        e1?.question == e2?.question &&
        e1?.correctans == e2?.correctans &&
        listEquality.equals(e1?.options, e2?.options);
  }

  @override
  int hash(Quiz5Record? e) => const ListEquality()
      .hash([e?.questionNo, e?.question, e?.correctans, e?.options]);

  @override
  bool isValidKey(Object? o) => o is Quiz5Record;
}
