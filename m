Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51C6CB35D0
	for <lists+linux-man@lfdr.de>; Mon, 16 Sep 2019 09:40:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727834AbfIPHkP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Sep 2019 03:40:15 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:59061 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726366AbfIPHkP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Sep 2019 03:40:15 -0400
Received: from static-dcd-cqq-121001.business.bouyguestelecom.com ([212.194.121.1] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1i9lcL-00031J-J9; Mon, 16 Sep 2019 07:40:13 +0000
Date:   Mon, 16 Sep 2019 09:40:13 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
Message-ID: <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 11, 2019 at 10:58:57AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Christian,
> 
> On 5/11/19 8:49 AM, Christian Brauner wrote:
> > From: Christian Brauner <christian@brauner.io>
> > 
> > Add an entry for CLONE_PIDFD. This flag is available starting with
> > kernel 5.2. If specified, a process file descriptor ("pidfd") referring
> > to the child process will be returned in the ptid argument.
> 
> I've applied this patch in a local branch, and made some minor edits

Thank you! :)

> and added a piece. And I have some questions. See below.
> 
> > Signed-off-by: Christian Brauner <christian@brauner.io>
> > ---
> >  man2/clone.2 | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> > 
> > diff --git a/man2/clone.2 b/man2/clone.2
> > index 7e880beb8..ee08aeb42 100644
> > --- a/man2/clone.2
> > +++ b/man2/clone.2
> > @@ -539,6 +539,42 @@ The flag disappeared completely from the kernel sources in Linux 2.5.16.
> >  Since then, the kernel silently ignores this bit if it is specified in
> >  .IR flags .
> >  .TP
> > +.BR CLONE_PIDFD " (since Linux 5.2)"
> > +If
> > +.B CLONE_PIDFD
> > +is set,
> > +.BR clone ()
> > +stores a process file descriptor ("pidfd") referring to the child process at
> > +the location
> > +.I ptid
> > +in the parent's memory. 
> 
> I added a note that the close-on-exec flag is set on the new FD.

Ack.

> 
> > Note, that the kernel verifies that the value for
> > +.I ptid
> > +is zero. If it is not an error will be returned. This ensures that
> > +.I ptid
> > +can potentially be used to specify additional options for
> > +.B CLONE_PIDFD
> > +in the future.
> 
> This piece is no longer true, right? At least I can't see such 

Correct.

> a check in the kernel code, and my testing doesn't yield an error
> when ptid != 0 before the call.(No need to send me a patch; if I'm
> correct just let me know and I'll edit out this piece.)
> 
> > +.IP
> > +Since the
> > +.I ptid
> > +argument is used to return the pidfd,
> > +.B CLONE_PIDFD
> > +cannot be used with
> > +.B CLONE_PARENT_SETTID.
> > +.IP
> > +It is currently not possible to use this flag together with
> > +.B CLONE_THREAD.
> > +This means that the process identified by the pidfd will always be a
> > +thread-group leader.
> > +.IP
> > +For a while there was a
> > +.B CLONE_DETACHED
> > +flag. This flag is usually ignored when passed along with other flags.
> > +However, when passed alongside
> > +.B CLONE_PIDFD
> > +an error will be returned. This ensures that this flag can be reused
> > +for further pidfd features in the future.
> > +.TP
> >  .BR CLONE_PTRACE " (since Linux 2.2)"
> >  If
> >  .B CLONE_PTRACE
> > @@ -1122,6 +1158,21 @@ For example, on aarch64,
> >  .I child_stack
> >  must be a multiple of 16.
> >  .TP
> > +.B EINVAL
> > +.B CLONE_PIDFD
> > +was specified together with
> > +.B CLONE_DETACHED.
> > +.TP
> > +.B EINVAL
> > +.B CLONE_PIDFD
> > +was specified together with
> > +.B CLONE_PARENT_SETTID.
> > +.TP
> > +.B EINVAL
> > +.B CLONE_PIDFD
> > +was specified together with
> > +.B CLONE_THREAD.
> > +.TP
> >  .B ENOMEM
> >  Cannot allocate sufficient memory to allocate a task structure for the
> >  child, or to copy those parts of the caller's context that need to be
> 
> One other piece seems to be missing: the returned file descriptor can
> be fed to poll()/select()/epoll and the FD will test as readable when
> the child terminates. Right? Did that functionality also land in
> kernel 5.2? And did it get implemented as a separate commit, or did
> the behavior just fall naturally out of the implementation of pidfd's?
> Let me know the details, and I will craft a patch.

It landed in 5.3. The relevant commit is:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b53b0b9d9a613c418057f6cb921c2f40a6f78c24
and belongs to the following merge:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5450e8a316a64cddcbc15f90733ebc78aa736545

> 
> Also, as far as I can see (from testing) the FD only gives pollable
> events on process termination, not on other process transitions such
> as stop and continue. Right? (Are there any plans to implement such

Correct.

> functionality for stop/contine transitions?

Yes, at some point we will likely want this.

> 
> By the way, when do you expect the pidfd-wait functionality to land 
> in the kernel?

I've sent a PR for 5.4:
https://lkml.org/lkml/2019/9/10/682
which contains the P_PIDFD extension to waitid().

Thanks for the work, Michael!
Christian
