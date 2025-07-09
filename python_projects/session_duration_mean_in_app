# This piece of code is an example of how to find an average duration (mean) of time spent in an app for Android in 2024. 
# This is a fictional dataset example!

def findSessionDurationMean(appStats_df: pd.DataFrame) -> int:
    # Filter the DataFrame for the needed year and device type
    filtered = appStats_df[
        (appStats_df["year"] == 2024) & 
        (appStats_df["device_type"] == "Android")
    ]
    
    # Compute the mean of session duration
    mean_duration = filtered["time_per_session"].mean()
    
    # Return mean if available, else None
    return round(mean_duration, 2) if not pd.isna(mean_duration) else None

print(findSessionDurationMean(appStats_df))
