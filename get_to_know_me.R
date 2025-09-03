library(tidygeocoder)

coord_df <- tibble(
  latitude = c(43.189521, 43.024872, 43.81121),
  longitude = c(-112.343732, -112.411102, -111.8057)
)

places_df <- coord_df %>% reverse_geocode(latitude, longitude)

phrases_df <- tibble(
  phrase = c(
    "I drove past this every day when I had to go to high school: ",
    "I had prom here: ",
    "I met my wife here: "
    )
  )

answers_df <- cbind(phrases_df, places_df)

View(answers_df %>% select(phrase, address))
