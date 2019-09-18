Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED073B5DD2
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2019 09:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727574AbfIRHOS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Sep 2019 03:14:18 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:38381 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726077AbfIRHOS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Sep 2019 03:14:18 -0400
Received: from static-dcd-cqq-121001.business.bouyguestelecom.com ([212.194.121.1] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1iAUAK-0004Wq-9q; Wed, 18 Sep 2019 07:14:16 +0000
Date:   Wed, 18 Sep 2019 09:14:15 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
Message-ID: <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
 <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 18, 2019 at 08:49:59AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Christian,
> 
> On 9/16/19 9:40 AM, Christian Brauner wrote:
> > On Wed, Sep 11, 2019 at 10:58:57AM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hello Christian,
> >>
> >> On 5/11/19 8:49 AM, Christian Brauner wrote:
> >>> From: Christian Brauner <christian@brauner.io>
> >>>
> >>> Add an entry for CLONE_PIDFD. This flag is available starting with
> >>> kernel 5.2. If specified, a process file descriptor ("pidfd") referring
> >>> to the child process will be returned in the ptid argument.
> >>
> >> I've applied this patch in a local branch, and made some minor edits
> > 
> > Thank you! :)
> > 
> >> and added a piece. And I have some questions. See below.
> >>
> >>> Signed-off-by: Christian Brauner <christian@brauner.io>
> >>> ---
> 
> [...]
> 
> >>> Note, that the kernel verifies that the value for
> >>> +.I ptid
> >>> +is zero. If it is not an error will be returned. This ensures that
> >>> +.I ptid
> >>> +can potentially be used to specify additional options for
> >>> +.B CLONE_PIDFD
> >>> +in the future.
> >>
> >> This piece is no longer true, right? At least I can't see such 
> > 
> > Correct.
> 
> Thanks. Page amended.
> 
> >> a check in the kernel code, and my testing doesn't yield an error
> >> when ptid != 0 before the call.(No need to send me a patch; if I'm
> >> correct just let me know and I'll edit out this piece.)
> >>
> >>> +.IP
> >>> +Since the
> >>> +.I ptid
> >>> +argument is used to return the pidfd,
> >>> +.B CLONE_PIDFD
> >>> +cannot be used with
> >>> +.B CLONE_PARENT_SETTID.
> >>> +.IP
> >>> +It is currently not possible to use this flag together with
> >>> +.B CLONE_THREAD.
> >>> +This means that the process identified by the pidfd will always be a
> >>> +thread-group leader.
> >>> +.IP
> >>> +For a while there was a
> >>> +.B CLONE_DETACHED
> >>> +flag. This flag is usually ignored when passed along with other flags.
> >>> +However, when passed alongside
> >>> +.B CLONE_PIDFD
> >>> +an error will be returned. This ensures that this flag can be reused
> >>> +for further pidfd features in the future.
> >>> +.TP
> >>>  .BR CLONE_PTRACE " (since Linux 2.2)"
> >>>  If
> >>>  .B CLONE_PTRACE
> >>> @@ -1122,6 +1158,21 @@ For example, on aarch64,
> >>>  .I child_stack
> >>>  must be a multiple of 16.
> >>>  .TP
> >>> +.B EINVAL
> >>> +.B CLONE_PIDFD
> >>> +was specified together with
> >>> +.B CLONE_DETACHED.
> >>> +.TP
> >>> +.B EINVAL
> >>> +.B CLONE_PIDFD
> >>> +was specified together with
> >>> +.B CLONE_PARENT_SETTID.
> >>> +.TP
> >>> +.B EINVAL
> >>> +.B CLONE_PIDFD
> >>> +was specified together with
> >>> +.B CLONE_THREAD.
> >>> +.TP
> >>>  .B ENOMEM
> >>>  Cannot allocate sufficient memory to allocate a task structure for the
> >>>  child, or to copy those parts of the caller's context that need to be
> >>
> >> One other piece seems to be missing: the returned file descriptor can
> >> be fed to poll()/select()/epoll and the FD will test as readable when
> >> the child terminates. Right? Did that functionality also land in
> >> kernel 5.2? And did it get implemented as a separate commit, or did
> >> the behavior just fall naturally out of the implementation of pidfd's?
> >> Let me know the details, and I will craft a patch.
> > 
> > It landed in 5.3. The relevant commit is:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b53b0b9d9a613c418057f6cb921c2f40a6f78c24
> > and belongs to the following merge:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5450e8a316a64cddcbc15f90733ebc78aa736545
> 
> Thanks for that info. One other questions springs to mind.
> I haven't looked at the source or tried testing this,
> but can anything actually be read() from a PIDFD? Presumably,

We had discussed this but decided to not implement this right away.
Mainly, because we did not have a clear picture what the semantics
should be. But it is something that we will probably want in the
future...

> it might be useful to have data generated on the FD, since
> different values could (ultimately) be used to distinguish
> between terminate/stopp/continue transitions.

Yes.

Thanks!
Christian
