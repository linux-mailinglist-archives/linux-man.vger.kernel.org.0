Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B14D3E3DDB
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 04:00:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231459AbhHICBO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 22:01:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbhHICBN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 22:01:13 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DD3FC061757
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 19:00:54 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id lw7-20020a17090b1807b029017881cc80b7so6022893pjb.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 19:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MpfXmBzyFe5Je3QKye5Dt9qhgKHYZ8tCAc/sTL8R5+U=;
        b=JHf7eWrU3bYly9bPiemICGyPtiSGbCFOpLzYxvrdBWHWsLx4OX7+buXcHUIRxCqa2l
         9tWrHFh22dt0QZjjnx7iOhAtALI80Z4MHfXvs9uO8Jl0GPInT286EGlLEmwKvdzMUV72
         YlEn7HYc18XbR9rfI5EmZvXBZOCmtKzsiOy9c7qIqyi42hWVBt1PoLgmjj8O3uYBTWVk
         cW5GQzI0BVDoZ+MQEm4QMtQSt3aGrYneCZqqJIF6fK7OyMD25K53JGUYHBQoXJ5T2Fbj
         gJ+3m9eZcS8AVbhNZ1oZGfKBvAa+jHEggorPdoERsAkcs+HUVccj0OtSj6lbiBk3iqtl
         1fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MpfXmBzyFe5Je3QKye5Dt9qhgKHYZ8tCAc/sTL8R5+U=;
        b=s4trx7IUN8yHeKOEyIZSmQwb7nje4hkErs/RmtG1IWe6WLWQ6E1OpyzK87MI7L2izL
         lgOGHr+BGq/g0w+wGCwPKsPjGQx91p/+86pZSQAzniVHVj+Cu0FErY8Nwbi8jZpWRexk
         iseQKVWLEcktx1xWbzaqN0jzIttOIleIjOPPLpW/9IiPmoEIPCRICugPYux4oD1js+e9
         T0o3PPpnVfqP/OgbxTyePepF4nWUchCkxlunF3d8tbRqPgXKw+aQT+mrsqecqn2XrRbR
         RERPNLYF92ayVoZBWwnlzJkoMU22ZqZfEYmV5CpUWapVLXYeO3/baT2gTJ2ucg04cIWB
         u6HA==
X-Gm-Message-State: AOAM532DZ+pRStYyf/o0LaUzkN8z309LVR1UwFPWqEEsqqC2KzcILMBK
        l7ptM4VqEEJSxfAcPVX85aq0IdL9+CA=
X-Google-Smtp-Source: ABdhPJw56ohG8cf8u6N8s0VgPB0ZFYPwVf340DKRRbs4246iJvpCYyWpDht1cEi3iPk03RSEjA8jNQ==
X-Received: by 2002:a63:da0a:: with SMTP id c10mr54679pgh.255.1628474453395;
        Sun, 08 Aug 2021 19:00:53 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id c21sm17663567pfo.193.2021.08.08.19.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 19:00:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Mike Rapoport <rppt@linux.ibm.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 08/23] man2: new page describing memfd_secret() system
 call
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c59c067a-b152-2e23-3591-833d8349dcda@gmail.com>
Date:   Mon, 9 Aug 2021 04:00:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-9-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike and Alex,

I think some more work is needed for this page. Mike, would
you be willing to do some work on the points below please?

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/memfd_secret.2 | 146 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 man2/memfd_secret.2
> 
> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> new file mode 100644
> index 000000000..466aa4236
> --- /dev/null
> +++ b/man2/memfd_secret.2
> @@ -0,0 +1,146 @@
> +.\" Copyright (c) 2021, IBM Corporation.
> +.\" Written by Mike Rapoport <rppt@linux.ibm.com>
> +.\"
> +.\" Based on memfd_create(2) man page
> +.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
> +.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
> +.\"
> +.\" %%%LICENSE_START(GPLv2+)
> +.\"
> +.\" This program is free software; you can redistribute it and/or modify
> +.\" it under the terms of the GNU General Public License as published by
> +.\" the Free Software Foundation; either version 2 of the License, or
> +.\" (at your option) any later version.
> +.\"
> +.\" This program is distributed in the hope that it will be useful,
> +.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
> +.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> +.\" GNU General Public License for more details.
> +.\"
> +.\" You should have received a copy of the GNU General Public
> +.\" License along with this manual; if not, see
> +.\" <http://www.gnu.org/licenses/>.
> +.\" %%%LICENSE_END
> +.\"
> +.TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
> +.SH NAME
> +memfd_secret \- create an anonymous file to access secret memory regions
> +.SH SYNOPSIS
> +.nf
> +.PP
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "int syscall(SYS_memfd_secret, unsigned int " flags );
> +.fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR memfd_secret (),
> +necessitating the use of
> +.BR syscall (2).
> +.SH DESCRIPTION
> +.BR memfd_secret ()
> +creates an anonymous file and returns a file descriptor that refers to it.

s/file/RAM-based file/

> +The file provides a way to create and access memory regions
> +with stronger protection than usual RAM-based files and
> +anonymous memory mappings.
> +Once all references to the file are dropped, it is automatically released.

"dropped" is not clear. Should it be something like:

    Once all open references to the file are closed,

> +The initial size of the file is set to 0.
> +Following the call, the file size should be set using
> +.BR ftruncate (2).
> +.PP
> +The memory areas backing the file created with
> +.BR memfd_create(2)
> +are visible only to the contexts that have access to the file descriptor.

"contexts" is not clear here. Can you reword to explain what you mean?
(processes, threads, something else?)

> +These areas are removed from the kernel page tables

s/These areas are/The memory region is/

> +and only the page tables of the processes holding the file descriptor
> +map the corresponding physical memory.

Perhaps a sentence here such as:

"(Thus, the pages in the region can't be accessed by the kernel itself,
so that, for example, pointers to the region can't be passed to 
system calls.)"

> +.PP
> +The following values may be bitwise ORed in
> +.I flags
> +to control the behavior of
> +.BR memfd_secret (2):
> +.TP
> +.B FD_CLOEXEC
> +Set the close-on-exec flag on the new file descriptor.

s/.$/, which causes the region to be removed from the process on execve(2)./

> +See the description of the
> +.B O_CLOEXEC
> +flag in
> +.BR open (2)
> +for reasons why this may be useful.

Maybe the previous sentence is not necessary?

> +.PP
> +As its return value,
> +.BR memfd_secret ()
> +returns a new file descriptor that can be used to refer to an anonymous file.

s/that can be used to refer/that refers/

> +This file descriptor is opened for both reading and writing
> +.RB ( O_RDWR )
> +and
> +.B O_LARGEFILE
> +is set for the file descriptor.
> +.PP
> +With respect to
> +.BR fork (2)
> +and
> +.BR execve (2),
> +the usual semantics apply for the file descriptor created by
> +.BR memfd_secret ().
> +A copy of the file descriptor is inherited by the child produced by
> +.BR fork (2)
> +and refers to the same file.
> +The file descriptor is preserved across
> +.BR execve (2),
> +unless the close-on-exec flag has been set.
> +.PP
> +The memory regions backed with
> +.BR memfd_secret ()
> +are locked in the same way as
> +.BR mlock (2),

I find the wording here just a little unclear

How about:

    The memory region is locked into memory in the same way as
    with mlock(2), so that it will never be written into swap

> +however the implementation will not try to> +populate the whole range during the
> +.BR mmap (2)
> +call.

s/call./call that attaches the region into the process's address space;
        instead, the pages are only actually allocated as they are
        faulted in./

> +The amount of memory allowed for memory mappings
> +of the file descriptor obeys the same rules as
> +.BR mlock (2)
> +and cannot exceed
> +.BR RLIMIT_MEMLOCK .
> +.SH RETURN VALUE
> +On success,
> +.BR memfd_secret ()
> +returns a new file descriptor.
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +.I flags
> +included unknown bits.
> +.TP
> +.B EMFILE
> +The per-process limit on the number of open file descriptors has been reached.
> +.TP
> +.B EMFILE
> +The system-wide limit on the total number of open files has been reached.
> +.TP
> +.B ENOMEM
> +There was insufficient memory to create a new anonymous file.
> +.TP
> +.B ENOSYS
> +.BR memfd_secret ()
> +is not implemented on this architecture.
> +.SH VERSIONS
> +The
> +.BR memfd_secret (2)
> +system call first appeared in Linux 5.14.
> +.SH CONFORMING TO
> +The
> +.BR memfd_secret (2)
> +system call is Linux-specific.
> +.SH SEE ALSO
> +.BR fcntl (2),
> +.BR ftruncate (2),
> +.BR mlock (2),
> +.BR mmap (2),
> +.BR setrlimit (2)

I feel like this page could benefit from a NOTES section
that explains the rationale for the system call. This could
note that the fact that the region is not accessible from the
kernel removes a whole class of security attacks.

Also, the NOTES section could mention the  "secretmem_enable"
boot option, what its purpose is, what values it can have,
and what is default behavior if this option is not specified.

Also, is ti still the case that if this system call is used,
then users can no longer hibernate their systems? If so,
this really should be mentioned in NOTES!

Also, in NOTES perhaps it is worth mentioning that the
pages in the region can enter the cache (right?).

Perhaps Jon's articles at https://lwn.net/Articles/865256/
https://lwn.net/Articits/835342/ and https://lwn.net/Articles/812325/,
as well as your own commit message
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1507f51255c9)
may inspire some other ideas on details that should be included
in NOTES.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
