Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1AD7C0615
	for <lists+linux-man@lfdr.de>; Fri, 27 Sep 2019 15:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727314AbfI0NOE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Sep 2019 09:14:04 -0400
Received: from gateway23.websitewelcome.com ([192.185.49.104]:36203 "EHLO
        gateway23.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727311AbfI0NOE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Sep 2019 09:14:04 -0400
X-Greylist: delayed 1500 seconds by postgrey-1.27 at vger.kernel.org; Fri, 27 Sep 2019 09:14:03 EDT
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
        by gateway23.websitewelcome.com (Postfix) with ESMTP id 12EA1950DD
        for <linux-man@vger.kernel.org>; Fri, 27 Sep 2019 07:27:37 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id DpLUiYxzRBnGaDpLUikN75; Fri, 27 Sep 2019 07:27:37 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:38762 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.92)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1iDpLT-000CgR-R2; Fri, 27 Sep 2019 07:27:36 -0500
Date:   Fri, 27 Sep 2019 14:27:34 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Ian Hunter <ian@ianhunter.me>
Subject: Re: Error in read.1p
Message-ID: <20190927122734.GA8085@comp.lan>
References: <20190926181754.GA15754@comp.lan>
 <20190926182357.GA20390@comp.lan>
 <20190926204500.yywdgn3dnxnkzigu@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190926204500.yywdgn3dnxnkzigu@localhost.localdomain>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1iDpLT-000CgR-R2
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:38762
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Sep 27, 2019 at 06:45:02AM +1000, G. Branden Robinson wrote:
> Hi Ian & Arkadiusz,
> 
> There are a few issues here.
> 
> At 2019-09-26T20:17:54+0200, Arkadiusz Drabczyk wrote:
> > On Wed, Sep 25, 2019 at 09:41:30PM -0500, Ian Hunter wrote:
> > > Hello,
> > > 
> > > The man page for read.1p incorrectly uses a unicode minus ("−")
> > > instead of a hyphen ("-") in places where flags are being used or
> > > described.
> 
> First is that the above pages are not maintained by the Linux man-pages
> project.  They are maintained by the Austin Group, the folks behind the
> POSIX standard.  They have an issue reporting site[1].

Good to know, I couldn't find read.1p in the repository.  But at the
bottom of read.1p it says:

"Any typographical or formatting errors that appear in this page are
most likely to have been introduced during the conversion of the
source files to man page format.  To report such errors, see
https://www.kernel.org/doc/man-pages/reporting_bugs.html. "

I think this might make people want to report such bugs here.  Also, I
also wasn't able to find any mention of austingroupbugs.net neither in
man-pages-posix-2013-a/README nor at
https://www.kernel.org/doc/man-pages except for this
http://man7.org/linux/man-pages/changelog.html (at least using
Google's site: operator).  Could this information be put somewhere?

> I believe you will have to register on the site to actually file a
> report, however.  (Issues can be _viewed_ anonymously.)

Here http://austingroupbugs.net/view.php?id=1158 someone says that the
issue is already solved in `troff source' but I don't know where to
get it.

> For instance, adding the line:
> 
> .char \- \N'45'
> 
> to an appropriate configuration file (like /etc/groff/man.local) could
> do the trick, but this is a crude fix and I think I can come up with
> better solutions if I know a little bit more.

That didn't work for me because /etc/groff/man.local is never opened:

$ strace -f /usr/bin/man ./read.1p |& grep 'man.local'
[pid 13682] open("/home/ja/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 13682] open("/usr/lib64/groff/site-tmac/man.local", O_RDONLY) = -1 ENOENT (No such file or directory)
[pid 13682] open("/usr/share/groff/site-tmac/man.local", O_RDONLY) = 5

Adding .char \- \N'45' to ~/man.local didn't help.  And I already have
this in /usr/share/groff/site-tmac/man.local:

.  \" Map \- to the Unicode HYPHEN-MINUS character, to make
.  \" searching in man pages easier.
.  if '\*[.T]'utf8' \
.    char \- \N'45'

I have a hard time trying to understand the whole process and need
some reading on the subject.

> What *roff implementation are you using (Ian, Arkadiusz)?  If you don't
> know how to ask the system, try "troff -v" at the shell prompt.

$ troff -v
GNU troff (groff) version 1.22.3

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
