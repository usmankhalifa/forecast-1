import 'package:flutter/material.dart';
import 'package:forecast/data/models/place_search_result_model.dart'
    as placeSearch;
import 'package:forecast/domain/usecases/find_loaction_from_text.dart';
import 'package:location/location.dart';

class LocationProvider extends ChangeNotifier {
  LocationProvider(
      {required this.location, required this.findLocationFromText});
  FindLocationFromText findLocationFromText;
  Location location;
  bool _isPermissionGranted = false;
  bool get isPermissionGranted => _isPermissionGranted;

  bool _isCheckingPermission = true;
  bool get isCheckingPermission => _isCheckingPermission;

  bool _isSearchingLocation = false;
  bool get isSearchingLocation => _isSearchingLocation;

  bool _errorSearching = false;
  bool get errorSearching => _errorSearching;

  List<placeSearch.Place>? searchResult;

  Future<void> checkPermission() async {
    _isCheckingPermission = true;
    notifyListeners();

    bool _serviceEnabled;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    requestPermission().then((value) {
      _isPermissionGranted = value;
      _isCheckingPermission = false;
      notifyListeners();
    });
  }

  Future<bool> requestPermission() async {
    PermissionStatus _permissionGranted;
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return false;
      }
      return true;
    }
    return true;
  }

  Future<LocationData?> getLocation() async {
    if (_isPermissionGranted == true) {
      return location.getLocation();
    }
    return null;
  }

  Future<void> searchLocation(String query) async {
    _isSearchingLocation = true;
    _errorSearching = false;
    notifyListeners();

    try {
      placeSearch.PlaceSearchResult result = await findLocationFromText.call(
          params: FindLocationFromTextParams(query: query));
      searchResult = result.candidates;
      _isSearchingLocation = false;
      notifyListeners();
    } catch (err) {
      print(err);
      _isSearchingLocation = false;
      _errorSearching = true;
      notifyListeners();
    }
  }
}
