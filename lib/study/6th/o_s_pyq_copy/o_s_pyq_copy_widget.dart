import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'o_s_pyq_copy_model.dart';
export 'o_s_pyq_copy_model.dart';

class OSPyqCopyWidget extends StatefulWidget {
  const OSPyqCopyWidget({super.key});

  @override
  State<OSPyqCopyWidget> createState() => _OSPyqCopyWidgetState();
}

class _OSPyqCopyWidgetState extends State<OSPyqCopyWidget> {
  late OSPyqCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OSPyqCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          phone: false,
        )
            ? PreferredSize(
                preferredSize: const Size.fromHeight(90.0),
                child: AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  automaticallyImplyLeading: false,
                  title: Text(
                    'Operating System',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  actions: const [],
                  centerTitle: false,
                  elevation: 2.0,
                ),
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 40.0, 25.0, 0.0),
                          child: Container(
                            width: 418.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          40.0, 20.0, 0.0, 0.0),
                                      child: Text(
                                        'Session  2022-2023',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            5.0, 20.0, 0.0, 10.0),
                        child: Container(
                          width: 365.0,
                          height: 515.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          child: const FlutterFlowPdfViewer(
                            networkPath:
                                'https://firebasestorage.googleapis.com/v0/b/p-c-e-study-app-ocfg7z.appspot.com/o/project%2FCSE%20Project%20Groups%20and%20guides%2023-24_compressed.pdf?alt=media&token=36fdcd9e-415d-4e18-aa8b-11a30c465252',
                            height: 390.0,
                            horizontalScroll: false,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
