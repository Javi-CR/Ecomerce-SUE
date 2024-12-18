import '/flutter_flow/flutter_flow_util.dart';
import 'edit_products_widget.dart' show EditProductsWidget;
import 'package:flutter/material.dart';

class EditProductsModel extends FlutterFlowModel<EditProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Agrega un nombre';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  String? _descripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Agrega una descripción';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for precio widget.
  FocusNode? precioFocusNode;
  TextEditingController? precioTextController;
  String? Function(BuildContext, String?)? precioTextControllerValidator;
  String? _precioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Agrega un precio';
    }

    if (val.length < 3) {
      return 'Al menos 3 caracteres';
    }

    return null;
  }

  // State field(s) for Cantidad widget.
  FocusNode? cantidadFocusNode;
  TextEditingController? cantidadTextController;
  String? Function(BuildContext, String?)? cantidadTextControllerValidator;
  // State field(s) for img widget.
  FocusNode? imgFocusNode;
  TextEditingController? imgTextController;
  String? Function(BuildContext, String?)? imgTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    descripcionTextControllerValidator = _descripcionTextControllerValidator;
    precioTextControllerValidator = _precioTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    precioFocusNode?.dispose();
    precioTextController?.dispose();

    cantidadFocusNode?.dispose();
    cantidadTextController?.dispose();

    imgFocusNode?.dispose();
    imgTextController?.dispose();
  }
}
