clear all; close all; clc;

songList = dir('songs');
numberofSongs = numel(songList)-2;
songTitle = [];
for k = 1:numberofSongs
    information = songList(k+2);
    songTitle{k} = information.name;
end
songTitle = songTitle';

prompt = msgbox('Creating Hash Table');
hash_table = createHash(200,songTitle);
close(prompt);

prompt = msgbox('Reading Song');
[y,fs] = audioread('Hooked_on_a_Feeling.mp3');
y = y(:,1);
y = y(6400:6528);
Y = fft(y);
y = abs(Y);
[~,maxf] = max(Y)
close(prompt);


% prompt = msgbox('Looking for Match');
% matchID = match_segment(y,fs,hash_table,length(songTitle))
% close(prompt);