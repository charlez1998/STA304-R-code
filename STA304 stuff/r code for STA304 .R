### CourseStatus
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    if (eyedata$Courseload[i] == "More than 5 courses" | eyedata$Courseload[i] == "5 courses" | eyedata$Courseload[i] == "4 courses"){
      eyedata$CourseStatus[i] <- "Glasses-Heavy"
    }      
    else if (eyedata$Courseload[i] == "3 courses" | eyedata$Courseload[i] == "Less than 3 courses"){
      eyedata$CourseStatus[i] <- "Glasses-Light"
    }
  }
  else if (eyedata$Wear[i] == "Neither"){
    if (eyedata$Courseload[i] == "More than 5 courses" | eyedata$Courseload[i] == "5 courses" | eyedata$Courseload[i] == "4 courses"){
      eyedata$CourseStatus[i] <- "Neither-Heavy"
    }
    else if (eyedata$Courseload[i] == "3 courses" | eyedata$Courseload[i] == "Less than 3 courses"){
      eyedata$CourseStatus[i] <- "Neither-Light"
    }
  }
}

### Study Hours
for (i in 1:nrow(eyedata)){
  if (eyedata$CourseStatus[i] == "Glasses-Heavy"){
    if (eyedata$Study[i] == "3-5 hours" | eyedata$Study[i] == "5-7 hours" | eyedata$Study[i] == "More than 7 hours"){
      eyedata$StudyStatus[i] <- "Glasses-Heavy, Hard Worker"
    }
    else if (eyedata$Study[i] == "Less than an hour" | eyedata$Study[i] == "1-3 hours"){
      eyedata$StudyStatus[i] <- "Glasses-Heavy, Soft Worker"
    }
  }
  else if (eyedata$CourseStatus[i] == "Glasses-Light"){
    if (eyedata$Study[i] == "3-5 hours" | eyedata$Study[i] == "5-7 hours" | eyedata$Study[i] == "More than 7 hours"){
      eyedata$StudyStatus[i] <- "Glasses-Light, Hard Worker"
    }
    else if (eyedata$Study[i] == "Less than an hour" | eyedata$Study[i] == "1-3 hours"){
      eyedata$StudyStatus[i] <- "Glasses-Light, Soft Worker"
    }
  }
  else if (eyedata$CourseStatus[i] == "Neither-Heavy"){
    if (eyedata$Study[i] == "3-5 hours" | eyedata$Study[i] == "5-7 hours" | eyedata$Study[i] == "More than 7 hours"){
      eyedata$StudyStatus[i] <- "Neither-Heavy, Hard Worker"
    }
    else if (eyedata$Study[i] == "Less than an hour" | eyedata$Study[i] == "1-3 hours"){
      eyedata$StudyStatus[i] <- "Neither-Heavy, Soft Worker"
    }
  }
  else if (eyedata$CourseStatus[i] == "Neither-Light"){
    if (eyedata$Study[i] == "3-5 hours" | eyedata$Study[i] == "5-7 hours" | eyedata$Study[i] == "More than 7 hours"){
      eyedata$StudyStatus[i] <- "Neither-Light, Hard Worker"
    }
    else if (eyedata$Study[i] == "Less than an hour" | eyedata$Study[i] == "1-3 hours"){
      eyedata$StudyStatus[i] <- "Neither-Light, Soft Worker"
    }
  }
}

### Sleep Hours 
for (i in 1:nrow(eyedata)){
  if (eyedata$CourseStatus[i] == "Glasses-Heavy"){
    if (eyedata$Sleep[i] == "6 hours" | eyedata$Sleep[i] == "7 hours" | eyedata$Sleep[i] == "More than 7 hours"){
      eyedata$SleepStatus[i] <- "Glasses-Heavy, Sleep Lots"
    }
    else if (eyedata$Sleep[i] == "5 hours" | eyedata$Sleep[i] == "4 hours" | eyedata$Sleep[i] == "Less than 4 hours"){
      eyedata$SleepStatus[i] <- "Glasses-Heavy, Sleep Little"
    }
    else {
      eyedata$SleepStatus[i] <- "No Sleep Entry"
    }
  }
  else if (eyedata$CourseStatus[i] == "Glasses-Light"){
    if (eyedata$Sleep[i] == "6 hours" | eyedata$Sleep[i] == "7 hours" | eyedata$Sleep[i] == "More than 7 hours"){
      eyedata$SleepStatus[i] <- "Glasses-Light, Sleep Lots"
    }
    else if (eyedata$Sleep[i] == "5 hours" | eyedata$Sleep[i] == "4 hours" | eyedata$Sleep[i] == "Less than 4 hours"){
      eyedata$SleepStatus[i] <- "Glasses-Light, Sleep Little"
    }
    else {
      eyedata$SleepStatus[i] <- "No Sleep Entry"
    }
  }
  else if (eyedata$CourseStatus[i] == "Neither-Heavy"){
    if (eyedata$Sleep[i] == "6 hours" | eyedata$Sleep[i] == "7 hours" | eyedata$Sleep[i] == "More than 7 hours"){
      eyedata$SleepStatus[i] <- "Neither-Heavy, Sleep Lots"
    }
    else if (eyedata$Sleep[i] == "5 hours" | eyedata$Sleep[i] == "4 hours" | eyedata$Sleep[i] == "Less than 4 hours"){
      eyedata$SleepStatus[i] <- "Neither-Heavy, Sleep Little"
    }
    else {
      eyedata$SleepStatus[i] <- "No Sleep Entry"
    }
  }
  else if (eyedata$CourseStatus[i] == "Neither-Light"){
    if (eyedata$Sleep[i] == "6 hours" | eyedata$Sleep[i] == "7 hours" | eyedata$Sleep[i] == "More than 7 hours"){
      eyedata$SleepStatus[i] <- "Neither-Light, Sleep Lots"
    }
    else if (eyedata$Sleep[i] == "5 hours" | eyedata$Sleep[i] == "4 hours" | eyedata$Sleep[i] == "Less than 4 hours"){
      eyedata$SleepStatus[i] <- "Neither-Light, Sleep Little"
    }
    else {
      eyedata$SleepStatus[i] <- "No Sleep Entry"
    }
  }
}

### Class Location 
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    if (eyedata$Sight[i] == "Near-sighted"){
      if (eyedata$Class[i] == "Close to the front"){
        eyedata$ClassStatus[i] <- "Glasses, Nearsighted, Front"
      }
      else if (eyedata$Class[i] == "In the middle"){
        eyedata$ClassStatus[i] <- "Glasses, Nearsighted, Middle"
      }
      else if (eyedata$Class[i] == "The back"){
        eyedata$ClassStatus[i] <- "Glasses, Nearsighted, Back"
      }
      else {
        eyedata$ClassStatus[i] <- "No class location entry"
      }
    }
    else if (eyedata$Sight[i] == "Far-sighted"){
      if (eyedata$Class[i] == "Close to the front"){
        eyedata$ClassStatus[i] <- "Glasses, Farsighted, Front"
      }
      else if (eyedata$Class[i] == "In the middle"){
        eyedata$ClassStatus[i] <- "Glasses, Farsighted, Middle"
      }
      else if (eyedata$Class[i] == "The back"){
        eyedata$ClassStatus[i] <- "Glasses, Farsighted, Back"
      }
      else {
        eyedata$ClassStatus[i] <- "No class location entry"
      }
    }
    else {
      eyedata$ClassStatus[i] <- "No near/far sight entry"
    }
  }
  else if (eyedata$Wear[i] == "Neither"){
    if (eyedata$Sight[i] == "Near-sighted"){
      if (eyedata$Class[i] == "Close to the front"){
        eyedata$ClassStatus[i] <- "Neither, Nearsighted, Front"
      }
      else if (eyedata$Class[i] == "In the middle"){
        eyedata$ClassStatus[i] <- "Neither, Nearsighted, Middle"
      }
      else if (eyedata$Class[i] == "The back"){
        eyedata$ClassStatus[i] <- "Neither, Nearsighted, Back"
      }
      else {
        eyedata$ClassStatus[i] <- "No class location entry"
      }
    }
    else if (eyedata$Sight[i] == "Far-sighted"){
      if (eyedata$Class[i] == "Close to the front"){
        eyedata$ClassStatus[i] <- "Neither, Farsighted, Front"
      }
      else if (eyedata$Class[i] == "In the middle"){
        eyedata$ClassStatus[i] <- "Neither, Farsighted, Middle"
      }
      else if (eyedata$Class[i] == "The back"){
        eyedata$ClassStatus[i] <- "Neither, Farsighted, Back"
      }
      else {
        eyedata$ClassStatus[i] <- "No class location entry"
      }
    }
    else {
      eyedata$ClassStatus[i] <- "No near/far sight entry"
    }
  }
}

### Perception of Performance 
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    if (eyedata$Scale[i] == 4 | eyedata$Scale[i] == 5 ){
      eyedata$Performance[i] <- "Glasses, Good"
    }
    else if (eyedata$Scale[i] == 3){
      eyedata$Performance[i] <- "Glasses, OK"
    }
    else if (eyedata$Scale[i] <=2){
      eyedata$Performance[i] <- "Glasses, Bad"
    }
    else {
      eyedata$Performance[i] <- "No entry from scale"
    }
  }
  else if (eyedata$Wear[i] == "Neither"){
    if (eyedata$Scale[i] == 4 | eyedata$Scale[i] == 5 ){
      eyedata$Performance[i] <- "Neither, Good"
    }
    else if (eyedata$Scale[i] == 3){
      eyedata$Performance[i] <- "Neither, OK"
    }
    else if (eyedata$Scale[i] <=2){
      eyedata$Performance[i] <- "Neither, Bad"
    }
    else {
      eyedata$Performance[i] <- "No entry from scale"
    }
  }
}

### Glasses vs Neither 
Corrective = 0 
Neither = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    Corrective = Corrective + 1 
  }
  else if (eyedata$Wear[i] == "Neither"){
    Neither = Neither + 1
  }
}
eyedata$GlassesNeither[1] = Corrective
eyedata$GlassesNeither[2] = Neither

### Course Proportions
GlassesHeavy = 0
NeitherHeavy = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$CourseStatus[i] == "Glasses-Heavy"){
    GlassesHeavy = GlassesHeavy + 1
  }
  else if (eyedata$CourseStatus[i] == "Neither-Heavy"){
    NeitherHeavy = NeitherHeavy + 1
  }
}
eyedata$CourseProportion[1] = (GlassesHeavy / 121)*100
eyedata$CourseProportion[2] = (NeitherHeavy / 63)*100

### Study Hour Proportions
GlassesHardWorker = 0
NeitherHardWorker = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$StudyStatus[i] == "Glasses-Heavy, Hard Worker" | eyedata$StudyStatus[i] == "Glasses-Light, Hard Worker"){
    GlassesHardWorker = GlassesHardWorker + 1
  }
  else if (eyedata$StudyStatus[i] == "Neither-Heavy, Hard Worker" | eyedata$StudyStatus[i] == "Neither-Light, Hard Worker"){
    NeitherHardWorker = NeitherHardWorker + 1
  }
}
eyedata$StudyProportion[1] = (GlassesHardWorker / 121)*100
eyedata$StudyProportion[2] = (NeitherHardWorker / 63)*100

### Sleep Hour Proportions
GlassesSleepLots = 0
NeitherSleepLots = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$SleepStatus[i] == "Glasses-Heavy, Sleep Lots" | eyedata$SleepStatus[i] == "Glasses-Light, Sleep Lots"){
    GlassesSleepLots = GlassesSleepLots + 1
  }
  else if (eyedata$SleepStatus[i] == "Neither-Heavy, Sleep Lots" | eyedata$SleepStatus[i] == "Neither-Light, Sleep Lots"){
    NeitherSleepLots = NeitherSleepLots + 1 
  }
}
eyedata$SleepProportion[1] = (GlassesSleepLots / 115)*100
eyedata$SleepProportion[2] = (NeitherSleepLots / 62)*100

### Class Location Proportions 
GlassesFront = 0
GlassesMiddle = 0
GlassesBack = 0
NeitherFront = 0
NeitherMiddle = 0
NeitherBack = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$ClassStatus[i] == "Glasses, Nearsighted, Front" | eyedata$ClassStatus[i] == "Glasses, Farsighted, Front"){
    GlassesFront = GlassesFront + 1 
  }
  else if (eyedata$ClassStatus[i] == "Glasses, Nearsighted, Middle" | eyedata$ClassStatus[i] == "Glasses, Farsighted, Middle"){
    GlassesMiddle = GlassesMiddle + 1
  }
  else if (eyedata$ClassStatus[i] == "Glasses, Nearsighted, Back" | eyedata$ClassStatus[i] == "Glasses, Farsighted, Back"){
    GlassesBack = GlassesBack + 1 
  }
  else if (eyedata$ClassStatus[i] == "Neither, Nearsighted, Front" | eyedata$ClassStatus[i] == "Neither, Farsighted, Front"){
    NeitherFront = NeitherFront + 1 
  }
  else if (eyedata$ClassStatus[i] == "Neither, Nearsighted, Middle" | eyedata$ClassStatus[i] == "Neither, Farsighted, Middle"){
    NeitherMiddle = NeitherMiddle + 1 
  }
  else if (eyedata$ClassStatus[i] == "Neither, Nearsighted, Back" | eyedata$ClassStatus[i] == "Neither, Farsighted, Back"){
    NeitherBack = NeitherBack + 1
  }
}
eyedata$ClassProportion[1] = (GlassesFront / 110)*100
eyedata$ClassProportion[2] = (GlassesMiddle / 110)*100
eyedata$ClassProportion[3] = (GlassesBack / 110)*100
eyedata$ClassProportion[4] = (NeitherFront / 17)*100
eyedata$ClassProportion[5] = (NeitherMiddle / 17)*100
eyedata$ClassProportion[6] = (NeitherBack/ 17)*100

### DEBUGGING 
GlassesNoEntry = 0
NeitherNoEntry = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    if (eyedata$ClassStatus[i] == "No near/far sight entry" | eyedata$ClassStatus[i] == "No class location entry"){
      GlassesNoEntry = GlassesNoEntry + 1
    }
  }
  else if (eyedata$Wear[i] == "Neither"){
    if (eyedata$ClassStatus[i] == "No near/far sight entry" | eyedata$ClassStatus[i] == "No class location entry"){
      NeitherNoEntry = NeitherNoEntry + 1 
    }
  }
}
eyedata$ClassProportion[10] = GlassesNoEntry
eyedata$ClassProportion[11] = NeitherNoEntry

### Class Location Proportions Attempt 2
GlassesFront = 0
GlassesMiddle = 0
GlassesBack = 0
NeitherFront = 0
NeitherMiddle = 0
NeitherBack = 0
for (i in 1:nrow(eyedata)){
  if (eyedata$Wear[i] == "Eyeglasses" | eyedata$Wear[i] == "Contact Lenses" | eyedata$Wear[i] == "Both"){
    if (eyedata$Class[i] == "Close to the front"){
      GlassesFront = GlassesFront + 1 
    }
    else if (eyedata$Class[i] == "In the middle"){
      GlassesMiddle = GlassesMiddle + 1
    }
    else if (eyedata$Class[i] == "The back"){
      GlassesBack = GlassesBack + 1
    }
  }
  else if (eyedata$Wear[i] == "Neither"){
    if (eyedata$Class[i] == "Close to the front"){
      NeitherFront = NeitherFront + 1 
    }
    else if (eyedata$Class[i] == "In the middle"){
      NeitherMiddle = NeitherMiddle + 1
    }
    else if (eyedata$Class[i] == "The back"){
      NeitherBack = NeitherBack + 1
    }
  }
}
eyedata$ClassProportion[1] = (GlassesFront / 119)*100
eyedata$ClassProportion[2] = (GlassesMiddle / 119)*100
eyedata$ClassProportion[3] = (GlassesBack / 119)*100
eyedata$ClassProportion[4] = (NeitherFront / 62)*100
eyedata$ClassProportion[5] = (NeitherMiddle / 62)*100
eyedata$ClassProportion[6] = (NeitherBack/ 62)*100

### Perception of Performance Proportion
GlassesGood = 0
GlassesOk = 0
GlassesBad = 0
NeitherGood = 0
NeitherOk = 0
NeitherBad = 0
for (i in 1:nrow(eyedata)){
  if(eyedata$Performance[i] == "Glasses, Good"){
    GlassesGood = GlassesGood + 1
  }
  else if (eyedata$Performance[i] == "Glasses, OK"){
    GlassesOk = GlassesOk + 1
  }
  else if (eyedata$Performance[i] == "Glasses, Bad"){
    GlassesBad = GlassesBad + 1
  }
  else if (eyedata$Performance[i] == "Neither, Good"){
    NeitherGood = NeitherGood + 1 
  }
  else if (eyedata$Performance[i] == "Neither, OK" ){
    NeitherOk = NeitherOk + 1
  }
  else if (eyedata$Performance[i] == "Neither, Bad" ){
    NeitherBad = NeitherBad + 1 
  }
}
eyedata$PerformanceProportion[1] = (GlassesGood / 119)*100
eyedata$PerformanceProportion[2] = (GlassesOk/ 119)*100
eyedata$PerformanceProportion[3] = (GlassesBad/ 119)*100
eyedata$PerformanceProportion[4] = (NeitherGood/ 63)*100
eyedata$PerformanceProportion[5] = (NeitherOk/ 63)*100
eyedata$PerformanceProportion[6] = (NeitherBad/ 63)*100