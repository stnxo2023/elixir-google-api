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

defmodule GoogleApi.BackupDR.V1.Model.BackupVault do
  @moduledoc """
  Message describing a BackupVault object.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. User annotations. See https://google.aip.dev/128#annotations Stores small amounts of arbitrary data.
  *   `backupCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of backups in this backup vault.
  *   `backupMinimumEnforcedRetentionDuration` (*type:* `String.t`, *default:* `nil`) - Required. The default and minimum enforced retention for each backup within the backup vault. The enforced retention for each backup can be extended.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created.
  *   `deletable` (*type:* `boolean()`, *default:* `nil`) - Output only. Set to true when there are no backups nested under this resource.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the BackupVault instance (2048 characters or less).
  *   `effectiveTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Time after which the BackupVault resource is locked.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates from overwiting each other.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata. No labels currently defined:
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The resource name.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. Service account used by the BackupVault Service for this BackupVault. The user should grant this account permissions in their workload project to enable the service to run backups and restores there.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The BackupVault resource instance state.
  *   `totalStoredBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Total size of the storage used by all backup resources.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Output only Immutable after resource creation until resource deletion.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :backupCount => String.t() | nil,
          :backupMinimumEnforcedRetentionDuration => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :deletable => boolean() | nil,
          :description => String.t() | nil,
          :effectiveTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :state => String.t() | nil,
          :totalStoredBytes => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:backupCount)
  field(:backupMinimumEnforcedRetentionDuration)
  field(:createTime, as: DateTime)
  field(:deletable)
  field(:description)
  field(:effectiveTime, as: DateTime)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:serviceAccount)
  field(:state)
  field(:totalStoredBytes)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.BackupVault do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.BackupVault.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.BackupVault do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
