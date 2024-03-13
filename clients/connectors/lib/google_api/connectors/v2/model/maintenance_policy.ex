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

defmodule GoogleApi.Connectors.V2.Model.MaintenancePolicy do
  @moduledoc """
  LINT.IfChange Defines policies to service maintenance events.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/maintenancePolicies/{maintenance_policy_id}` where {project_id} refers to a GCP consumer project ID, {location_id} refers to a GCP region/zone, {maintenance_policy_id} must be 1-63 characters long and match the regular expression `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Optional. The state of the policy.
  *   `updatePolicy` (*type:* `GoogleApi.Connectors.V2.Model.UpdatePolicy.t`, *default:* `nil`) - Maintenance policy applicable to instance update.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updatePolicy => GoogleApi.Connectors.V2.Model.UpdatePolicy.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:updatePolicy, as: GoogleApi.Connectors.V2.Model.UpdatePolicy)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.MaintenancePolicy do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.MaintenancePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.MaintenancePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
