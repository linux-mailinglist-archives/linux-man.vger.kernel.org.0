Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F9532BC251
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 22:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728578AbgKUVqu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 16:46:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728576AbgKUVqt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 16:46:49 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE87C0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:46:49 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id a186so11518734wme.1
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fuNVDxWb5RClJZ5xeIuY2i1nk9VeD2cjxHh8vIWx7Ho=;
        b=fGNt1Er/SehVUL/AJb7BGYim9IBbHDyw8clVJj9TQVkwxFRn9PHW1FjO122/Hfbqeg
         6mQ9HE+XnrzJvYpGy9SAXhWAZ9F2QZNdt8xg+ZW80tNCTSC2tFS6+SnoGUa1BzX4wEUI
         2Cv47EhOgk3HMDsVuTr9TjfZ7yvaNfOjaKHkIKelfMozpWf2m8R5ynB2CLzKeiRqUobE
         MgS9eSDI1cgy2MUOfKN1eECGNtYP1xIreE/xIMgWDDeH94RBBCsfp8GxGmdku8GXsHMk
         bsRLDx9aviJamWiWMGFQ73A9crL6T4bzzLRyvXZSJ5hz0E4Bb+7iVFafi2ZBZKUQfbVW
         fQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fuNVDxWb5RClJZ5xeIuY2i1nk9VeD2cjxHh8vIWx7Ho=;
        b=ay/AAA6ZGVo+A5s49UjmTZH4c/MD9lHDqhN/Ydn1zLi9l5YIjD/Zo6DRs22ufWpfl/
         IxVZbEs4j6MEQS7XhRxVMXLU20EY03YaNjRfkL9YIpazP0wkEXYto2271SLD9idF4Z7a
         40NUGnw3hUTGsSMwS4WRImXXhqrakqA+HzwBk8Y0/WcBeK7R/mlwc4R/ceo+KehuZEUn
         2Yicn6jw2hbJjOdUPmUwB93KGnRd1CGQn/0DD+KiW8CyvkCsdmvX/Lrlvophv/McrltE
         1aEVaeF9XDXFSLwctUkt8c58HaRYdOlLPxpJj4zmbARgTP3DS5HojrvClWqox4Ikfb8F
         I55w==
X-Gm-Message-State: AOAM531b/zXnfthy1PBEaD4l81/MHZ+DL/8acct4nMJKWl7dVBWOpshU
        j5iVHYalacq9PRVKajLmMF0xJ8CAZOZ6/g==
X-Google-Smtp-Source: ABdhPJx8Lva3w3aK+W2wMIbRamdPfuaD6acXk4S9Sk3NTz9G7/k30cpmlHBZv0wWqtpGl9Z0dqZ8Mw==
X-Received: by 2002:a1c:7510:: with SMTP id o16mr12278864wmc.66.1605995207279;
        Sat, 21 Nov 2020 13:46:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n4sm6450492wmc.30.2020.11.21.13.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 13:46:46 -0800 (PST)
Subject: Re: [PATCH v2] memfd_secret.2: New page describing memfd_secret()
 system call
To:     Mike Rapoport <rppt@kernel.org>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
References: <20201005073242.GA4251@kernel.org>
 <20201116210136.12390-1-alx.manpages@gmail.com>
 <20201117062630.GC370813@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0c706802-b3f5-26c7-8595-4948d262a899@gmail.com>
Date:   Sat, 21 Nov 2020 22:46:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201117062630.GC370813@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[[ I'm having trouble with gmail and many CCs lately ]]

Hi Mike,

I was reviewing the patch, and have a few questions.
See below.

Thanks,

Alex

On 11/17/20 7:26 AM, Mike Rapoport wrote:
> On Mon, Nov 16, 2020 at 10:01:37PM +0100, Alejandro Colomar wrote:
>> From: Mike Rapoport <rppt@linux.ibm.com>
>>
>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
>> Acked-by: Alejandro Colomar <alx.manpages@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi Mike,
>>
>> I added that note about not having a wrapper,
>> fixed a few minor formatting and wording issues,
>> and sorted ERRORS alphabetically.
>
> Thanks, Alejandro!
>
>> Cheers,
>>
>> Alex
>>
>>  man2/memfd_secret.2 | 178 ++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 178 insertions(+)
>>  create mode 100644 man2/memfd_secret.2
>>
>> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
>> new file mode 100644
>> index 000000000..4e617aa0e
>> --- /dev/null
>> +++ b/man2/memfd_secret.2
>> @@ -0,0 +1,178 @@
>> +.\" Copyright (c) 2020, IBM Corporation.
>> +.\" Written by Mike Rapoport <rppt@linux.ibm.com>
>> +.\"
>> +.\" Based on memfd_create(2) man page
>> +.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
>> +.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
>> +.\"
>> +.\" %%%LICENSE_START(GPLv2+)
>> +.\"
>> +.\" This program is free software; you can redistribute it and/or modify
>> +.\" it under the terms of the GNU General Public License as published by
>> +.\" the Free Software Foundation; either version 2 of the License, or
>> +.\" (at your option) any later version.
>> +.\"
>> +.\" This program is distributed in the hope that it will be useful,
>> +.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
>> +.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
>> +.\" GNU General Public License for more details.
>> +.\"
>> +.\" You should have received a copy of the GNU General Public
>> +.\" License along with this manual; if not, see
>> +.\" <http://www.gnu.org/licenses/>.
>> +.\" %%%LICENSE_END
>> +.\"
>> +.TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
>> +.SH NAME
>> +memfd_secret \- create an anonymous file to map secret memory regions
>> +.SH SYNOPSIS
>> +.nf
>> +.B #include <linux/secretmem.h>
>> +.PP
>> +.BI "int memfd_secret(unsigned long " flags ");"
>> +.fi
>> +.PP
>> +.IR Note :
>> +There is no glibc wrapper for this system call; see NOTES.
>> +.SH DESCRIPTION
>> +.BR memfd_secret ()
>> +creates an anonymous file and returns a file descriptor that refers
to it.
>> +The file can only be memory-mapped;
>> +the memory in such mapping
>> +will have stronger protection than usual memory mapped files,
>> +and so it can be used to store application secrets.
>> +Unlike a regular file, a file created with
>> +.BR memfd_secret ()
>> +lives in RAM and has a volatile backing storage.

By 'volatile' do you mean as in the keyword?
If so, maybe we should use [.I volatile].

>> +Once all references to the file are dropped, it is automatically
released.
>> +The initial size of the file is set to 0.
>> +Following the call, the file size should be set using
>> +.BR ftruncate (2).
>> +.PP
>> +The memory areas obtained with
>> +.BR mmap (2)
>> +from the file descriptor are exclusive to the owning context.
>> +These areas are removed from the kernel page tables
>> +and only the page table of the process holding the file descriptor
>> +maps the corresponding physical memory.
>> +.PP
>> +The following values may be bitwise ORed in
>> +.IR flags
>> +to control the behavior of
>> +.BR memfd_secret (2):
>> +.TP
>> +.BR FD_CLOEXEC
>> +Set the close-on-exec flag on the new file descriptor.
>> +See the description of the
>> +.B O_CLOEXEC
>> +flag in
>> +.BR open (2)
>> +for reasons why this may be useful.
>> +.PP
>> +.TP
>> +.BR SECRETMEM_UNCACHED
>> +In addition to excluding memory areas from the kernel page tables,
>> +mark the memory mappings uncached in the page table of the owning
process.
>> +Such mappings can be used to prevent speculative loads
>> +and cache-based side channels.
>> +This mode of
>> +.BR memfd_secret ()
>> +is not supported on all architectures.
>> +.PP
>> +See also NOTES below.

Is this paragraph correctly indented?
It seems like it's a continuation of SECRETMEM_UNCACHED,
in which case it should use: s/.PP/.IP/

>> +.PP
>> +As its return value,
>> +.BR memfd_secret ()
>> +returns a new file descriptor that can be used to refer to an
anonymous file.
>> +This file descriptor is opened for both reading and writing
>> +.RB ( O_RDWR )
>> +and
>> +.B O_LARGEFILE
>> +is set for the file descriptor.
>> +.PP
>> +With respect to
>> +.BR fork (2)
>> +and
>> +.BR execve (2),
>> +the usual semantics apply for the file descriptor created by
>> +.BR memfd_secret ().
>> +A copy of the file descriptor is inherited by the child produced by
>> +.BR fork (2)
>> +and refers to the same file.
>> +The file descriptor is preserved across
>> +.BR execve (2),
>> +unless the close-on-exec flag has been set.
>> +.PP
>> +The memory regions backed with
>> +.BR memfd_secret ()
>> +are locked in the same way as
>> +.BR mlock (2),
>> +however the implementation will not try to
>> +populate the whole range during the
>> +.BR mmap ()

s/mmap ()/mmap (2)/

>> +call.
>> +The amount of memory allowed for memory mappings
>> +of the file descriptor obeys the same rules as
>> +.BR mlock (2)
>> +and cannot exceed
>> +.BR RLIMIT_MEMLOCK .
>> +.SH RETURN VALUE
>> +On success,
>> +.BR memfd_secret ()
>> +returns a new file descriptor.
>> +On error, \-1 is returned and
>> +.I errno
>> +is set to indicate the error.
>> +.SH ERRORS
>> +.TP
>> +.B EINVAL
>> +.I flags
>> +included unknown bits.
>> +.TP
>> +.B EMFILE
>> +The per-process limit on the number of open file descriptors has
been reached.
>> +.TP
>> +.B EMFILE
>> +The system-wide limit on the total number of open files has been
reached.
>> +.TP
>> +.B ENOMEM
>> +There was insufficient memory to create a new anonymous file.
>> +.TP
>> +.B ENOSYS
>> +.BR memfd_secret ()
>> +is not implemented on this architecture.
>> +.SH VERSIONS
>> +The
>> +.BR memfd_secret (2)
>> +system call first appeared in Linux 5.X;

Was it added in Linux 5.10?
If so, could you add the commit number in a comment in the next line?

>> +.SH CONFORMING TO
>> +The
>> +.BR memfd_secret (2)
>> +system call is Linux-specific.
>> +.SH NOTES
>> +The
>> +.BR memfd_secret (2)
>> +system call provides an ability to hide information
>> +from the operating system.
>> +Normally Linux userspace mappings are protected from other users,
>> +but they are visible to privileged code.
>> +The mappings created using
>> +.BR memfd_secret ()
>> +are hidden from the kernel as well.
>> +.PP
>> +If an architecture supports
>> +.BR SECRETMEM_UNCACHED ,
>> +the mappings also have protection from speculative execution
vulnerabilties,
>> +at the expense of increased memory access latency.
>> +Care should be taken when using
>> +.B SECRETMEM_UNCACHED
>> +to avoid degrading application performance.
>> +.PP
>> +Glibc does not provide a wrapper for this system call; call it using
>> +.BR syscall (2).
>> +.SH SEE ALSO
>> +.BR fcntl (2),
>> +.BR ftruncate (2),
>> +.BR mlock (2),
>> +.BR mmap (2),
>> +.BR setrlimit (2)
>> --
>> 2.29.2
>>
>
