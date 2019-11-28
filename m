Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E988710CDBD
	for <lists+linux-man@lfdr.de>; Thu, 28 Nov 2019 18:24:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726609AbfK1RYJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Nov 2019 12:24:09 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:48564 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726446AbfK1RYJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Nov 2019 12:24:09 -0500
Received: from x4d0d0749.dyn.telefonica.de ([77.13.7.73] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1iaNWP-0005Fl-QO; Thu, 28 Nov 2019 17:24:05 +0000
Date:   Thu, 28 Nov 2019 18:24:05 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Adrian Reber <areber@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
Message-ID: <20191128172404.xan6vzaoofjeysq2@wittgenstein>
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191128124650.364810-2-areber@redhat.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 28, 2019 at 01:46:50PM +0100, Adrian Reber wrote:
> Signed-off-by: Adrian Reber <areber@redhat.com>
> ---
>  man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index 076b9258e..59c13ec35 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -195,6 +195,8 @@ struct clone_args {
>      u64 stack;        /* Pointer to lowest byte of stack */
>      u64 stack_size;   /* Size of stack */
>      u64 tls;          /* Location of new TLS */
> +    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
> +    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
>  };
>  .EE
>  .in
> @@ -262,6 +264,8 @@ flags & 0xff	exit_signal
>  stack	stack
>  \fP---\fP	stack_size
>  tls	tls	See CLONE_SETTLS
> +\fP---\fP	set_tid	See below for details
> +\fP---\fP	set_tid_size
>  .TE
>  .RE
>  .\"
> @@ -285,6 +289,74 @@ options when waiting for the child with
>  If no signal (i.e., zero) is specified, then the parent process is not signaled
>  when the child terminates.
>  .\"
> +.SS The set_tid array
> +.PP
> +The
> +.I set_tid
> +array is used to select a certain PID for the process to be created by
> +.BR clone3 ().
> +If the PID of the newly created process should only be set for the current
> +PID namespace or in the newly created PID namespace (if
> +.I flags
> +contains
> +.BR CLONE_NEWPID )
> +then the first element in the
> +.I set_tid
> +array has to be the desired PID and
> +.I set_tid_size
> +needs to be 1.
> +.PP
> +If the PID of the newly created process should have a certain value in
> +multiple PID namespaces the
> +.I set_tid
> +array can have multiple entries. The first entry defines the PID in the most
> +nested PID namespace and all following entries contain the PID of the
> +corresponding parent PID namespace. The number of PID namespaces in which a PID
> +should be set is defined by
> +.I set_tid_size
> +which cannot be larger than the number of currently nested PID namespaces.

"It's upper cap is the kernel-enforced general nesting limit."
or sm like that

> +.PP
> +To create a process with the following PIDs:

in a pid namespace hierarchy

> +.RS
> +.TS
> +lb lb
> +l l .
> +PID NS level	Requested PID
> +0 (host)	31496
> +1	42
> +2	7
> +.TE
> +.RE
> +.PP

Set the array to:

> +.PP
> +.EX
> +	set_tid[0] = 7;
> +	set_tid[1] = 42;
> +	set_tid[2] = 31496;
> +	set_tid_size = 3;
> +.EE
> +.PP
> +If only the PID of the two innermost PID namespaces

need to be specified set the array to:

> +.PP
> +.EX
> +	set_tid[0] = 7;
> +	set_tid[1] = 42;
> +	set_tid_size = 2;
> +.EE
> +.PP
> +The PID in the PID namespaces outside the two innermost PID namespaces
> +is then selected the same way as any other PID is selected.

s/is then/will be/

> +.PP
> +Only a privileged process
> +.RB ( CAP_SYS_ADMIN )

Maybe more specific:

The set_tid feature requires CAP_SYS_ADMIN in all owning user namespaces
of the target pid namespaces.

> +can set
> +.I set_tid
> +to select a PID for the process to be created.
> +.\"
>  .SS The flags mask
>  .PP
>  Both
> @@ -1379,6 +1451,16 @@ in the
>  .I flags
>  mask.
>  .TP
> +.BR EINVAL " (" clone3 "() only)"
> +.I set_tid_size
> +larger than current number of nested PID namespaces or maximum number of
> +nested PID namespaces was specified.
> +.TP
> +.BR EINVAL " (" clone3 "() only)"
> +If one of the PIDs specified in
> +.I set_tid
> +was an invalid PID.
> +.TP
>  .B ENOMEM
>  Cannot allocate sufficient memory to allocate a task structure for the
>  child, or to copy those parts of the caller's context that need to be
> @@ -1450,6 +1532,14 @@ mask and the caller is in a chroot environment
>  (i.e., the caller's root directory does not match the root directory
>  of the mount namespace in which it resides).
>  .TP
> +.BR EPERM " (" clone3 "() only)"
> +If
> +.I set_tid
> +with
> +.I set_tid_size
> +larger than 0 was specified by an unprivileged process (process without
> +\fBCAP_SYS_ADMIN\fP).

without CAP_SYS_ADMIN in _one_ of the owning user namespaces of the
target pid namespace

maybe?

Where's EEXIST?

	Christian
