# Zero Punctuation No Punctuation

*added: 2023-03-18*

I adore the **Every Zero Punctuation with No Punctuation** series available on the Escapist YouTube channel. But I was lacking a way to find specific reviews and I was curious how many episodes there are in total, what duration they are on average, and so on.

This data is not final. The current format is a draft and I will try to update it every year. I want to add a episode category column and ultimately create a direct-link table to every episode.

Thanks goes to all the people who created time stamps (credited in dataset) and of course The Escapist and Yahtzee.

## ZPNP Timestamps (zpnp_timestamps.csv)

796 observations of 7 variables.

-   **year** [double]: Zero Punctuation collection year
-   **title** [character]: Game or episode name
-   **hours** [character]: hours part of time
-   **minutes** [character]: minutes part of time
-   **seconds** [character]: seconds part of time
-   **total_seconds** [double]: total seconds
-   **time_stamp** [double]: regularized timestamp hh:mm:ss

| year | title                    | hours | minutes | seconds | total_seconds | time_stamp |
|----------:|:----------|:----------|:----------|:----------|----------:|:----------|
| 2008 | Crysis                   | 00    | 00      | 06      |             6 | 00:00:06   |
| 2008 | The Witcher              | 00    | 03      | 21      |           201 | 00:03:21   |
| 2008 | PAINKILLER (short video) | 00    | 06      | 52      |           412 | 00:06:52   |
| 2008 | No More Heroes           | 00    | 08      | 46      |           526 | 00:08:46   |
| 2008 | Burnout Paradise         | 00    | 12      | 11      |           731 | 00:12:11   |

## ZPNP Videos (zpnp_videos.csv)

15 observations of 4 variables.

-   **year** [double]: Zero Punctuation collection year
-   **video_id** [character]: Youtube video ID
-   **timestamp_id** [character]: Youtube ID of time stamp commenter
-   **video_duration** [double]: video duration hh:mm:ss

| year | video_id    | timestamp_id            | video_duration |
|-----:|:------------|:------------------------|:---------------|
| 2008 | cjwaBQRWXr8 | ForReviews-qn1jm        | 02:51:16       |
| 2009 | UtGcT6jhswY | ForReviews-qn1jm        | 03:37:14       |
| 2010 | oU4CtpQx-b4 | signalredd8906          | 03:42:58       |
| 2011 | CQhq7x3JX9Q | themariobroschannel8763 | 03:58:35       |
| 2012 | HBuJOJOVVuc | benbarnard0605          | 04:04:52       |
