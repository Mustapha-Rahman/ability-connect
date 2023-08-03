// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'text_to_sign_model.dart';
// export 'text_to_sign_model.dart';

// class TextToSignWidget extends StatefulWidget {
//   const TextToSignWidget({Key? key}) : super(key: key);

//   @override
//   _TextToSignWidgetState createState() => _TextToSignWidgetState();
// }

// class _TextToSignWidgetState extends State<TextToSignWidget> {
//   late TextToSignModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => TextToSignModel());

//     _model.textController ??= TextEditingController();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(-0.85, 0.23),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                     child: InkWell(
//                       splashColor: Colors.transparent,
//                       focusColor: Colors.transparent,
//                       hoverColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onTap: () async {
//                         context.safePop();
//                       },
//                       child: Icon(
//                         Icons.arrow_back_rounded,
//                         color: FlutterFlowTheme.of(context).secondaryText,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Align(
//                         alignment: AlignmentDirectional(-1, 0),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                           child: Text(
//                             'Speech and Text',
//                             textAlign: TextAlign.start,
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyMedium
//                                 .override(
//                                   fontFamily: 'Readex Pro',
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(-1, 0),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//                           child: Text(
//                             'Interpretation',
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyMedium
//                                 .override(
//                                   fontFamily: 'Roboto',
//                                   color: FlutterFlowTheme.of(context).warning,
//                                   fontSize: 23,
//                                   letterSpacing: 0.5,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                   child: Container(
//                     width: 339,
//                     height: 234,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(8, 25, 8, 0),
//                   child: TextFormField(
//                     controller: _model.textController,
//                     autofocus: true,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       labelText: '     Enter text here...',
//                       labelStyle:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                                 fontFamily: 'Readex Pro',
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.normal,
//                               ),
//                       hintStyle: FlutterFlowTheme.of(context).labelMedium,
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).alternate,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).primary,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       errorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).error,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedErrorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).error,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     style: FlutterFlowTheme.of(context).bodyMedium,
//                     textAlign: TextAlign.center,
//                     validator:
//                         _model.textControllerValidator.asValidator(context),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                     child: FFButtonWidget(
//                       onPressed: () {
//                         print('Button pressed ...');
//                       },
//                       text: 'Record Voice',
//                       options: FFButtonOptions(
//                         width: 176,
//                         height: 51,
//                         padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         color: FlutterFlowTheme.of(context).warning,
//                         textStyle: FlutterFlowTheme.of(context).titleLarge,
//                         elevation: 3,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                   child: Container(
//                     height: 291,
//                     child: Stack(
//                       children: [
//                         Align(
//                           alignment: AlignmentDirectional(0, 0.81),
//                           child: Container(
//                             width: 388,
//                             height: 239,
//                             decoration: BoxDecoration(
//                               color: FlutterFlowTheme.of(context).warning,
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(-0.01, -0.86),
//                           child: FlutterFlowIconButton(
//                             borderColor:
//                                 FlutterFlowTheme.of(context).primaryText,
//                             borderRadius: 70,
//                             buttonSize: 70,
//                             fillColor: FlutterFlowTheme.of(context).primaryText,
//                             icon: Icon(
//                               Icons.play_arrow_rounded,
//                               color: FlutterFlowTheme.of(context).warning,
//                               size: 50,
//                             ),
//                             onPressed: () {
//                               print('IconButton pressed ...');
//                             },
//                           ),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(-0.01, -0.15),
//                           child: Text(
//                             'Convert to Sign Language',
//                             style: FlutterFlowTheme.of(context)
//                                 .bodyMedium
//                                 .override(
//                                   fontFamily: 'Readex Pro',
//                                   fontSize: 20,
//                                 ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
