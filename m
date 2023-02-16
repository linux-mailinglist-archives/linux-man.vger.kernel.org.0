Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40CD9699EA4
	for <lists+linux-man@lfdr.de>; Thu, 16 Feb 2023 22:07:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbjBPVHG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 16:07:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjBPVHF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 16:07:05 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8535505D9
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 13:07:01 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id d40so7793368eda.8
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 13:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N5ZrCjpZlTJKzA0e0I0vM7F3IEa1BqG/x1vRGDDCVF0=;
        b=l18k4d4X+/eZEMHhAZ46xkZ1wZiIBsJQU/JxA7E4dmSvLoZillNs99F/RNIKaDA7O3
         7ZJk51zbG0LOw22mhQH6absvye4++fjapOTJpv+OvU7IvC2/N6unCzyjxLbH0E0AnY3r
         l8I5mEBbfauogaIfoGssgdOQxZW0blAih70X9F37RT4ZYWAlnKqO2ddKN86Hsoul0Fka
         VzZRn7eGxxXD78IxETEX1j0/5Mj4Csd/QP+iih1nLHqmOWru+iu0S4FBFWsZoZrl2iy2
         u0PKPQcthq5t2+0xPCpM+tm2bVRKrca1qtip4eU68x8dgZ+TWYU60VX4D9jDoQQdo0AZ
         uz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5ZrCjpZlTJKzA0e0I0vM7F3IEa1BqG/x1vRGDDCVF0=;
        b=KZXX/4Fgl+pQzBzlL1pyLINqSITm3I0hs0Ko/XD+8m/hn390Nu9mWpSTX21qwM5QHX
         aYWTCKUGrxxb1VnvfXHg57jGqonQKu8bzsDzDETz2G9C8aHZXs6v1s86B3Ib4fbfwiKj
         bc2kIVngADO6swjRIRIF59HWHOA74p/gCnkcrbEsmcd0RXvtBEZTVa1pajmw9yWI11Wg
         rK+J745mKUqFJ8qmPxc5tM2njn5oxfDGJOTfcm8mCeETyiHRPsUxuDIgFwo+BkfBmof8
         oC+/GkrbfMq/+EYK5LIJorIcyoBU6HwX4HPW9SMNEtzFP0nLFHpi42WOZE0R+FCnk/ey
         31LA==
X-Gm-Message-State: AO0yUKUSlfn7g4gdG+LVXK9FmufcA39qwcY/dMvftabd2MFJ73hm3DL0
        t0EwWXvRuLuDg5eu7S5uppeJisq4Whz6xuzWubP1pSlF1Kw=
X-Google-Smtp-Source: AK7set+ZxVrCehE5sXhyvW/zm5omwW3c6xgTom4Y6yhwfRFUFcz2OkGZfBxt93tsw7MHfcWoPjrR7Sl7FE8NuAlkWqU=
X-Received: by 2002:a17:907:2cd2:b0:895:58be:963 with SMTP id
 hg18-20020a1709072cd200b0089558be0963mr3532074ejc.3.1676581619979; Thu, 16
 Feb 2023 13:06:59 -0800 (PST)
MIME-Version: 1.0
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca> <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 16 Feb 2023 23:06:46 +0200
Message-ID: <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
To:     Brian Inglis <Brian.Inglis@shaw.ca>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Brian,

On Wed, Feb 15, 2023 at 10:21 PM Brian Inglis <Brian.Inglis@shaw.ca> wrote:
>
> ---
>  man2/add_key.2           | 2 +-
>  man2/epoll_wait.2        | 2 +-
>  man2/fcntl.2             | 2 +-
>  man2/getgroups.2         | 2 +-
>  man2/ioctl_console.2     | 4 ++--
>  man2/iopl.2              | 2 +-
>  man2/madvise.2           | 4 ++--
>  man2/mmap2.2             | 8 ++++----
>  man2/request_key.2       | 2 +-
>  man2/sched_setaffinity.2 | 4 ++--
>  man2/seccomp.2           | 4 ++--
>  man2/semop.2             | 4 ++--
>  man2/sendmmsg.2          | 2 +-
>  man2/shmget.2            | 4 ++--
>  man2/syslog.2            | 6 +++---
>  man2/vmsplice.2          | 2 +-
>  16 files changed, 27 insertions(+), 27 deletions(-)
>
> diff --git a/man2/add_key.2 b/man2/add_key.2
> index 56fc6d198d21..215de20baeae 100644
> --- a/man2/add_key.2
> +++ b/man2/add_key.2
> @@ -167,7 +167,7 @@ The size of the string (including the terminating null byte) specified in
>  .I type
>  or
>  .I description
> -exceeded the limit (32 bytes and 4096 bytes respectively).
> +exceeded the limit (32 bytes and 4Ki bytes respectively).

For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?

>  .TP
>  .B EINVAL
>  The payload data was invalid.
> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
> index 1620cff9dfcc..4863ae4a43fa 100644
> --- a/man2/epoll_wait.2
> +++ b/man2/epoll_wait.2
> @@ -283,7 +283,7 @@ Thus, for example, on a system where
>  .I sizeof(long)
>  is 4 and the kernel
>  .I HZ
> -value is 1000,
> +value is 1k,

I still prefer the old version, my impression is that 1k and friends
are used in informal contexts. Of course, it could be only my
impression.

Just my 2 cents,
Stefan.

>  this means that timeouts greater than 35.79 minutes are treated as infinity.
>  .SH SEE ALSO
>  .BR epoll_create (2),
> diff --git a/man2/fcntl.2 b/man2/fcntl.2
> index 3ec52dc4dc03..630fc55888bc 100644
> --- a/man2/fcntl.2
> +++ b/man2/fcntl.2
> @@ -2004,7 +2004,7 @@ A limitation of the Linux system call conventions on some
>  architectures (notably i386) means that if a (negative)
>  process group ID to be returned by
>  .B F_GETOWN
> -falls in the range \-1 to \-4095, then the return value is wrongly
> +falls in the range \-1 to \-4Ki-1, then the return value is wrongly
>  interpreted by glibc as an error in the system call;
>  .\" glibc source: sysdeps/unix/sysv/linux/i386/sysdep.h
>  that is, the return value of
> diff --git a/man2/getgroups.2 b/man2/getgroups.2
> index 36300bf61b6a..f01af687ccbd 100644
> --- a/man2/getgroups.2
> +++ b/man2/getgroups.2
> @@ -119,7 +119,7 @@ can additionally fail with the following errors:
>  .I size
>  is greater than
>  .B NGROUPS_MAX
> -(32 before Linux 2.6.4; 65536 since Linux 2.6.4).
> +(32 before Linux 2.6.4; 64Ki since Linux 2.6.4).
>  .TP
>  .B ENOMEM
>  Out of memory.
> diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
> index 89f794c1956c..477e6fd1a7e1 100644
> --- a/man2/ioctl_console.2
> +++ b/man2/ioctl_console.2
> @@ -171,7 +171,7 @@ bright cyan, and white.
>  .B GIO_FONT
>  Gets 256-character screen font in expanded form.
>  .I argp
> -points to an 8192-byte array.
> +points to an 8Ki-byte array.
>  Fails with error code
>  .B EINVAL
>  if the
> @@ -211,7 +211,7 @@ Sets 256-character screen font.
>  Load font into the EGA/VGA character
>  generator.
>  .I argp
> -points to an 8192-byte map, with 32 bytes per
> +points to an 8Ki-byte map, with 32 bytes per
>  character.
>  Only the first
>  .I N
> diff --git a/man2/iopl.2 b/man2/iopl.2
> index abf1bef675fd..c967296157b7 100644
> --- a/man2/iopl.2
> +++ b/man2/iopl.2
> @@ -34,7 +34,7 @@ Permissions are inherited from parents to children.
>  This call is deprecated, is significantly slower than
>  .BR ioperm (2),
>  and is only provided for older X servers which require
> -access to all 65536 I/O ports.
> +access to all 64Ki I/O ports.
>  It is mostly for the i386 architecture.
>  On many other architectures it does not exist or will always
>  return an error.
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index 9b4652a635d3..e05e9c5de4a7 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -329,8 +329,8 @@ naturally aligned to the huge page size (see
>  This feature is primarily aimed at applications that use large mappings of
>  data and access large regions of that memory at a time (e.g., virtualization
>  systems such as QEMU).
> -It can very easily waste memory (e.g., a 2\ MB mapping that only ever accesses
> -1 byte will result in 2\ MB of wired memory instead of one 4\ KB page).
> +It can very easily waste memory (e.g., a 2\ MiB mapping that only ever accesses
> +1 byte will result in 2\ MiB of wired memory instead of one 4\ KiB page).
>  See the Linux kernel source file
>  .I Documentation/admin\-guide/mm/transhuge.rst
>  for more details.
> diff --git a/man2/mmap2.2 b/man2/mmap2.2
> index 1fd5732ad41b..f975c1388a77 100644
> --- a/man2/mmap2.2
> +++ b/man2/mmap2.2
> @@ -32,7 +32,7 @@ The
>  system call provides the same interface as
>  .BR mmap (2),
>  except that the final argument specifies the offset into the
> -file in 4096-byte units (instead of bytes, as is done by
> +file in 4Ki-byte units (instead of bytes, as is done by
>  .BR mmap (2)).
>  This enables applications that use a 32-bit
>  .I off_t
> @@ -50,8 +50,8 @@ is set to indicate the error.
>  Problem with getting the data from user space.
>  .TP
>  .B EINVAL
> -(Various platforms where the page size is not 4096 bytes.)
> -.I "offset\ *\ 4096"
> +(Various platforms where the page size is not 4Ki bytes.)
> +.I "offset\ *\ 4Ki"
>  is not a multiple of the system page size.
>  .PP
>  .BR mmap2 ()
> @@ -74,7 +74,7 @@ This system call does not exist on x86-64.
>  .PP
>  On ia64, the unit for
>  .I offset
> -is actually the system page size, rather than 4096 bytes.
> +is actually the system page size, rather than 4Ki bytes.
>  .\" ia64 can have page sizes ranging from 4 kB to 64 kB.
>  .\" On cris, it looks like the unit might also be the page size,
>  .\" which is 8192 bytes. -- mtk, June 2007
> diff --git a/man2/request_key.2 b/man2/request_key.2
> index e78321e3c23f..dacc5282f3d8 100644
> --- a/man2/request_key.2
> +++ b/man2/request_key.2
> @@ -399,7 +399,7 @@ The size of the string (including the terminating null byte) specified in
>  .I type
>  or
>  .I description
> -exceeded the limit (32 bytes and 4096 bytes respectively).
> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>  .TP
>  .B EINVAL
>  The size of the string (including the terminating null byte) specified in
> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
> index 86a93539137d..9e7a26293e73 100644
> --- a/man2/sched_setaffinity.2
> +++ b/man2/sched_setaffinity.2
> @@ -243,10 +243,10 @@ impose no restriction on the size of the CPU mask.
>  However, the
>  .I cpu_set_t
>  data type used by glibc has a fixed size of 128 bytes,
> -meaning that the maximum CPU number that can be represented is 1023.
> +meaning that the maximum CPU number that can be represented is 1\[aq]023.
>  .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=15630
>  .\" and https://sourceware.org/ml/libc-alpha/2013-07/msg00288.html
> -If the kernel CPU affinity mask is larger than 1024,
> +If the kernel CPU affinity mask is larger than 1Ki,
>  then calls of the form:
>  .PP
>  .in +4n
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 32706397f03e..0bb8caa75698 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -836,7 +836,7 @@ but the filter program pointed to by
>  .I args
>  was not valid or the length of the filter program was zero or exceeded
>  .B BPF_MAXINSNS
> -(4096) instructions.
> +(4Ki) instructions.
>  .TP
>  .B ENOMEM
>  Out of memory.
> @@ -846,7 +846,7 @@ Out of memory.
>  The total length of all filter programs attached
>  to the calling thread would exceed
>  .B MAX_INSNS_PER_PATH
> -(32768) instructions.
> +(32Ki) instructions.
>  Note that for the purposes of calculating this limit,
>  each already existing filter program incurs an
>  overhead penalty of 4 instructions.
> diff --git a/man2/semop.2 b/man2/semop.2
> index 7a1416a26894..a0027e0706c5 100644
> --- a/man2/semop.2
> +++ b/man2/semop.2
> @@ -434,7 +434,7 @@ On Linux, this limit can be read and modified via the third field of
>  .IR /proc/sys/kernel/sem .
>  .\" This /proc file is not available in Linux 2.2 and earlier -- MTK
>  .IR Note :
> -this limit should not be raised above 1000,
> +this limit should not be raised above 1\[aq]000,
>  .\" See comment in Linux 3.19 source file include/uapi/linux/sem.h
>  because of the risk of that
>  .BR semop ()
> @@ -445,7 +445,7 @@ array.
>  .B SEMVMX
>  Maximum allowable value for
>  .IR semval :
> -implementation dependent (32767).
> +implementation dependent (32Ki-1).
>  .PP
>  The implementation has no intrinsic limits for
>  the adjust on exit maximum value
> diff --git a/man2/sendmmsg.2 b/man2/sendmmsg.2
> index 4e5475c45a09..3f355382ebf6 100644
> --- a/man2/sendmmsg.2
> +++ b/man2/sendmmsg.2
> @@ -139,7 +139,7 @@ The value specified in
>  .I vlen
>  is capped to
>  .B UIO_MAXIOV
> -(1024).
> +(1Ki).
>  .\" commit 98382f419f32d2c12d021943b87dea555677144b
>  .\"     net: Cap number of elements for sendmmsg
>  .\"
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index c4d8df8ed619..5421fd4bf3e9 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -360,7 +360,7 @@ Because it is not possible to map just part of a shared memory segment,
>  the amount of virtual memory places another limit on the maximum size of a
>  usable segment:
>  for example, on i386 the largest segments that can be mapped have a
> -size of around 2.8\ GB, and on x86-64 the limit is around 127 TB.
> +size of around 2.8\ GB, and on x86-64 the limit is around 127\ TB.
>  .TP
>  .B SHMMIN
>  Minimum size in bytes for a shared memory segment: implementation
> @@ -371,7 +371,7 @@ is the effective minimum size).
>  .B SHMMNI
>  System-wide limit on the number of shared memory segments.
>  In Linux 2.2, the default value for this limit was 128;
> -since Linux 2.4, the default value is 4096.
> +since Linux 2.4, the default value is 4Ki.
>  .IP
>  On Linux, this limit can be read and modified via
>  .IR /proc/sys/kernel/shmmni .
> diff --git a/man2/syslog.2 b/man2/syslog.2
> index 09c086f181e3..7d76e8cd9658 100644
> --- a/man2/syslog.2
> +++ b/man2/syslog.2
> @@ -54,9 +54,9 @@ in which messages given as arguments to the kernel function
>  are stored (regardless of their log level).
>  In early kernels,
>  .B LOG_BUF_LEN
> -had the value 4096;
> -from Linux 1.3.54, it was 8192;
> -from Linux 2.1.113, it was 16384;
> +had the value 4Ki;
> +from Linux 1.3.54, it was 8Ki;
> +from Linux 2.1.113, it was 16Ki;
>  since Linux 2.4.23/2.6, the value is a kernel configuration option
>  .RB ( CONFIG_LOG_BUF_SHIFT ,
>  default value dependent on the architecture).
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 01ac37b3584f..08ede47361ae 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -149,7 +149,7 @@ as defined in
>  .IR <limits.h> .
>  Currently,
>  .\" UIO_MAXIOV in kernel source
> -this limit is 1024.
> +this limit is 1Ki.
>  .PP
>  .\" commit 6a14b90bb6bc7cd83e2a444bf457a2ea645cbfe7
>  .BR vmsplice ()
> --
> 2.39.0
>
