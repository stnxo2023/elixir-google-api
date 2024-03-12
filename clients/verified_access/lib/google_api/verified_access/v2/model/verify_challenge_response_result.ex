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

defmodule GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  @moduledoc """
  Result message for VerifiedAccess.VerifyChallengeResponse.

  ## Attributes

  *   `attestedDeviceId` (*type:* `String.t`, *default:* `nil`) - Attested device ID (ADID).
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Unique customer id that this device belongs to, as defined by the Google Admin SDK at https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  *   `deviceEnrollmentId` (*type:* `String.t`, *default:* `nil`) - Device enrollment id for ChromeOS devices.
  *   `devicePermanentId` (*type:* `String.t`, *default:* `nil`) - Device permanent id is returned in this field (for the machine response only).
  *   `deviceSignal` (*type:* `String.t`, *default:* `nil`) - Deprecated. Device signal in json string representation. Prefer using `device_signals` instead.
  *   `deviceSignals` (*type:* `GoogleApi.VerifiedAccess.V2.Model.DeviceSignals.t`, *default:* `nil`) - Device signals.
  *   `keyTrustLevel` (*type:* `String.t`, *default:* `nil`) - Device attested key trust level.
  *   `profileCustomerId` (*type:* `String.t`, *default:* `nil`) - Unique customer id that this profile belongs to, as defined by the Google Admin SDK at https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  *   `profileKeyTrustLevel` (*type:* `String.t`, *default:* `nil`) - Profile attested key trust level.
  *   `signedPublicKeyAndChallenge` (*type:* `String.t`, *default:* `nil`) - Certificate Signing Request (in the SPKAC format, base64 encoded) is returned in this field. This field will be set only if device has included CSR in its challenge response. (the option to include CSR is now available for both user and machine responses)
  *   `virtualDeviceId` (*type:* `String.t`, *default:* `nil`) - Virtual device id of the device. The definition of virtual device id is platform-specific.
  *   `virtualProfileId` (*type:* `String.t`, *default:* `nil`) - The ID of a profile on the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attestedDeviceId => String.t() | nil,
          :customerId => String.t() | nil,
          :deviceEnrollmentId => String.t() | nil,
          :devicePermanentId => String.t() | nil,
          :deviceSignal => String.t() | nil,
          :deviceSignals => GoogleApi.VerifiedAccess.V2.Model.DeviceSignals.t() | nil,
          :keyTrustLevel => String.t() | nil,
          :profileCustomerId => String.t() | nil,
          :profileKeyTrustLevel => String.t() | nil,
          :signedPublicKeyAndChallenge => String.t() | nil,
          :virtualDeviceId => String.t() | nil,
          :virtualProfileId => String.t() | nil
        }

  field(:attestedDeviceId)
  field(:customerId)
  field(:deviceEnrollmentId)
  field(:devicePermanentId)
  field(:deviceSignal)
  field(:deviceSignals, as: GoogleApi.VerifiedAccess.V2.Model.DeviceSignals)
  field(:keyTrustLevel)
  field(:profileCustomerId)
  field(:profileKeyTrustLevel)
  field(:signedPublicKeyAndChallenge)
  field(:virtualDeviceId)
  field(:virtualProfileId)
end

defimpl Poison.Decoder, for: GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  def decode(value, options) do
    GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VerifiedAccess.V2.Model.VerifyChallengeResponseResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
