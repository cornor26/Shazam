clear all; close all; clc;

songnames = cell(3,1);
songnames{1} = 'Baba_Oriley.mp3';
songnames{2} = 'Hooked_on_a_Feeling.mp3';
songnames{3} = 'Ljones - Mango Kimono.mp3';
songnames 

prompt = msgbox('Creating Hash Table');
hash_table = createHash(200,songnames);
close(prompt);

prompt = msgbox('Reading Song');
[y,fs] = audioread('Hooked_on_a_Feeling.mp3');
y = y(:,1);
y = y(6400:6528);
Y = fft(y);
y = abs(Y);
[~,maxf] = max(Y)
close(prompt);

prompt = msgbox('Looking for Match');
matchID = match_segment(y,fs,hash_table,length(songnames))
close(prompt);