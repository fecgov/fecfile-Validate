import os

API_URL = os.environ.get('FEC_VALIDATE_URL', '127.0.0.1')
API_PORT = int(os.environ.get('PORT', 5000))

LANGUAGE_CODE = 'en-us'

#TIME_ZONE = 'UTC'
TIME_ZONE = "America/New_York"