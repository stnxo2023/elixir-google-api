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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken do
  @moduledoc """
  Encapsulates an *App Check token*, which are used to access backend services protected by App Check.

  ## Attributes

  *   `attestationToken` (*type:* `String.t`, *default:* `nil`) - The App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519) containing claims that identify the attested app and GCP project. This token is used to access Google services protected by App Check. These tokens can also be [verified by your own custom backends](https://firebase.google.com/docs/app-check/custom-resource-backend) using the Firebase Admin SDK or third-party libraries.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/html/rfc7519) containing claims that identify the attested app and GCP project. This token is used to access Google services protected by App Check. These tokens can also be [verified by your own custom backends](https://firebase.google.com/docs/app-check/custom-resource-backend) using the Firebase Admin SDK or third-party libraries.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - The duration from the time this token is minted until its expiration. This field is intended to ease client-side token management, since the client may have clock skew, but is still able to accurately measure a duration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attestationToken => String.t() | nil,
          :token => String.t() | nil,
          :ttl => String.t() | nil
        }

  field(:attestationToken)
  field(:token)
  field(:ttl)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
