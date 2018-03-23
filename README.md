##Human Activity Recognition Using Smartphones data cleaning and extraction
*Getting and Cleaning Data Course Project*

`run_analysis.R` is an R program file containing a single function that takes two optional input variables: the input data directory `indir` (default value: `"UCI HAR Dataset"`) and the output data directory `outdir` (default value: `"output"`). First, it reads the two smartphone sensor data sets, `train` and `test`, contained in `indir`, applying column names according to the included `features.txt` file, with some cleaning in the feature names to remove characters that are not allowed in a column name, as well as the subject identifiers and the activity labels for both of the data sets.

Next, the function selects only the columns containing mean values and standard deviations of measurements, denoted by feature names ending in `-mean()` and `-std()`, respectively, in `features.txt`. Then, it merges everything to a single data frame in the following form:

| **Subject**     | **(measurements)** | **Activity** |
|-----------------|--------------------|--------------|
| `subject_train` | `X_train`          | `y_train`    |
| `subject_test`  | `X_test`           | `y_test`     |

After this, it labels the activities according to the labels in the file `activity_labels.txt`, by changing the feature levels to match those labels. Then, it computes the average values of all measurements per combination of activity and test subject (thus yielding averages per activity, per subject).

Finally, it writes the results of both the full data set and the averages to text files in the directory specified by `outdir`. The full data set is written in the file `dataset.txt`, while the averages are put in `averages.txt`. The columns are as documented in the codebook (`CodeBook.md`).

The datasets can be read in R using `read.table()` using an appropriate path and with the header argument enabled. For example:  
`read.table("output/averages.txt", header=TRUE)`