{{/*
Common labels
*/}}
{{- define "datadog.labels" -}}
helm.sh/chart: '{{ include "datadog.chart" . }}'
{{ include "datadog.template-labels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- if .Values.commonLabels}}
{{ toYaml .Values.commonLabels }}
{{- end }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | default "atlas" | quote }}
{{- end -}}
