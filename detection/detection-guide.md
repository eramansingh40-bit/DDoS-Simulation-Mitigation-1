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

## Identify High-Volume Source IPs

The following command counts requests by source IP and displays the highest-volume sources first:

sudo awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr | head


Detection Workflow

Traffic
→ Nginx Logs
→ Identify Abnormal Requests
→ Investigate Source
→ Apply Mitigation
→ Verify Results
