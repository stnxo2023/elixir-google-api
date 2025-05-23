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

defmodule GoogleApi.HealthCare.V1.Model.TagFilterList do
  @moduledoc """
  List of tags to be filtered.

  ## Attributes

  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Tags to be filtered. Tags must be DICOM Data Elements, File Meta Elements, or Directory Structuring Elements, as defined at: http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,. They may be provided by "Keyword" or "Tag". For example "PatientID", "00100010".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tags => list(String.t()) | nil
        }

  field(:tags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.TagFilterList do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.TagFilterList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.TagFilterList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
