Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51ED5BB64E
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 16:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437261AbfIWONv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 10:13:51 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:40605 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404847AbfIWONv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 10:13:51 -0400
Received: from [172.58.27.190] (helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1iCP64-0006p6-8a; Mon, 23 Sep 2019 14:13:49 +0000
Date:   Mon, 23 Sep 2019 16:13:36 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
Message-ID: <20190923141334.blvq5uuov3pvqor4@wittgenstein>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
 <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
 <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
 <6a863c6a-3e61-f0b6-963e-a3545d9935d6@gmail.com>
 <20190919064750.tyxc7lut3mc2lcrx@wittgenstein>
 <89da7209-b81c-9c7d-39bf-6a3b61a0e8c1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <89da7209-b81c-9c7d-39bf-6a3b61a0e8c1@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 23, 2019 at 10:11:45AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Christian,
> 
> On 9/19/19 8:47 AM, Christian Brauner wrote:
> > On Thu, Sep 19, 2019 at 06:04:55AM +0200, Michael Kerrisk (man-pages) wrote:
> 
> [...]
> 
> >>>> Thanks for that info. One other questions springs to mind.
> >>>> I haven't looked at the source or tried testing this,
> >>>> but can anything actually be read() from a PIDFD? Presumably,
> >>>
> >>> We had discussed this but decided to not implement this right away.
> >>> Mainly, because we did not have a clear picture what the semantics
> >>> should be. But it is something that we will probably want in the
> >>> future...
> >>
> >> That makes sense.
> >>
> >> A further question... We now have three ways of getting a
> >> process file descriptor [*]:
> >>
> >> open() of /proc/PID
> >> pidfd_open()
> >> clone()/clone3() with CLONE_PIDFD
> >>
> >> I thought the FD was supposed to be equivalent in all three cases.
> >> However, if I try (on kernel 5.3) poll() an FD returned by opening
> >> /proc/PID, poll() tells me POLLNVAL for the FD. Is that difference
> >> intentional? (I am guessing it is not.)
> > 
> > It's intentional.
> > The short answer is that /proc/<pid> is a convenience for sending
> > signals.
> > The longer answer is that this stems from a heavy debate about what a
> > process file descriptor was supposed to be and some people pushing for
> > at least being able to use /proc/<pid> dirfds while ignoring security
> > problems as soon as you're talking about returning those fds from
> > clone(); not to mention the additional problems discovered when trying
> > to implementing this.
> > A "real" pidfd is one from CLONE_PIDFD or pidfd_open() and all features
> > such as exit notification, read, and other future extensions will only
> > be implemented on top of them.
> > As much as we'd have liked to get rid of two different file descriptor
> > types it doesn't hurt us much and is not that much different from what
> > we will e.g. see with fsinfo() in the new mount api which needs to work
> > on regular fds gotten via open()/openat() and mountfds gotten from
> > fsopen() and fspick(). The mountfds will also allow for advanced
> > operations that the other ones will not. There's even an argument to be
> > made that fds you will get from open()/openat() and openat2() are
> > different types since they have very different behavior; openat2()
> > returning fds that are non arbitrarily upgradable etc.
> 
> Okay. So, it would be fair to say (in the man pages) that
> pidfd_open() is the preferred way of obtaining a PID file
> descriptor for an already existing process?

Sure, or just not make a big thing about /proc/<pid> being useable.

> 
> >> [*} By the way, going forward, can we call these things
> >> "process FDs", rather than "PID FDs"? The API names are what
> >> they are, an that's okay, but these just as we have socket
> >> FDs that refer to sockets, directory FDs that refer to 
> >> directories, and timer FDs that refer to timers, and so on,
> >> these are FDs that refer to *processes*, not "process IDs".
> >> It's a little thing, but I think the naming better, and
> >> it's what I propose to use in the manual pages.
> > 
> > The naming was another debate and we ended with this compromise.
> > I would just clarify that a pidfd is a process file descriptor. I
> > wouldn't make too much of a deal of hiding the shortcut "pidfd". People
> > are already using it out there in the wild and it's never proven a good
> > idea to go against accepted practice.
> 
> Okay.
> 
> I have a draft pidfd_open(2) page that I will send out soon.

Thanks!
I will review it soon!

Christian
