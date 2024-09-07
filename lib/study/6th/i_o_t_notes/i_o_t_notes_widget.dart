import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'i_o_t_notes_model.dart';
export 'i_o_t_notes_model.dart';

class IOTNotesWidget extends StatefulWidget {
  const IOTNotesWidget({super.key});

  @override
  State<IOTNotesWidget> createState() => _IOTNotesWidgetState();
}

class _IOTNotesWidgetState extends State<IOTNotesWidget> {
  late IOTNotesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IOTNotesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: responsiveVisibility(
        context: context,
        phone: false,
      )
          ? PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pop();
                  },
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 32.0,
                  ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              ),
            )
          : null,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(25.0, 40.0, 25.0, 0.0),
                  child: Container(
                    width: 418.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                  30.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Internet of Things',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 33.0,
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
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 40.0, 5.0, 10.0),
              child: Container(
                width: 418.0,
                height: 538.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    width: 3.0,
                  ),
                ),
                child: const FlutterFlowPdfViewer(
                  networkPath:
                      'https://kp.kiit.ac.in/pdf_files/06/SM_6th-Sem__Cse_Internet-of-Things.pdf',
                  height: 488.0,
                  horizontalScroll: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
