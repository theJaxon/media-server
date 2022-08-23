{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "media-server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "media-server.labels" -}}
helm.sh/chart: {{ include "media-server.chart" . }}
{{ include "media-server.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "media-server.selectorLabels" -}}
app: {{ .Values.name }}
project: media-server

{{- end }}