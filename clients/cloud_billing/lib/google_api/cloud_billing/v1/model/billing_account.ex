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

defmodule GoogleApi.CloudBilling.V1.Model.BillingAccount do
  @moduledoc """
  A billing account in the [Google Cloud Console](https://console.cloud.google.com/). You can assign a billing account to one or more projects.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.
  *   `masterBillingAccount` (*type:* `String.t`, *default:* `nil`) - If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the master billing account that it is being resold through. Otherwise this will be empty.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF` would be the resource name for billing account `012345-567890-ABCDEF`.
  *   `open` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :masterBillingAccount => String.t(),
          :name => String.t(),
          :open => boolean()
        }

  field(:displayName)
  field(:masterBillingAccount)
  field(:name)
  field(:open)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.BillingAccount do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.BillingAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.BillingAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
