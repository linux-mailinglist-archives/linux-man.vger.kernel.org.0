Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB6AC95754
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 08:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728777AbfHTGbN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 02:31:13 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:41354 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727006AbfHTGbM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Aug 2019 02:31:12 -0400
Received: by mail-ed1-f66.google.com with SMTP id w5so5071432edl.8
        for <linux-man@vger.kernel.org>; Mon, 19 Aug 2019 23:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=l8KEGtdrV0LhA//ILjX193BAnKdWYadxokNh2GVA1ps=;
        b=Ei3u2CKS2tLzXngYEwXW2+nDsr3tspngWC6e/zPdNdXAl42YkUvA7K8V4XkuIEASoG
         H5HUYWKDZ8prb8LLlNNCOeOeSy1uPkbHH6CSa7fnL+TjYvYY4w9FPze9t6DMa9cE0SY0
         IGld+MOWo6HsWwXUFPXRRJBuhl+j1MkQzxNZjM6AEZ6rt8sv8CilR22EgrBZeE9QCVFk
         j0zf8+dcXFpiPfwb/UH3gpzSXNZPHuI0IzH4A6bh71iWJjJ+yIFKbb2k863U0dG2G2+D
         k1l2bC4k1RJpev5yxe18mDJoDYCPItOc9dNkyrxH3q9+Rh0zlc7shg6r7X76EYifdyQ1
         AFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=l8KEGtdrV0LhA//ILjX193BAnKdWYadxokNh2GVA1ps=;
        b=c69MLgUX2PN6SWHEPrAyr4DlF3wZQ/jA6NmZ5ulyE5QVceEJMvS31nl+k1+MEOKRDC
         t0GatJ4RmES0KcZYk2pbMUQOMeEbVnh3fZbtTqPQ4J0/PJA0/l8Kcp4wvnmjCM/QBHVl
         aeR4W/XRDB7lRLjoJ0rtuhK4/eV6pzsT9Ir0tnUc88JUPtl4eYVIYR8YnnJ4tmgL0Svi
         l4oQI7KpueZwPrD4Rdhi/zQFEjzB+svAVRCRsHU3EJC3gYdJ3nW0e77SlducDjidDWZ/
         +3Zj720KoDdO8zXYZZLwzB4mntwksXSe+HcNsdEmac99i0u7HYyM8KqtITHMjmAXAAne
         qpDg==
X-Gm-Message-State: APjAAAW8FISj+Qd5q5GghnkAM9XSmZyOIr1Gid/ry5Suqq/LxL66Z935
        Y791d0cP5PDg6qV/0VtFFt6zT6Lt3WrmTmyvSZ6wvqgL
X-Google-Smtp-Source: APXvYqzrGhkec9dGp2qkZ9KnUDrZ8VqqQiAMfI1cxKXqI/3Jq0B2dEFvD3DMNCvmC/Vi7flNWiAUA2uZGJfWN16TNd4=
X-Received: by 2002:a17:906:11da:: with SMTP id o26mr24861420eja.64.1566282670136;
 Mon, 19 Aug 2019 23:31:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190814001514.GA16463@rhi.hi.is>
In-Reply-To: <20190814001514.GA16463@rhi.hi.is>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 20 Aug 2019 08:30:58 +0200
Message-ID: <CAKgNAkjnQjGE+K2L7NJ5-Zwr4AJXzSwxuJd=dhWqY8H+EYwQMg@mail.gmail.com>
Subject: Re: [patch] man2: srcfix, ffix: correct a wrong use of a two-font macro
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

The changes in these patches are not useful. Please stop sending them.

Thanks,

Michael


On Wed, 14 Aug 2019 at 02:15, Bjarni Ingi Gislason <bjarniig@rhi.hi.is> wrote:
>
>   Use the correct font macro or the right number of arguments.
>
>   Changes are based on the latest (13th August 2019 UTC) revision of my
> local git repository.
>
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man2/clone.2         |  2 +-
>  man2/execve.2        |  2 +-
>  man2/fanotify_init.2 |  6 +++---
>  man2/fanotify_mark.2 |  8 ++++----
>  man2/fcntl.2         |  2 +-
>  man2/poll.2          |  4 ++--
>  man2/rename.2        | 14 +++++++-------
>  man2/sched_setattr.2 |  8 ++++----
>  man2/splice.2        |  2 +-
>  man2/tee.2           |  2 +-
>  10 files changed, 25 insertions(+), 25 deletions(-)
>
> diff --git a/man2/clone.2 b/man2/clone.2
> index 921995345..ea1615c4f 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -167,7 +167,7 @@ returns control to user space in the child process.
>  (Note that the store operation may not have completed before
>  .BR clone ()
>  returns in the parent process, which will be relevant if the
> -.BR CLONE_VM
> +.B CLONE_VM
>  flag is also employed.)
>  .TP
>  .BR CLONE_FILES " (since Linux 2.0)"
> diff --git a/man2/execve.2 b/man2/execve.2
> index 4c5a05cad..da9c1f045 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -336,7 +336,7 @@ argument of
>  starting at
>  .IR argv [1].
>  Note that there is no way to get the
> -.IR argv[0]
> +.IR argv [0]
>  that was passed to the
>  .BR execve ()
>  call.
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 58e3a7cf9..797524652 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -110,14 +110,14 @@ directory entry events, such as
>  .BR FAN_ATTRIB ,
>  .BR FAN_MOVE ,
>  and
> -.BR FAN_DELETE
> +.B FAN_DELETE
>  for example.
>  Note that the use of directory modification events are not supported when
>  monitoring a mount point.
>  The use of
> -.BR FAN_CLASS_CONTENT
> +.B FAN_CLASS_CONTENT
>  or
> -.BR FAN_CLASS_PRE_CONTENT
> +.B FAN_CLASS_PRE_CONTENT
>  is not permitted with this flag and will result in the error
>  .BR EINVAL .
>  See
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9f9f17dc3..6cfae10d1 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -129,7 +129,7 @@ will be monitored.
>  This value cannot be used if the
>  .I fanotify_fd
>  file descriptor has been initialized with the flag
> -.BR FAN_REPORT_FID
> +.B FAN_REPORT_FID
>  or if any of the new directory modification events are provided as a
>  .IR mask .
>  Attempting to do so will result in the error
> @@ -244,7 +244,7 @@ Create events for directories\(emfor example, when
>  are called.
>  Without this flag, only events for files are created.
>  The
> -.BR FAN_ONDIR
> +.B FAN_ONDIR
>  flag is reported in an event mask only if the
>  .I fanotify_fd
>  file descriptor has been initialized with the flag
> @@ -254,9 +254,9 @@ In the context of directory entry events, such as
>  .BR FAN_DELETE ,
>  .BR FAN_MOVED_FROM ,
>  and
> -.BR FAN_MOVED_TO
> +.B FAN_MOVED_TO
>  for example, specifying the flag
> -.BR FAN_ONDIR
> +.B FAN_ONDIR
>  is required in order to create events when subdirectory entries are
>  modified (i.e.,
>  .BR mkdir (2)/
> diff --git a/man2/fcntl.2 b/man2/fcntl.2
> index dfc2a6a81..1a3b1331b 100644
> --- a/man2/fcntl.2
> +++ b/man2/fcntl.2
> @@ -1914,7 +1914,7 @@ and
>  Several systems have more fields in
>  .I "struct flock"
>  such as, for example,
> -.IR l_sysid
> +.I l_sysid
>  (to identify the machine where the lock is held).
>  .\" e.g., Solaris 8 documents this field in fcntl(2), and Irix 6.5
>  .\" documents it in fcntl(5).  mtk, May 2007
> diff --git a/man2/poll.2 b/man2/poll.2
> index 2de0740e0..0091b012c 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -295,7 +295,7 @@ equivalent because whereas a negative
>  value for
>  .BR poll ()
>  is interpreted as an infinite timeout, a negative value expressed in
> -.IR *tmo_p
> +.I *tmo_p
>  results in an error from
>  .BR ppoll ().
>  .PP
> @@ -368,7 +368,7 @@ value.
>  .B EINVAL
>  .RB ( ppoll ())
>  The timeout value expressed in
> -.IR *ip
> +.I *ip
>  is invalid (negative).
>  .TP
>  .B ENOMEM
> diff --git a/man2/rename.2 b/man2/rename.2
> index c77a2c13a..7bb2971ca 100644
> --- a/man2/rename.2
> +++ b/man2/rename.2
> @@ -191,7 +191,7 @@ argument is a bit mask consisting of zero or more of the following flags:
>  .TP
>  .B RENAME_EXCHANGE
>  Atomically exchange
> -.IR oldpath
> +.I oldpath
>  and
>  .IR newpath .
>  Both pathnames must exist
> @@ -200,10 +200,10 @@ and the other a symbolic link).
>  .TP
>  .B RENAME_NOREPLACE
>  Don't overwrite
> -.IR newpath
> +.I newpath
>  of the rename.
>  Return an error if
> -.IR newpath
> +.I newpath
>  already exists.
>  .IP
>  .B RENAME_NOREPLACE
> @@ -278,7 +278,7 @@ as of Linux 4.19, at least.)
>  .IP
>  .B RENAME_WHITEOUT
>  requires the same privileges as creating a device node (i.e., the
> -.BR CAP_MKNOD
> +.B CAP_MKNOD
>  capability).
>  .IP
>  .B RENAME_WHITEOUT
> @@ -503,7 +503,7 @@ The filesystem does not support one of the flags in
>  contains
>  .B RENAME_EXCHANGE
>  and
> -.IR newpath
> +.I newpath
>  does not exist.
>  .TP
>  .B EPERM
> @@ -542,11 +542,11 @@ and
>  .I newpath
>  are relative pathnames,
>  glibc constructs pathnames based on the symbolic links in
> -.IR /proc/self/fd
> +.I /proc/self/fd
>  that correspond to the
>  .I olddirfd
>  and
> -.IR newdirfd
> +.I newdirfd
>  arguments.
>  .SH BUGS
>  On NFS filesystems, you can not assume that if the operation
> diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
> index a4562d7e8..5cb3d48b6 100644
> --- a/man2/sched_setattr.2
> +++ b/man2/sched_setattr.2
> @@ -154,7 +154,7 @@ This field contains zero or more of the following flags
>  that are ORed together to control scheduling behavior:
>  .RS
>  .TP
> -.BR SCHED_FLAG_RESET_ON_FORK
> +.B SCHED_FLAG_RESET_ON_FORK
>  Children created by
>  .BR fork (2)
>  do not inherit privileged scheduling policies.
> @@ -165,7 +165,7 @@ for details.
>  .BR SCHED_FLAG_RECLAIM " (since Linux 4.13)"
>  .\" 2d4283e9d583a3ee8cfb1cbb9c1270614df4c29d
>  This flag allows a
> -.BR SCHED_DEADLINE
> +.B SCHED_DEADLINE
>  thread to reclaim bandwidth unused by other real-time threads.
>  .\" Bandwidth reclaim is done via the GRUB algorithm; see
>  .\" Documentation/scheduler/sched-deadline.txt
> @@ -173,7 +173,7 @@ thread to reclaim bandwidth unused by other real-time threads.
>  .BR SCHED_FLAG_DL_OVERRUN " (since Linux 4.16)"
>  .\" commit 34be39305a77b8b1ec9f279163c7cdb6cc719b91
>  This flag allows an application to get informed about run-time overruns in
> -.BR SCHED_DEADLINE
> +.B SCHED_DEADLINE
>  threads.
>  Such overruns may be caused by (for example) coarse execution time accounting
>  or incorrect parameter assignment.
> @@ -182,7 +182,7 @@ Notification takes the form of a
>  signal which is generated on each overrun.
>  .IP
>  This
> -.BR SIGXCPU
> +.B SIGXCPU
>  signal is
>  .I process-directed
>  (see
> diff --git a/man2/splice.2 b/man2/splice.2
> index f5f1be72b..f842953ac 100644
> --- a/man2/splice.2
> +++ b/man2/splice.2
> @@ -155,7 +155,7 @@ is set to indicate the error.
>  .B EAGAIN
>  .B SPLICE_F_NONBLOCK
>  was specified in
> -.IR flags
> +.I flags
>  or one of the file descriptors had been marked as nonblocking
>  .RB ( O_NONBLOCK ) ,
>  and the operation would block.
> diff --git a/man2/tee.2 b/man2/tee.2
> index 03d043b46..b9444bbc0 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -100,7 +100,7 @@ is set to indicate the error.
>  .B EAGAIN
>  .B SPLICE_F_NONBLOCK
>  was specified in
> -.IR flags
> +.I flags
>  or one of the file descriptors had been marked as nonblocking
>  .RB ( O_NONBLOCK ) ,
>  and the operation would block.
> --
> 2.20.1
>
> --
> Bjarni I. Gislason



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
