#!/bin/bash
#URL holds the URL of the log file
URL="https://fpsrechallenge.blob.core.windows.net/sre/fp-sre-challenge.log"

#FILE is the file where the log content will be saved after downloading.
FILE="downloaded_log.log"

# holds the path to the output summary file.
OUTPUT_SUMMARY_FILE="host_request_summary.txt"

# Fetch the log file content using curl and save it to a file
curl -s "$URL" -o "$FILE"

# Process the downloaded log file with awk, sort, and write the summary to the output file
awk '{print $1}' "$FILE" | sort | uniq -c | sort -nr | awk 'BEGIN {print "Host Request Summary:\n====================="} {print $2 " " "----" " " $1}' > "$OUTPUT_SUMMARY_FILE"
#awk '{print $1}' "$LOG_FILE": Extracts the first column (hostname) from each line.
#sort: Sorts the extracted hostnames
#uniq -c: Counts the unique hostnames and outputs the count alongside each hostname.
#sort -nr: Sorts the counted hostnames in descending numerical order.
#awk 'BEGIN {print "Host Request Summary:\n====================="} {print $2, $1}': Formats the output to include a header and reorders the columns to print the hostname first followed by the count
#> "$OUTPUT_SUMMARY_FILE": Redirects the final output to OUTPUT_FILE.
echo "Analysis complete. Summary written to $OUTPUT_SUMMARY_FILE"
