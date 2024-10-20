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

defmodule GoogleApi.CloudDeploy.V1.Model.Target do
  @moduledoc """
  A `Target` resource in the Cloud Deploy API. A `Target` defines a location to which a Skaffold configuration can be deployed.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  *   `anthosCluster` (*type:* `GoogleApi.CloudDeploy.V1.Model.AnthosCluster.t`, *default:* `nil`) - Optional. Information specifying an Anthos Cluster.
  *   `associatedEntities` (*type:* `%{optional(String.t) => GoogleApi.CloudDeploy.V1.Model.AssociatedEntities.t}`, *default:* `nil`) - Optional. Map of entity IDs to their associated entities. Associated entities allows specifying places other than the deployment target for specific features. For example, the Gateway API canary can be configured to deploy the HTTPRoute to a different cluster(s) than the deployment cluster using associated entities. An entity ID must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the `Target` was created.
  *   `customTarget` (*type:* `GoogleApi.CloudDeploy.V1.Model.CustomTarget.t`, *default:* `nil`) - Optional. Information specifying a Custom Target.
  *   `deployParameters` (*type:* `map()`, *default:* `nil`) - Optional. The deploy parameters to use for this target.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the `Target`. Max length is 255 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `executionConfigs` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.ExecutionConfig.t)`, *default:* `nil`) - Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  *   `gke` (*type:* `GoogleApi.CloudDeploy.V1.Model.GkeCluster.t`, *default:* `nil`) - Optional. Information specifying a GKE Cluster.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  *   `multiTarget` (*type:* `GoogleApi.CloudDeploy.V1.Model.MultiTarget.t`, *default:* `nil`) - Optional. Information specifying a multiTarget.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/{target}`. The `target` component must match `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`
  *   `requireApproval` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether or not the `Target` requires approval.
  *   `run` (*type:* `GoogleApi.CloudDeploy.V1.Model.CloudRunLocation.t`, *default:* `nil`) - Optional. Information specifying a Cloud Run deployment target.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - Output only. Resource id of the `Target`.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Unique identifier of the `Target`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Most recent time at which the `Target` was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :anthosCluster => GoogleApi.CloudDeploy.V1.Model.AnthosCluster.t() | nil,
          :associatedEntities =>
            %{optional(String.t()) => GoogleApi.CloudDeploy.V1.Model.AssociatedEntities.t()} | nil,
          :createTime => DateTime.t() | nil,
          :customTarget => GoogleApi.CloudDeploy.V1.Model.CustomTarget.t() | nil,
          :deployParameters => map() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :executionConfigs => list(GoogleApi.CloudDeploy.V1.Model.ExecutionConfig.t()) | nil,
          :gke => GoogleApi.CloudDeploy.V1.Model.GkeCluster.t() | nil,
          :labels => map() | nil,
          :multiTarget => GoogleApi.CloudDeploy.V1.Model.MultiTarget.t() | nil,
          :name => String.t() | nil,
          :requireApproval => boolean() | nil,
          :run => GoogleApi.CloudDeploy.V1.Model.CloudRunLocation.t() | nil,
          :targetId => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:anthosCluster, as: GoogleApi.CloudDeploy.V1.Model.AnthosCluster)
  field(:associatedEntities, as: GoogleApi.CloudDeploy.V1.Model.AssociatedEntities, type: :map)
  field(:createTime, as: DateTime)
  field(:customTarget, as: GoogleApi.CloudDeploy.V1.Model.CustomTarget)
  field(:deployParameters, type: :map)
  field(:description)
  field(:etag)
  field(:executionConfigs, as: GoogleApi.CloudDeploy.V1.Model.ExecutionConfig, type: :list)
  field(:gke, as: GoogleApi.CloudDeploy.V1.Model.GkeCluster)
  field(:labels, type: :map)
  field(:multiTarget, as: GoogleApi.CloudDeploy.V1.Model.MultiTarget)
  field(:name)
  field(:requireApproval)
  field(:run, as: GoogleApi.CloudDeploy.V1.Model.CloudRunLocation)
  field(:targetId)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.Target do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.Target.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.Target do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
