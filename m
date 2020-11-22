Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A43EA2BFCE6
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 00:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726020AbgKVXGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 18:06:00 -0500
Received: from buexe.b-5.de ([185.37.144.146]:52348 "EHLO buexe.b-5.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725788AbgKVXGA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 22 Nov 2020 18:06:00 -0500
Received: from kirmayer.de (aftr-62-216-203-174.dynamic.mnet-online.de [62.216.203.174])
        (authenticated bits=128)
        by buexe.b-5.de (8.15.2/8.15.2/b-5/buexe-3.6.3) with ESMTPSA id 0AMN5tXg017119
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 23 Nov 2020 00:05:57 +0100
Date:   Mon, 23 Nov 2020 00:05:50 +0100
From:   Sebastian Kirmayer <man-pages@kirmayer.eu>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Sebastian Kirmayer <man-pages@kirmayer.eu>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [patch] getnameinfo.3: Fix _POSIX_C_SOURCE value for
 getaddrinfo()
Message-ID: <20201122230550.GA8553@kirmayer.de>
References: <20201122223707.GA7261@kirmayer.de>
 <921887e2-61ad-6212-c91b-beab3e4a7ab8@gmail.com>
 <20201122225339.GA8330@kirmayer.de>
 <CAKgNAkj9p-KkKa7OX_A-e=h9PhauXuAon6FAW1kr_D5=_Zs1pA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkj9p-KkKa7OX_A-e=h9PhauXuAon6FAW1kr_D5=_Zs1pA@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On Sun, Nov 22, 2020 at 11:57:51PM +0100, Michael Kerrisk (man-pages) wrote:
> Hi Sebastian,
> 
> On Sun, 22 Nov 2020 at 23:53, Sebastian Kirmayer <sebastian@kirmayer.de> wrote:
> >
> > Hi Michael,
> >
> > On Sun, Nov 22, 2020 at 11:42:02PM +0100, Michael Kerrisk (man-pages) wrote:
> > > Hi Sebastian,
> > >
> > > On 11/22/20 11:37 PM, Sebastian Kirmayer wrote:
> > > > The minimum value of _POSIX_C_SOURCE for getnameinfo() was mistyped as 201112L
> > > > (not a real POSIX version), it should be 200112L. This is the same typo that
> > > > was fixed for getaddrinfo.3 in commit 94db8ae1824ada8561c3dbbbed88a8a9175c4886
> > > >
> > > > According to the current documentation, this file should not compile, but
> > > > it does:
> > > >
> > > >     #define _POSIX_C_SOURCE 200112L
> > > >     #include <netdb.h>
> > > >     int (*mygetnameinfo)() = getnameinfo;
> > > >
> > > > (If _POSIX_C_SOURCE is changed to 200111L, the program does no longer compile.)
> > > >
> > > > man3/getnameinfo.3:
> > > >
> > > > @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
> > > >  .RE
> > > >  .PP
> > > >  .BR getnameinfo ():
> > > > -    Since glibc 2.22: _POSIX_C_SOURCE >= 201112L
> > > > +    Since glibc 2.22: _POSIX_C_SOURCE >= 200112L
> > > >      Glibc 2.21 and earlier: _POSIX_C_SOURCE
> > > >  .ad b
> > > >  .SH DESCRIPTION
> > >
> > > Thanks for taking the time to report, but I think you must be looking
> > > at a rather old version of the manual pages. It looks like that typo
> > > was fixed about three years ago in the Git tree!
> > >
> > > Thanks,
> > >
> > > Michael
> >
> > Oops, I accidently wrote getaddrinfo() in the subject. I meant to write
> > getnameinfo(), and I'm actually referencing the commit from three years
> > ago fixing it for getaddrinfo().
> 
> Ahh -- sorry, I should have looked more closely at your mail then.
> Fixed now. Thanks for the report!
> 
> Cheers,
> 
> Michael

I just saw your commit, and it seems that you made another typo while fixing
the previous typo: It should be 200112L, not 20112L.

Sebastian
