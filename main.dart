var time = "23:43";
  var temp = int.parse(time.split(':')[0]);
  String? t;
  if(temp >= 12 && temp <24){
    t = " PM";
  }
  else{
    t = " AM";
  }
  if (temp > 12) {
    temp = temp - 12;
    if (temp < 10) {
      time = time.replaceRange(0, 2, "0$temp");
      time += t;
    } else {
      time = time.replaceRange(0, 2, "$temp");
      time += t;
    }
  } else if (temp == 00) {
    time = time.replaceRange(0, 2, '12');
    time += t;
  }else{
    time += t;
  }
