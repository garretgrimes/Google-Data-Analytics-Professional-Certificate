library(palmerpenguins)
library(ggplot2)

#Examples of using ggplot2

View(penguins)

ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

ggplot(data=penguins) +
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,color=cut))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=cut))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity))

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=color,fill=cut)) +
  facet_wrap(~cut)

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_grid(sex~species)

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_grid(~species)

#Add Titles
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="blue")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="blue")

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="blue",fontface="bold",size=4.5)

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="blue",fontface="bold",size=3.5,angle=25)

#Adding parts of plot by assigning a value and then using "value"+annotate

p <- ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest",color="blue",fontface="bold",size=3.5,angle=25)

p + annotate("text",x=190,y=5500,label="The Adelies are the smallest",color="red",fontface="bold",size=3.5,angle=25)

#combining these two (above)

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest!",color="blue",fontface="bold",size=3.7,angle=25)+
  annotate("text", x=190,y=5500,label="The Adelies are the smallest!",color="red",fontface="bold",size=3.7,angle=25)

#how to use ggsave

ggsave("Three Penguin Species.png") #this will save to documents without defining file path
