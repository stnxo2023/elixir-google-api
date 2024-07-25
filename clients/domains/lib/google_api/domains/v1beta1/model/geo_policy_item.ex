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

defmodule GoogleApi.Domains.V1beta1.Model.GeoPolicyItem do
  @moduledoc """
  ResourceRecordSet data for one geo location.

  ## Attributes

  *   `healthCheckedTargets` (*type:* `GoogleApi.Domains.V1beta1.Model.HealthCheckTargets.t`, *default:* `nil`) - For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with `rrdata` within this item.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  *   `rrdata` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `signatureRrdata` (*type:* `list(String.t)`, *default:* `nil`) - DNSSEC generated signatures for all the `rrdata` within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :healthCheckedTargets => GoogleApi.Domains.V1beta1.Model.HealthCheckTargets.t() | nil,
          :location => String.t() | nil,
          :rrdata => list(String.t()) | nil,
          :signatureRrdata => list(String.t()) | nil
        }

  field(:healthCheckedTargets, as: GoogleApi.Domains.V1beta1.Model.HealthCheckTargets)
  field(:location)
  field(:rrdata, type: :list)
  field(:signatureRrdata, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.GeoPolicyItem do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.GeoPolicyItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.GeoPolicyItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
