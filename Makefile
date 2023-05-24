CC = clang++
CFLAGS = -g -Wall $$(pkg-config --cflags sdl2 sdl2_image sdl2_mixer sdl2_net sdl2_ttf)
LDFLAGS = -lboost_filesystem $$(pkg-config --libs sdl2 sdl2_image sdl2_mixer sdl2_net sdl2_ttf)

OBJFILES = main.o Game.o
TARGET = game

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) -std=c++11 $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS) 

clean:
	rm -f $(TARGET) $(OBJFILES) *~
