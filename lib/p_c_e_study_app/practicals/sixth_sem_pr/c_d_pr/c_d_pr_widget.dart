import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'c_d_pr_model.dart';
export 'c_d_pr_model.dart';

class CDPrWidget extends StatefulWidget {
  const CDPrWidget({super.key});

  @override
  State<CDPrWidget> createState() => _CDPrWidgetState();
}

class _CDPrWidgetState extends State<CDPrWidget> {
  late CDPrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CDPrModel());

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
                      'Compiler Design Practical',
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: FlutterFlowPdfViewer(
                                  networkPath:
                                      'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/practicals%2F6th%2FCD_LabManual_compressed%20(1).pdf?alt=media&token=8283dc9a-e4a6-4872-a93a-94db499cc564',
                                  height: 590.0,
                                  horizontalScroll: false,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 0.0, 0.0, 20.0),
                            child: FlutterFlowYoutubePlayer(
                              url:
                                  'https://www.youtube.com/watch?v=dF98aF1PRLs&list=PL3PceBG-tF7YVkWEFXO_wZthVscerLGtF',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
