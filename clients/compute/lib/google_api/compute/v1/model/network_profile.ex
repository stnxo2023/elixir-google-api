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

defmodule GoogleApi.Compute.V1.Model.NetworkProfile do
  @moduledoc """
  NetworkProfile represents a Google managed network profile resource.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional description of this resource.
  *   `features` (*type:* `GoogleApi.Compute.V1.Model.NetworkProfileNetworkFeatures.t`, *default:* `nil`) - [Output Only] Features supported by the network.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#networkProfile`) - [Output Only] Type of the resource. Always compute#networkProfile for network profiles.
  *   `location` (*type:* `GoogleApi.Compute.V1.Model.NetworkProfileLocation.t`, *default:* `nil`) - [Output Only] Location to which the network is restricted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `selfLinkWithId` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource with the resource id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :features => GoogleApi.Compute.V1.Model.NetworkProfileNetworkFeatures.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :location => GoogleApi.Compute.V1.Model.NetworkProfileLocation.t() | nil,
          :name => String.t() | nil,
          :selfLink => String.t() | nil,
          :selfLinkWithId => String.t() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:features, as: GoogleApi.Compute.V1.Model.NetworkProfileNetworkFeatures)
  field(:id)
  field(:kind)
  field(:location, as: GoogleApi.Compute.V1.Model.NetworkProfileLocation)
  field(:name)
  field(:selfLink)
  field(:selfLinkWithId)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkProfile do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
