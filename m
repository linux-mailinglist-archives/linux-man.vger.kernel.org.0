Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9BAD2FA5BE
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 17:12:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404635AbhARQMr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 11:12:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405969AbhARQBt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 11:01:49 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB525C061575
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 08:01:01 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id p22so18120196edu.11
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 08:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Wdua0Fmx0ZCPt00nnyRUDn12s/Nv7W1N+MfWxS/liUA=;
        b=HTEyTAxImtbmeM2NZ5JVQDd+5HlzPASl9zPztm0QUqNkDbT29CQRKxDrnxQUuXf9km
         Y3j8ISwWx90Dc84sMryKr5DUinHErenIqEHMI8dmRQ8rMr4rjrBd57XbWZglw4a1U6o7
         SX+YgtSswZAMiVNIL27GZLszPABSyU4E7i/14CwT2KoezHfBd8adKRI2NCwLqvNt05fG
         jh8MKrI11RAqrXmgrjFr6GjGMr4tNwOf6ckyMtsIzA4iJQBNbCFs5h5vD4TyaCAss9dc
         fZZTLF10FUZqL1gVCtZ2LJBBVrbVQI7rf/OQ6vPh+9qOidbqL4YZNeMIBBlZlC6zgaDV
         M/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wdua0Fmx0ZCPt00nnyRUDn12s/Nv7W1N+MfWxS/liUA=;
        b=XLTmf5Bh9nrpi18Wj3OnY3Sr+4NdETHuutrZbDd7XA/Z67vQHfKwIS5Thatq8AKi30
         gW3KVTTjntupzXvbP24EEdV3zveS8z4q4KYrOR6KTY1ldMoVgqxCdT4Hw8O4HpKOkcJF
         JOlCY8dKP9YKY1ZfJoP7T9jtWDX8KyX6TFjoDVUy1tsU07LVV5qr1Pzkwgzx71JJcdB5
         LjKYxx62LZneNS85U8rK58gWNds6sBgYiukjGMeVQPvM1xOhpinFW300x7jCDkLPBWvs
         GHo9oNleoinSJzc/tKdC6ht0uDqV1xxwWGTmq/0usdn0pjCYf8FIEo/aU+8SSHZsgbXS
         9O8A==
X-Gm-Message-State: AOAM532IT/Dcd8aWLISwWubJ0uebAKgI588oRANCTUWQJDdb1WQBB/Ry
        yIAJwtE8V57IhQDVbLo/o3QLIpAnRn4=
X-Google-Smtp-Source: ABdhPJxDGLrlSTHE7lLXmd80Xs5JsnNQepNN7xlMlHmLHIw2ST043JUYbAsRsOwS4ukS78Mx3gt9Ig==
X-Received: by 2002:a50:9310:: with SMTP id m16mr136979eda.94.1610985660509;
        Mon, 18 Jan 2021 08:01:00 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id m10sm5218604edi.54.2021.01.18.08.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 08:00:59 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        "Dmitry V. Levin" <ldv@altlinux.org>
Subject: Re: [patch] chmod.2, lchmod.3: Document lchmod()
To:     Bruno Haible <bruno@clisp.org>
References: <39277473.ZaUlkdM7pu@omega> <20210110074159.GA20991@altlinux.org>
 <1945428.G7aTUhjore@omega> <8ceb8a90-1a8a-b5b7-8bec-3de15a4a0523@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f31475c9-2443-e05e-9bed-5c038c3365a9@gmail.com>
Date:   Mon, 18 Jan 2021 17:00:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <8ceb8a90-1a8a-b5b7-8bec-3de15a4a0523@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Bruno,

Ping!

Thanks,

Michael

On 1/11/21 9:02 AM, Michael Kerrisk (man-pages) wrote:
> On 1/10/21 11:05 AM, Bruno Haible wrote:
>> Dmitry V. Levin wrote:
>>>> Here is a patch to update the man pages accordingly.
>>>
>>> Please note the important limitation of that implementation:
>>> it doesn't work when /proc is not mounted, see
>>> https://sourceware.org/bugzilla/show_bug.cgi?id=26401
>>
>> Thanks for the pointer. Revised patch attached.
> 
> Hi Bruno,
> 
> Thank you for the patch.
> 
> But, I have a question: is lchown() actually usable? That is,
> are there any kinds of links whose mode can be changed? I
> can't seem to use it with normal symlinks, or for that matter, 
> magic links:
> 
> [[
> $ cat t_lchmod.c 
> /*#* t_lchmod.c
> 
>    Copyright Michael Kerrisk,  Jan 2021
> */
> #define _DEFAULT_SOURCE
> #include <sys/stat.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <unistd.h>
> #include <string.h>
> 
> typedef enum { FALSE, TRUE } Boolean;
> int
> main(int argc, char *argv[])
> {
>     if (argc < 2) {
> 	fprintf(stderr, "Usage: %s <file> <mode>\n", argv[0]);
> 	exit(EXIT_FAILURE);
>     }
> 
>     int mode = strtoul(argv[2], NULL, 0);
>     if (lchmod(argv[1], mode) == -1) {
>         perror("lchmod");
> 	exit(EXIT_FAILURE);
>     }
> 
>     exit(EXIT_SUCCESS);
> }
> 
> $ touch a 
> $ ln -s a b
> $ ./t_lchmod b 700
> lchmod: Operation not supported
> $ ./t_lchmod /proc/self/fd/0 700
> lchmod: Operation not supported
> ]]
> 
> 
> Thanks,
> 
> Michael
> 
> =====
> 
> 
>>From 56ce64325fa9a9184b820eac908ecc5d53a5154b Mon Sep 17 00:00:00 2001
> From: Bruno Haible <bruno@clisp.org>
> Date: Sun, 10 Jan 2021 05:20:30 +0100
> Subject: [PATCH] chmod.2, lchmod.3: Document lchmod().
> 
> ---
>  man2/chmod.2  | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
>  man3/lchmod.3 |  1 +
>  2 files changed, 65 insertions(+), 6 deletions(-)
>  create mode 100644 man3/lchmod.3
> 
> diff --git a/man2/chmod.2 b/man2/chmod.2
> index a54aec7..f1709ef 100644
> --- a/man2/chmod.2
> +++ b/man2/chmod.2
> @@ -29,15 +29,16 @@
>  .\"   <michael@cantor.informatik.rwth-aachen.de>: NFS details
>  .\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>
>  .\"
> -.TH CHMOD 2 2017-09-15 "Linux" "Linux Programmer's Manual"
> +.TH CHMOD 2 2021-01-10 "Linux" "Linux Programmer's Manual"
>  .SH NAME
> -chmod, fchmod, fchmodat \- change permissions of a file
> +chmod, fchmod, lchmod, fchmodat \- change permissions of a file
>  .SH SYNOPSIS
>  .nf
>  .B #include <sys/stat.h>
>  .PP
>  .BI "int chmod(const char *" pathname ", mode_t " mode );
>  .BI "int fchmod(int " fd ", mode_t " mode );
> +.BI "int lchmod(const char *" pathname ", mode_t " mode );
>  .PP
>  .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
>  .B #include <sys/stat.h>
> @@ -68,6 +69,12 @@ Feature Test Macro Requirements for glibc (see
>  .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
>  .fi
>  .PP
> +.BR lchmod ():
> +.nf
> +    Since glibc 2.32:
> +        _DEFAULT_SOURCE
> +.fi
> +.PP
>  .BR fchmodat ():
>  .nf
>      Since glibc 2.10:
> @@ -80,10 +87,12 @@ The
>  .BR chmod ()
>  and
>  .BR fchmod ()
> -system calls change a files mode bits.
> +system calls and the
> +.BR lchmod ()
> +function change a file's mode bits.
>  (The file mode consists of the file permission bits plus the set-user-ID,
>  set-group-ID, and sticky bits.)
> -These system calls differ only in how the file is specified:
> +These functions differ only in how the file is specified:
>  .IP * 2
>  .BR chmod ()
>  changes the mode of the file specified whose pathname is given in
> @@ -93,6 +102,11 @@ which is dereferenced if it is a symbolic link.
>  .BR fchmod ()
>  changes the mode of the file referred to by the open file descriptor
>  .IR fd .
> +.IP *
> +.BR lchmod ()
> +is like
> +.BR chmod (),
> +but does not dereference symbolic links.
>  .PP
>  The new file mode is specified in
>  .IR mode ,
> @@ -220,8 +234,13 @@ can either be 0, or include the following flag:
>  If
>  .I pathname
>  is a symbolic link, do not dereference it:
> -instead operate on the link itself.
> -This flag is not currently implemented.
> +instead operate on the link itself, like
> +.BR lchmod ().
> +(By default,
> +.BR fchmodat ()
> +dereferences symbolic links, like
> +.BR chmod ().)
> +This flag is implemented since glibc 2.32.
>  .PP
>  See
>  .BR openat (2)
> @@ -304,6 +323,17 @@ See above.
>  The same errors that occur for
>  .BR chmod ()
>  can also occur for
> +.BR lchmod ().
> +The following additional errors can occur for
> +.BR lchmod ():
> +.TP
> +.B EOPNOTSUPP
> +.B /proc
> +is not mounted.
> +.PP
> +The same errors that occur for
> +.BR chmod ()
> +can also occur for
>  .BR fchmodat ().
>  The following additional errors can occur for
>  .BR fchmodat ():
> @@ -323,14 +353,31 @@ is relative and
>  is a file descriptor referring to a file other than a directory.
>  .TP
>  .B ENOTSUP
> +(Before glibc 2.32.)
>  .I flags
>  specified
>  .BR AT_SYMLINK_NOFOLLOW ,
>  which is not supported.
> +.TP
> +.B EOPNOTSUPP
> +(Since glibc 2.32.)
> +.I flags
> +specified
> +.BR AT_SYMLINK_NOFOLLOW ,
> +and
> +.B /proc
> +is not mounted.
>  .SH VERSIONS
>  .BR fchmodat ()
>  was added to Linux in kernel 2.6.16;
>  library support was added to glibc in version 2.4.
> +.PP
> +.BR lchmod ()
> +and the handling of
> +.B AT_SYMLINK_NOFOLLOW
> +in
> +.BR fchmodat ()
> +were added in glibc version 2.32.
>  .SH CONFORMING TO
>  .BR chmod (),
>  .BR fchmod ():
> @@ -362,6 +409,17 @@ glibc constructs a pathname based on the symbolic link in
>  that corresponds to the
>  .IR dirfd
>  argument.
> +.SH BUGS
> +.BR lchmod ()
> +and
> +.BR fchmodat ()
> +with
> +.B AT_SYMLINK_NOFOLLOW
> +flag fail with error
> +.B EOPNOTSUPP
> +when the
> +.B /proc
> +file system is not mounted.
>  .SH SEE ALSO
>  .BR chmod (1),
>  .BR chown (2),
> diff --git a/man3/lchmod.3 b/man3/lchmod.3
> new file mode 100644
> index 0000000..92647d2
> --- /dev/null
> +++ b/man3/lchmod.3
> @@ -0,0 +1 @@
> +.so man2/chmod.2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
