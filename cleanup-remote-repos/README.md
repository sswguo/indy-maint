# With Bearer token
```
./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token=your-bearer-token
```

# From environment variable (more secure)
```
export AUTH_TOKEN="your-bearer-token"
./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token="$AUTH_TOKEN"
```

# Dry run with token to see what would be called
```
./filter-repos.sh maven-remote-repo.json --post-url=http://localhost:8080 --token=abc123xyz --dry-run
```

# Complete example with all options
```
./filter-repos.sh maven-remote-repo.json \
  --post-url=http://indy-host.url \
  --post-endpoint=/api/admin/stores \
  --token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9... \
  --fields=name,type,format \
  --dry-run
```
