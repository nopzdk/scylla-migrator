docker compose exec spark-master /opt/spark/bin/spark-submit --class com.scylladb.migrator.Migrator \
  --master spark://spark-master:7077 \
  --conf spark.driver.host=spark-master \
  --conf spark.scylla.config=/app/config.yaml \
  /jars/scylla-migrator-assembly.jar
