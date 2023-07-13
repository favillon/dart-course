enum Audio {
  low,
  half,
  high
}

void main() {
  Audio volume = Audio.low;
  switch (volume) {
    case Audio.low: print('Volume low');break;
    case Audio.half: print('Volume half');break;
    case Audio.high: print('Volume high');break;
  }
}