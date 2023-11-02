enum Role {
  admin,
  batch,
}

enum WebSocketStatus {
  initial,
  connecting,
  connected,
  disconnected,
  connectionTimeout,
  joined,
  connectionError,
  error,
}

const kApiBaseUrl = 'http://192.168.117.218:3000';
