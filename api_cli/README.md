# API Client Script

A simple command-line tool for making REST API requests with automatic token management.

## Quick Start

```bash
# Make the script executable
chmod +x api.sh

# Set your API base URL
export API_BASE_URL="https://your-api.example.com"

# Save your token
echo "your-access-token" > ~/.accessToken

# Make requests
./api.sh GET /api/v1/releases
./api.sh POST /api/v1/releases '{"name":"my-release"}'
```

## Usage

```bash
./api.sh [options] <method> <endpoint> [json-data]
```

## Options

- `--help` - Show help message
- `--token-help` - Show token setup guide
- `--refresh-token` - Get new token before request
- `--force-auth` - Add auth header to GET requests
- `--save <file>` - Save response to file
- `--show-token` - Display current token
- `--check-token` - Validate token

## Examples

```bash
# Basic requests
./api.sh GET /api/v1/health
./api.sh POST /api/v1/releases '{"name":"v1.0.0"}'
./api.sh PUT /api/v1/releases/my-release '{"status":"completed"}'
./api.sh DELETE /api/v1/releases/my-release

# With options
./api.sh --refresh-token POST /api/v1/releases '{"name":"new-release"}'
./api.sh --save releases.json GET /api/v1/releases
./api.sh --force-auth GET /api/v1/private/data
```

## Token Management

The script automatically:
- Uses tokens for POST/PUT/DELETE/PATCH requests
- Skips tokens for GET requests (use `--force-auth` if needed)
- Reads tokens from `~/.accessToken`

## Environment Variables

- `API_BASE_URL` - Base API URL (default: http://localhost:8080)
- `API_USERNAME` - Username for token refresh
- `API_PASSWORD` - Password for token refresh