# DDoS Detection Guide

## Indicators

- Sudden increase in HTTP requests
- Large number of requests from a single source
- Increased HTTP 429 responses
- Increased server resource utilization
- Unusual traffic spikes

## Nginx Log Analysis

```bash
sudo tail -f /var/log/nginx/access.log
