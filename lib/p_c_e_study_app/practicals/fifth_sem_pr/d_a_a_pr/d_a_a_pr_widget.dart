import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'd_a_a_pr_model.dart';
export 'd_a_a_pr_model.dart';

class DAAPrWidget extends StatefulWidget {
  const DAAPrWidget({super.key});

  @override
  State<DAAPrWidget> createState() => _DAAPrWidgetState();
}

class _DAAPrWidgetState extends State<DAAPrWidget> {
  late DAAPrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DAAPrModel());

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
                      'DAA  Practical',
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 30.0, 0.0, 30.0),
                        child: FlutterFlowPdfViewer(
                          networkPath:
                              'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/practicals%2F5th%2FDAA%20lab%20manual.pdf?alt=media&token=309b6a5d-7273-4606-8c00-8c2e82e8a826',
                          height: 547.0,
                          horizontalScroll: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: FlutterFlowYoutubePlayer(
                          url:
                              'https://www.youtube.com/watch?v=mO5BHSx5riE&list=PLBBGwIiUvNPBjVIM0cHOge6uxBj4PH9Dq',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
