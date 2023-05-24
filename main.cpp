#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <iostream>
#include "Game.hpp"

Game *game = nullptr;

int main(){

    game = new Game();

    while(game->running()){
        game->handleEvents();
        game->update();
        game->render();
    }
    
    game->clean();

    return 0;
}