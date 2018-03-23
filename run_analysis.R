# Run_analysis processes data from a smartphone sensor data study. It reads the
# observations and the activity labels and it produces a merged data set with
# only the average and standard deviations of the measurements. Additionally,
# it makes a second data set with the averages of these values over the
# different activities and the individual test subjects.
#
# The argument indir is a path to the input data set and outdir is a path to
# the output data set. Both have default values.
#
# See README.md for more information and CodeBook.md for a description of the
# data columns.

run_analysis <- function(indir = "UCI HAR Dataset", outdir = "output") {
	# Load the library we are going to use
	library(dplyr)
	
	# Read the feature names and convert them into allowed column names and remove
	# the double dots (..) otherwise created from the parenthesis in most of the
	# column names
	features_file <- file.path(indir, "features.txt")
	features <- read.table(features_file, as.is = TRUE,
						   col.names = c("Index", "Feature"))
	features <- mutate(features, Feature = gsub("..", "", make.names(Feature),
					   fixed = TRUE))
	
	# Find the data files
	subject_train_file <- file.path(indir, "train", "subject_train.txt")
	X_train_file <- file.path(indir, "train", "X_train.txt")
	y_train_file <- file.path(indir, "train", "y_train.txt")
	subject_test_file <- file.path(indir, "test", "subject_test.txt")
	X_test_file <- file.path(indir, "test", "X_test.txt")
	y_test_file <- file.path(indir, "test", "y_test.txt")
	
	# Read the training and the test sets, using the feature labels
	subject_train <- read.table(subject_train_file, col.names = "Subject")
	X_train <- read.table(X_train_file, col.names = features$Feature)
	y_train <- read.table(y_train_file, col.names = "Activity",
						  colClasses = "factor")
	subject_test <- read.table(subject_test_file,
						  col.names = "Subject")
	X_test <- read.table(X_test_file, col.names = features$Feature)
	y_test <- read.table(y_test_file, col.names = "Activity",
						  colClasses = "factor")
	
	# Keep only the mean and standard deviation measurements in the data set
	features <- filter(features,
					   (grepl(".mean", Feature) & !grepl(".meanFreq", Feature))
					   | grepl(".std", Feature))
	X_train <- select(X_train, features$Feature)	
	X_test <- select(X_test, features$Feature)	
	
	# Merge everything
	dataset <- bind_rows(bind_cols(subject_train, X_train, y_train),
						 bind_cols(subject_test, X_test, y_test))
	
	# Read the activity labels and assign them to the Activity column
	activity_labels_file <- file.path(indir, "activity_labels.txt")
	activity_labels <- read.table(activity_labels_file, as.is = TRUE,
								  col.names = c("Index", "Activity"))
	activity_labels <- mutate(activity_labels,
							  Activity = gsub('_', ' ', Activity))
	activity_labels <- arrange(activity_labels, Index)
	levels(dataset$Activity) <- activity_labels$Activity 

	# Make a second data set containing the averages per activity and subject
	averages <- summarise_all(group_by(dataset, Activity, Subject), mean)
	
	# Create the output directory if it doesn't yet exist
	if (!dir.exists(outdir)){
		dir.create(outdir)
	}
	
	# Write both the full data set and the averages to disk
	outfile = file.path(outdir, "dataset.txt")
	write.table(dataset, outfile, row.names = FALSE)
	act_avg_outfile = file.path(outdir, "averages.txt")
	write.table(averages, act_avg_outfile, row.name = FALSE)
}