import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomePageWidget() : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'Login_Page',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'RegistrationPage',
          path: '/registrationPage',
          builder: (context, params) => const RegistrationPageWidget(),
        ),
        FFRoute(
          name: 'Recovery_password',
          path: '/recoveryPassword',
          builder: (context, params) => const RecoveryPasswordWidget(),
        ),
        FFRoute(
          name: 'Home_page',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Uploading_data',
          path: '/uploadingData',
          builder: (context, params) => const UploadingDataWidget(),
        ),
        FFRoute(
          name: 'semesterpage_pr',
          path: '/semesterpagePr',
          builder: (context, params) => const SemesterpagePrWidget(),
        ),
        FFRoute(
          name: 'third_sem_practicals',
          path: '/thirdSemPracticals',
          builder: (context, params) => const ThirdSemPracticalsWidget(),
        ),
        FFRoute(
          name: 'semesterpage_studies',
          path: '/semesterpageStudies',
          builder: (context, params) => const SemesterpageStudiesWidget(),
        ),
        FFRoute(
          name: 'Department_study',
          path: '/departmentStudy',
          builder: (context, params) => const DepartmentStudyWidget(),
        ),
        FFRoute(
          name: 'third_sem_subject',
          path: '/thirdSemSubject',
          builder: (context, params) => const ThirdSemSubjectWidget(),
        ),
        FFRoute(
          name: 'Higher_studies',
          path: '/higherStudies',
          builder: (context, params) => const HigherStudiesWidget(),
        ),
        FFRoute(
          name: 'CW1_pr',
          path: '/cW1Pr',
          builder: (context, params) => const CW1PrWidget(),
        ),
        FFRoute(
          name: 'OS_pr',
          path: '/oSPr',
          builder: (context, params) => const OSPrWidget(),
        ),
        FFRoute(
          name: 'Fourth_sem_practical',
          path: '/fourthSemPractical',
          builder: (context, params) => const FourthSemPracticalWidget(),
        ),
        FFRoute(
          name: 'fifth_sem_practicals',
          path: '/fifthSemPracticals',
          builder: (context, params) => const FifthSemPracticalsWidget(),
        ),
        FFRoute(
          name: 'Sixth_sem_practicals',
          path: '/sixthSemPracticals',
          builder: (context, params) => const SixthSemPracticalsWidget(),
        ),
        FFRoute(
          name: 'Seventh_sem_practicals',
          path: '/seventhSemPracticals',
          builder: (context, params) => const SeventhSemPracticalsWidget(),
        ),
        FFRoute(
          name: 'DSPD_pr',
          path: '/dSPDPr',
          builder: (context, params) => const DSPDPrWidget(),
        ),
        FFRoute(
          name: 'DBMS_Pr',
          path: '/dBMSPr',
          builder: (context, params) => const DBMSPrWidget(),
        ),
        FFRoute(
          name: 'CW-2_pr',
          path: '/cW2Pr',
          builder: (context, params) => const CW2PrWidget(),
        ),
        FFRoute(
          name: 'DAA_pr',
          path: '/dAAPr',
          builder: (context, params) => const DAAPrWidget(),
        ),
        FFRoute(
          name: 'AI_pr',
          path: '/aIPr',
          builder: (context, params) => const AIPrWidget(),
        ),
        FFRoute(
          name: 'PS-1-pr',
          path: '/pS1Pr',
          builder: (context, params) => const PS1PrWidget(),
        ),
        FFRoute(
          name: 'third_studymaterial',
          path: '/thirdStudymaterial',
          builder: (context, params) => const ThirdStudymaterialWidget(),
        ),
        FFRoute(
          name: 'semesterpage_syllabus',
          path: '/semesterpageSyllabus',
          builder: (context, params) => const SemesterpageSyllabusWidget(),
        ),
        FFRoute(
          name: 'fourth_sem_subject',
          path: '/fourthSemSubject',
          builder: (context, params) => const FourthSemSubjectWidget(),
        ),
        FFRoute(
          name: 'fifth_sem_subject',
          path: '/fifthSemSubject',
          builder: (context, params) => const FifthSemSubjectWidget(),
        ),
        FFRoute(
          name: 'sixth_sem_subject',
          path: '/sixthSemSubject',
          builder: (context, params) => const SixthSemSubjectWidget(),
        ),
        FFRoute(
          name: 'eighth_sem_subject',
          path: '/eighthSemSubject',
          builder: (context, params) => const EighthSemSubjectWidget(),
        ),
        FFRoute(
          name: 'PS-2_pr',
          path: '/pS2Pr',
          builder: (context, params) => const PS2PrWidget(),
        ),
        FFRoute(
          name: 'CD_pr',
          path: '/cDPr',
          builder: (context, params) => const CDPrWidget(),
        ),
        FFRoute(
          name: 'Hardware_pr',
          path: '/hardwarePr',
          builder: (context, params) => const HardwarePrWidget(),
        ),
        FFRoute(
          name: 'seventh_sem_subject',
          path: '/seventhSemSubject',
          builder: (context, params) => const SeventhSemSubjectWidget(),
        ),
        FFRoute(
          name: 'OOPJ_Pr',
          path: '/oOPJPr',
          builder: (context, params) => const OOPJPrWidget(),
        ),
        FFRoute(
          name: 'GATE',
          path: '/gate',
          builder: (context, params) => const GateWidget(),
        ),
        FFRoute(
          name: 'placement01',
          path: '/placement01',
          builder: (context, params) => const Placement01Widget(),
        ),
        FFRoute(
          name: 'CompanyProfile',
          path: '/companyProfile',
          builder: (context, params) => CompanyProfileWidget(
            abc: params.getParam(
              'abc',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'CAT',
          path: '/cat',
          builder: (context, params) => const CatWidget(),
        ),
        FFRoute(
          name: 'TOEFL',
          path: '/toefl',
          builder: (context, params) => const ToeflWidget(),
        ),
        FFRoute(
          name: 'General_aptitude',
          path: '/generalAptitude',
          builder: (context, params) => const GeneralAptitudeWidget(),
        ),
        FFRoute(
          name: 'Verbal_aptitude',
          path: '/verbalAptitude',
          builder: (context, params) => const VerbalAptitudeWidget(),
        ),
        FFRoute(
          name: 'Coding_Aptitude',
          path: '/codingAptitude',
          builder: (context, params) => const CodingAptitudeWidget(),
        ),
        FFRoute(
          name: 'Coding_Questions',
          path: '/codingQuestions',
          builder: (context, params) => const CodingQuestionsWidget(),
        ),
        FFRoute(
          name: 'semesterpage_study',
          path: '/semesterpageStudy',
          builder: (context, params) => const SemesterpageStudyWidget(),
        ),
        FFRoute(
          name: 'fourth_studymaterial',
          path: '/fourthStudymaterial',
          builder: (context, params) => const FourthStudymaterialWidget(),
        ),
        FFRoute(
          name: 'sixth_studymateria',
          path: '/sixthStudymateria',
          builder: (context, params) => const SixthStudymateriaWidget(),
        ),
        FFRoute(
          name: 'seventh_studymateria',
          path: '/seventhStudymateria',
          builder: (context, params) => const SeventhStudymateriaWidget(),
        ),
        FFRoute(
          name: 'eigth_studymaterial',
          path: '/eigthStudymaterial',
          builder: (context, params) => const EigthStudymaterialWidget(),
        ),
        FFRoute(
          name: 'fifth_studymaterial',
          path: '/fifthStudymaterial',
          builder: (context, params) => const FifthStudymaterialWidget(),
        ),
        FFRoute(
          name: 'sixth_studymaterial',
          path: '/sixthStudymaterial',
          builder: (context, params) => const SixthStudymaterialWidget(),
        ),
        FFRoute(
          name: 'OS_pyq',
          path: '/oSPyq',
          builder: (context, params) => const OSPyqWidget(),
        ),
        FFRoute(
          name: 'fourth_syllabus',
          path: '/fourthSyllabus',
          builder: (context, params) => const FourthSyllabusWidget(),
        ),
        FFRoute(
          name: 'fifth_syllabus',
          path: '/fifthSyllabus',
          builder: (context, params) => const FifthSyllabusWidget(),
        ),
        FFRoute(
          name: 'third_syllabus',
          path: '/thirdSyllabus',
          builder: (context, params) => const ThirdSyllabusWidget(),
        ),
        FFRoute(
          name: 'sixth_syllabus',
          path: '/sixthSyllabus',
          builder: (context, params) => const SixthSyllabusWidget(),
        ),
        FFRoute(
          name: 'seventh_syllabusCopy',
          path: '/seventhSyllabusCopy',
          builder: (context, params) => const SeventhSyllabusCopyWidget(),
        ),
        FFRoute(
          name: 'eighth_syllabus',
          path: '/eighthSyllabus',
          builder: (context, params) => const EighthSyllabusWidget(),
        ),
        FFRoute(
          name: 'OS_Note',
          path: '/oSNote',
          builder: (context, params) => const OSNoteWidget(),
        ),
        FFRoute(
          name: 'OS_pyqCopy',
          path: '/oSPyqCopy',
          builder: (context, params) => const OSPyqCopyWidget(),
        ),
        FFRoute(
          name: 'OS_NoteC',
          path: '/oSNoteC',
          builder: (context, params) => const OSNoteCWidget(),
        ),
        FFRoute(
          name: 'project_ideas',
          path: '/projectIdeas',
          builder: (context, params) => const ProjectIdeasWidget(),
        ),
        FFRoute(
          name: 'CD_notes',
          path: '/cDNotes',
          builder: (context, params) => const CDNotesWidget(),
        ),
        FFRoute(
          name: 'EITI_notes',
          path: '/eITINotes',
          builder: (context, params) => const EITINotesWidget(),
        ),
        FFRoute(
          name: 'ML_notes',
          path: '/mLNotes',
          builder: (context, params) => const MLNotesWidget(),
        ),
        FFRoute(
          name: 'IPR_notes',
          path: '/iPRNotes',
          builder: (context, params) => const IPRNotesWidget(),
        ),
        FFRoute(
          name: 'DS_notes',
          path: '/dSNotes',
          builder: (context, params) => const DSNotesWidget(),
        ),
        FFRoute(
          name: 'CCC_notes',
          path: '/cCCNotes',
          builder: (context, params) => const CCCNotesWidget(),
        ),
        FFRoute(
          name: 'IOT_notes',
          path: '/iOTNotes',
          builder: (context, params) => const IOTNotesWidget(),
        ),
        FFRoute(
          name: 'DOS_notes',
          path: '/dOSNotes',
          builder: (context, params) => const DOSNotesWidget(),
        ),
        FFRoute(
          name: 'LinuxFundamentals_notes',
          path: '/linuxFundamentalsNotes',
          builder: (context, params) => const LinuxFundamentalsNotesWidget(),
        ),
        FFRoute(
          name: 'AAD_notesCopy',
          path: '/aADNotesCopy',
          builder: (context, params) => const AADNotesCopyWidget(),
        ),
        FFRoute(
          name: 'BT_notes',
          path: '/bTNotes',
          builder: (context, params) => const BTNotesWidget(),
        ),
        FFRoute(
          name: 'OS_notes',
          path: '/oSNotes',
          builder: (context, params) => const OSNotesWidget(),
        ),
        FFRoute(
          name: 'UHV_Note',
          path: '/uHVNote',
          builder: (context, params) => const UHVNoteWidget(),
        ),
        FFRoute(
          name: 'EIT_Note',
          path: '/eITNote',
          builder: (context, params) => const EITNoteWidget(),
        ),
        FFRoute(
          name: 'OOPJ_Notes',
          path: '/oOPJNotes',
          builder: (context, params) => const OOPJNotesWidget(),
        ),
        FFRoute(
          name: 'CADS_Notes',
          path: '/cADSNotes',
          builder: (context, params) => const CADSNotesWidget(),
        ),
        FFRoute(
          name: 'DMGT_notes',
          path: '/dMGTNotes',
          builder: (context, params) => const DMGTNotesWidget(),
        ),
        FFRoute(
          name: 'DSPD_notes',
          path: '/dSPDNotes',
          builder: (context, params) => const DSPDNotesWidget(),
        ),
        FFRoute(
          name: 'DBMS_notes',
          path: '/dBMSNotes',
          builder: (context, params) => const DBMSNotesWidget(),
        ),
        FFRoute(
          name: 'TOC_notes',
          path: '/tOCNotes',
          builder: (context, params) => const TOCNotesWidget(),
        ),
        FFRoute(
          name: 'CN_Notes',
          path: '/cNNotes',
          builder: (context, params) => const CNNotesWidget(),
        ),
        FFRoute(
          name: 'SP_Notes',
          path: '/sPNotes',
          builder: (context, params) => const SPNotesWidget(),
        ),
        FFRoute(
          name: 'AI_notes',
          path: '/aINotes',
          builder: (context, params) => const AINotesWidget(),
        ),
        FFRoute(
          name: 'SEPM_notes',
          path: '/sEPMNotes',
          builder: (context, params) => const SEPMNotesWidget(),
        ),
        FFRoute(
          name: 'DAA_notes',
          path: '/dAANotes',
          builder: (context, params) => const DAANotesWidget(),
        ),
        FFRoute(
          name: 'ETC_notes',
          path: '/eTCNotes',
          builder: (context, params) => const ETCNotesWidget(),
        ),
        FFRoute(
          name: 'DWM_notes',
          path: '/dWMNotes',
          builder: (context, params) => const DWMNotesWidget(),
        ),
        FFRoute(
          name: 'TCP-IP_notes',
          path: '/tCPIPNotes',
          builder: (context, params) => const TCPIPNotesWidget(),
        ),
        FFRoute(
          name: 'DP_notes',
          path: '/dPNotes',
          builder: (context, params) => const DPNotesWidget(),
        ),
        FFRoute(
          name: 'CNS_notes',
          path: '/cNSNotes',
          builder: (context, params) => const CNSNotesWidget(),
        ),
        FFRoute(
          name: 'DP_notesC',
          path: '/dPNotesC',
          builder: (context, params) => const DPNotesCWidget(),
        ),
        FFRoute(
          name: 'OT_notes',
          path: '/oTNotes',
          builder: (context, params) => const OTNotesWidget(),
        ),
        FFRoute(
          name: 'GA_notes',
          path: '/gANotes',
          builder: (context, params) => const GANotesWidget(),
        ),
        FFRoute(
          name: 'NLP_notes',
          path: '/nLPNotes',
          builder: (context, params) => const NLPNotesWidget(),
        ),
        FFRoute(
          name: 'BDA_notes',
          path: '/bDANotes',
          builder: (context, params) => const BDANotesWidget(),
        ),
        FFRoute(
          name: 'MC_notes',
          path: '/mCNotes',
          builder: (context, params) => const MCNotesWidget(),
        ),
        FFRoute(
          name: 'python_notes',
          path: '/pythonNotes',
          builder: (context, params) => const PythonNotesWidget(),
        ),
        FFRoute(
          name: 'JAVA_notes',
          path: '/jAVANotes',
          builder: (context, params) => const JAVANotesWidget(),
        ),
        FFRoute(
          name: 'BasicsofDBMS_notes',
          path: '/basicsofDBMSNotes',
          builder: (context, params) => const BasicsofDBMSNotesWidget(),
        ),
        FFRoute(
          name: 'Third_pyq',
          path: '/thirdPyq',
          builder: (context, params) => const ThirdPyqWidget(),
        ),
        FFRoute(
          name: 'fourth_pyq',
          path: '/fourthPyq',
          builder: (context, params) => const FourthPyqWidget(),
        ),
        FFRoute(
          name: 'fifth_pyq',
          path: '/fifthPyq',
          builder: (context, params) => const FifthPyqWidget(),
        ),
        FFRoute(
          name: 'sixth_pyq',
          path: '/sixthPyq',
          builder: (context, params) => const SixthPyqWidget(),
        ),
        FFRoute(
          name: 'Seventh_pyq',
          path: '/seventhPyq',
          builder: (context, params) => const SeventhPyqWidget(),
        ),
        FFRoute(
          name: 'M-3_notes',
          path: '/m3Notes',
          builder: (context, params) => const M3NotesWidget(),
        ),
        FFRoute(
          name: 'SN_Note',
          path: '/sNNote',
          builder: (context, params) => const SNNoteWidget(),
        ),
        FFRoute(
          name: 'RL_Note',
          path: '/rLNote',
          builder: (context, params) => const RLNoteWidget(),
        ),
        FFRoute(
          name: 'GPU_Note',
          path: '/gPUNote',
          builder: (context, params) => const GPUNoteWidget(),
        ),
        FFRoute(
          name: 'PredictiveAnalysis_Note',
          path: '/predictiveAnalysisNote',
          builder: (context, params) => const PredictiveAnalysisNoteWidget(),
        ),
        FFRoute(
          name: 'Blockchain_Note',
          path: '/blockchainNote',
          builder: (context, params) => const BlockchainNoteWidget(),
        ),
        FFRoute(
          name: 'CV_Notes',
          path: '/cVNotes',
          builder: (context, params) => const CVNotesWidget(),
        ),
        FFRoute(
          name: 'signout',
          path: '/signout',
          builder: (context, params) => const SignoutWidget(),
        ),
        FFRoute(
          name: 'Profile15',
          path: '/profile15',
          builder: (context, params) => const Profile15Widget(),
        ),
        FFRoute(
          name: 'POs',
          path: '/pOs',
          builder: (context, params) => const POsWidget(),
        ),
        FFRoute(
          name: 'QuizScore',
          path: '/quizScore',
          builder: (context, params) => QuizScoreWidget(
            quizscore: params.getParam(
              'quizscore',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'QuizSet',
          path: '/quizSet',
          builder: (context, params) => const QuizSetWidget(),
        ),
        FFRoute(
          name: 'codingprblm',
          path: '/codingprblm',
          builder: (context, params) => const CodingprblmWidget(),
        ),
        FFRoute(
          name: 'Coding_notes',
          path: '/codingnotes',
          builder: (context, params) => const CodingNotesWidget(),
        ),
        FFRoute(
          name: 'Quiz5',
          path: '/quiz5',
          builder: (context, params) => const Quiz5Widget(),
        ),
        FFRoute(
          name: 'Quiz5Copy',
          path: '/quiz5Copy',
          builder: (context, params) => const Quiz5CopyWidget(),
        ),
        FFRoute(
          name: 'Quiz4',
          path: '/quiz4',
          builder: (context, params) => const Quiz4Widget(),
        ),
        FFRoute(
          name: 'Quiz2',
          path: '/quiz2',
          builder: (context, params) => const Quiz2Widget(),
        ),
        FFRoute(
          name: 'Quiz1',
          path: '/quiz1',
          builder: (context, params) => const Quiz1Widget(),
        ),
        FFRoute(
          name: 'NotificationPg',
          path: '/notificationPg',
          builder: (context, params) => const NotificationPgWidget(),
        ),
        FFRoute(
          name: 'StdUploadedData',
          path: '/stdUploadedData',
          builder: (context, params) => const StdUploadedDataWidget(),
        ),
        FFRoute(
          name: 'Quiz3',
          path: '/quiz3',
          builder: (context, params) => const Quiz3Widget(),
        ),
        FFRoute(
          name: 'Department_prac',
          path: '/departmentPrac',
          builder: (context, params) => const DepartmentPracWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
