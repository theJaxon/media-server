# media-server

```bash
# Reach Jackett
http://jackett:9117/torznab/all

# qbittorrent login
The default username/password is admin/adminadmin

# Install prowlarr (dot refers to the dir where Chart.yaml exists)
helm install prowlarr -n media-server --values values.yaml --values manifests/prowlarr/values.yaml .

```