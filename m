Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A8D55C120B
	for <lists+linux-man@lfdr.de>; Sat, 28 Sep 2019 21:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728569AbfI1T5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Sep 2019 15:57:00 -0400
Received: from gateway21.websitewelcome.com ([192.185.46.113]:38004 "EHLO
        gateway21.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727655AbfI1T5A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Sep 2019 15:57:00 -0400
X-Greylist: delayed 1311 seconds by postgrey-1.27 at vger.kernel.org; Sat, 28 Sep 2019 15:57:00 EDT
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
        by gateway21.websitewelcome.com (Postfix) with ESMTP id 3C7D94010279B
        for <linux-man@vger.kernel.org>; Sat, 28 Sep 2019 14:35:09 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id EIUmifc2o3Qi0EIUniEydJ; Sat, 28 Sep 2019 14:35:09 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:34662 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.92)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1iEIUm-003e1u-2p; Sat, 28 Sep 2019 14:35:08 -0500
Date:   Sat, 28 Sep 2019 21:35:06 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Ian Hunter <ian@ianhunter.me>
Subject: Re: Error in read.1p
Message-ID: <20190928193506.GA21590@comp.lan>
References: <20190926181754.GA15754@comp.lan>
 <20190926182357.GA20390@comp.lan>
 <20190926204500.yywdgn3dnxnkzigu@localhost.localdomain>
 <20190927122734.GA8085@comp.lan>
 <20190927174541.cykfcoglc2v4ovud@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190927174541.cykfcoglc2v4ovud@localhost.localdomain>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1iEIUm-003e1u-2p
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:34662
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Sep 28, 2019 at 03:45:43AM +1000, G. Branden Robinson wrote:
> I don't have manpages-posix-2013a installed (because I'm a Debian
> user and the package is in Debian's unofficial non-free package archive,
> which I don't use).
> 
> But I grabbed the source package, unpacked it, and took a closer look.
> 
> The text of the man page sources is derived from the POSIX standard
> which is copyrighted by IEEE, and not licensed for modification.
> 
> Nothing indicates who was responsible for the preparation of these man
> page sources.  As you noted below, recent Austin Group bug traffic
> suggests to me that they maintain nroff sources for at least part of the
> IEEE 1003 standards documentation; whether these man pages were
> generated or hand-written is not clear, but on inspection they're clean
> enough to be the latter.
> 
> > I think this might make people want to report such bugs here.
> 
> You're right, it sure looks that way.  I was mistaken if I suggested you
> came to the wrong place--the documentation clearly directs you here.
> Other files in the distribution, like man-pages-posix-2013-a.Announce,
> speak of "the Linux man-pages maintainer", and
> man-pages-posix-2013-a.lsm identifies Michael Kerrisk as the maintainer.
> 
> > Also, I also wasn't able to find any mention of austingroupbugs.net
> > neither in man-pages-posix-2013-a/README nor at
> > https://www.kernel.org/doc/man-pages except for this
> > http://man7.org/linux/man-pages/changelog.html (at least using
> > Google's site: operator).  Could this information be put somewhere?
> 
> This is a good question for Michael.

Thank you for this explanation, it's clear that info in the tarball is
misleading.

> > That didn't work for me because /etc/groff/man.local is never opened:
> 
> Hmm!  What happens when you type "man --version"?

Actually, I have 2 man programs installed: /opt/man-db/bin/man which
is a part of man-db package and /usr/bin/man which is the default man
that Slackware comes with. Their versions are:

$ /usr/bin/man --version
man, version 1.6g

$ /opt/man-db/bin/man --version
man 2.8.4

I needed man-db because the default man had some problems with showing
manpages in Japanese:
https://www.linuxquestions.org/questions/slackware-14/%60lang%3Dja_jp-utf-8-man-man%27-doesn%27t-work-4175606785/#post5715992. Not
that I can read Japanese, it was just a test.

Back to the point - neither /usr/bin/man nor /opt/man-db/bin/man look
for /etc/groff/man.local:

$ strace -f /usr/bin/man ./read.1p |& grep 'man.local'
[pid 24026] open("/home/ja/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24026] open("/usr/lib64/groff/site-tmac/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24026] open("/usr/share/groff/site-tmac/man.local", O_RDONLY) = 5
$ strace -f /opt/man-db/bin/man ./read.1p |& grep 'man.local'
[pid 24139] open("/home/ja/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24139] open("/usr/lib64/groff/site-tmac/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 24139] open("/usr/share/groff/site-tmac/man.local", O_RDONLY) = 4

I think that /etc/groff is Debian addition:
http://soc.if.usp.br/manual/groff/README.Debian. Official
documentation in `man troff' says:

-mname
Read in the file name.tmac.  If it isn't found, try tmac.name instead.
It will be first searched for in directories given with the -M command
line option, then in directories given in the GROFF_TMAC_PATH
environment variable, then in the current directory (only if in unsafe
mode), the home directory, /usr/lib64/groff/site-tmac,
/usr/share/groff/site-tmac, and /usr/share/groff/1.22.3/tmac.

> On my Debian-based system, even just running "nroff -man" over an
> (uncompressed) man page source file opens it

It does for me as well.

> > I have a hard time trying to understand the whole process and need
> > some reading on the subject.
> 
> groff is the GNU implementation of a family of programming languages for
> (...)

Wow, fantastic explanation!

> Which distribution are you using?

Slackware 14.2.

> Does "echo $GROFF_TMAC_PATH" emit anything on your system?

No, it's not set.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
