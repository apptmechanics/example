//
//  EditPreferencesViewController.m
//  SidebarDemo
//
//  Created by Aiswarya kodali on 2/09/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "EditPreferencesViewController.h"
#import "AppController.h"
#define DOCUMENTS_FOLDER [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]
@interface EditPreferencesViewController ()

@property(strong,nonatomic)AVAudioRecorder *recorder;
@property (strong,nonatomic)AVAudioPlayer *player;
@property(strong,nonatomic)AVAudioRecorder *fraseRecorder;
@property (strong,nonatomic)AVAudioPlayer *frasePlayer;
@property (strong,nonatomic) NSURL *soundFileURL;
@property (strong,nonatomic) NSURL *soundFileURLFarse;
@property (nonatomic) BOOL isPhraseClicked;


@property (strong, nonatomic) IBOutlet UIButton *cameraButton;

@property (strong,nonatomic) IBOutlet UIButton *playButtonFrase;
@property (strong,nonatomic) IBOutlet UIButton *recordButtonFrase;
@property (strong,nonatomic) IBOutlet UIButton *saveButtonFrase;
@property (strong, nonatomic) IBOutlet UIImageView *cameraImage;

@property (strong,nonatomic) IBOutlet UIButton *playButton;
@property (strong,nonatomic) IBOutlet UIButton *recordButton;
@property (strong,nonatomic) IBOutlet UIButton *saveButton;
@property(strong,nonatomic)UIPopoverController *popover;


-(IBAction)playButtonFrase:(id)sender;
-(IBAction)recodBttonFrase:(id)sender;
-(IBAction)saveButtonFrase:(id)sender;
- (IBAction)recordButtonFraseTouchUpInside:(id)sender;
- (IBAction)cameraButton:(id)sender;


@property(nonatomic,strong)AppController *appController;

-(IBAction)recodBtton:(id)sender;
-(IBAction)saveButton:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nametextField;
- (IBAction)recordButtonTouchUpInside:(id)sender;

@end

@implementation EditPreferencesViewController{
    
    NSString * recorderFilePath;
}

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    self.appController = [AppController sharedManager];
    
    
    
    if([self.appController.profileName isEqualToString:@""]){
        
    }else{
        
        self.nametextField.text = self.appController.profileName;
    }
    
    CGImageRef cgref = [self.appController.profileImage CGImage];
    CIImage *cim = [self.appController.profileImage CIImage];
    
    if (cim == nil && cgref == NULL)
    {
        NSLog(@"no underlying data");
    }else{
        
        self.cameraImage.image = self.appController.profileImage;
    }
    
    
    
    
    
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    longPress.delegate = self;
    [longPress setMinimumPressDuration:0];
    [self.recordButton addGestureRecognizer:longPress];
    
    
    
     UILongPressGestureRecognizer *longPressForPrase = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressPrase:)];
    
    longPressForPrase.delegate = self;
    [longPressForPrase setMinimumPressDuration:0];
    [self.recordButtonFrase addGestureRecognizer:longPressForPrase];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    self.cameraButton.layer.cornerRadius = 10; // this value vary as per your desire
    self.cameraButton.clipsToBounds = YES;

    self.cameraImage.layer.cornerRadius = self.cameraImage.frame.size.width/2;
    self.cameraImage.clipsToBounds = YES;
    
    
    
    // Set the audio file for recorder
    NSArray *pathComponents = [NSArray arrayWithObjects:
                               [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject],
                               @"MyAudioMemo.m4a",
                               nil];
    NSURL *outputFileURL = [NSURL fileURLWithPathComponents:pathComponents];
    self.appController.recordedUrl = outputFileURL;
    // Setup audio session
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    // Define the recorder setting
    NSMutableDictionary *recordSetting = [[NSMutableDictionary alloc] init];
    
    [recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
    [recordSetting setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
    [recordSetting setValue:[NSNumber numberWithInt: 2] forKey:AVNumberOfChannelsKey];
    
    // Initiate and prepare the recorder
    self.recorder = [[AVAudioRecorder alloc] initWithURL:self.appController.recordedUrl settings:recordSetting error:nil];
    self.recorder.delegate = self;
    self.recorder.meteringEnabled = YES;
    [self.recorder prepareToRecord];

    
    
    
    
    
    
    
    
    
    
    // Set the audio file for recorder frase
    NSArray *pathComponentsFrase = [NSArray arrayWithObjects:
                               [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject],
                               @"MyAudioMemoPrase.m4a",
                               nil];
    NSURL *outputFileURLPrase = [NSURL fileURLWithPathComponents:pathComponentsFrase];
    self.appController.recordedFraseUrl = outputFileURLPrase;
    // Setup audio session
    AVAudioSession *sessionPrase = [AVAudioSession sharedInstance];
    [sessionPrase setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    // Define the recorder setting
    NSMutableDictionary *recordSettingPrase = [[NSMutableDictionary alloc] init];
    
    [recordSettingPrase setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
    [recordSettingPrase setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
    [recordSettingPrase setValue:[NSNumber numberWithInt: 2] forKey:AVNumberOfChannelsKey];
    
    // Initiate and prepare the recorder
    self.fraseRecorder = [[AVAudioRecorder alloc] initWithURL:self.appController.recordedFraseUrl settings:recordSettingPrase error:nil];
    self.fraseRecorder.delegate = self;
    self.fraseRecorder.meteringEnabled = YES;
    [self.fraseRecorder prepareToRecord];
    

    
    
    
    
    
    
    
    
    
    
    
    [self.nametextField setReturnKeyType:UIReturnKeyDone];
    
    self.nametextField.delegate = self;
    
    
    
    
    
    
    
    
    
   
  
    self.isPhraseClicked = NO;




}

- (void)longPress:(UILongPressGestureRecognizer *)longPress {
    if(([longPress state] == UIGestureRecognizerStateEnded) || ([longPress state] == UIGestureRecognizerStateEnded)) {
        NSLog(@"long press ended");
        [self.recorder stop];
        AVAudioSession *audioSession = [AVAudioSession sharedInstance];
        [audioSession setActive:NO error:nil];
    }
    else if([longPress state] == UIGestureRecognizerStateBegan) {
        NSLog(@"long press detected");
        
        if (self.player.playing) {
            [self.player stop];
        }
        
        if (!self.recorder.recording) {
            AVAudioSession *session = [AVAudioSession sharedInstance];
            [session setActive:YES error:nil];
            
            // Start recording
            [self.recorder record];
        }
    }
}

- (void)longPressPrase:(UILongPressGestureRecognizer *)longPress {
    if(([longPress state] == UIGestureRecognizerStateEnded) || ([longPress state] == UIGestureRecognizerStateEnded)) {
        NSLog(@"long press ended");
        [self.fraseRecorder stop];
        AVAudioSession *audioSession = [AVAudioSession sharedInstance];
        [audioSession setActive:NO error:nil];
    }
    else if([longPress state] == UIGestureRecognizerStateBegan) {
        NSLog(@"long press detected");
        
        if (self.frasePlayer.playing) {
            [self.frasePlayer stop];
        }
        
        if (!self.fraseRecorder.recording) {
            AVAudioSession *session = [AVAudioSession sharedInstance];
            [session setActive:YES error:nil];
            
            // Start recording
            [self.fraseRecorder record];
        }
    }
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)playButton:(id)sender {
    
    NSLog(@"playTapped");
    if (!self.recorder.recording){
        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:self.recorder.url error:nil];
        [self.player setDelegate:self];
        [self.player play];
    }
    
    
}


-(IBAction)playButtonFrase:(id)sender{
    
    NSLog(@"playTapped");
    if (!self.fraseRecorder.recording){
        self.frasePlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:self.fraseRecorder.url error:nil];
        [self.frasePlayer setDelegate:self];
        [self.frasePlayer play];
    }

    
    
}


#pragma mark - AVAudioRecorderDelegate

- (void) audioRecorderDidFinishRecording:(AVAudioRecorder *)avrecorder successfully:(BOOL)flag{
    NSLog(@"audioRecorderDidFinishRecording");
    [self.playButton setEnabled:YES];
    [self.playButtonFrase setEnabled:YES];
}

#pragma mark - AVAudioPlayerDelegate

- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // test if our control subview is on-screen
    if (self.playButton.superview != nil) {
        if ([touch.view isDescendantOfView:self.playButton]) {
            // we touched our control surface
            return NO; // ignore the touch
        }
    }
    return YES; // handle the touch
    
    
    
    
    if (self.playButtonFrase.superview != nil) {
        if ([touch.view isDescendantOfView:self.playButtonFrase]) {
            // we touched our control surface
            return NO; // ignore the touch
        }
    }
    return YES; // handle the touch

}













-(IBAction)saveButtonFrase:(id)sender{
    
    
    
    
}


-(IBAction)recodBtton:(id)sender{
    
   // [self startRecording];
    
    
    
}
-(IBAction)saveButton:(id)sender{
    
    
    
    
}











- (IBAction)cameraButton:(id)sender {
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                             delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Take Photo With Camera", @"Select Photo From Library", @"Cancel", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleAutomatic;
    actionSheet.destructiveButtonIndex = 2;
    [actionSheet showInView:self.view];
    
    
    
    
    
}



- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self TakePhotoWithCamera];
    }
    else if (buttonIndex == 1)
    {
        [self SelectPhotoFromLibrary];
    }
    
    else if (buttonIndex == 2)
    {
        NSLog(@"cancel");
    }
}



-(void) TakePhotoWithCamera
{
    [self startCameraPickerFromViewController:self usingDelegate:self];
}

-(void) SelectPhotoFromLibrary
{
    [self startLibraryPickerFromViewController:self usingDelegate:self];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [[picker parentViewController] dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)startCameraPickerFromViewController:(UIViewController*)controller usingDelegate:(id<UIImagePickerControllerDelegate>)delegateObject
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.allowsEditing = YES;
        picker.delegate = self;
        [controller presentViewController:picker animated:NO completion:nil];
        //[picker release];
    }
    return YES;
}

- (BOOL)startLibraryPickerFromViewController:(UIViewController*)controller usingDelegate:(id<UIImagePickerControllerDelegate>)delegateObject
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
        UIImagePickerController *picker1 = [[UIImagePickerController alloc]init];
        picker1.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        picker1.allowsEditing = YES;
        picker1.delegate = self;
        [controller presentViewController:picker1 animated:NO completion:nil];
        //[picker1 release];
    }
    return YES;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage * img = [info objectForKey:@"UIImagePickerControllerEditedImage"];
    [self.cameraImage setImage:img];
    
    self.appController.profileImage = img;
    
    
   // [self useImage:img];
    [self dismissViewControllerAnimated:YES completion:Nil];
  //  UINavigationController* navController = self.navigationController;
 //   UIViewController* controller = [navController.viewControllers objectAtIndex:0];
  //  [controller dismissViewControllerAnimated:YES completion:Nil];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.appController.profileName = textField.text;
    
    [textField resignFirstResponder];
}


@end
