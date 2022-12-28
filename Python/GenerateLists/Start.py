# imports
import os

# topics array with paths
topics = []

# topic class
class topic:
   def __init__(self, name, path):
      self.name = name
      self.path = path

# append to topics
topics.append(topic('Repos', 'E:/Repos'))
topics.append(topic('Program Files', 'C:/Program Files'))
topics.append(topic('Program Files (x86)', 'C:/Program Files (x86)'))
topics.append(topic('Installers', 'D:/Installers'))
topics.append(topic('Portable', 'D:/Portable'))
topics.append(topic('Nerd Fonts', 'D:/Nerd Fonts'))
topics.append(topic('Disks', 'E:/Disks'))
topics.append(topic('Courses', 'E:/Courses'))
topics.append(topic('TV Shows', 'E:/Media/TV Shows'))
topics.append(topic('Movies', 'E:/Media/Movies'))
topics.append(topic('Steam', 'E:/Games/Steam/steamapps/common'))
topics.append(topic('Games', 'E:/Games'))

# loop topics, read directory contents, write to new file
for topic in topics:
    directory = topic.path
    saveLocation = os.path.join(os.getcwd(), 'Lists', f'{topic.name}.md')
    data = os.listdir(topic.path)
    data.insert(0, topic.name)
    data.insert(1, '===================')
    with open(saveLocation, "w") as f:
        f.writelines('\n'.join(data))
