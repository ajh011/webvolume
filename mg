var videoElement = document.querySelector("video")
var audioCtx = new AudioContext()
var source = audioCtx.createMediaElementSource(videoElement)
var gainNode = audioCtx.createGain()
gainNode.gain.value = 2 // variable that sets new gain (here doubles)
source.connect(gainNode)
gainNode.connect(audioCtx.destination)
