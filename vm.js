const fs = require('fs');
const Interpreter = require('./interpreter');

let buf = fs.readFileSync('./challenge.bin');

const testSame = new Uint16Array(71680);

const memory = {
  //TODO: This length is not currently correct
  // codepage: new Uint16Array(buf.length),
  codepage: testSame,
  stack: [],
  registers: new Uint16Array(8),
  // heap: new Uint16Array(4084),
  heap: testSame,
  inPtr: 0
}

for (let i = 0; i < buf.length; i += 2) {
  // const lowByte = buf[i];
  // const highByte = buf[i + 1];
  // memory.codepage[i ? i / 2 : i] = (highByte << 16) | lowByte;
  memory.codepage[i ? i / 2 : i] = buf.readUInt16LE(i);
}

const interpreter = Interpreter(memory);

while (true) {
  interpreter.step();
}