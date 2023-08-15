class Location {
  final double lat;
  final double lng;

  Location(this.lat, this.lng);
}


class LocationConstant {
  final double latConst;
  final double lngConst;

  const LocationConstant(this.latConst, this.lngConst);
}
void main(List<String> args) {
  final locationOne   = new Location(18.2323, 39.900);
  final locationTwo   = new Location(18.2323, 39.901);
  final locationThree = new Location(18.2323, 39.901);

  print(locationOne == locationTwo); // Falso
  print(locationTwo == locationThree); // Falso se crean en instancias diferentes

  const locationOneConst   = const LocationConstant(18.2323, 39.900);
  const locationTwoConst   = const LocationConstant(18.2323, 39.901);
  const locationThreeConst = const LocationConstant(18.2323, 39.901);

  print(locationOneConst == locationTwoConst); // Falso
  print(locationTwoConst == locationThreeConst); // true mismo lugar en memoria
}