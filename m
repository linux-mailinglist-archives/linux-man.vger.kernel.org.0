Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3CCD43FDCA
	for <lists+linux-man@lfdr.de>; Fri, 29 Oct 2021 16:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231575AbhJ2OFC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Oct 2021 10:05:02 -0400
Received: from cvs.openbsd.org ([199.185.137.3]:37324 "EHLO cvs.openbsd.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231623AbhJ2OFA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 29 Oct 2021 10:05:00 -0400
X-Greylist: delayed 399 seconds by postgrey-1.27 at vger.kernel.org; Fri, 29 Oct 2021 10:04:57 EDT
Received: from cvs.openbsd.org (localhost [127.0.0.1])
        by cvs.openbsd.org (OpenSMTPD) with ESMTP id e2eaf310;
        Fri, 29 Oct 2021 07:55:36 -0600 (MDT)
From:   "Theo de Raadt" <deraadt@openbsd.org>
To:     rsbecker@nexbridge.com
cc:     "'Alejandro Colomar \(man-pages\)'" <alx.manpages@gmail.com>,
        "'Libc-alpha'" <libc-alpha@sourceware.org>,
        "'linux-man'" <linux-man@vger.kernel.org>, git@vger.kernel.org,
        tech@openbsd.org
Subject: Re: Is getpass(3) really obsolete?
In-reply-to: <00d501d7ccbe$0169c340$043d49c0$@nexbridge.com>
References: <a0371f24-d8d3-07d9-83a3-00a4bf22c0f5@gmail.com> <73ac38a2-c287-4cc1-4e9c-0f9766ac4c0c@gmail.com> <00d501d7ccbe$0169c340$043d49c0$@nexbridge.com>
Comments: In-reply-to <rsbecker@nexbridge.com>
   message dated "Fri, 29 Oct 2021 08:10:41 -0400."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <36593.1635515736.1@cvs.openbsd.org>
Date:   Fri, 29 Oct 2021 07:55:36 -0600
Message-ID: <63238.1635515736@cvs.openbsd.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<rsbecker@nexbridge.com> wrote:

> On October 29, 2021 7:29 AM, Alejandro Colomar wrote:
> > On 10/29/21 13:15, Alejandro Colomar wrote:
> > > Hi,
> > >
> > > As the manual pages says, SUSv2 marked it as LEGACY, and POSIX doesn't
> > > have it at all.  The manual page goes further and says "This function
> > > is obsolete. Do not use it." in its first lines.
> > >
> > > But, glibc doesn't seem to have deprecated this function at all.  And
> > > it seems to be the most portable way to get a password, even if it's
> > > not in POSIX.
> > >
> > > BSDs have readpassphrase(3), but glibc doesn't, so unless you
> > > recommend
> > 
> > OpenBSD also marks getpass(3) as obsolete and recommends
> > readpassphrase(3):
> > <https://man.openbsd.org/getpass>
> > 
> > > using readpassphrase(3) from libbsd, or plan to add it to glibc, I
> > > think
> > > getpass(3) should be the recommended function in Linux, and therefore
> > > we should remove the hard words against it.
> > >
> > > As a real example, git(1) uses getpass(3).
> > > <https://github.com/git/git/blob/master/compat/terminal.c>
> > >
> > > What are your thoughts?
> 
> getpass() is obsolete in POSIX.2. However, some platforms still are on POSIX.1, so replacing it instead of providing a configure detection/switch for it might cause issues.


The community finally had the balls to get rid of gets(3).

getpass(3) shares the same flaw, that the buffer size isn't passed.
This has been an issue in the past, and incorrectly led to readpassphrase(3)

readpassphrase(3) has a few too many features/extensions for my taste, but
at least it is harder to abuse.
