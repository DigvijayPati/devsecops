# DevSecOps
Contains all devsecops projects

## DAST Scan
1. Download Crossplatform jar file from https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2.11.1_Crossplatform.zip
2. Demo Website under scan: http://demo.testfire.net
3. Run following command from command line
```
java -jar C:\tools\zap\zap-2.11.1.jar -cmd -quickurl http://demo.testfire.net -quickprogress -quickout report.xml
```
3. Parse output file report.xml to list important data
