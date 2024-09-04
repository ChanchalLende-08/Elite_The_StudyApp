import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Quiz3Record extends FirestoreRecord {
  Quiz3Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "questionno" field.
  int? _questionno;
  int get questionno => _questionno ?? 0;
  bool hasQuestionno() => _questionno != null;

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
    _questionno = castToType<int>(snapshotData['questionno']);
    _question = snapshotData['question'] as String?;
    _correctans = snapshotData['correctans'] as String?;
    _options = getDataList(snapshotData['options']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz3');

  static Stream<Quiz3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Quiz3Record.fromSnapshot(s));

  static Future<Quiz3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Quiz3Record.fromSnapshot(s));

  static Quiz3Record fromSnapshot(DocumentSnapshot snapshot) => Quiz3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Quiz3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Quiz3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Quiz3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Quiz3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuiz3RecordData({
  int? questionno,
  String? question,
  String? correctans,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'questionno': questionno,
      'question': question,
      'correctans': correctans,
    }.withoutNulls,
  );

  return firestoreData;
}

class Quiz3RecordDocumentEquality implements Equality<Quiz3Record> {
  const Quiz3RecordDocumentEquality();

  @override
  bool equals(Quiz3Record? e1, Quiz3Record? e2) {
    const listEquality = ListEquality();
    return e1?.questionno == e2?.questionno &&
        e1?.question == e2?.question &&
        e1?.correctans == e2?.correctans &&
        listEquality.equals(e1?.options, e2?.options);
  }

  @override
  int hash(Quiz3Record? e) => const ListEquality()
      .hash([e?.questionno, e?.question, e?.correctans, e?.options]);

  @override
  bool isValidKey(Object? o) => o is Quiz3Record;
}
