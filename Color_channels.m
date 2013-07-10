%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Author : Nakul Rao I
%%% Date : 9 / 7 / 2013
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


vid = videoinput('winvideo', 1, 'YUY2_640x480');
vid.ReturnedColorspace = 'rgb';

% Take first picture
reply = 'No';
reply = next_pic;

if strcmp(reply, 'Yes')
    % Take second picture
    snapshot1 = getsnapshot(vid);
else
    incomplete();
end

reply = 'No';
reply = next_pic;

if strcmp(reply, 'Yes')
    % Take second picture
    snapshot2 = getsnapshot(vid);
else
    incomplete();
end

reply = 'No';
reply = next_pic;

if strcmp(reply, 'Yes')
    % Take third picture
    snapshot3 = getsnapshot(vid);
else
    incomplete();
end

% Extract red channel from snapshot1
R = snapshot1(:,:,1);

% Extract green channel from snapshot2
G = snapshot2(:,:,2);

% Extract blue channel from snapshot3
B = snapshot3(:,:,3);

% display the red, green and blue components
figure, imshow(R);
figure, imshow(G);
figure, imshow(B);

% combine the three channels to form a color image
image(:,:,1) = R;
image(:,:,2) = G;
image(:,:,3) = B;

% display image
figure, imshow(image);
