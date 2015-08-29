//
//  ViewController.m
//  UIScrollViewChallenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //quindi qui creiamo l'image view
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"]];
    // qui impostiamo il contentSize(cioè la taglia del contenuto nel quale operà la scrollview) della scrollview uguale alla taglia della cornice dell'imageView
    self.scrollView.contentSize = self.globalImageView.frame.size;
    // qui rendiamo l'imageView subview della scrollView
    [self.scrollView addSubview:self.globalImageView];
    // poi impostiamo il view controller come delegato in modo tale che possa eseguire il metodo del protocollo UIScrollViewDelegate
    self.scrollView.delegate = self;
    // qui impostiamo il maximumZoomScale
    self.scrollView.maximumZoomScale = 3.0;
    // qui il minimumZoomScale
    self.scrollView.minimumZoomScale = 1.0;
    // questa proprietà fa si che l'immagine sia divisa in tante pagine come succede nella home di iOS.Essndo impostata su false non vedremo questo effetto sulla nostra applicazione
    self.scrollView.pagingEnabled = false;
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {// questo metodo ritorna lA view nella quale la scrollView può zoomare e noi chiaramente RITORNIAMO l'imageView
    return self.globalImageView;
}

@end
