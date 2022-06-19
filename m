Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A082550D14
	for <lists+linux-man@lfdr.de>; Sun, 19 Jun 2022 23:18:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231928AbiFSVSA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Jun 2022 17:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiFSVR6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Jun 2022 17:17:58 -0400
X-Greylist: delayed 668 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 19 Jun 2022 14:17:55 PDT
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F4902BD
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 14:17:54 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1o3280-0048o3-4B; Sun, 19 Jun 2022 23:06:40 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1o327z-005zVu-8J; Sun, 19 Jun 2022 23:06:39 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1o327z-0008Jg-L0; Sun, 19 Jun 2022 23:06:39 +0200
Date:   Sun, 19 Jun 2022 23:06:39 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Linux man-pages Makefile portability
Message-ID: <Yq+P39bpy2QEeaSd@asta-kit.de>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sun, Jun 19, 2022 at 07:52:33PM +0200:

> Would you mind checking if the current Makefile works on your OpenBSD?
> I think it depends on gmake(1),

After doing

   $ git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/
   $ cd man-pages

i have a hard time finding any targets in the ./Makefile that i could
possibly run for testing...

I'm certainly not going to run targets like "all" or "install".
I don't think testing the "dist" target makes much sense because
nobody is going to build your distribution tarballs on OpenBSD.
I'm not interested in testing the "src" group of targets;
i think we discussed in the past that i dislike that whole idea.

The html target could potentially be interesting, but
  https://savannah.nongnu.org/projects/man2html/
and the repo linked to from there,
  https://cvs.savannah.nongnu.org/viewvc/man2html/
gives me the impression this is abandonware that did not receive
any maintenance in 19 years.  Besides, an OpenBSD port does not
currently exist and i don't feel like creating one just for testing.

The only remaining target i can readily see that might be fit for
testing is "lint", which does seem quite interesting indeed.

But look at this:

   $ make lint
   $

It does absolutely nothing.

Running "make -d g1 lint" to show the input graph tells me there
is a rule

  lint:
  	@:

so i'm not surprised it does nothing.

Next, i tried

   $ make lint-mandoc
  make: don't know how to make lint-mandoc
  Stop in /co/man-pages

The target simply doesn't exist.

My impression is your Makefile is full of POSIX violations and
utterly non-portable and gmake(1)-only.  But that's probably OK.
I mean, the purpose of your project is to document parts of Linux.
So requiring a tool that almost all Linux users have readily
available and that users of other systems can install it they
want to does not seem unreasonable to me.  (It's a completely
different story for a project like GNU troff that is about the
opposite of Linux only and that basically all UNIX systems want
to be able to use in production.)

If i use GNU make instead of our native make, i do get output
that might be potentially meaningful, even on OpenBSD-current:

   $ gmake lint-mandoc
  INSTALL tmp/lint/
  INSTALL tmp/lint/man0/
  LINT (mandoc)   tmp/lint/man0/sysexits.h.0.lint.mandoc.touch
  INSTALL tmp/lint/man1/
  LINT (mandoc)   tmp/lint/man1/getent.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/iconv.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/intro.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/ldd.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/locale.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/localedef.1.lint.mandoc.touch
  LINT (mandoc)   tmp/lint/man1/memusage.1.lint.mandoc.touch
  mandoc: man1/memusage.1:187:2: WARNING: empty block: UR
  gmake: *** [Makefile:468: tmp/lint/man1/memusage.1.lint.mandoc.touch] Error 2

That makes sense to me given that i also get

   $ mandoc -T lint man1/memusage.1                               
  mandoc: man1/memusage.1:187:2: WARNING: empty block: UR

when running the mandoc linter manually.

> but I'd like to state that in the dependencies

That sounds reasonable to me.

> (which I need to write in a new INSTALL file).

Yes, i think if you want people to test and use that Makefile,
then documentating in some way what it is supposed to do and
how it is supposed to be used would make sense.  Sorry if i somehow
missed the documentation, i looked at README and MAINTAINER_NOTES
to no avail.


By the way, this surprised me in the README file:

  Consider using multiple threads (at least 2) when installing
  these man pages, as the Makefile is optimized for multiple threads:
  "make -j install".

I did not do measurements, but are you sure this is sane advice?
For an installation procedure, i would have expected execution
speed to be limited by disk I/O and i would have expected CPU
consumption to be negligible.  Did you do measurements to confirm
the relevance of this advice?

Finally, i don't think it is particularly good style that "make all"
implies "make install", even if it is clearly documented, which it is.
That seems very unusual and not at all what people would expect.
Usually, "make all" does specifically *not* modify the production
parts of the system but only *builds* the software such that it can
later be installed with a separate command.  Arguably, having "make all"
imply "make uninstall" is even worse.  I don't think anybody would
expect that running "make all" would attempt to delete stuff from
their production system!

> Maybe, if it's not too hard, we can tweak the Makefile to make it
> work with make(1POSIX).

I see lots and lots of syntax in the Makefile where i don't even
know what it means.  I think if you want to make it POSIX compatible,
that would likely amount to throwing it all away and starting over
with a complete rewrite from scratch.  It doesn't look like there is
much you would be able to keep.


There is yet another reason why i don't consider it a serious
issue if the Makefile is for GNU make(1) only.  It is not a rare
occurence that i use your work - i have repeatedly looked at it
when working on stuff in OpenBSD to find out how Linux defines
some features for comparison.  But i never even noticed there
is a Makefile in your distribution.  Commands like

   $ man -M /co/man-pages open

work perfectly fine on my system to view the Linux open(2) manual,
nicely formatted, with no need for installation or a Makefile.
Even when i put up a copy at

  https://man.bsd.lv/Linux-5.13/open

just copying the eight man* directories and running the makewhatis(8)
command distributed with mandoc is completely sufficient, no further
steps are needed for installation, not even on the production web
server.

It seems likely to me that other non-Linux users interested in your
work don't need the Makefile either.

Yours,
  Ingo
