{{/*
Expand the name of the chart.
*/}}
{{- define "multi-gatekeeper.name" -}}
{{- printf "%s-proxy" .name | replace "+" "_" | trunc 63 | trimSuffix "-"  }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "multi-gatekeeper.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "multi-gatekeeper.labels" -}}
helm.sh/chart: {{ include "multi-gatekeeper.chart" . }}
{{ include "multi-gatekeeper.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "multi-gatekeeper.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
