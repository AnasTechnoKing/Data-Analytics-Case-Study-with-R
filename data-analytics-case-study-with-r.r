{"metadata":{"kernelspec":{"name":"ir","display_name":"R","language":"R"},"language_info":{"name":"R","codemirror_mode":"r","pygments_lexer":"r","mimetype":"text/x-r-source","file_extension":".r","version":"4.0.5"}},"nbformat_minor":4,"nbformat":4,"cells":[{"source":"<a href=\"https://www.kaggle.com/code/cascert/data-analytics-case-study-with-r?scriptVersionId=106495616\" target=\"_blank\"><img align=\"left\" alt=\"Kaggle\" title=\"Open in Kaggle\" src=\"https://kaggle.com/static/images/open-in-kaggle.svg\"></a>","metadata":{},"cell_type":"markdown","outputs":[],"execution_count":0},{"cell_type":"markdown","source":"# **Prepare Phase **","metadata":{}},{"cell_type":"markdown","source":"# **Downloading Data**","metadata":{}},{"cell_type":"code","source":"install.packages(\"tidyverse\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"lubridate\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"dplyr\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"ggplot2\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"tidyr\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"here\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"skimr\", lib = \"/usr/lib/R/library\")\ninstall.packages(\"janitor\", lib = \"/usr/lib/R/library\")","metadata":{"execution":{"iopub.status.busy":"2022-09-25T14:12:34.171119Z","iopub.execute_input":"2022-09-25T14:12:34.175931Z","iopub.status.idle":"2022-09-25T14:14:32.386647Z"},"trusted":true},"execution_count":7,"outputs":[{"name":"stderr","text":"Warning message in install.packages(\"dplyr\", lib = \"/usr/lib/R/library\"):\n“installation of package ‘dplyr’ had non-zero exit status”\n","output_type":"stream"}]},{"cell_type":"markdown","source":"Loading packages on the R Script. ","metadata":{}},{"cell_type":"code","source":"library(tidyverse)\nlibrary(lubridate)\nlibrary(dplyr)\nlibrary(ggplot2)\nlibrary(tidyr)\nlibrary(here)\nlibrary(skimr)\nlibrary(janitor)","metadata":{"execution":{"iopub.status.busy":"2022-09-25T14:14:32.403247Z","iopub.execute_input":"2022-09-25T14:14:32.405002Z","iopub.status.idle":"2022-09-25T14:14:32.430478Z"},"trusted":true},"execution_count":8,"outputs":[]},{"cell_type":"markdown","source":"# **Importing Dataset**","metadata":{}},{"cell_type":"markdown","source":"**dailyActivity_merged.csv**","metadata":{}},{"cell_type":"code","source":"Activity <- read.csv(\"dailyActivity_merged.csv\")","metadata":{"execution":{"iopub.status.busy":"2022-09-25T14:14:32.433096Z","iopub.execute_input":"2022-09-25T14:14:32.434555Z","iopub.status.idle":"2022-09-25T14:14:32.557861Z"},"trusted":true},"execution_count":9,"outputs":[{"name":"stderr","text":"Warning message in file(file, \"rt\"):\n“cannot open file 'dailyActivity_merged.csv': No such file or directory”\n","output_type":"stream"},{"ename":"ERROR","evalue":"Error in file(file, \"rt\"): cannot open the connection\n","traceback":["Error in file(file, \"rt\"): cannot open the connection\nTraceback:\n","1. read.csv(\"dailyActivity_merged.csv\")","2. read.table(file = file, header = header, sep = sep, quote = quote, \n .     dec = dec, fill = fill, comment.char = comment.char, ...)","3. file(file, \"rt\")"],"output_type":"error"}]},{"cell_type":"code","source":"head(Activity)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Activity)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Activity)\n\n","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**dailyCalories_merged**","metadata":{}},{"cell_type":"code","source":"Calories <- read.csv(\"dailyCalories_merged.csv\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(Calories)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Calories)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Calories)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**dailyIntensities_merged.csv**","metadata":{}},{"cell_type":"code","source":"Intensities <- read.csv(\"dailyIntensities_merged.csv\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(Intensities)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Intensities)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Intensities)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**heartrate_seconds_merged.csv**","metadata":{}},{"cell_type":"code","source":"Heartrate <- read.csv(\"heartrate_seconds_merged.csv\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(Heartrate)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Heartrate)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Heartrate)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**sleepDay_merged.csv**","metadata":{}},{"cell_type":"code","source":"Sleep <- read.csv(\"sleepDay_merged.csv\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(Sleep)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Sleep)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Sleep)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**weightLogInfo_merged.csv**","metadata":{}},{"cell_type":"code","source":"Weight <- read.csv(\"weightLogInfo_merged.csv\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"head(Weight)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"colnames(Weight)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"str(Weight)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"> # **Process Phase **","metadata":{}},{"cell_type":"markdown","source":"**Cleaning & Formatting** ","metadata":{}},{"cell_type":"markdown","source":"**dailyActivity_merged.csv**","metadata":{}},{"cell_type":"code","source":"Activity$ActivityDate=as.POSIXct(Activity$ActivityDate, format=\"%m/%d/%Y\", tz=Sys.timezone())\nActivity$date <- format(Activity$ActivityDate, format = \"%m/%d/%y\")\nActivity$ActivityDate=as.Date(Activity$ActivityDate, format=\"%m/%d/%Y\", tz=Sys.timezone())\nActivity$date=as.Date(Activity$date, format=\"%m/%d/%Y\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**dailyIntensities_merged.csv**","metadata":{}},{"cell_type":"code","source":"Intensities$ActivityDay=as.Date(Intensities$ActivityDay, format=\"%m/%d/%Y\", tz=Sys.timezone())","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**sleepDay_merged.csv**","metadata":{}},{"cell_type":"code","source":"Sleep$SleepDay=as.POSIXct(Sleep$SleepDay, format=\"%m/%d/%Y %I:%M:%S %p\", tz=Sys.timezone())\nSleep$date <- format(Sleep$SleepDay, format = \"%m/%d/%y\")\nSleep$date=as.Date(Sleep$date, \"% m/% d/% y\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"> # **Analyze Phase **","metadata":{}},{"cell_type":"markdown","source":"**Summarizing** ","metadata":{}},{"cell_type":"code","source":"Activity %>%\nsummarise(Activity_participants = n_distinct(Activity$Id))","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"n_distinct(Calories$Id)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"n_distinct(Intensities$Id)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"n_distinct(Heartrate$Id)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"n_distinct(Sleep$Id)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"n_distinct(Weight$Id)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**Activity, Calories, Intensities, and Sleep.**","metadata":{}},{"cell_type":"code","source":"Activity %>%\n    select(TotalSteps,\n           TotalDistance,\n           SedentaryMinutes, Calories) %>%\n    summary()","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"Intensities %>%\n  select(VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes) %>%\n  summary()","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"Calories %>%\n  select(Calories) %>%\n  summary()","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"Sleep %>%\n  select(TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed) %>%\n  summary()","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"code","source":"Weight %>%\n  select(WeightKg, Fat) %>%\n  summary()","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"# **Data visualization (Share and Act Phases) **","metadata":{}},{"cell_type":"markdown","source":"**Relationship between Steps and Sedentary time**","metadata":{}},{"cell_type":"code","source":"ggplot(data=Activity, aes(x=TotalSteps, y=SedentaryMinutes)) + geom_point() + geom_smooth() + labs(title) ","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**Relationship between Minutes Asleep and Time in Bed**","metadata":{}},{"cell_type":"code","source":"ggplot(data=Sleep, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) + geom_point()+ geom_smooth() + labs(title)","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**Relationship between Steps and Calories**","metadata":{}},{"cell_type":"code","source":"ggplot(data=Activity, aes(x=TotalSteps, y=Calories)) +geom_point() + geom_smooth() + labs(title=\"Total Steps vs. Calories\")","metadata":{"trusted":true},"execution_count":null,"outputs":[]},{"cell_type":"markdown","source":"**Intensities data**","metadata":{}},{"cell_type":"code","source":"Intensities$ActiveIntensity <- (Intensities$VeryActiveMinutes)/60\n\nCombined_data <- merge(Weight, Intensities, by=\"Id\", all=TRUE)\nCombined_data$time <- format(Combined_data$Date, format = \"%H:%M:%S\")\n\nggplot(data=Combined_data, aes(x=time, y=ActiveIntensity)) + geom_histogram(stat = \"identity\", fill='dark red')theme(axis.text.x = element_text(angle = 90)) + labs(title=\"Total very Active Intensity vs. Time \")","metadata":{"trusted":true},"execution_count":null,"outputs":[]}]}