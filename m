Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEA733ECC17
	for <lists+linux-man@lfdr.de>; Mon, 16 Aug 2021 02:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231801AbhHPAaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Aug 2021 20:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230124AbhHPAaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Aug 2021 20:30:11 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C977C061764
        for <linux-man@vger.kernel.org>; Sun, 15 Aug 2021 17:29:41 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id j1so23841564pjv.3
        for <linux-man@vger.kernel.org>; Sun, 15 Aug 2021 17:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rF1ThjTGrg5TCwA0vXGPf8AgrYZulQhreGW8dlwoh+M=;
        b=CieRFwpbFbk28guNkkBTfaRSu1SsRg24g4DiQ3yVFLJW9DqTf9RsfyMvJrIVWC4ecV
         BASXfbTalrVl6dqD8UYXmrGxAjqUIPjSu1B1mrgkAnNoZOtP4J8unLQDapFtTywPYSQj
         3qY0AoyPeDgSjz/XZOkA/9cnCYl0Pds7evsmKxXDkaUSvY3CkbETnJWsuiSqBF5gCmde
         QouN4ieO6gL5M2k+c45LGqejlLVikSrgktALwQ9ac1R+ttLTNv40es3qKv3BLeeVuNri
         Isv6o36EFLw9/BegkjeKyxVf8Mda/UfUqLw3RCa/zkNTaSzd+YixQApR5A2j3OoHCrds
         N0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rF1ThjTGrg5TCwA0vXGPf8AgrYZulQhreGW8dlwoh+M=;
        b=s68L4JDb2wqCgaAt4EqOX9yNkhS48f+YyjBhmHLxXPx5GkpLQKnNJOLn9ynVK3RcuZ
         X86O3Tk9PwQwB3jUP2c1/1fC72MsO59ZY28wZdmoFThoDcr2Ih/AjPuFEDH8BrAolWwF
         ats4n1shQ30INCDAShreMlHU7RUrGaJYhPy3C9QkFKHNWz3WUBK2Ukhhwj28BA100sDs
         /9YrnBVwwqtsUMjWZTO+ayvGDQECHaQ8A0u26tEbAaYwnPLhiJjtWpApHdU1jadT6tKY
         Byp4eabt45xCLaNuNcgVo8K5olareR5AiQ17MK9GwkWrSQdpOLhlqoy1BfipBBxWAonK
         jemw==
X-Gm-Message-State: AOAM533UZg6p7V6w/7k9n6PmT+fzxj36VPtv0paoxKe1LF+eqkPtAwb/
        kUBeBZfGEl09oXhu6A7kwuBR8/eK+eQ=
X-Google-Smtp-Source: ABdhPJwOTAvr4d6tkUKji/+KCQgy9jM/w4b6ggNt5GtDWs91fjnZ2hAX5vIrIyB1uD+OpOMHnTP/oA==
X-Received: by 2002:aa7:93ae:0:b0:3e1:46ca:20d3 with SMTP id x14-20020aa793ae000000b003e146ca20d3mr8518767pff.24.1629073780550;
        Sun, 15 Aug 2021 17:29:40 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y23sm9458687pfb.130.2021.08.15.17.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Aug 2021 17:29:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.ibm.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man2: new page describing memfd_secret() system call
To:     Mike Rapoport <rppt@kernel.org>
References: <20210815064648.300529-1-rppt@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <097cea8d-70d1-3b9d-f02a-9a9cccae9f2d@gmail.com>
Date:   Mon, 16 Aug 2021 02:29:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210815064648.300529-1-rppt@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

Thanks for this update!

On 8/15/21 8:46 AM, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
> v3:
> * Incorporate Michael's feedback except the extensive NOTES section. 

Hmmmm :-|

> v2: https://lore.kernel.org/linux-api/20210729082900.1581359-1-rppt@kernel.org
> Address Alex's comments:
> * update synopsis to match new style for syscalls without a wrapper
> * drop note about absence of glibc wrapper
> * update formatting
> 
> v1: https://lore.kernel.org/linux-api/20210727124140.1487079-1-rppt@kernel.org
> 
> 
> 
>  man2/memfd_secret.2 | 154 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 154 insertions(+)
>  create mode 100644 man2/memfd_secret.2
> 
> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> new file mode 100644
> index 000000000..188c547bf
> --- /dev/null
> +++ b/man2/memfd_secret.2
> @@ -0,0 +1,154 @@
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
> +memfd_secret \- create an anonymous RAM-based file
> +to access secret memory regions
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

I suggested:
s/anonymous/anonymous/ RAM-based/

was there a reason not to do that?

> +The file provides a way to create and access memory regions
> +with stronger protection than usual RAM-based files and
> +anonymous memory mappings.
> +Once all open references to the file are closed,
> +it is automatically released.
> +The initial size of the file is set to 0.
> +Following the call, the file size should be set using
> +.BR ftruncate (2).
> +.PP
> +The memory areas backing the file created with
> +.BR memfd_create(2)
> +are visible only to the processes that have access to the file descriptor.
> +The memory region is removed from the kernel page tables
> +and only the page tables of the processes holding the file descriptor
> +map the corresponding physical memory.
> +(Thus, the pages in the region can't be accessed by the kernel itself,
> +so that, for example, pointers to the region can't be passed to
> +system calls.)
> +.PP
> +The following values may be bitwise ORed in
> +.I flags
> +to control the behavior of
> +.BR memfd_secret (2):
> +.TP
> +.B FD_CLOEXEC
> +Set the close-on-exec flag on the new file descriptor,
> +which causes the region to be removed from the process on
> +.BR execve (2).
> +See the description of the
> +.B O_CLOEXEC
> +flag in
> +.BR open (2)
> +.PP
> +As its return value,
> +.BR memfd_secret ()
> +returns a new file descriptor that refers to an anonymous file.
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
> +The memory region is locked into memory in the same way as with
> +.BR mlock (2),
> +so that it will never be written into swap.
> +However the implementation of
> +.BR memfd_secret (2)
> +will not try to populate the whole range during the
> +.BR mmap (2)
> +call that attaches the region into the process's address space;
> +instead, the pages are only actually allocated
> +as they are faulted in.
> +The amount of memory allowed for memory mappings
> +of the file descriptor obeys the same rules as
> +.BR mlock (2)
> +and cannot exceed
> +.BR RLIMIT_MEMLOCK .
> +.SH RETURN VALUE
> +On success,
> +.BR memfd_secret (2)
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
Thanks! The page looks much better, but sill, that NOTES section
that I proposed [1] would be really useful, I think. What are
the chances that you could put that together?

Cheers,

Michael

[1] From my earlier mail:
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

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
