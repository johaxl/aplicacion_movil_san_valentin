int diasJuntos() {
  final fechaInicio = DateTime(2025, 06, 14);
  final hoy = DateTime.now();
  return hoy.difference(fechaInicio).inDays;
}
