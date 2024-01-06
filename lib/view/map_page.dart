import 'package:mapproject/allpackages.dart';

BitmapDescriptor? markerIcon;

class MapPage extends StatefulWidget {
  const MapPage(
      {super.key,
      this.lat1,
      this.long1,
      this.lat2,
      this.long2,
      this.lat3,
      this.long3,
      this.lat4,
      this.long4,
      this.lat5,
      this.long5});
  final String? lat1;
  final String? long1;
  final String? lat2;
  final String? long2;
  final String? lat3;
  final String? long3;
  final String? lat4;
  final String? long4;
  final String? lat5;
  final String? long5;
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController? mapController;
  List<LatLng> polylineCoordinates = [];
  @override
  void initState() {
    // _onMapCreated(mapController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'MapView',
          style: toptitleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.0.hp,
              width: 100.0.wp,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _Markers(),
                polylines: {
                  Polyline(
                    width: 8,
                    polylineId: PolylineId('polyline'),
                    color: Colors.blue,
                    points: polylineCoordinates,
                  ),
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 9.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onMapCreated(GoogleMapController? controller) {
    setState(() {
      mapController = controller;
      _addPolyline();
    });
  }

  Set<Marker> _Markers() {
    return {
      Marker(
          markerId: MarkerId('1'),
          position:
              LatLng(double.parse(widget.lat1!), double.parse(widget.long1!)),
          infoWindow: InfoWindow(
            title: 'active',
          )),
      Marker(
          markerId: MarkerId('2'),
          position:
              LatLng(double.parse(widget.lat2!), double.parse(widget.long2!)),
          infoWindow: InfoWindow(
            title: 'InActive',
          )),
      Marker(
        markerId: MarkerId('3'),
        position:
            LatLng(double.parse(widget.lat3!), double.parse(widget.long3!)),
        infoWindow: InfoWindow(
          title: 'Cancelled',
        ),
      ),
      Marker(
          markerId: MarkerId('4'),
          position:
              LatLng(double.parse(widget.lat4!), double.parse(widget.long4!)),
          infoWindow: InfoWindow(
            title: 'Closed',
          )),
      Marker(
          markerId: MarkerId('5'),
          position:
              LatLng(double.parse(widget.lat5!), double.parse(widget.long5!)),
          infoWindow: InfoWindow(
            title: 'Location 5',
          )),
    };
  }

  void _addPolyline() {
    LatLng result1 = LatLng(
      double.parse(widget.lat1!),
      double.parse(widget.long1!),
    );
    LatLng result2 =
        LatLng(double.parse(widget.lat2!), double.parse(widget.long2!));
    LatLng result3 =
        LatLng(double.parse(widget.lat3!), double.parse(widget.lat3!));
    LatLng result4 =
        LatLng(double.parse(widget.lat4!), double.parse(widget.long4!));
    LatLng result5 =
        LatLng(double.parse(widget.lat5!), double.parse(widget.long5!));

    polylineCoordinates = [result1, result2, result3, result4, result5];

    mapController!.animateCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
          southwest: result1,
          northeast: result1,
        ),
        100.0, // Padding to adjust the polyline bounds
      ),
    );
  }
}
