echo '{ "'$(date +%s)'": { "patrons":' $(curl -Ss https://www.patreon.com/darksydephil | grep -E "pledge_sum|patron_count" | head -n 2 | sed -e 's/.*: //' | tr -d '\n' | cut -d ',' -f1-2 | sed -e 's/,/, "earnings": /') "} }"
