Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3FE2BB849
	for <lists+linux-man@lfdr.de>; Fri, 20 Nov 2020 22:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728727AbgKTV1m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Nov 2020 16:27:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728596AbgKTV1m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Nov 2020 16:27:42 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B783BC0613CF
        for <linux-man@vger.kernel.org>; Fri, 20 Nov 2020 13:27:41 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id h21so11393368wmb.2
        for <linux-man@vger.kernel.org>; Fri, 20 Nov 2020 13:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NwgAyC8LIFmTlfQtDNJKvMdlLRcyT59IaGK1vJ6EplA=;
        b=kAUZQ06UAB8O0H5oWn8l9/LZqdBYOKEYoZ05U5onadCPSTxR/0jchbLRU1ghC5QYQd
         6qr0fw3WrqJ8G8ZHX46zSykEWzhFwizTtq5jP2iHNSS1g/lHFah9HvJ8LE/aI7YZ37pR
         fbXGa+CEqs4+qIFkTjhekYGjXzy8iQLykgxXk8SFFsxRDPBVVmxabUGYkso0xKZiVIpU
         y1dFXO9E2xt1ob6ajdW+IN241ejHdUdDgEFGQvujwla6+9Qoy1kYRQgYgdTg+cxa7BdF
         Hfyxre0OXGVjBj5RkCh8KeKB6A/xJ+ThlnqdXvlhL422ToV1m5Iw5PRmxqKzrUsj+Ei+
         6lKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NwgAyC8LIFmTlfQtDNJKvMdlLRcyT59IaGK1vJ6EplA=;
        b=uaUmmHvSVPzDk7w6wxSRjyTlu0p7xgznSXt1OQcJcNlM28BlsbzewA4ohyUtdq7+rC
         mt6vFHKYQC1Awo7H9snXUK1Gsg9cNDa7KX1atPDomG/k0N89XTp3QnQE+KyjAWnQU+Ap
         tgRjDO2p8QNaEfaYiFpsxcJvM0ueLfWTxqdZQof6FqEQFF1OMP6iN8TbGwgvNWq8VE0B
         +RmeWY452l5Qd939v4z74LlSqpQm2AMv57gZqezdY5aj433Gjod8rQHfOAFwZ+TN9aRM
         ebRKD5WM8YCiLKQ4MaxLqLehKTlkoC9KRUJbMw/cPLJs5FkK5Y4orFsTA94OI4stKxox
         TunQ==
X-Gm-Message-State: AOAM5326v3Z7c986N42dJWZQjBfKemTsilbQj75HvpBXPwjruiltqHhG
        /ChJorsaZnMen6i97e+x9oX08kW+xIK+nw==
X-Google-Smtp-Source: ABdhPJxXBSsLGLj2dDBcrU5NkppuTLMQV0ScuRVyuLgh9fjbCjAMPE8vRuyrTbbPl3AQoOC4jA72MA==
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr11330112wmk.125.1605907659728;
        Fri, 20 Nov 2020 13:27:39 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id j71sm5622629wmj.10.2020.11.20.13.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 13:27:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capget.2, execve.2, readv.2, socketpair.2, utime.2,
 utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201119174656.131249-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a578e7e0-8359-6257-1534-25d54a637017@gmail.com>
Date:   Fri, 20 Nov 2020 22:27:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201119174656.131249-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/19/20 6:46 PM, Alejandro Colomar wrote:
> The main fix is {.IR var [x]} -> {.I var[x]}
> 
> There were around 20 entries of the former,
> and around 360 of the latter.

Yes, that's a worthwhile consistency fix. Thanks!

> While fixing that, I came across some obvious srcfixes,
> which I also added to this patch.

But when you do this:
1) It make it harder to review your patch in order to spot
any mistakes.
2) You mix multiple types of change into one patch, and I 
want to take one type of change, but not the other. In particular,
changes of the form:

[[
-.IR wword
+.I word
]]

create what I consider to be needless churn. Yes, the .I form 
is sufficient, but the .IR form is not harmful, and I really
don't went global edits that make these sorts of changes,
because of the churn.

Notwithstanding the above, I would have applied this patch,
except for a problem noted below. In the next version of the patch,
I'd be much happier if you made just the {.IR var [x]} -> {.I var[x]}
change.

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/capget.2           |   6 +--
>  man2/execve.2           |   8 +--
>  man2/readv.2            |   8 +--
>  man2/socketpair.2       |   4 +-
>  man2/utime.2            |   4 +-
>  man2/utimensat.2        |   4 +-
>  man3/getloadavg.3       |   2 +-
>  man5/proc.5             | 105 ++++++++++++++++++++--------------------
>  man7/mount_namespaces.7 |   6 +--
>  man7/unix.7             |   2 +-
>  10 files changed, 75 insertions(+), 74 deletions(-)
> 
> diff --git a/man2/capget.2 b/man2/capget.2
> index 9d2f6d90c..36ad7c27c 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -98,11 +98,11 @@ There was, however, an API glitch, and Linux 2.6.26 added
>  to fix the problem.
>  .PP
>  Note that 64-bit capabilities use
> -.IR datap [0]
> +.I datap[0]
>  and
> -.IR datap [1],
> +.IR datap[1] ,
>  whereas 32-bit capabilities use only
> -.IR datap [0].
> +.IR datap[0] .
>  .PP
>  On kernels that support file capabilities (VFS capabilities support),
>  these system calls behave slightly differently.
> diff --git a/man2/execve.2 b/man2/execve.2
> index 5f33332ca..0e21853f7 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -70,7 +70,7 @@ The
>  .I argv
>  array must be terminated by a NULL pointer.
>  (Thus, in the new program,
> -.IR argv[argc]
> +.I argv[argc]
>  will be NULL.)
>  .PP
>  \fIenvp\fP is an array of pointers to strings, conventionally of the form
> @@ -221,7 +221,7 @@ in
>  .BR prctl (2).
>  Note that changes to the "dumpable" attribute may cause ownership
>  of files in the process's
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directory to change to
>  .IR root:root ,
>  as described in
> @@ -354,9 +354,9 @@ is the series of words pointed to by the
>  argument of
>  .BR execve (),
>  starting at
> -.IR argv [1].
> +.IR argv[1] .
>  Note that there is no way to get the
> -.IR argv[0]
> +.I argv[0]
>  that was passed to the
>  .BR execve ()
>  call.
> diff --git a/man2/readv.2 b/man2/readv.2
> index 5a8b74168..d8ae756a9 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -119,9 +119,9 @@ Buffers are processed in array order.
>  This means that
>  .BR readv ()
>  completely fills
> -.IR iov [0]
> +.I iov[0]
>  before proceeding to
> -.IR iov [1],
> +.IR iov[1] ,
>  and so on.
>  (If there is insufficient data, then not all buffers pointed to by
>  .I iov
> @@ -129,9 +129,9 @@ may be filled.)
>  Similarly,
>  .BR writev ()
>  writes out the entire contents of
> -.IR iov [0]
> +.I iov[0]
>  before proceeding to
> -.IR iov [1],
> +.IR iov[1] ,
>  and so on.
>  .PP
>  The data transfers performed by
> diff --git a/man2/socketpair.2 b/man2/socketpair.2
> index 60a90f640..0cc6e5ae1 100644
> --- a/man2/socketpair.2
> +++ b/man2/socketpair.2
> @@ -62,9 +62,9 @@ For further details of these arguments, see
>  .BR socket (2).
>  .PP
>  The file descriptors used in referencing the new sockets are returned in
> -.IR sv [0]
> +.I sv[0]
>  and
> -.IR sv [1].
> +.IR sv[1] .
>  The two sockets are indistinguishable.
>  .SH RETURN VALUE
>  On success, zero is returned.
> diff --git a/man2/utime.2 b/man2/utime.2
> index 03a43a416..24f397b1b 100644
> --- a/man2/utime.2
> +++ b/man2/utime.2
> @@ -110,9 +110,9 @@ struct timeval {
>  .EE
>  .in
>  .PP
> -.IR times [0]
> +.I times[0]
>  specifies the new access time, and
> -.IR times [1]
> +.I times[1]
>  specifies the new modification time.
>  If
>  .I times
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index b75adbaef..eb9d2a2af 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -89,9 +89,9 @@ an open file descriptor,
>  .PP
>  For both calls, the new file timestamps are specified in the array
>  .IR times :
> -.IR times [0]
> +.I times[0]
>  specifies the new "last access time" (\fIatime\fP);
> -.IR times [1]
> +.I times[1]
>  specifies the new "last modification time" (\fImtime\fP).
>  Each of the elements of
>  .I times
> diff --git a/man3/getloadavg.3 b/man3/getloadavg.3
> index be1f114db..015c41dfb 100644
> --- a/man3/getloadavg.3
> +++ b/man3/getloadavg.3
> @@ -61,7 +61,7 @@ averaged over various periods of time.
>  Up to
>  .I nelem
>  samples are retrieved and assigned to successive elements of
> -.IR loadavg [].
> +.IR loadavg[] .
>  The system imposes a maximum of 3 samples, representing averages
>  over the last 1, 5, and 15 minutes, respectively.
>  .SH RETURN VALUE
> diff --git a/man5/proc.5 b/man5/proc.5
> index 744ee04c9..09dc2b382 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -84,7 +84,7 @@ filesystem supports the following mount options:
>  .BR hidepid "=\fIn\fP (since Linux 3.3)"
>  .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
>  This option controls who can access the information in
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directories.
>  The argument,
>  .IR n ,
> @@ -93,37 +93,37 @@ is one of the following values:
>  .TP 4
>  0
>  Everybody may access all
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directories.
>  This is the traditional behavior,
>  and the default if this mount option is not specified.
>  .TP
>  1
>  Users may not access files and subdirectories inside any
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directories but their own (the
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directories themselves remain visible).
>  Sensitive files such as
> -.IR /proc/[pid]/cmdline
> +.I /proc/[pid]/cmdline
>  and
> -.IR /proc/[pid]/status
> +.I /proc/[pid]/status
>  are now protected against other users.
>  This makes it impossible to learn whether any user is running a
>  specific program
>  (so long as the program doesn't otherwise reveal itself by its behavior).
>  .\" As an additional bonus, since
> -.\" .IR /proc/[pid]/cmdline
> +.\" .I /proc/[pid]/cmdline
>  .\" is inaccessible for other users,
>  .\" poorly written programs passing sensitive information via
>  .\" program arguments are now protected against local eavesdroppers.
>  .TP
>  2
>  As for mode 1, but in addition the
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directories belonging to other users become invisible.
>  This means that
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  entries can no longer be used to discover the PIDs on the system.
>  This doesn't hide the fact that a process with a specific PID value exists
>  (it can be learned by other means, for example, by "kill \-0 $PID"),
> @@ -131,7 +131,7 @@ but it hides a process's UID and GID,
>  which could otherwise be learned by employing
>  .BR stat (2)
>  on a
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directory.
>  This greatly complicates an attacker's task of gathering
>  information about running processes (e.g., discovering whether
> @@ -159,7 +159,7 @@ Underneath
>  .IR /proc ,
>  there are the following general groups of files and subdirectories:
>  .TP
> -.IR /proc/[pid] " subdirectories"
> +.I /proc/[pid] " subdirectories"
>  Each one of these subdirectories contains files and subdirectories
>  exposing information about the process with the corresponding process ID.
>  .IP
> @@ -185,11 +185,11 @@ with
>  to view the contents of
>  .IR /proc ).
>  .TP
> -.IR /proc/[tid] " subdirectories"
> +.I /proc/[tid] " subdirectories"
>  Each one of these subdirectories contains files and subdirectories
>  exposing information about the thread with the corresponding thread ID.
>  The contents of these directories are the same as the corresponding
> -.IR /proc/[pid]/task/[tid]
> +.I /proc/[pid]/task/[tid]
>  directories.
>  .IP
>  The
> @@ -276,7 +276,7 @@ The attribute was reset to the value in the file
>  .RE
>  .IP
>  Resetting the "dumpable" attribute to 1 reverts the ownership of the
> -.IR /proc/[pid]/*
> +.I /proc/[pid]/*
>  files to the process's effective UID and GID.
>  Note, however, that if the effective UID or GID is subsequently modified,
>  then the "dumpable" attribute may be reset, as described in
> @@ -380,7 +380,7 @@ any file creation calls it may make, but the attribute will persist
>  across multiple file creation calls within a program unless it is
>  explicitly reset.
>  In SELinux, a process can set only its own
> -.IR /proc/[pid]/attr/fscreate
> +.I /proc/[pid]/attr/fscreate
>  attribute.
>  .TP
>  .IR /proc/[pid]/attr/keycreate " (since Linux 2.6.18)"
> @@ -469,7 +469,7 @@ Clearing the PG_Referenced and ACCESSED/YOUNG bits provides a method
>  to measure approximately how much memory a process is using.
>  One first inspects the values in the "Referenced" fields
>  for the VMAs shown in
> -.IR /proc/[pid]/smaps
> +.I /proc/[pid]/smaps
>  to get an idea of the memory footprint of the
>  process.
>  One then clears the PG_Referenced and ACCESSED/YOUNG bits
> @@ -490,7 +490,7 @@ This is used (in conjunction with
>  .IR /proc/[pid]/pagemap )
>  by the check-point restore system to discover which pages of a process
>  have been dirtied since the file
> -.IR /proc/[pid]/clear_refs
> +.I /proc/[pid]/clear_refs
>  was written to.
>  .TP
>  5 (since Linux 4.0)
> @@ -500,11 +500,11 @@ current resident set size value.
>  .RE
>  .IP
>  Writing any value to
> -.IR /proc/[pid]/clear_refs
> +.I /proc/[pid]/clear_refs
>  other than those listed above has no effect.
>  .IP
>  The
> -.IR /proc/[pid]/clear_refs
> +.I /proc/[pid]/clear_refs
>  file is present only if the
>  .B CONFIG_PROC_PAGE_MONITOR
>  kernel configuration option is enabled.
> @@ -726,7 +726,7 @@ is surrounded by square brackets.
>  .IP
>  For example, an epoll file descriptor will have a symbolic link
>  whose content is the string
> -.IR "anon_inode:[eventpoll]" .
> +.IR anon_inode:[eventpoll] .
>  .IP
>  .\"The following was still true as at kernel 2.6.13
>  In a multithreaded process, the contents of this directory
> @@ -740,7 +740,7 @@ and programs that write to a file named as a command-line argument,
>  but don't send their output to standard output
>  if no argument is supplied, can nevertheless be made to use
>  standard input or standard output by using
> -.IR /proc/[pid]/fd
> +.I /proc/[pid]/fd
>  files as command-line arguments.
>  For example, assuming that
>  .I \-i
> @@ -779,7 +779,7 @@ which respectively link to the files
>  .IR 0 ,
>  .IR 1 ,
>  and
> -.IR 2
> +.I 2
>  in
>  .IR /proc/self/fd .
>  Thus the example command above could be written as:
> @@ -1352,7 +1352,7 @@ Offset field in the ELF program headers
>  There are additional helpful pseudo-paths:
>  .RS
>  .TP
> -.IR [stack]
> +.I [stack]
>  The initial process's (also known as the main thread's) stack.
>  .TP
>  .IR [stack:<tid>] " (from Linux 3.4 to 4.4)"
> @@ -1362,17 +1362,17 @@ A thread's stack (where the
>  .IR <tid>
>  is a thread ID).
>  It corresponds to the
> -.IR /proc/[pid]/task/[tid]/
> +.I /proc/[pid]/task/[tid]/
>  path.
>  This field was removed in Linux 4.5, since providing this information
>  for a process with large numbers of threads is expensive.
>  .TP
> -.IR [vdso]
> +.I [vdso]
>  The virtual dynamically linked shared object.
>  See
>  .BR vdso (7).
>  .TP
> -.IR [heap]
> +.I [heap]
>  The process's heap.
>  .in
>  .RE
> @@ -1423,7 +1423,7 @@ in the process's mount namespace (see
>  It supplies various information
>  (e.g., propagation state, root of mount for bind mounts,
>  identifier for each mount and its parent) that is missing from the (older)
> -.IR /proc/[pid]/mounts
> +.I /proc/[pid]/mounts
>  file, and fixes various other problems with that file
>  (e.g., nonextensibility,
>  failure to distinguish per-mount versus per-superblock options).
> @@ -1731,9 +1731,9 @@ scaled linearly with
>  .IR oom_score_adj .
>  .IP
>  Writing to
> -.IR /proc/[pid]/oom_score_adj
> +.I /proc/[pid]/oom_score_adj
>  or
> -.IR /proc/[pid]/oom_adj
> +.I /proc/[pid]/oom_adj
>  will change the other with its scaled value.
>  .IP
>  The
> @@ -1775,7 +1775,7 @@ PTE is soft-dirty
>  54\(en0
>  If the page is present in RAM (bit 63), then these bits
>  provide the page frame number, which can be used to index
> -.IR /proc/kpageflags
> +.I /proc/kpageflags
>  and
>  .IR /proc/kpagecount .
>  If the page is present in swap (bit 62),
> @@ -1786,14 +1786,14 @@ Before Linux 3.11, bits 60\(en55 were
>  used to encode the base-2 log of the page size.
>  .IP
>  To employ
> -.IR /proc/[pid]/pagemap
> +.I /proc/[pid]/pagemap
>  efficiently, use
> -.IR /proc/[pid]/maps
> +.I /proc/[pid]/maps
>  to determine which areas of memory are actually mapped and seek
>  to skip over unmapped regions.
>  .IP
>  The
> -.IR /proc/[pid]/pagemap
> +.I /proc/[pid]/pagemap
>  file is present only if the
>  .B CONFIG_PROC_PAGE_MONITOR
>  kernel configuration option is enabled.
> @@ -2034,7 +2034,7 @@ encoded using the following two-letter codes:
>      uw  - userfaultfd wprotect pages tracking (since Linux 4.3)
>  .IP
>  The
> -.IR /proc/[pid]/smaps
> +.I /proc/[pid]/smaps
>  file is present only if the
>  .B CONFIG_PROC_PAGE_MONITOR
>  kernel configuration option is enabled.
> @@ -2276,20 +2276,20 @@ see the description of
>  in
>  .BR getrlimit (2).
>  .TP
> -(26) \fIstartcode\fP \ %lu \ [PT]
> +.RI "(26) " startcode "  %lu  [PT]"

With this change, now the long list is using two different forms,
since you change just some of them. I'm not sure why you did that,
but again, if you wanted to make a change like this (to the whole
list), then it should be split out into another patch. But, again,
it feels a bit like unnecessary churn, since the resulting output
is unchanged. (By the way, I'm not 100% against global edits that
don't change the rendered output. For example, and argument for
such a change might be that by improving consistency in the
page sources, it makes future scripted edits easier.)

[...]

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
