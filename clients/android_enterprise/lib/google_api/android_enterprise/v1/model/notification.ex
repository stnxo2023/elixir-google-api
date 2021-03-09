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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Notification do
  @moduledoc """
  A notification of one event relating to an enterprise.

  ## Attributes

  *   `appRestrictionsSchemaChangeEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaChangeEvent.t`, *default:* `nil`) - Notifications about new app restrictions schema changes.
  *   `appUpdateEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent.t`, *default:* `nil`) - Notifications about app updates.
  *   `deviceReportUpdateEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.DeviceReportUpdateEvent.t`, *default:* `nil`) - Notifications about device report updates.
  *   `enterpriseId` (*type:* `String.t`, *default:* `nil`) - The ID of the enterprise for which the notification is sent. This will always be present.
  *   `installFailureEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.InstallFailureEvent.t`, *default:* `nil`) - Notifications about an app installation failure.
  *   `newDeviceEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.NewDeviceEvent.t`, *default:* `nil`) - Notifications about new devices.
  *   `newPermissionsEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.NewPermissionsEvent.t`, *default:* `nil`) - Notifications about new app permissions.
  *   `notificationType` (*type:* `String.t`, *default:* `nil`) - Type of the notification.
  *   `productApprovalEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.ProductApprovalEvent.t`, *default:* `nil`) - Notifications about changes to a product's approval status.
  *   `productAvailabilityChangeEvent` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.ProductAvailabilityChangeEvent.t`, *default:* `nil`) - Notifications about product availability changes.
  *   `timestampMillis` (*type:* `String.t`, *default:* `nil`) - The time when the notification was published in milliseconds since 1970-01-01T00:00:00Z. This will always be present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appRestrictionsSchemaChangeEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaChangeEvent.t() | nil,
          :appUpdateEvent => GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent.t() | nil,
          :deviceReportUpdateEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.DeviceReportUpdateEvent.t() | nil,
          :enterpriseId => String.t() | nil,
          :installFailureEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.InstallFailureEvent.t() | nil,
          :newDeviceEvent => GoogleApi.AndroidEnterprise.V1.Model.NewDeviceEvent.t() | nil,
          :newPermissionsEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.NewPermissionsEvent.t() | nil,
          :notificationType => String.t() | nil,
          :productApprovalEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.ProductApprovalEvent.t() | nil,
          :productAvailabilityChangeEvent =>
            GoogleApi.AndroidEnterprise.V1.Model.ProductAvailabilityChangeEvent.t() | nil,
          :timestampMillis => String.t() | nil
        }

  field(:appRestrictionsSchemaChangeEvent,
    as: GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaChangeEvent
  )

  field(:appUpdateEvent, as: GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent)

  field(:deviceReportUpdateEvent, as: GoogleApi.AndroidEnterprise.V1.Model.DeviceReportUpdateEvent)

  field(:enterpriseId)
  field(:installFailureEvent, as: GoogleApi.AndroidEnterprise.V1.Model.InstallFailureEvent)
  field(:newDeviceEvent, as: GoogleApi.AndroidEnterprise.V1.Model.NewDeviceEvent)
  field(:newPermissionsEvent, as: GoogleApi.AndroidEnterprise.V1.Model.NewPermissionsEvent)
  field(:notificationType)
  field(:productApprovalEvent, as: GoogleApi.AndroidEnterprise.V1.Model.ProductApprovalEvent)

  field(:productAvailabilityChangeEvent,
    as: GoogleApi.AndroidEnterprise.V1.Model.ProductAvailabilityChangeEvent
  )

  field(:timestampMillis)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Notification do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.Notification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Notification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
