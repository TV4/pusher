@publishMessage = (el, channel, message) ->
  pusher.publish(channel,message)
