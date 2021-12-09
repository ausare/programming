use MIME::Lite;
my $msg = MIME::Lite->new (
From    => "FeatureManager\@nielsen.com",
To      => "jason.gifford\@nielsen.com",
Subject => "I am testing this bro, relax!",
#Subject => "Where is my Subject?",
Type    => "text/html",
Data    => "This is my Data bro, like I said relax!",
);
$msg->send();
