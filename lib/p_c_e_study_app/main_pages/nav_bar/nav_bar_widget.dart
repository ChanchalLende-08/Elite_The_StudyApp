import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).primaryBackground
            ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(1.0, -0.98),
            end: const AlignmentDirectional(-1.0, 0.98),
          ),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0xFF1F08F5),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: FlutterFlowTheme.of(context).info,
                  icon: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Home_page');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0xFF1F08F5),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: FlutterFlowTheme.of(context).info,
                  icon: Icon(
                    Icons.notification_add,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('NotificationPg');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0xFF1F08F5),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: FlutterFlowTheme.of(context).info,
                  icon: Icon(
                    Icons.upload_file,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Uploading_data');
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0xFF1F08F5),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: FlutterFlowTheme.of(context).info,
                  icon: Icon(
                    Icons.person_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Profile15');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
