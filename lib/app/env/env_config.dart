class EnvConfig {
  static const apiKey = String.fromEnvironment('API_KEY');
  static const appId = String.fromEnvironment('APP_ID');
  static const messagingSenderId = String.fromEnvironment(
    'MESSAGING_SENDER_ID',
  );
  static const projectId = String.fromEnvironment('PROJECT_ID');
  static const authDomain = String.fromEnvironment('AUTH_DOMAIN');
  static const storageBucket = String.fromEnvironment('STORAGE_BUCKET');
  static const measurementId = String.fromEnvironment('MEASUREMENT_ID');
}
