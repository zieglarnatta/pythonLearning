#!/usr/local/bin/env python3

game_board = ['_'] * 9 #create 9 underscores
print(game_board[0] + '|' + game_board[1] + '|' + game_board[2])
print(game_board[3] + '|' + game_board[4] + '|' + game_board[5])
print(game_board[6] + '|' + game_board[7] + '|' + game_board[8])
#print(game_board)
board = [1,2,3,4,5,6]
#print(board)
while True:
    pos = input(" Enter any position you want from (0-8): \n")
    pos = int(pos)
    game_board[pos] = 'X'
    print(game_board[0] + '|' + game_board[1] + '|' + game_board[2])
    print(game_board[3] + '|' + game_board[4] + '|' + game_board[5])
    print(game_board[6] + '|' + game_board[7] + '|' + game_board[8])
