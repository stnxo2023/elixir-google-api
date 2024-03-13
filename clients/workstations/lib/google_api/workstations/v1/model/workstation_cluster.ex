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

defmodule GoogleApi.Workstations.V1.Model.WorkstationCluster do
  @moduledoc """
  A workstation cluster resource in the Cloud Workstations API. Defines a group of workstations in a particular region and the VPC network they're attached to.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Client-specified annotations.
  *   `conditions` (*type:* `list(GoogleApi.Workstations.V1.Model.Status.t)`, *default:* `nil`) - Output only. Status conditions describing the workstation cluster's current state.
  *   `controlPlaneIp` (*type:* `String.t`, *default:* `nil`) - Output only. The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this workstation cluster was created.
  *   `degraded` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this workstation cluster was soft-deleted.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Human-readable name for this workstation cluster.
  *   `domainConfig` (*type:* `GoogleApi.Workstations.V1.Model.DomainConfig.t`, *default:* `nil`) - Optional. Configuration options for a custom domain.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Full name of this workstation cluster.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  *   `privateClusterConfig` (*type:* `GoogleApi.Workstations.V1.Model.PrivateClusterConfig.t`, *default:* `nil`) - Optional. Configuration for private workstation cluster.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether this workstation cluster is currently being updated to match its intended state.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A system-assigned unique identifier for this workstation cluster.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this workstation cluster was most recently updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :conditions => list(GoogleApi.Workstations.V1.Model.Status.t()) | nil,
          :controlPlaneIp => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :degraded => boolean() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :domainConfig => GoogleApi.Workstations.V1.Model.DomainConfig.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :privateClusterConfig => GoogleApi.Workstations.V1.Model.PrivateClusterConfig.t() | nil,
          :reconciling => boolean() | nil,
          :subnetwork => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:conditions, as: GoogleApi.Workstations.V1.Model.Status, type: :list)
  field(:controlPlaneIp)
  field(:createTime, as: DateTime)
  field(:degraded)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:domainConfig, as: GoogleApi.Workstations.V1.Model.DomainConfig)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:privateClusterConfig, as: GoogleApi.Workstations.V1.Model.PrivateClusterConfig)
  field(:reconciling)
  field(:subnetwork)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.WorkstationCluster do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.WorkstationCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.WorkstationCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
