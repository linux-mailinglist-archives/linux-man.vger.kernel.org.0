Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87B642D3EFA
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 10:42:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729157AbgLIJl1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 04:41:27 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:47380 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728634AbgLIJl1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 04:41:27 -0500
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1kmvxf-0006TM-Ro; Wed, 09 Dec 2020 09:40:39 +0000
Date:   Wed, 9 Dec 2020 10:40:39 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Stephen Kitt <steve@sk2.org>,
        linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
Message-ID: <20201209094039.ksqlt7g5mq7mp4mq@wittgenstein>
References: <20201208215133.30575-1-steve@sk2.org>
 <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Dec 09, 2020 at 09:50:38AM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Stephen
> 
> Thank you for writing this page! Some comments/questions below.
> 
> On Tue, 8 Dec 2020 at 22:51, Stephen Kitt <steve@sk2.org> wrote:
> >
> > This documents close_range(2) based on information in
> > 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
> > 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
> 
> (Thanks for noting these commit IDs.)
> 
> > Signed-off-by: Stephen Kitt <steve@sk2.org>
> > ---
> >  man2/close_range.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 112 insertions(+)
> >  create mode 100644 man2/close_range.2
> >
> > diff --git a/man2/close_range.2 b/man2/close_range.2
> > new file mode 100644
> > index 000000000..62167d9b0
> > --- /dev/null
> > +++ b/man2/close_range.2
> > @@ -0,0 +1,112 @@
> > +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
> > +.\"
> > +.\" %%%LICENSE_START(VERBATIM)
> > +.\" Permission is granted to make and distribute verbatim copies of this
> > +.\" manual provided the copyright notice and this permission notice are
> > +.\" preserved on all copies.
> > +.\"
> > +.\" Permission is granted to copy and distribute modified versions of this
> > +.\" manual under the conditions for verbatim copying, provided that the
> > +.\" entire resulting derived work is distributed under the terms of a
> > +.\" permission notice identical to this one.
> > +.\"
> > +.\" Since the Linux kernel and libraries are constantly changing, this
> > +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> > +.\" responsibility for errors or omissions, or for damages resulting from
> > +.\" the use of the information contained herein.  The author(s) may not
> > +.\" have taken the same level of care in the production of this manual,
> > +.\" which is licensed free of charge, as they might when working
> > +.\" professionally.
> > +.\"
> > +.\" Formatted or processed versions of this manual, if unaccompanied by
> > +.\" the source, must acknowledge the copyright and authors of this work.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
> > +.SH NAME
> > +close_range \- close all file descriptors in a given range
> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <linux/close_range.h>
> > +.PP
> > +.BI "int close_range(int " first ", int " last ", unsigned int " flags );
> > +.fi
> > +.SH DESCRIPTION
> > +The
> > +.BR close_range ()
> > +system call closes all open file descriptors from
> > +.I first
> > +to
> > +.IR last
> > +(included).
> > +.PP
> > +Errors closing a given file descriptor are currently ignored.
> > +.PP
> > +.I flags
> > +can be set to
> > +.B CLOSE_RANGE_UNSHARE
> > +to unshare the range of file descriptors from any other processes,
> > +.I instead
> > +of closing them.
> 
> Really "instead of closing them"? I had supposed that rather that this
> should be "before closing them". That's also how the kernel code reads
> to me, from a quick glance.

It's also mentioned in the commit message. Basically setting
CLOSE_RANGE_UNSHARE is equivalent to:

unshare(CLONE_FILES);
close_range(<start>, <end>);

Christian
