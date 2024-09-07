import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'd_b_m_s_pr_model.dart';
export 'd_b_m_s_pr_model.dart';

class DBMSPrWidget extends StatefulWidget {
  const DBMSPrWidget({super.key});

  @override
  State<DBMSPrWidget> createState() => _DBMSPrWidgetState();
}

class _DBMSPrWidgetState extends State<DBMSPrWidget> {
  late DBMSPrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DBMSPrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          appBar: responsiveVisibility(
            context: context,
            phone: false,
          )
              ? AppBar(
                  backgroundColor: const Color(0xFF250DE8),
                  automaticallyImplyLeading: false,
                  title: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'DBMS Practical',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  actions: const [],
                  centerTitle: false,
                  elevation: 2.0,
                )
              : null,
          body: const SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowPdfViewer(
                        networkPath:
                            'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/practicals%2F4rth%2FDBMS_Lab.pdf?alt=media&token=2e196f13-befa-49b3-b719-80f9aedb1a41',
                        height: 590.0,
                        horizontalScroll: false,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 20.0),
                    child: FlutterFlowYoutubePlayer(
                      url:
                          'https://www.youtube.com/watch?v=BAnyziSePLY&list=PLntWJh8vyudcLnbHhfW61DOMPQ_mfKr7A',
                      autoPlay: false,
                      looping: true,
                      mute: false,
                      showControls: true,
                      showFullScreen: true,
                      strictRelatedVideos: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
