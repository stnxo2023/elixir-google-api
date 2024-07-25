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

defmodule GoogleApi.Domains.V1alpha2.Model.ManagementSettings do
  @moduledoc """
  Defines renewal, billing, and transfer settings for a `Registration`.

  ## Attributes

  *   `effectiveTransferLockState` (*type:* `String.t`, *default:* `nil`) - Output only. The actual transfer lock state for this `Registration`.
  *   `preferredRenewalMethod` (*type:* `String.t`, *default:* `nil`) - Optional. The desired renewal method for this `Registration`. The actual `renewal_method` is automatically updated to reflect this choice. If unset or equal to `RENEWAL_METHOD_UNSPECIFIED`, the actual `renewalMethod` is treated as if it were set to `AUTOMATIC_RENEWAL`. You cannot use `RENEWAL_DISABLED` during resource creation, and you can update the renewal status only when the `Registration` resource has state `ACTIVE` or `SUSPENDED`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL`, the actual `renewal_method` can be set to `RENEWAL_DISABLED` in case of problems with the billing account or reported domain abuse. In such cases, check the `issues` field on the `Registration`. After the problem is resolved, the `renewal_method` is automatically updated to `preferred_renewal_method` in a few hours.
  *   `renewalMethod` (*type:* `String.t`, *default:* `nil`) - Output only. The actual renewal method for this `Registration`. When `preferred_renewal_method` is set to `AUTOMATIC_RENEWAL`, the actual `renewal_method` can be equal to `RENEWAL_DISABLED`—for example, when there are problems with the billing account or reported domain abuse. In such cases, check the `issues` field on the `Registration`. After the problem is resolved, the `renewal_method` is automatically updated to `preferred_renewal_method` in a few hours.
  *   `transferLockState` (*type:* `String.t`, *default:* `nil`) - This is the desired transfer lock state for this `Registration`. A transfer lock controls whether the domain can be transferred to another registrar. The transfer lock state of the domain is returned in the `effective_transfer_lock_state` property. The transfer lock state values might be different for the following reasons: * `transfer_lock_state` was updated only a short time ago. * Domains with the `TRANSFER_LOCK_UNSUPPORTED_BY_REGISTRY` state are in the list of `domain_properties`. These domains are always in the `UNLOCKED` state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :effectiveTransferLockState => String.t() | nil,
          :preferredRenewalMethod => String.t() | nil,
          :renewalMethod => String.t() | nil,
          :transferLockState => String.t() | nil
        }

  field(:effectiveTransferLockState)
  field(:preferredRenewalMethod)
  field(:renewalMethod)
  field(:transferLockState)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1alpha2.Model.ManagementSettings do
  def decode(value, options) do
    GoogleApi.Domains.V1alpha2.Model.ManagementSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1alpha2.Model.ManagementSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
