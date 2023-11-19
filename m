Return-Path: <linux-man+bounces-101-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA9D7F03D5
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 01:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A5F1F2235E
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 00:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E767E9;
	Sun, 19 Nov 2023 00:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 914 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 18 Nov 2023 16:39:11 PST
Received: from queue02c.mail.zen.net.uk (queue02c.mail.zen.net.uk [212.23.3.242])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64ABB192
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 16:39:11 -0800 (PST)
Received: from [212.23.1.21] (helo=smarthost01b.ixn.mail.zen.net.uk)
	by queue02c.mail.zen.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1r4VbP-008NOo-WE
	for linux-man@vger.kernel.org;
	Sun, 19 Nov 2023 00:23:56 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01b.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1r4VbD-00GLNK-92;
	Sun, 19 Nov 2023 00:23:43 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Jonny Grant <jg@jguk.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject:
 Re: PDF book of unreleased pages (was: strncpy clarify result may not be null
 terminated)
Date: Sun, 19 Nov 2023 00:22:56 +0000
Message-ID: <4567510.7DdL66CAHx@pip>
In-Reply-To: <ZViF1JsZdhobXaWV@devuan>
References:
 <ZUo6btEFD_z_3NcF@devuan> <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
 <ZViF1JsZdhobXaWV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Saturday, 18 November 2023 09:37:17 GMT Alejandro Colomar wrote:
> On Fri, Nov 17, 2023 at 09:46:47PM +0000, Jonny Grant wrote:
> > Thank you for your swift replies Alejandro and incorporating changes.
> :
> :-)
> :
> > >> I was reading again
> > >> https://man7.org/linux/man-pages/man7/string_copying.7.html
> > >> 
> > >> Sharing some comments, I realise not latest man page, if you have a new
> > >> one online I could read that. I was reading man-pages 6.04, perhaps
> > >> some already updated.> > 
> > > You can check this one:
> > > 
> > > <https://www.alejandro-colomar.es/share/dist/man-pages/6/6.05/6.05.01/ma
> > > n-pages-6.05.01.pdf#string_copying_7> also available here:
> > > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages
> > > -6.05.01.pdf#string_copying_7>
> > > 
> > > And of course, you can install them from source, or read them from the
> > > repository itself.
> > 
> > That's good if you have your online PDF version of unreleased versions I
> > could read through.
> I have that as a goal, but need some help.  The thing is: we have
> <./scripts/LinuxManBook/>, which contains a Perl script and some helper
> stuff for it.  It was contributed by gropdf(1)'s maintainer Deri James.
> 
> Currently, that script does a lot of magic which produces the book from
> all of the pages.
> 
> I'd like to be able to split the script into several smaller scripts
> that can be run on each page, and then another script that merges all of
> them into the single PDF file.  That would be something I can merge into
> the Makefiles so that we can run a `make build-pdf` and if I touch a
> single page, it would only update the relevant part, reusing as much as
> possible from previous runs.

Hi Alex,

I assume you are thinking this will make production more efficient (quicker). 
The time saved would be absolutely minimal. It is obvious that to produce a 
pdf containing all the man pages then all the man pages have to be consumed by 
groff, not just the page which has changed. On my system this takes about 18 
seconds to produce the 2800+ pages of the book. Of this, a quarter of a second 
is consumed by the "magic" part of the script, the rest of the 18 seconds is 
consumed by calls to groff and gropdf. So any splitting of the perl script is 
only going to have an effect on the quarter of a second!

I don't understand why the perl script can't be included in your make file as 
part of build-pdf target. Presumably it would be dependent on running after 
the scripts which add the revision label and date to each man page.

> Since I don't understand Perl, and don't know much of gropdf(1) either,
> I need help.
> 
> Maybe Deri or Branden can help with that.  If anyone else understands it
> and can also help, that's very welcome too!

You are probably better placed to add the necessaries to your makefile. You 
would then just need to remember to make build-pdf any time you alter one of 
the source man pages. Since you are manually running my script to produce the 
pdf, it should not be difficult to automate it in a makefile.

> Then I could install a hook in my server that runs
> 
> 	$ make build-pdf docdir=/srv/www/...

And wait 18s each time the hook is actioned!! Or, set the build to place the 
generated pdf somewhere in /srv/www/... and include the build in your normal 
workflow when a man page is changed.

Cheers

Deri

> Cheers,
> Alex





