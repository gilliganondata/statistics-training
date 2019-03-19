default_theme <- theme_bw() +
  theme(text = element_text(family="Nunito"),
        plot.title = element_text(size = 10, face = "bold", hjust = 0.5),
        plot.margin = margin(1.5,0,0,0,"cm"),
        axis.text.x = element_text(size = 10, margin = margin(t=0.3, unit="cm")),
        axis.text.y = element_text(size = 10),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        axis.line.x = element_blank(),
        axis.line.y = element_blank(),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.position = "top",
        legend.justification = "center",
        panel.border = element_blank(),
        panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_line(size=0.5, colour = "gray90"),
        panel.grid.minor = element_blank())

theme_heatmap <- default_theme

theme_line <- default_theme +
  theme(axis.text.y = element_text(size = 16, margin = margin(l=0.5, unit="cm")),
        axis.text.x = element_blank(),
        axis.title = element_text(size = 18, face = "bold"),
        axis.line.x = element_line())

theme_bar <- theme_light() +
  theme(text = element_text(family="Nunito"),
        panel.grid = element_blank(),
        panel.border = element_blank(),
        axis.title = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_text(size = 16, face="bold", color="gray10"),
        axis.ticks = element_blank())

theme_sparklines <- theme_bw() +
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.position = "none",
        legend.justification = "center",
        strip.text.x = element_text(face = "bold", size = 14, colour = "grey10"),
        strip.text.y = element_text(face = "bold", size = 14, colour = "grey10", angle = 180, hjust=1),
        strip.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.spacing = unit(0,"in"),
        panel.background = element_rect(fill = NA, color = NA))

theme_histogram <- default_theme +
  theme(axis.text.y = element_text(size = 14, face = "plain", margin = margin(0,5,0,5, unit="pt")),
        axis.text.x = element_text(size = 14, margin = margin(10,0,5, unit="pt")),
        axis.line.x = element_line(),
        axis.title = element_text(size=16, face = "bold"),
        plot.margin=unit(c(10,30,10,30), "pt"))

theme_histogram_h <- default_theme +
  theme(axis.text.x = element_text(size = 26, face = "plain", margin = margin(0,5,0,5, unit="pt")),
        axis.text.y = element_text(size = 26, margin = margin(10,0,5, unit="pt")),
        axis.line.y = element_line(),
        axis.title = element_text(size=30, face = "bold"),
        panel.grid.major.y = element_blank(),
        plot.margin=unit(c(10,30,10,30), "pt"))

theme_densityplot <- theme_histogram +
  theme(axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size = 14, margin = margin(10,0,5, unit="pt")),
        panel.grid.major.y = element_blank())
# ,
#         axis.line.x.bottom = element_line())

theme_densityplot_h <- theme_histogram +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_text(size = 14, margin = margin(l=0.5, r=0.5, unit="cm")),
        panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank())
# ,
#         axis.line.y.left = element_line())

# Theme for the Holt-Winters forecast charts
theme_hw <- default_theme +
  theme(axis.text.x = element_blank(),
        axis.text.y = element_text(size = 14),
        axis.title.x = element_text(size = 10, hjust = 0.5),
        axis.line.x = element_line(color = "gray50"))
