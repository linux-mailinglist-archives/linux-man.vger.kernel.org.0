Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 40BED138845
	for <lists+linux-man@lfdr.de>; Sun, 12 Jan 2020 21:50:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732914AbgALUuZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Jan 2020 15:50:25 -0500
Received: from mail-ed1-f68.google.com ([209.85.208.68]:36450 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732825AbgALUuZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Jan 2020 15:50:25 -0500
Received: by mail-ed1-f68.google.com with SMTP id j17so6720611edp.3
        for <linux-man@vger.kernel.org>; Sun, 12 Jan 2020 12:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=eC1PPuxN6MeWuUwa7VYuwuqKy4XumdxXQNvWaw0YksQ=;
        b=R7hQAi9IHyaPe9ktC8iw+88gfPZeWfxnVswd1ZM5rIeOrVPl85ygsjkdXAUMgylQXC
         GovKGlyKT/kTx5qMefy/BfJTqBc1kNC3/GoxA4ww5ofJO8Cx1s3McPo5Mgoair6vL4rg
         OhPNvPxgTcnkRDMT1EIG8dYILs5YG/a7Iw0GCtGUmSzVBvk084f/uLt9mO7pPTivelbx
         M4azp/sz1CcNnWgyyQEm51S043tpIwvgtR+vqS5fudk+LyrA1Io4meG2VxYj6G10byS+
         UQing+9i+kE+pgDuXN4k5W2FGimzfqAm7Wmx320xD8SPDFjMSSfW4fZSGG6ScgU7QkLf
         UsUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=eC1PPuxN6MeWuUwa7VYuwuqKy4XumdxXQNvWaw0YksQ=;
        b=dGsNug1nEpxfJ3r/ZL+1z4kPtii9+nyfCRKs7UU2VLxcMcJ6kAS7PX2ZJly1Bv1g5Q
         HTASDAfeMBiWTDssUgpd7QNnegEDC4Qv5kzHCJ7HKOqgxCEsKKRTBPh29p0ziOa74v2x
         UNB2mQxUefvQCq9d7u4bcLeexpp1sdusRBsCzGpapdLqfhOqskbOpgB/Cz/8rGR1UuJn
         XcIVVZleOWOXwlPA4uc9gUNngyNJBjH9vZZsZEIpz29GToChfis9aFni2H2NI/LZrTHh
         moSJud7DoxIsSFfR+L0azgbP3FyDeflgCkOcRnY6bOjqt2U5AExErydf3jk5gGnZDNJ2
         npfw==
X-Gm-Message-State: APjAAAULFQwGxS0lbe/MTagfCYDzKD6dM4U1vB8GUk76BhAj5uX/JxT6
        sbA561cP85smbVbcoTWHEHYcDNen3msjVMrBfDqxwGzi
X-Google-Smtp-Source: APXvYqwDY6JSTfqzQpsCznde6+RVtKo/L2QB+8hhyqd2NEn02hLJ057KeLudDBt1UllupYLH/ZwMEUzR3mFc5VS3ZVc=
X-Received: by 2002:a50:8f66:: with SMTP id 93mr14175651edy.33.1578862223292;
 Sun, 12 Jan 2020 12:50:23 -0800 (PST)
MIME-Version: 1.0
References: <20191217150505.417628-1-areber@redhat.com>
In-Reply-To: <20191217150505.417628-1-areber@redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 12 Jan 2020 21:50:12 +0100
Message-ID: <CAKgNAkgtqOs=MxNA=Fm7_yzgjn6PRNxZQP+u3Pok3WrZwD49-A@mail.gmail.com>
Subject: Re: [PATCH v3] clone.2: added clone3() set_tid information
To:     Adrian Reber <areber@redhat.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adrian, Christian,

On Tue, 17 Dec 2019 at 16:05, Adrian Reber <areber@redhat.com> wrote:
>
> Signed-off-by: Adrian Reber <areber@redhat.com>
> ---
>  v2: applied changes from review (Michael and Christian)
>
>  v3: added explanation about needing a PID 1 in a PID namespace
> ---
>  man2/clone.2 | 99 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)

Thanks, Adrian. Patch applied (and a few tweaks added; see [1]).

Christian, thanks of the review.

Cheers,

Michael

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=ee8bb310d8d16792723b9f69fcb9c6797cb07e79

> diff --git a/man2/clone.2 b/man2/clone.2
> index 076b9258e..15a1b56f6 100644
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
> @@ -262,6 +264,8 @@ flags & 0xff        exit_signal
>  stack  stack
>  \fP---\fP      stack_size
>  tls    tls     See CLONE_SETTLS
> +\fP---\fP      set_tid See below for details
> +\fP---\fP      set_tid_size
>  .TE
>  .RE
>  .\"
> @@ -285,6 +289,80 @@ options when waiting for the child with
>  If no signal (i.e., zero) is specified, then the parent process is not signaled
>  when the child terminates.
>  .\"
> +.SS The set_tid array
> +.PP
> +By default, the kernel chooses the next sequential PID for the new
> +process in each of the PID namespaces where it is present.
> +When creating a process with
> +.BR clone3 (),
> +the
> +.I set_tid
> +array can be used to select specific PIDs for the process in some
> +or all of the PID namespaces where it is present.
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
> +deeply nested PID namespace and all following entries contain the PID of the
> +corresponding parent PID namespace. The number of PID namespaces in which a PID
> +should be set is defined by
> +.I set_tid_size
> +which cannot be larger than the number of currently nested PID namespaces.
> +.PP
> +To create a process with the following PIDs in a PID namespace hierarchy:
> +.RS
> +.TS
> +lb lb
> +l l .
> +PID NS level   Requested PID
> +0 (host)       31496
> +1      42
> +2      7
> +.TE
> +.RE
> +.PP
> +Set the array to:
> +.PP
> +.EX
> +       set_tid[0] = 7;
> +       set_tid[1] = 42;
> +       set_tid[2] = 31496;
> +       set_tid_size = 3;
> +.EE
> +.PP
> +If only the PIDs in the two innermost PID namespaces
> +need to be specified, set the array to:
> +.PP
> +.EX
> +       set_tid[0] = 7;
> +       set_tid[1] = 42;
> +       set_tid_size = 2;
> +.EE
> +.PP
> +The PID in the PID namespaces outside the two innermost PID namespaces
> +will be selected the same way as any other PID is selected.
> +.PP
> +The
> +.I set_tid
> +feature requires
> +.RB CAP_SYS_ADMIN
> +in all owning user namespaces of the target PID namespaces.
> +.PP
> +Callers may only choose a PID > 1 in a given PID namespace if an init
> +process (i.e. a process with PID 1) already exists. Otherwise the PID
> +entry for this PID namespace must be 1.
> +.\"
>  .SS The flags mask
>  .PP
>  Both
> @@ -1201,6 +1279,11 @@ will be set appropriately.
>  Too many processes are already running; see
>  .BR fork (2).
>  .TP
> +.BR EEXIST " (" clone3 "() only)"
> +One or more of the PIDs specified in
> +.I set_tid
> +already exists in the corresponding PID namespace.
> +.TP
>  .B EINVAL
>  .B CLONE_SIGHAND
>  was specified in the
> @@ -1379,6 +1462,15 @@ in the
>  .I flags
>  mask.
>  .TP
> +.BR EINVAL " (" clone3 "() only)"
> +.I set_tid_size
> +larger than current number of nested PID namespaces.
> +.TP
> +.BR EINVAL " (" clone3 "() only)"
> +If one of the PIDs specified in
> +.I set_tid
> +was an invalid PID.
> +.TP
>  .B ENOMEM
>  Cannot allocate sufficient memory to allocate a task structure for the
>  child, or to copy those parts of the caller's context that need to be
> @@ -1450,6 +1542,13 @@ mask and the caller is in a chroot environment
>  (i.e., the caller's root directory does not match the root directory
>  of the mount namespace in which it resides).
>  .TP
> +.BR EPERM " (" clone3 "() only)"
> +.I set_tid_size
> +was greater than zero, and the caller lacks the
> +.B CAP_SYS_ADMIN
> +capability in one or more of the user namespaces that own the
> +corresponding PID namespaces.
> +.TP
>  .BR ERESTARTNOINTR " (since Linux 2.6.17)"
>  .\" commit 4a2c7a7837da1b91468e50426066d988050e4d56
>  System call was interrupted by a signal and will be restarted.
>
> base-commit: 5373f62f1e4352e665c24dfe49b7e3fe03721cab
> --
> 2.23.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
