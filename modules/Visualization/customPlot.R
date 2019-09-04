library(ggplot2)

customPlot <- function(df, xString, yString, toLabel)
{
  print(head(df$cohort))
  colors <- c("M" = "#2E8B57", "B" = "#4B0082")
  ggplot(df,
    aes_string(xString, yString)) +
      geom_point(
        aes(colour = diagnosis),
          size = 8, alpha = 0.55) +
    #  geom_point(shape = 1, size = 8, colour = "black") +
      geom_text(
        aes(label = ifelse(cohort %in% toLabel, as.character(cohort), "")),
            size = 8, vjust = "inward", hjust = "inward", color = "orange") +
      theme(legend.text = element_text(size = 10, color = "black")) +
            theme(legend.title = element_blank()) +
      scale_color_manual(values = colors)

}
