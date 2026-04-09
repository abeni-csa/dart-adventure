class ApiEndpoints {
  static const String baseUrl = 'http://127.0.0.1:57000/api/v1';
  static String assessments(String orgId) => '/org/school/$orgId/assessments';
  static String marksBulk(String orgId) => '/org/school/$orgId/mark/bulk';
  static String markById(String orgId, String id) =>
      '/org/school/$orgId/mark/$id';
  static String marksByAssessment(String orgId) =>
      '/org/school/$orgId/mark/get_by_assessment';
  static String students(String orgId) => '/org/school/$orgId/students';
  static String subjects(String orgId) => '/org/school/$orgId/subjects';
}
