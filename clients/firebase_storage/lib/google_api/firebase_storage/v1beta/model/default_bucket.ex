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

defmodule GoogleApi.FirebaseStorage.V1beta.Model.DefaultBucket do
  @moduledoc """
  Spark tier-eligible Cloud Storage bucket. One per project. This resource exists if the underlying Cloud Storage bucket exists and it is linked to your Firebase project. See https://firebase.google.com/pricing for pricing details.

  ## Attributes

  *   `bucket` (*type:* `GoogleApi.FirebaseStorage.V1beta.Model.Bucket.t`, *default:* `nil`) - Output only. Underlying bucket resource.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Immutable. Location of the default bucket.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the default bucket.
  *   `storageClass` (*type:* `String.t`, *default:* `nil`) - Immutable. Storage class of the default bucket. Supported values are available at https://cloud.google.com/storage/docs/storage-classes#classes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => GoogleApi.FirebaseStorage.V1beta.Model.Bucket.t() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :storageClass => String.t() | nil
        }

  field(:bucket, as: GoogleApi.FirebaseStorage.V1beta.Model.Bucket)
  field(:location)
  field(:name)
  field(:storageClass)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseStorage.V1beta.Model.DefaultBucket do
  def decode(value, options) do
    GoogleApi.FirebaseStorage.V1beta.Model.DefaultBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseStorage.V1beta.Model.DefaultBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
