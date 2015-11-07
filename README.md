# rm-radiant-gamepack
A RocketMinsta gamepack for Radiant-family map editors.

## Installation (*nix)

0. Have NetRadiant (or something similar) installed in a user-writable directory. I mostly use [vradiant](http://projects.gamebuf.com/Vecxis/vradiant), compatibility with anything else is not guaranteed.
1. Clone this repository:  
  ```
  git clone https://github.com/nexAkari/rm-radiant-gamepack.git
  ```
2. cd into the clone:  
  ```
  cd rm-radiant-gamepack
  ```
3. Run the installation script:  
  ```
  ./link-to-radiant.sh <path to radiant installation>
  ```  
  This only needs to be done once. To update the gamepack later, simply run ```git pull``` inside of the newly cloned repository.
4. Open Radiant. If it asks you to choose a game, pick "RocketMinsta". Otherwise, go ```Edit -> Preferences -> Game```, pick "RocketMinsta" and restart the editor.
