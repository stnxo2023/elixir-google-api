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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfo do
  @moduledoc """
  Note that when a VSI is from a user video, the information reflects the info in that source. Fields like lengths, fps, etc. are not guaranteed to be the same as those of transcodes. If the relevant info in source is too broken, the corresponding fields (e.g., lengths) could be unset or with the default value, meaning VSI cannot compute them from the given info. Next id: 84

  ## Attributes

  *   `profile` (*type:* `String.t`, *default:* `nil`) - video profile
  *   `audioStream` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoAudioStream.t)`, *default:* `nil`) - 
  *   `fileHeaderFingerprint` (*type:* `String.t`, *default:* `nil`) - Input file header fingerprint
  *   `videoStream` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream.t)`, *default:* `nil`) - 
  *   `videoNumberOfFrames` (*type:* `String.t`, *default:* `nil`) - Number of Video frames Warning: running video::FfmpegVideoFileInformation() won't set this info Ffmpeg tool does not report the number of frames accurately. We can't rely on fps and video length. So we will set this after we processed every frame using the filter framework
  *   `pixFmt` (*type:* `String.t`, *default:* `nil`) - Pixel format for the video stream.
  *   `fileMagic` (*type:* `String.t`, *default:* `nil`) - The file type string returned by libmagic, a third party library. It might accidentally include some user content. Some normal file_magic examples: -- RIFF (little-endian) data, AVI, 1016 x 696, 30.00 fps, video: XviD, audio: (stereo, 48000 Hz) -- MPEG sequence, v2, program multiplex -- ISO Media, MPEG v4 system, iTunes AVC-LC -- Microsoft Windows Movie Maker project file
  *   `isImageFile` (*type:* `boolean()`, *default:* `nil`) - True if the video is actually an image file (JPEG, PNG, GIF, etc) and not a video file.
  *   `videoHasNonMonotonicPts` (*type:* `boolean()`, *default:* `nil`) - video has non-monotonic PTS.
  *   `numTimedtextStreams` (*type:* `integer()`, *default:* `nil`) - Total number of timedtext streams in the file
  *   `videoEndTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `videoFps` (*type:* `float()`, *default:* `nil`) - video frame per second, obtained by parsing video header information. It could be inaccurate for some types of codecs, notably, WMV, ASF, and FLV. It will be inaccurate for videos that does not have constant frame rate since it is the smallest framerate that can accurately represent all timestamps (see ffmpeg doc for AVStream.r_frame_rate). Also frame rate can be parsed from headers and can be wrong if it is not available there since ffmpeg uses a heuristic for determining it.
  *   `videoNumberOfInvisibleFrames` (*type:* `integer()`, *default:* `nil`) - Invisible frame count Keep a count of frames that are not displayed should the full frame count be needed for the video stream. The only codec currently reporting this value is VP8 with alternate reference frames enabled
  *   `videoHasNonMonotonicDts` (*type:* `boolean()`, *default:* `nil`) - video has non-monotonic DTS (potential problem)
  *   `audioChannels` (*type:* `integer()`, *default:* `nil`) - audio channels
  *   `videoPixelAspectRatio` (*type:* `float()`, *default:* `nil`) - video pixel aspect ratio
  *   `videoClipInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo.t`, *default:* `nil`) - Video clip information, such as copyright, title, and author.
  *   `videostreaminfoVersion` (*type:* `integer()`, *default:* `nil`) - Version number of the videostreaminfo application that generated this protobuf.
  *   `audioFrameSize` (*type:* `String.t`, *default:* `nil`) - audio frame size
  *   `audioStreamCodecTag` (*type:* `String.t`, *default:* `nil`) - 
  *   `audioEndTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoMetadata.t`, *default:* `nil`) - 
  *   `timedtextStream` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream.t)`, *default:* `nil`) - 
  *   `videoHasNonZeroStartEditList` (*type:* `boolean()`, *default:* `nil`) - video (MOV) has a possibly av desync issue due to edit lists not starting at 0
  *   `numDataStreams` (*type:* `integer()`, *default:* `nil`) - Total number of data streams in the file
  *   `avDistance` (*type:* `String.t`, *default:* `nil`) - Audio-Video interleaving distance between packets (in bytes)
  *   `audioLength` (*type:* `float()`, *default:* `nil`) - audio length in seconds Note that when the VSI is from users videos, it is not guaranteed to be the same as transcode lengths and it could be 0 when the full VSI cannot compute the length from the source header and timestamps (for example when header and timestamps are too broken).
  *   `parsedByInHouseParsers` (*type:* `boolean()`, *default:* `nil`) - True if the file was successfully parsed by in-house parsers. Unset if parsing wasn't attepmted.
  *   `videoHasPossibleOpenGop` (*type:* `boolean()`, *default:* `nil`) - video has possible open GOP
  *   `fileName` (*type:* `String.t`, *default:* `nil`) - Input file name. DEPRECATED; don't expect the file name to be correct.
  *   `numVideoStreams` (*type:* `integer()`, *default:* `nil`) - Total number of video streams in the file
  *   `dataStream` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream.t)`, *default:* `nil`) - 
  *   `audioSampleSize` (*type:* `integer()`, *default:* `nil`) - Number of meaningful bits per decoded audio sample. This is an implicit conceptual meaning. This is *NOT* the same as ffmpeg's internal sample format that is used when actually decoding with ffmpeg.
  *   `containsChapters` (*type:* `boolean()`, *default:* `nil`) - If the video contains chapters info.
  *   `containerType` (*type:* `String.t`, *default:* `nil`) - Name of the container format guessed by ffmpeg.
  *   `audioBitrate` (*type:* `float()`, *default:* `nil`) - audio bitrate in bits/s
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - Container Id.
  *   `videoInterlace` (*type:* `String.t`, *default:* `nil`) - Information on interlaced video.
  *   `partialFile` (*type:* `boolean()`, *default:* `nil`) - By default we assume that the entire file was given computing the VSI - if that is not true this flag should be set to true.
  *   `videoHeight` (*type:* `integer()`, *default:* `nil`) - 
  *   `avLength` (*type:* `float()`, *default:* `nil`) - Audio and video length in seconds. It's the max of the audio and video length. Note that when the VSI is from users videos, it is not guaranteed to be the same as transcode lengths and it could be 0 when the full VSI cannot compute the length from the source header and timestamps (for example when header and timestamps are too broken).
  *   `averageVideoFps` (*type:* `float()`, *default:* `nil`) - Average video fps from analyzing entire file.
  *   `audioSampleRate` (*type:* `String.t`, *default:* `nil`) - audio sample rate
  *   `audioNumberOfFrames` (*type:* `String.t`, *default:* `nil`) - Number of audio frames. Ffmpeg does not report the number of frames accurately. video::TranscodedVideoFileInformation calls Google's analyzer to get information of both audio and video frame numbers.
  *   `imageStream` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream.t)`, *default:* `nil`) - 
  *   `videoHasBFrames` (*type:* `boolean()`, *default:* `nil`) - video has b frames
  *   `fileModifiedTime` (*type:* `String.t`, *default:* `nil`) - Input file modification time
  *   `videoStartTimestamp` (*type:* `String.t`, *default:* `nil`) - Start/end timestamps of audio/video in ms.
  *   `isAsf` (*type:* `boolean()`, *default:* `nil`) - True if the video is likely to be an ASF file.
  *   `videoRotation` (*type:* `String.t`, *default:* `nil`) - Is the video rotated ?
  *   `videoFrameSize` (*type:* `String.t`, *default:* `nil`) - video frame size
  *   `videoHasLeadingMoovAtom` (*type:* `boolean()`, *default:* `nil`) - video (MOV) has moov atom before mdat atom allowing streaming transcoding
  *   `videoCodecId` (*type:* `String.t`, *default:* `nil`) - Primary video codec information Fields 1-2, 4-10, 28, 37, 44, 49, 51, 54-55, 57-62, 69 will be obsolete soon. Please start using the new repeated video_stream. For now, video_stream(0) will match these fields. Note however that some of the fields in VideoStream are not populated correctly yet in videostreaminfo.cc, but that will be handled gradually.
  *   `parsedByFfmpeg` (*type:* `boolean()`, *default:* `nil`) - If this field is not set, then only base video file information has been generated (and ffmpeg parsing hasn't yet been done). If this is set to 'false', then ffmpeg failed to parse the file - otherwise it will set to 'true'
  *   `videoBitrate` (*type:* `float()`, *default:* `nil`) - video bitrate in bits/s
  *   `audioCodecId` (*type:* `String.t`, *default:* `nil`) - Primary audio codec information Fields 15-20, 41-42, 48, 52-53 for audio will be obsolete soon. Please start using the new repeated audio_stream and video_stream. For now, audio_stream(0) will match these fields. Primary audio codec information starts:
  *   `googleVideoClipInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoGoogleVideoClipInfo.t`, *default:* `nil`) - YT app created video information,
  *   `level` (*type:* `integer()`, *default:* `nil`) - 
  *   `videoHasVariableAspectRatio` (*type:* `boolean()`, *default:* `nil`) - video has frames with different aspect ratios.
  *   `fileType` (*type:* `integer()`, *default:* `nil`) - High-level file type guessed by looking at the file headers and libmagic.
  *   `isVideoInsaneSize` (*type:* `boolean()`, *default:* `nil`) - Check if a video size insane or not. It is set if the input file is an MOV file.
  *   `displayHeight` (*type:* `integer()`, *default:* `nil`) - 
  *   `numAudioStreams` (*type:* `integer()`, *default:* `nil`) - Total number of audio streams in the file
  *   `videoWidth` (*type:* `integer()`, *default:* `nil`) - source video width and height
  *   `fileSize` (*type:* `String.t`, *default:* `nil`) - Input file size in bytes
  *   `audioStartTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `videoLength` (*type:* `float()`, *default:* `nil`) - video length in seconds Note that when the VSI is from users videos, it is not guaranteed to be the same as transcode lengths and it could be 0 when the full VSI cannot compute the length from the source header and timestamps (for example when header and timestamps are too broken).
  *   `videoHasFragments` (*type:* `boolean()`, *default:* `nil`) - video (MOV) has fragments
  *   `yPsnr` (*type:* `float()`, *default:* `nil`) - Luma PSNR of the transcoded file.
  *   `numImageStreams` (*type:* `integer()`, *default:* `nil`) - Total number of image streams in the file
  *   `videoStreamCodecTag` (*type:* `integer()`, *default:* `nil`) - 
  *   `buildLabel` (*type:* `String.t`, *default:* `nil`) - Build label of the VSI mpm.
  *   `displayWidth` (*type:* `integer()`, *default:* `nil`) - final display video width and height if explicitly set in the video otherwise this can be calculated from source width/height and video_pixel_aspect_ratio
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :profile => String.t() | nil,
          :audioStream =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoAudioStream.t()) | nil,
          :fileHeaderFingerprint => String.t() | nil,
          :videoStream =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream.t()) | nil,
          :videoNumberOfFrames => String.t() | nil,
          :pixFmt => String.t() | nil,
          :fileMagic => String.t() | nil,
          :isImageFile => boolean() | nil,
          :videoHasNonMonotonicPts => boolean() | nil,
          :numTimedtextStreams => integer() | nil,
          :videoEndTimestamp => String.t() | nil,
          :videoFps => float() | nil,
          :videoNumberOfInvisibleFrames => integer() | nil,
          :videoHasNonMonotonicDts => boolean() | nil,
          :audioChannels => integer() | nil,
          :videoPixelAspectRatio => float() | nil,
          :videoClipInfo => GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo.t() | nil,
          :videostreaminfoVersion => integer() | nil,
          :audioFrameSize => String.t() | nil,
          :audioStreamCodecTag => String.t() | nil,
          :audioEndTimestamp => String.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoMetadata.t() | nil,
          :timedtextStream =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream.t())
            | nil,
          :videoHasNonZeroStartEditList => boolean() | nil,
          :numDataStreams => integer() | nil,
          :avDistance => String.t() | nil,
          :audioLength => float() | nil,
          :parsedByInHouseParsers => boolean() | nil,
          :videoHasPossibleOpenGop => boolean() | nil,
          :fileName => String.t() | nil,
          :numVideoStreams => integer() | nil,
          :dataStream =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream.t()) | nil,
          :audioSampleSize => integer() | nil,
          :containsChapters => boolean() | nil,
          :containerType => String.t() | nil,
          :audioBitrate => float() | nil,
          :containerId => String.t() | nil,
          :videoInterlace => String.t() | nil,
          :partialFile => boolean() | nil,
          :videoHeight => integer() | nil,
          :avLength => float() | nil,
          :averageVideoFps => float() | nil,
          :audioSampleRate => String.t() | nil,
          :audioNumberOfFrames => String.t() | nil,
          :imageStream =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream.t()) | nil,
          :videoHasBFrames => boolean() | nil,
          :fileModifiedTime => String.t() | nil,
          :videoStartTimestamp => String.t() | nil,
          :isAsf => boolean() | nil,
          :videoRotation => String.t() | nil,
          :videoFrameSize => String.t() | nil,
          :videoHasLeadingMoovAtom => boolean() | nil,
          :videoCodecId => String.t() | nil,
          :parsedByFfmpeg => boolean() | nil,
          :videoBitrate => float() | nil,
          :audioCodecId => String.t() | nil,
          :googleVideoClipInfo =>
            GoogleApi.ContentWarehouse.V1.Model.VideoGoogleVideoClipInfo.t() | nil,
          :level => integer() | nil,
          :videoHasVariableAspectRatio => boolean() | nil,
          :fileType => integer() | nil,
          :isVideoInsaneSize => boolean() | nil,
          :displayHeight => integer() | nil,
          :numAudioStreams => integer() | nil,
          :videoWidth => integer() | nil,
          :fileSize => String.t() | nil,
          :audioStartTimestamp => String.t() | nil,
          :videoLength => float() | nil,
          :videoHasFragments => boolean() | nil,
          :yPsnr => float() | nil,
          :numImageStreams => integer() | nil,
          :videoStreamCodecTag => integer() | nil,
          :buildLabel => String.t() | nil,
          :displayWidth => integer() | nil
        }

  field(:profile)

  field(:audioStream,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoAudioStream,
    type: :list
  )

  field(:fileHeaderFingerprint)

  field(:videoStream,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream,
    type: :list
  )

  field(:videoNumberOfFrames)
  field(:pixFmt)
  field(:fileMagic)
  field(:isImageFile)
  field(:videoHasNonMonotonicPts)
  field(:numTimedtextStreams)
  field(:videoEndTimestamp)
  field(:videoFps)
  field(:videoNumberOfInvisibleFrames)
  field(:videoHasNonMonotonicDts)
  field(:audioChannels)
  field(:videoPixelAspectRatio)
  field(:videoClipInfo, as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoClipInfo)
  field(:videostreaminfoVersion)
  field(:audioFrameSize)
  field(:audioStreamCodecTag)
  field(:audioEndTimestamp)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoMetadata)

  field(:timedtextStream,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream,
    type: :list
  )

  field(:videoHasNonZeroStartEditList)
  field(:numDataStreams)
  field(:avDistance)
  field(:audioLength)
  field(:parsedByInHouseParsers)
  field(:videoHasPossibleOpenGop)
  field(:fileName)
  field(:numVideoStreams)

  field(:dataStream,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoDataStream,
    type: :list
  )

  field(:audioSampleSize)
  field(:containsChapters)
  field(:containerType)
  field(:audioBitrate)
  field(:containerId)
  field(:videoInterlace)
  field(:partialFile)
  field(:videoHeight)
  field(:avLength)
  field(:averageVideoFps)
  field(:audioSampleRate)
  field(:audioNumberOfFrames)

  field(:imageStream,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream,
    type: :list
  )

  field(:videoHasBFrames)
  field(:fileModifiedTime)
  field(:videoStartTimestamp)
  field(:isAsf)
  field(:videoRotation)
  field(:videoFrameSize)
  field(:videoHasLeadingMoovAtom)
  field(:videoCodecId)
  field(:parsedByFfmpeg)
  field(:videoBitrate)
  field(:audioCodecId)
  field(:googleVideoClipInfo, as: GoogleApi.ContentWarehouse.V1.Model.VideoGoogleVideoClipInfo)
  field(:level)
  field(:videoHasVariableAspectRatio)
  field(:fileType)
  field(:isVideoInsaneSize)
  field(:displayHeight)
  field(:numAudioStreams)
  field(:videoWidth)
  field(:fileSize)
  field(:audioStartTimestamp)
  field(:videoLength)
  field(:videoHasFragments)
  field(:yPsnr)
  field(:numImageStreams)
  field(:videoStreamCodecTag)
  field(:buildLabel)
  field(:displayWidth)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
