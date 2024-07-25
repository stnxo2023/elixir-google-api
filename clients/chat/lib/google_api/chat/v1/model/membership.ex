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

defmodule GoogleApi.Chat.V1.Model.Membership do
  @moduledoc """
  Represents a membership relation in Google Chat, such as whether a user or Chat app is invited to, part of, or absent from a space.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Immutable. The creation time of the membership, such as when a member joined or was invited to join a space. This field is output only, except when used to import historical memberships in import mode spaces.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Immutable. The deletion time of the membership, such as when a member left or was removed from a space. This field is output only, except when used to import historical memberships in import mode spaces.
  *   `groupMember` (*type:* `GoogleApi.Chat.V1.Model.Group.t`, *default:* `nil`) - The Google Group the membership corresponds to.
  *   `member` (*type:* `GoogleApi.Chat.V1.Model.User.t`, *default:* `nil`) - The Google Chat user or app the membership corresponds to. If your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the output populates the [user](https://developers.google.com/workspace/chat/api/reference/rest/v1/User) `name` and `type`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the membership, assigned by the server. Format: `spaces/{space}/members/{member}`
  *   `role` (*type:* `String.t`, *default:* `nil`) - Optional. User's role within a Chat space, which determines their permitted actions in the space. This field can only be used as input in `UpdateMembership`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the membership.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :groupMember => GoogleApi.Chat.V1.Model.Group.t() | nil,
          :member => GoogleApi.Chat.V1.Model.User.t() | nil,
          :name => String.t() | nil,
          :role => String.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:groupMember, as: GoogleApi.Chat.V1.Model.Group)
  field(:member, as: GoogleApi.Chat.V1.Model.User)
  field(:name)
  field(:role)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Membership do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Membership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Membership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
