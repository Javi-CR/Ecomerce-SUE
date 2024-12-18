import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturacionRecord extends FirestoreRecord {
  FacturacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "products" field.
  DocumentReference? _products;
  DocumentReference? get products => _products;
  bool hasProducts() => _products != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "userN" field.
  String? _userN;
  String get userN => _userN ?? '';
  bool hasUserN() => _userN != null;

  // "direct" field.
  LatLng? _direct;
  LatLng? get direct => _direct;
  bool hasDirect() => _direct != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _products = snapshotData['products'] as DocumentReference?;
    _estado = snapshotData['estado'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _userN = snapshotData['userN'] as String?;
    _direct = snapshotData['direct'] as LatLng?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Facturacion');

  static Stream<FacturacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturacionRecord.fromSnapshot(s));

  static Future<FacturacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturacionRecord.fromSnapshot(s));

  static FacturacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturacionRecordData({
  DocumentReference? user,
  DateTime? fecha,
  DocumentReference? products,
  String? estado,
  double? precio,
  String? userN,
  LatLng? direct,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'fecha': fecha,
      'products': products,
      'estado': estado,
      'precio': precio,
      'userN': userN,
      'direct': direct,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturacionRecordDocumentEquality implements Equality<FacturacionRecord> {
  const FacturacionRecordDocumentEquality();

  @override
  bool equals(FacturacionRecord? e1, FacturacionRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.fecha == e2?.fecha &&
        e1?.products == e2?.products &&
        e1?.estado == e2?.estado &&
        e1?.precio == e2?.precio &&
        e1?.userN == e2?.userN &&
        e1?.direct == e2?.direct &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(FacturacionRecord? e) => const ListEquality().hash([
        e?.user,
        e?.fecha,
        e?.products,
        e?.estado,
        e?.precio,
        e?.userN,
        e?.direct,
        e?.cantidad
      ]);

  @override
  bool isValidKey(Object? o) => o is FacturacionRecord;
}
