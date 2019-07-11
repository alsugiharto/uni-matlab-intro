% question 1
loadBrainData = load('brain_data.mat');
loadLabels = load('labels.mat');

brainData = loadBrainData.data;
labelsData = loadLabels.labels;

% question 2
%get the trial number of each phoneme
tabulateLabelData = tabulate(labelsData);
trialsPerPhoneme = tabulateLabelData(:,2);

%create the bar figure and set its all properties
figure('name','how many trials per phoneme');
bar(trialsPerPhoneme) 
xlabels={'p'; 'k'; 'a' ; 'u'; 'rest' };
set(gca,'xticklabel',xlabels);
ylabel('number of trials');
xlabel('Phoneme');
title('how many trials per phoneme');
legend('number of trials')

% question 3
question3 = [];
%loop per channel
for channel = 1:4
    %loop per phoneme
    for phoneme = 1:5
       %read the channel
       brainDatax = brainData(:,:,channel);
       %read the phoneme
       C = brainDatax(labelsData(:,1) == phoneme,:);
       %2d to 1d
       C_all = C(:);
       %get all the mean
       C_mean = mean(C_all)
       %add to the result table
       question3 = [question3; [channel, phoneme, C_mean]];
    end
end
question3;

% question 4
figure('name','average timecourses');
color= ['r','g','b','k'];
for loop = 1:4
    subplot(4,2,loop);
    first = (loop-1)*5+1;
    second = (loop)*5;
    h = bar(1:5, question3(first:second, 3) ); 
    set(h,'FaceColor',color(loop));
    xlabels={'p'; 'k'; 'a' ; 'u'; 'rest' };
    set(gca,'xticklabel',xlabels);
    ylabel('mean');
    xlabel('Phoneme');
    title('channel 4');
    legend('mean')
end
%are there differences between responses to different phoneme types per channel?
%% Yes

%Do all channels discriminate between the phoneme types in the same way?
%% No

%What can you say about the timing of the difference?
% -

% question 5
%-

% question 6
question6PerChannel = [];
%loop per channel
for channel = 1:4
   %read the channel
   brainDatax = brainData(:,:,channel);
   %2d to 1d
   C_all = brainDatax(:);
   %get all the mean
   C_mean = mean(C_all)
   %add to the result table
   question6PerChannel = [question6PerChannel; [channel, C_mean]];
end
question6PerChannel;

%create the bar figure and set its all properties
figure('name','average over all trials per channel');
bar(question6PerChannel(:,2)) 
xlabels={'1'; '2'; '3' ; '4'};
set(gca,'xticklabel',xlabels);
ylabel('time points');
xlabel('Channel');
title('average over all trials per channel');
legend('average over all trials per channel')


question6PerPhoneme = [];
%loop per Phoneme
for phoneme = 1:5
   %read the phoneme
   C = brainData(labelsData(:,1) == phoneme,:);
   %2d to 1d
   C_all = C(:);
   C_all;
   %get all the mean
   C_mean = mean(C_all)
   %add to the result table
   question6PerPhoneme = [question6PerPhoneme; [phoneme, C_mean]];
end
question6PerPhoneme;

%create the bar figure and set its all properties
figure('name','average over all trials per phoneme');
bar(question6PerPhoneme(:,2)) 
xlabels={'p'; 'k'; 'a' ; 'u'; 'rest'; };
set(gca,'xticklabel',xlabels);
ylabel('time points');
xlabel('phoneme');
title('average over all trials per phoneme');
legend('average over all trials per phoneme')
