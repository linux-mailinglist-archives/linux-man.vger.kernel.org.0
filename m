Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E8A407DC4
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 16:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbhILOUd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 10:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILOUd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 10:20:33 -0400
X-Greylist: delayed 945 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 12 Sep 2021 07:19:18 PDT
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE0A1C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 07:19:18 -0700 (PDT)
Received: from hekate.asta.kit.edu ([141.3.145.153] helo=hekate.usta.de)
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (envelope-from <schwarze@usta.de>)
        id 1mPQ4v-0001UR-Lh; Sun, 12 Sep 2021 16:03:30 +0200
Received: from donnerwolke.asta.kit.edu ([141.3.145.61] helo=donnerwolke.usta.de)
        by hekate.usta.de with esmtp (Exim 4.92.2)
        (envelope-from <schwarze@usta.de>)
        id 1mPQ4v-00084D-5V; Sun, 12 Sep 2021 16:03:29 +0200
Received: from athene.asta.kit.edu ([141.3.145.60] helo=athene.usta.de)
        by donnerwolke.usta.de with esmtp (Exim 4.84_2)
        (envelope-from <schwarze@usta.de>)
        id 1mPQ4v-0005v2-0r; Sun, 12 Sep 2021 16:03:29 +0200
Received: from localhost (athene.usta.de [local])
        by athene.usta.de (OpenSMTPD) with ESMTPA id 4fc0eb9c;
        Sun, 12 Sep 2021 16:03:29 +0200 (CEST)
Date:   Sun, 12 Sep 2021 16:03:28 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: .ad l/.ad b
Message-ID: <20210912140328.GB41870@athene.usta.de>
References: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar (man-pages) wrote on Sun, Sep 12, 2021 at 01:13:07PM +0200:

> I've seen these in shmctl.2, and didn't know what they mean.
> groff(7) wasn't very helpful.
> 
> [
> .SH SYNOPSIS
> .nf
> .ad l
> .B #include <sys/shm.h>
> .PP
> .BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
> .ad b
> .fi
> ]

This looks like cargo cult programming to me.  Probably someone saw
some low-level roff(7) requests somewhere and needlessly picked up
the incantation, hoping it might miraculuously attract some beneficial
effect.

You normally do not need .nf (switch to no-fill mode) in the SYNOPSIS.
When prototypes are short enough, it makes no difference, provided
that .PP paragraph macros are used correctly between prototypes,
which is the case here.  When there are prototypes that are longer
than the user's desired output width, .nf is actually harmful because
it prevents the needed line breaking, which the formatter can do
in a nice and clean way.  If .nf prevents the formatter from doing
that job, that job is left to the pager or terminal which may either
break lines in ugly ways (usually at any place in the middle of any
word, and without indenting the second half of the line at all) or
it may even show truncated lines depending on the pager or terminal
configuration.  Given that you do not need .nf, you do not need .fi
(switch back to the default fill mode) either.

Using .ad (change adjustment mode) in a manual page is even worse
abuse.  Whether or not manual page text should be adjusted or not
is a minor technical detail that should not be decided by individual
manual pages but left to the man(1) program, to allow a uniform
user experience across the whole operating system.  Attempting to
muck with .ad in a manual page almost invariably risks trouble
and on top of that rarely achieves the micro-control of formatting
details possibly intended by the author.  Some man(1) implementations
may globally set .ad, and manual .ad requests in individual pages may
screw up such system wide settings.  Some manual page viewers (for
example the mandoc implementation of man(1)) will ignore .ad
completely, so .ad may have no effect at all.

On top of not being useful in manual pages in the first place, the
way .ad is used here is arguably even technically incorrect.  The
".ad b" (block adjustment) is apperently intended to end the effect
of the earlier ".ad l" (flush-left), but that's not what it does
because there is no guarantee the mode was "b" before the ".ad l".
Of course, attempting to do correct low-level roff(7) programming
in a manual page and actually save and restore the mode in a manual
page would be even worse abuse.  A manual page is not a low-level
roff(7) programming sandbox.  A manual page ought to use standard,
easy-to-understand high level macros such that it is intelligible
for the average programmer who wants to help maintain it.  If it
contains stuff that makes even documentation specialists like
yourself scratch their heads, that is not good.  Not good at all.

> What are those '.ad X'

https://www.gnu.org/software/groff/manual/html_node/Manipulating-Filling-and-Adjusting.html#index-ad

> and do we really need them?

No!

> I found some other pages that use it:
> 
> [
> .../linux/man-pages$ grep -rn '^\.ad b' man?
> man1/localedef.1:60:.ad b
> man2/setsid.2:40:.ad b
> man2/acct.2:41:.ad b
> man2/shmctl.2:55:.ad b
> man2/shmget.2:50:.ad b
> ]

It seems a bit late for a spring cleanup, but maybe an autumn cleanup
would be in order.  ;-)

Yours,
  Ingo
