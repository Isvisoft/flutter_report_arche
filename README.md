# flutter report arche

A new Flutter package for get all types of reports (pdf, xls, csv, doc, text, html).

## Getting Started

First you need a token from [Arche service] (https://arche.isvisoft.com/)

You have to send the information and the structure of the report

```dart
new ReportService("arche-token").downloadReport(data, "my-report.pdf", true);
```

You can check the doc in [Arche doc] (https://arche.isvisoft.com/doc)
