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

defmodule GoogleApi.GKEBackup.V1.Model.Restore do
  @moduledoc """
  Represents both a request to Restore some portion of a Backup into a target GKE cluster and a record of the restore operation itself.

  ## Attributes

  *   `backup` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  *   `cluster` (*type:* `String.t`, *default:* `nil`) - Output only. The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  *   `completeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp of when the restore operation completed.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this Restore resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User specified descriptive string for this Restore.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A set of custom labels supplied by user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  *   `resourcesExcludedCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of resources excluded during the restore execution.
  *   `resourcesFailedCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of resources that failed to be restored during the restore execution.
  *   `resourcesRestoredCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of resources restored during the restore execution.
  *   `restoreConfig` (*type:* `GoogleApi.GKEBackup.V1.Model.RestoreConfig.t`, *default:* `nil`) - Output only. Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the Restore.
  *   `stateReason` (*type:* `String.t`, *default:* `nil`) - Output only. Human-readable description of why the Restore is in its current state.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this Restore resource was last updated.
  *   `volumesRestoredCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of volumes restored during the restore execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backup => String.t() | nil,
          :cluster => String.t() | nil,
          :completeTime => DateTime.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :resourcesExcludedCount => integer() | nil,
          :resourcesFailedCount => integer() | nil,
          :resourcesRestoredCount => integer() | nil,
          :restoreConfig => GoogleApi.GKEBackup.V1.Model.RestoreConfig.t() | nil,
          :state => String.t() | nil,
          :stateReason => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumesRestoredCount => integer() | nil
        }

  field(:backup)
  field(:cluster)
  field(:completeTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:resourcesExcludedCount)
  field(:resourcesFailedCount)
  field(:resourcesRestoredCount)
  field(:restoreConfig, as: GoogleApi.GKEBackup.V1.Model.RestoreConfig)
  field(:state)
  field(:stateReason)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:volumesRestoredCount)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.Restore do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.Restore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.Restore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
