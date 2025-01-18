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

defmodule GoogleApi.AccessContextManager.V1.Model.EgressSource do
  @moduledoc """
  The source that EgressPolicy authorizes access from inside the ServicePerimeter to somewhere outside the ServicePerimeter boundaries.

  ## Attributes

  *   `accessLevel` (*type:* `String.t`, *default:* `nil`) - An AccessLevel resource name that allows protected resources inside the ServicePerimeters to access outside the ServicePerimeter boundaries. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If an AccessLevel name is not specified, only resources within the perimeter can be accessed through Google Cloud calls with request origins within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified for `access_level`, then all EgressSources will be allowed.
  *   `resource` (*type:* `String.t`, *default:* `nil`) - A Google Cloud resource that you want to allow to egress the perimeter. These resources can access data outside the perimeter. This field only supports projects. The project format is `projects/{project_number}`. The resource can be in any Google Cloud organization, not just the organization where the perimeter is defined. You can't use `*` in this field to allow all Google Cloud resources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLevel => String.t() | nil,
          :resource => String.t() | nil
        }

  field(:accessLevel)
  field(:resource)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.EgressSource do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.EgressSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.EgressSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
