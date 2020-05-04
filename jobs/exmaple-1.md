---
apiVersion: batch/v1beta1
kind: CronJob
metadata:
  name: exmaple-1
spec:
  jobTemplate:
    spec:
      template:
        spec:
          containers:
            - name: hello
              image: busybox
              args:
                - /bin/sh
                - -c
                - date; echo "Hello, World!"
              restartPolicy: OnFailure
  schedule: "*/1 * * * *"
---
