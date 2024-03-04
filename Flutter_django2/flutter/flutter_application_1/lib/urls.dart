class ApiUrls {
  static const String baseUrl = 'http://127.0.0.1:8000';

  static Uri retrieveUrl() => Uri.parse(baseUrl + '/notes/');
  static Uri deleteUrl(id) => Uri.parse(baseUrl + '/notes/'+id+'/delete');
  // Add more endpoints as needed
}
