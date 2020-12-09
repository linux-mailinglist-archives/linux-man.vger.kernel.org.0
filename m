Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59A602D3F62
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 11:02:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728971AbgLIJ7I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 04:59:08 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:47801 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729580AbgLIJ7D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 04:59:03 -0500
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1kmwEk-0007nz-Ds; Wed, 09 Dec 2020 09:58:18 +0000
Date:   Wed, 9 Dec 2020 10:58:17 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
Message-ID: <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
References: <20201208215133.30575-1-steve@sk2.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20201208215133.30575-1-steve@sk2.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Dec 08, 2020 at 10:51:33PM +0100, Stephen Kitt wrote:
> This documents close_range(2) based on information in
> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---

Hey Stephen,

Thanks for working on this that's an early Christmas present as it gets
an item off my todo list!

>  man2/close_range.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 112 insertions(+)
>  create mode 100644 man2/close_range.2
> 
> diff --git a/man2/close_range.2 b/man2/close_range.2
> new file mode 100644
> index 000000000..62167d9b0
> --- /dev/null
> +++ b/man2/close_range.2
> @@ -0,0 +1,112 @@
> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +close_range \- close all file descriptors in a given range
> +.SH SYNOPSIS
> +.nf
> +.B #include <linux/close_range.h>
> +.PP
> +.BI "int close_range(int " first ", int " last ", unsigned int " flags );

Note, the kernel prototype uses unsigned int as the type for file
descriptor arguments. As does the close() syscall itself. Only glibc
wrappers expose file descriptor types (at least in close variants) as
int.
Since this is a manpage about the syscall not the wrapper it might make
sense to note the correct types.

> +.fi
> +.SH DESCRIPTION
> +The
> +.BR close_range ()
> +system call closes all open file descriptors from
> +.I first
> +to
> +.IR last
> +(included).
> +.PP
> +Errors closing a given file descriptor are currently ignored.
> +.PP
> +.I flags
> +can be set to
> +.B CLOSE_RANGE_UNSHARE
> +to unshare the range of file descriptors from any other processes,
> +.I instead
> +of closing them.

As Michael has noted, this needs to be reworded. A few things to note:
- CLOSE_RANGE_UNSHARE will ensure that the calling process will have a
  private file descriptor table. This ensures that other threads opening
  files cannot inject new file descriptors into the caller's file
  descriptor table to e.g. make the caller inherit unwanted file
  descriptors.
- CLOSE_RANGE_UNSHARE is conceptually equivalent to:
  unshare(CLONE_FILES);
  close_range(3, ~0U);
- Whenever the requested range @last is greater than the current maximum
  number of file descriptors allocated in the caller's file descriptor
  table the kernel will only unshare a new file descriptor table for the
  caller up to @first, i.e. the new file descriptor table will be 0 up
  to and including @first not 0 up to and including @last. Which means
  that the kernel will not have to do any costly filp_close() calls at
  all. In essence, the close_range() operation is finished after the
  in-kernel unshare call in such cases.

Christian
