const io = require("socket.io-client");
const fs = require('fs');

const userStatus = {
    microphone: false,
    mute: false,
    username: "9998",
    online: true,
    channel: "Main"
};


const socket = io("https://whackerlink.com");
socket.emit("userInformation", userStatus);

socket.on("send", (base64Data) => {
    //const base = base64Data.newData.split("base64,")[1];

    const buffer = Buffer.from(
        base64Data.newData.split('base64,')[1],
        'base64'
    )
    fs.writeFileSync('./audio.wav', buffer)
    console.log(` ${buffer.byteLength.toLocaleString()} bytes`)
});

socket.on("disconnect", () => {
    console.log("Disconnected from the server");
});

socket.on("connect", () => {
    console.log("Connected");
});
```