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

defmodule GoogleApi.Compute.V1.Model.NodeType do
  @moduledoc """
  Represent a sole-tenant Node Type resource. Each node within a node group must have a node type. A node type specifies the total amount of cores and memory for that node. Currently, the only available node type is n1-node-96-624 node type that has 96 vCPUs and 624 GB of memory, available in multiple zones. For more information read Node types.

  ## Attributes

  *   `cpuPlatform` (*type:* `String.t`, *default:* `nil`) - [Output Only] The CPU platform used by this node type.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `deprecated` (*type:* `GoogleApi.Compute.V1.Model.DeprecationStatus.t`, *default:* `nil`) - [Output Only] The deprecation status associated with this node type.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional textual description of the resource.
  *   `guestCpus` (*type:* `integer()`, *default:* `nil`) - [Output Only] The number of virtual CPUs that are available to the node type.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#nodeType`) - [Output Only] The type of the resource. Always compute#nodeType for node types.
  *   `localSsdGb` (*type:* `integer()`, *default:* `nil`) - [Output Only] Local SSD available to the node type, defined in GB.
  *   `maxVms` (*type:* `integer()`, *default:* `nil`) - [Output Only] Maximum number of VMs that can be created for this node type.
  *   `memoryMb` (*type:* `integer()`, *default:* `nil`) - [Output Only] The amount of physical memory available to the node type, defined in MB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the zone where the node type resides, such as us-central1-a.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuPlatform => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :deprecated => GoogleApi.Compute.V1.Model.DeprecationStatus.t() | nil,
          :description => String.t() | nil,
          :guestCpus => integer() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :localSsdGb => integer() | nil,
          :maxVms => integer() | nil,
          :memoryMb => integer() | nil,
          :name => String.t() | nil,
          :selfLink => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:cpuPlatform)
  field(:creationTimestamp)
  field(:deprecated, as: GoogleApi.Compute.V1.Model.DeprecationStatus)
  field(:description)
  field(:guestCpus)
  field(:id)
  field(:kind)
  field(:localSsdGb)
  field(:maxVms)
  field(:memoryMb)
  field(:name)
  field(:selfLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeType do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
