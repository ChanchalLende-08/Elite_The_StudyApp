// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class Quiz1Struct extends FFFirebaseStruct {
  Quiz1Struct({
    String? question,
    String? questionCopy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _questionCopy = questionCopy,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "questionCopy" field.
  String? _questionCopy;
  String get questionCopy => _questionCopy ?? '';
  set questionCopy(String? val) => _questionCopy = val;

  bool hasQuestionCopy() => _questionCopy != null;

  static Quiz1Struct fromMap(Map<String, dynamic> data) => Quiz1Struct(
        question: data['question'] as String?,
        questionCopy: data['questionCopy'] as String?,
      );

  static Quiz1Struct? maybeFromMap(dynamic data) =>
      data is Map ? Quiz1Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'questionCopy': _questionCopy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'questionCopy': serializeParam(
          _questionCopy,
          ParamType.String,
        ),
      }.withoutNulls;

  static Quiz1Struct fromSerializableMap(Map<String, dynamic> data) =>
      Quiz1Struct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        questionCopy: deserializeParam(
          data['questionCopy'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Quiz1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Quiz1Struct &&
        question == other.question &&
        questionCopy == other.questionCopy;
  }

  @override
  int get hashCode => const ListEquality().hash([question, questionCopy]);
}

Quiz1Struct createQuiz1Struct({
  String? question,
  String? questionCopy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Quiz1Struct(
      question: question,
      questionCopy: questionCopy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Quiz1Struct? updateQuiz1Struct(
  Quiz1Struct? quiz1, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quiz1
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuiz1StructData(
  Map<String, dynamic> firestoreData,
  Quiz1Struct? quiz1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quiz1 == null) {
    return;
  }
  if (quiz1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quiz1.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quiz1Data = getQuiz1FirestoreData(quiz1, forFieldValue);
  final nestedData = quiz1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quiz1.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuiz1FirestoreData(
  Quiz1Struct? quiz1, [
  bool forFieldValue = false,
]) {
  if (quiz1 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quiz1.toMap());

  // Add any Firestore field values
  quiz1.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuiz1ListFirestoreData(
  List<Quiz1Struct>? quiz1s,
) =>
    quiz1s?.map((e) => getQuiz1FirestoreData(e, true)).toList() ?? [];
