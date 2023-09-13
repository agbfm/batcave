# Dockerised services

## Routing

For now, a Cloudflare tunnel is used as a reverse proxy to make these services public to their specific subdomains. Some basic commands to get things up and running are below.

**Configure the tunnel**

To modify the cloudflared tunnel config:

```bash
nano ~/.cloudflared/config.yaml
```

The config should look something like this:

```yaml
tunnel: abcdefgh-ijkl-mnop-qrst-uvwxyz012345
credentials-file: ~/.cloudflared/abcdefgh-ijkl-mnop-qrst-uvwxyz012345.json

ingress:
  - hostname: demo.example.dev
    service: https://localhost:8080
    originRequest:
      noTLSVerify: true
      originServerName: localhost
  # ... other hosts
  - service: http_status:404
```

**Configure the subdomain**

To configure the appropriate subdomain for the service:

```bash
cloudflared tunnel route dns batcave demo
```

**Start the tunnel**

```bash
cloudflared tunnel run batcave
```

For more detailed info, check out the Cloudflare docs on setting up and running tunnels via the command line:

https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/install-and-setup/tunnel-guide/local/

---

## Services

#### Authentik

[GitHub](https://github.com/goauthentik/authentik)

Currently used for OIDC SSO with services, but will possibly swap with Authelia.

#### Firefly III

[GitHub](https://github.com/firefly-iii/firefly-iii)

#### Grafana

#### Infisical

#### Mattermost

#### Mautic

#### n8n

#### Outline

#### RocketChat

## Roadmap

#### Authelia

[GitHub](https://github.com/authelia/authelia)

#### Sentry