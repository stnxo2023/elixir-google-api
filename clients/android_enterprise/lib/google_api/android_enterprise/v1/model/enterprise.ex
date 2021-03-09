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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Enterprise do
  @moduledoc """
  An Enterprises resource represents the binding between an EMM and a specific organization. That binding can be instantiated in one of two different ways using this API as follows: - For Google managed domain customers, the process involves using Enterprises.enroll and Enterprises.setAccount (in conjunction with artifacts obtained from the Admin console and the Google API Console) and submitted to the EMM through a more-or-less manual process. - For managed Google Play Accounts customers, the process involves using Enterprises.generateSignupUrl and Enterprises.completeSignup in conjunction with the managed Google Play sign-up UI (Google-provided mechanism) to create the binding without manual steps. As an EMM, you can support either or both approaches in your EMM console. See Create an Enterprise for details.

  ## Attributes

  *   `administrator` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.Administrator.t)`, *default:* `nil`) - Admins of the enterprise. This is only supported for enterprises created via the EMM-initiated flow.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID for the enterprise.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the enterprise, for example, "Example, Inc".
  *   `primaryDomain` (*type:* `String.t`, *default:* `nil`) - The enterprise's primary domain, such as "example.com".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :administrator => list(GoogleApi.AndroidEnterprise.V1.Model.Administrator.t()) | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :primaryDomain => String.t() | nil
        }

  field(:administrator, as: GoogleApi.AndroidEnterprise.V1.Model.Administrator, type: :list)
  field(:id)
  field(:name)
  field(:primaryDomain)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Enterprise do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.Enterprise.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Enterprise do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
