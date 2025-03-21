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

defmodule GoogleApi.Spanner.V1.Model.Backup do
  @moduledoc """
  A backup of a Cloud Spanner database.

  ## Attributes

  *   `backupSchedules` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of backup schedule URIs that are associated with creating this backup. This is only applicable for scheduled backups, and is empty for on-demand backups. To optimize for storage, whenever possible, multiple schedules are collapsed together to create one backup. In such cases, this field captures the list of all backup schedule URIs that are associated with creating this backup. If collapsing is not done, then this field captures the single backup schedule URI associated with creating this backup.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the CreateBackup request is received. If the request does not specify `version_time`, the `version_time` of the backup will be equivalent to the `create_time`.
  *   `database` (*type:* `String.t`, *default:* `nil`) - Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  *   `databaseDialect` (*type:* `String.t`, *default:* `nil`) - Output only. The database dialect information for the backup.
  *   `encryptionInfo` (*type:* `GoogleApi.Spanner.V1.Model.EncryptionInfo.t`, *default:* `nil`) - Output only. The encryption information for the backup.
  *   `encryptionInformation` (*type:* `list(GoogleApi.Spanner.V1.Model.EncryptionInfo.t)`, *default:* `nil`) - Output only. The encryption information for the backup, whether it is protected by one or more KMS keys. The information includes all Cloud KMS key versions used to encrypt the backup. The `encryption_status` field inside of each `EncryptionInfo` is not populated. At least one of the key versions must be available for the backup to be restored. If a key version is revoked in the middle of a restore, the restore behavior is undefined.
  *   `exclusiveSizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. For a backup in an incremental backup chain, this is the storage space needed to keep the data that has changed since the previous backup. For all other backups, this is always the size of the backup. This value may change if backups on the same chain get deleted or expired. This field can be used to calculate the total storage space used by a set of backups. For example, the total space used by all backups of a database can be computed by summing up this field.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  *   `freeableSizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The number of bytes that will be freed by deleting this backup. This value will be zero if, for example, this backup is part of an incremental backup chain and younger backups in the chain require that we keep its data. For backups not in an incremental backup chain, this is always the size of the backup. This value may change if backups on the same chain get created, deleted or expired.
  *   `incrementalBackupChainId` (*type:* `String.t`, *default:* `nil`) - Output only. Populated only for backups in an incremental backup chain. Backups share the same chain id if and only if they belong to the same incremental backup chain. Use this field to determine which backups are part of the same incremental backup chain. The ordering of backups in the chain can be determined by ordering the backup `version_time`.
  *   `instancePartitions` (*type:* `list(GoogleApi.Spanner.V1.Model.BackupInstancePartition.t)`, *default:* `nil`) - Output only. The instance partition(s) storing the backup. This is the same as the list of the instance partition(s) that the database had footprint in at the backup's `version_time`.
  *   `maxExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The max allowed expiration time of the backup, with microseconds granularity. A backup's expiration time can be configured in multiple APIs: CreateBackup, UpdateBackup, CopyBackup. When updating or copying an existing backup, the expiration time specified must be less than `Backup.max_expire_time`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  *   `oldestVersionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Data deleted at a time older than this is guaranteed not to be retained in order to support this backup. For a backup in an incremental backup chain, this is the version time of the oldest backup that exists or ever existed in the chain. For all other backups, this is the version time of the backup. This field can be used to understand what data is being retained by the backup system.
  *   `referencingBackups` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The names of the destination backups being created by copying this source backup. The backup names are of the form `projects//instances//backups/`. Referencing backups may exist in different instances. The existence of any referencing backup prevents the backup from being deleted. When the copy operation is done (either successfully completed or cancelled or the destination backup is deleted), the reference to the backup is removed.
  *   `referencingDatabases` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The names of the restored databases that reference the backup. The database names are of the form `projects//instances//databases/`. Referencing databases may exist in different instances. The existence of any referencing database prevents the backup from being deleted. When a restored database from the backup enters the `READY` state, the reference to the backup is removed.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Size of the backup in bytes. For a backup in an incremental backup chain, this is the sum of the `exclusive_size_bytes` of itself and all older backups in the chain.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the backup.
  *   `versionTime` (*type:* `DateTime.t`, *default:* `nil`) - The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupSchedules => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :database => String.t() | nil,
          :databaseDialect => String.t() | nil,
          :encryptionInfo => GoogleApi.Spanner.V1.Model.EncryptionInfo.t() | nil,
          :encryptionInformation => list(GoogleApi.Spanner.V1.Model.EncryptionInfo.t()) | nil,
          :exclusiveSizeBytes => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :freeableSizeBytes => String.t() | nil,
          :incrementalBackupChainId => String.t() | nil,
          :instancePartitions =>
            list(GoogleApi.Spanner.V1.Model.BackupInstancePartition.t()) | nil,
          :maxExpireTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :oldestVersionTime => DateTime.t() | nil,
          :referencingBackups => list(String.t()) | nil,
          :referencingDatabases => list(String.t()) | nil,
          :sizeBytes => String.t() | nil,
          :state => String.t() | nil,
          :versionTime => DateTime.t() | nil
        }

  field(:backupSchedules, type: :list)
  field(:createTime, as: DateTime)
  field(:database)
  field(:databaseDialect)
  field(:encryptionInfo, as: GoogleApi.Spanner.V1.Model.EncryptionInfo)
  field(:encryptionInformation, as: GoogleApi.Spanner.V1.Model.EncryptionInfo, type: :list)
  field(:exclusiveSizeBytes)
  field(:expireTime, as: DateTime)
  field(:freeableSizeBytes)
  field(:incrementalBackupChainId)
  field(:instancePartitions, as: GoogleApi.Spanner.V1.Model.BackupInstancePartition, type: :list)
  field(:maxExpireTime, as: DateTime)
  field(:name)
  field(:oldestVersionTime, as: DateTime)
  field(:referencingBackups, type: :list)
  field(:referencingDatabases, type: :list)
  field(:sizeBytes)
  field(:state)
  field(:versionTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Backup do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Backup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Backup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
