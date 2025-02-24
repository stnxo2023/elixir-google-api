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

defmodule GoogleApi.WorkloadManager.V1.Model.ListDiscoveredProfilesResponse do
  @moduledoc """
  List discovered profile Response returns discovered profiles from agents

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Output only. A token identifying a page of results the server should return
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  *   `workloadProfiles` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.WorkloadProfile.t)`, *default:* `nil`) - Output only. The list of workload profiles
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil,
          :workloadProfiles => list(GoogleApi.WorkloadManager.V1.Model.WorkloadProfile.t()) | nil
        }

  field(:nextPageToken)
  field(:unreachable, type: :list)
  field(:workloadProfiles, as: GoogleApi.WorkloadManager.V1.Model.WorkloadProfile, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.ListDiscoveredProfilesResponse do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.ListDiscoveredProfilesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.ListDiscoveredProfilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
