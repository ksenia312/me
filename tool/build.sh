cd ../
source .env
export $(cut -d= -f1 .env)

fvm flutter build web --wasm --source-maps \
--no-tree-shake-icons \
--dart-define=API_KEY="$API_KEY" \
--dart-define=APP_ID="$APP_ID" \
--dart-define=MESSAGING_SENDER_ID="$MESSAGING_SENDER_ID" \
--dart-define=PROJECT_ID="$PROJECT_ID" \
--dart-define=AUTH_DOMAIN="$AUTH_DOMAIN" \
--dart-define=STORAGE_BUCKET="$STORAGE_BUCKET" \
--dart-define=MEASUREMENT_ID="$MEASUREMENT_ID"