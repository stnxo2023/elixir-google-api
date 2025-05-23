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

defmodule GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2ElectoralDistrict do
  @moduledoc """
  Describes the geographic scope of a contest.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - An identifier for this district, relative to its scope. For example, the 34th State Senate district would have id "34" and a scope of stateUpper.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the district.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - The geographic scope of this district. If unspecified the district's geography is not known. One of: national, statewide, congressional, stateUpper, stateLower, countywide, judicial, schoolBoard, cityWide, township, countyCouncil, cityCouncil, ward, special
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :scope => String.t() | nil
        }

  field(:id)
  field(:name)
  field(:scope)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2ElectoralDistrict do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2ElectoralDistrict.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2ElectoralDistrict do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
