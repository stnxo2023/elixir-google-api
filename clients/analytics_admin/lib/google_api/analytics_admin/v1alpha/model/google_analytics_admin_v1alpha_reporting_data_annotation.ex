# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotation do
  @moduledoc """
  A Reporting Data Annotation is a comment connected to certain dates for reporting data.

  ## Attributes

  *   `annotationDate` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleTypeDate.t`, *default:* `nil`) - If set, the Reporting Data Annotation is for a specific date represented by this field. The date must be a valid date with year, month and day set. The date may be in the past, present, or future.
  *   `annotationDateRange` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange.t`, *default:* `nil`) - If set, the Reporting Data Annotation is for a range of dates represented by this field.
  *   `color` (*type:* `String.t`, *default:* `nil`) - Required. The color used for display of this Reporting Data Annotation.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description for this Reporting Data Annotation.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Identifier. Resource name of this Reporting Data Annotation. Format: 'properties/{property_id}/reportingDataAnnotations/{reporting_data_annotation}' Format: 'properties/123/reportingDataAnnotations/456'
  *   `systemGenerated` (*type:* `boolean()`, *default:* `nil`) - Output only. If true, this annotation was generated by the Google Analytics system. System-generated annotations cannot be updated or deleted.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. Human-readable title for this Reporting Data Annotation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationDate => GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleTypeDate.t() | nil,
          :annotationDateRange =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange.t()
            | nil,
          :color => String.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :systemGenerated => boolean() | nil,
          :title => String.t() | nil
        }

  field(:annotationDate, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleTypeDate)

  field(:annotationDateRange,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotationDateRange
  )

  field(:color)
  field(:description)
  field(:name)
  field(:systemGenerated)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotation do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaReportingDataAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
