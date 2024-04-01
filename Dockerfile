FROM voltrondata/flight-sql:lastest

RUN duckdb -c "INSTALL arrow; INSTALL azure; INSTALL httpfs; INSTALL postgres;"

EXPOSE 31337

# Run a test to ensure that the server works...
RUN scripts/test_flight_sql.sh

ENTRYPOINT scripts/start_flight_sql.sh
