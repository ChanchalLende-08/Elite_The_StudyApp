import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'hardware_pr_model.dart';
export 'hardware_pr_model.dart';

class HardwarePrWidget extends StatefulWidget {
  const HardwarePrWidget({super.key});

  @override
  State<HardwarePrWidget> createState() => _HardwarePrWidgetState();
}

class _HardwarePrWidgetState extends State<HardwarePrWidget> {
  late HardwarePrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HardwarePrModel());

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
                      'Hardware Practical',
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 30.0),
                            child: FlutterFlowPdfViewer(
                              networkPath:
                                  'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/practicals%2F6th%2Fhardware_lab.pdf?alt=media&token=de5dfffe-0e02-4eee-994f-661f7e3124c9',
                              height: 590.0,
                              horizontalScroll: false,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 20.0),
                        child: FlutterFlowYoutubePlayer(
                          url:
                              'https://www.youtube.com/watch?v=KOa1aVijhao&list=PLgWjD_CBfh0D87ar_BLRKG_WXeiNHgtuc&pp=iAQB',
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
