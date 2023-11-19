Return-Path: <linux-man+bounces-104-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 369287F076F
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 17:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68F6A1F21B37
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 16:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615DDF4F1;
	Sun, 19 Nov 2023 16:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 57531 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 19 Nov 2023 08:22:36 PST
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BB6129
	for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 08:22:36 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01c.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1r4kZ8-00FypI-Ee;
	Sun, 19 Nov 2023 16:22:34 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject:
 Re: PDF book of unreleased pages (was: strncpy clarify result may not be null
 terminated)
Date: Sun, 19 Nov 2023 16:21:45 +0000
Message-ID: <12344046.3XHVMEB1Be@pip>
In-Reply-To: <ZVlitX4dWaC2m-2S@devuan>
References:
 <ZUo6btEFD_z_3NcF@devuan> <4567510.7DdL66CAHx@pip> <ZVlitX4dWaC2m-2S@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Sunday, 19 November 2023 01:19:43 GMT Alejandro Colomar wrote:
> Hi Deri!
> 
> On Sun, Nov 19, 2023 at 12:22:56AM +0000, Deri wrote:
> > Hi Alex,
> > 
> > I assume you are thinking this will make production more efficient
> > (quicker).
> Not necessarily.  The main reason is that I want to be able to inspect
> and understand every little step of the groff pipeline.  See for example
> how I build a pdf from a single page:
> 
> 	$ touch man2/membarrier.2
> 	$ make build-pdf
> 	PRECONV	.tmp/man/man2/membarrier.2.tbl
> 	TBL	.tmp/man/man2/membarrier.2.eqn
> 	EQN	.tmp/man/man2/membarrier.2.pdf.troff
> 	TROFF	.tmp/man/man2/membarrier.2.pdf.set
> 	GROPDF	.tmp/man/man2/membarrier.2.pdf
> 
> That helps debug the pipeline, and also learn about it.
> 
> If that helps parallelize some tasks, then that'll be welcome.

Hi Alex,

Doing it that way actually stops the jobs being run in parallel! Each step 
completes before the next step starts, whereas if you let groff build the 
pipeline all the processes are run in parallel. Using separate steps may be 
desirable for "understanding every little step of the groff pipeline", (and 
may aid debugging an issue), but once such knowledge is obtained it is 
probably better to leave the pipelining to groff, in a production environment.

> > The time saved would be absolutely minimal. It is obvious that to produce
> > a
> > pdf containing all the man pages then all the man pages have to be
> > consumed by groff, not just the page which has changed.
> 
> But do you need to run the entire pipeline, or can you reuse most of it?
> I can process in parallel much faster, with `make -jN ...`.  I guess
> the .pdf.troff files can be reused; maybe even the .pdf.set ones?
> 
> Could you change the script at least to produce intermediary files as in
> the pipeline shown above?  As many as possible would be excellent.

Perhaps it would help if I explain the stages of my script. First a look at 
what the script needs to do to produce a pdf of all man pages. There are too 
many files to produce a single command line with all the filenames of each 
man, groff has no mechanism for passing a list of filenames, so first job is 
to concatenate all the separate files into one input file for groff. And while 
we are doing that, add the "magic sauce" which makes all the pdf links in the 
book and sorts out the aliases which point to another man page.

After this is done there is a single troff file, called LMB.man, which is the 
file groff is going to process. In the script you should see something like 
this:-

my $temp='LMB.man';

[...]

my $format='pdf';
my $paper=$fpaper ||';
my $cmdstring="-T$format -k -pet -M. -F. -mandoc -manmark -dpaper=$paper -P-
p$paper -rC1 -rCHECKSTYLE=3";
my $front='LMBfront.t';
my $frontdit='LMBfront.set';
my $mandit='LinuxManBook.set';
my $book="LinuxManBook.$format";

system("groff -T$format -dpaper=$paper -P-p$paper -ms $front -Z > $frontdit");
system("groff -z -dPDF.EXPORT=1 -dLABEL.REFS=1 $temp $cmdstring 2>&1 | 
LC_ALL=C grep '^\\. *ds' | groff -T$format $cmdstring - $temp -Z > $mandit");
system("./gro$format -F.:/usr/share/groff/current/font $frontdit $mandit -
p$paper  > $book");

(This includes changes by Brian Inglish ts). If you remove the lines which 
call system you will end up with just the single file LMB.man (in about a 
quarter of a second). You can treat this file just the same as your single 
page example if you want to.

The first system call creates the title page from the troff source file 
LMBfront.t and produces LMBfront.set, this can be added to your makefile as an 
entirely separate rule depending on whether the .set file needs to be built.

The second and third system calls are the calls to groff which could be put 
into your makefile or split into separate stages to avoid parallelism.

The second system call produces LinuxManBook.set and the third system combines 
this with LMBfront.set to produce the pdf.

The "./" in the third system call is because I gave you a pre-release gropdf, 
you may be using the released 1.23.0 gropdf now.

> > On my system this takes about 18
> > seconds to produce the 2800+ pages of the book. Of this, a quarter of a
> > second is consumed by the "magic" part of the script, the rest of the 18
> > seconds is consumed by calls to groff and gropdf.
> 
> But how much of that work needs to be on a single process?  I bought a
> new CPU with 24 cores.  Gotta use them all  :D

I realise you are having difficulty in letting go of your idea of re-using 
previous work, rather than starting afresh each time. Imagine a single word 
change in one man page causes it to grow from 2 pages to 3, so all links to 
pages after this changed entry would be one page adrift. This is why very 
little previous work is useful, and why the whole book has to be dealt with as 
a single process. If each entry was processed separately, as you would like to 
use all your shiny new cores, how would the process dealing with accept(2) 
know which page socket(2) would be on when it adds it as a link in the text. I 
hope you can see that at some point it has to be treated as a homogenous whole 
in order calculate correct links between entries.

> > So any splitting of the perl script is
> > only going to have an effect on the quarter of a second!
> > 
> > I don't understand why the perl script can't be included in your make file
> > as part of build-pdf target.
> 
> It can.  I just prefer to be strict about the Makefile having "one rule
> per each file", while currently the script generates 4 files (T, two
> .Z's, and the .pdf).

Explained how to separate above so that the script only generates LMB.man and 
the system calls moved to the makefile.

> > Presumably it would be dependent on running after
> > the scripts which add the revision label and date to each man page.
> 
> I only set the revision and date on dist tarballs.  For the git HEAD
> book, I'd keep the (unreleased) version and (date).  So, no worries
> there.

Given that you seem to intend to offer these interim books as a download, it 
would make sense if they included either a date or git commit ID to 
differenciate them, if someone queries something it would be useful to know 
exactly what they were looking at.

Cheers 

Deri

> > > Since I don't understand Perl, and don't know much of gropdf(1) either,
> > > I need help.
> > > 
> > > Maybe Deri or Branden can help with that.  If anyone else understands it
> > > and can also help, that's very welcome too!
> > 
> > You are probably better placed to add the necessaries to your makefile.
> > You
> > would then just need to remember to make build-pdf any time you alter one
> > of the source man pages. Since you are manually running my script to
> > produce the pdf, it should not be difficult to automate it in a makefile.
> > 
> > > Then I could install a hook in my server that runs
> > > 
> > > 	$ make build-pdf docdir=/srv/www/...
> > 
> > And wait 18s each time the hook is actioned!! Or, set the build to place
> > the generated pdf somewhere in /srv/www/... and include the build in your
> > normal workflow when a man page is changed.
> 
> Hmm.  I still hope some of it can be parallelized, but 18s could be
> reasonable, if the server does that in the background after pushing.
> My old raspberry pi would burn, but the new computer should handle that
> just fine.

I'm confused. The 18s is how long it takes to generate the book, so if the 
book is built in response to an access to a particular url the http server 
can't start "pushing" for the 18s, then addon the transfer time for the pdf 
and I suspect you will have a lot of aborted transfers. Additionally, the 
script, and any makefile equivalent you write, is not designed for concurrent 
invocation, so if two people visit the same url within the 18 second window 
neither user will receive a valid pdf.

I advise the build becomes part of your workflow after making changes, and 
then place the pdf in a location where it can be served by the http server.

Your model of slicing and dicing man pages to be processed individually is 
doable using a website to serve the individual pages, see:-

http://chuzzlewit.co.uk/WebManPDF.pl/man:/2/accept

This is running on a 1" cube no more powerful than a raspberry pi 3. The 
difference is that the "magic sauce" added to each man page sets the links to 
external http calls back to itself to produce another man page, rather than 
internal links to another part of the pdf. You can get an index of all the man 
pages, on the (very old) system, here.

http://chuzzlewit.co.uk/

Cheers 

Deri

> Cheers,
> Alex





