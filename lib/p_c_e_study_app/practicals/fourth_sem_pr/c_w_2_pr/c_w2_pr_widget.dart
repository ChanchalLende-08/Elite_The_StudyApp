import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'c_w2_pr_model.dart';
export 'c_w2_pr_model.dart';

class CW2PrWidget extends StatefulWidget {
  const CW2PrWidget({super.key});

  @override
  State<CW2PrWidget> createState() => _CW2PrWidgetState();
}

class _CW2PrWidgetState extends State<CW2PrWidget> {
  late CW2PrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CW2PrModel());

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
                      'Computer Workshop-2 Practical',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 25.0,
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
                            'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/practicals%2F4rth%2FCLAB%20II%20python%20practical.pdf?alt=media&token=96210d75-683b-42e5-a7d8-317cc0d50442',
                        height: 590.0,
                        horizontalScroll: false,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 30.0),
                    child: FlutterFlowYoutubePlayer(
                      url:
                          'https://www.youtube.com/watch?v=78FsbjYSWIU&list=PLjVLYmrlmjGf3jtxG8lSo-zaPktQ7YbUw',
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
