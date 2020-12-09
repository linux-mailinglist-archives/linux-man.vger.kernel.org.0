Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 622BC2D3F1A
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 10:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729495AbgLIJsU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 04:48:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729462AbgLIJsS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 04:48:18 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96EA5C0613CF;
        Wed,  9 Dec 2020 01:47:37 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id d3so853861wmb.4;
        Wed, 09 Dec 2020 01:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ufvqLcj34tql5vJD8f2Lt4LsazLD24y8rsbftpobVu4=;
        b=IFW8v1W+zF/LbwUqPrKWpEi+QWROdXuUGlY0TlG1YjwLyjY92u/CsokD/SJreOVLH/
         9H95MA3tyYmLUOXrpVkgdrARIG2yZzdXZvbn4dhEt8baIf81L5ryPwhFlwKCi1pzfu0P
         W+rWr+lWGkLDS99Ty+Tuc1GC/spU4dGxRohgPyqycZzCZLWZoF2DUXzgXsyegnLKZtZ+
         VoYh20CIUzQX+UiO92Y/QQmNOPJzT+7P9UY/q/MYN9iQH+Oq85v30LDI6/14AgCcbdG1
         Jd0eszN3tHpWfRu/LfLaUCvDpeBq8190olSWiUaLPUz92LM0DkvpD/R8e/84vbDCnbru
         lkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ufvqLcj34tql5vJD8f2Lt4LsazLD24y8rsbftpobVu4=;
        b=pWJdSq9Nf3TwfCTj+jkzipdiicnrK4WDRkC3WE6SpjpGuWYH+WcWWPotXqw8U5TGOS
         B20etgR+U7iSfkwApgl2zk+PELDVEAqhPMPASMcHAjICoNZKSGbDoVXRjsoTWVIQNaDn
         2aKFGu+6bqCB9C6KLXd8eYjL4A/d/9tYQH5JYky/LDGeoDLK0/oIvxF4JV/0fkyD/PZO
         DBtJ0V9nuDcmWZJYkSsQhDoVm6lkUyxPmV4Ffqmpnb3sLHY207o7AfG63+UHYaNLmBdd
         C76jbTGSfXTwkPbK5xPj5mf5S5+gKhE7WklAFkY5rDILRhESKIwDE4XCsKI6O0mVdBTk
         pYfA==
X-Gm-Message-State: AOAM530FuRYLl9F/nswLvNqTLB37FCcTEiKxRaj8Drlafw9EvLpTeffl
        lGK8DLyQqD7tttqPd3pMGZoffazSiWIkGQ==
X-Google-Smtp-Source: ABdhPJx9bXcsw/f8N16S9MOZWlHOpKEbOFztGerjL+6KGokjuOXP8YAuS7CRfLn8XwcOYssAN7UZqQ==
X-Received: by 2002:a7b:c5c6:: with SMTP id n6mr1732407wmk.131.1607507255814;
        Wed, 09 Dec 2020 01:47:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f9sm2421471wrw.81.2020.12.09.01.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 01:47:35 -0800 (PST)
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     mtk.manpages@gmail.com, Stephen Kitt <steve@sk2.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        lkml <linux-kernel@vger.kernel.org>
References: <20201208215133.30575-1-steve@sk2.org>
 <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9cd2dd3a-c87e-e019-00ad-72ace5469338@gmail.com>
Date:   Wed, 9 Dec 2020 10:47:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen and Michael,

Thanks for the page!

A few more comments below.

Thanks,

Alex

On 12/9/20 9:50 AM, Michael Kerrisk (man-pages) wrote:
> Hello Stephen
> 
> Thank you for writing this page! Some comments/questions below.
> 
> On Tue, 8 Dec 2020 at 22:51, Stephen Kitt <steve@sk2.org> wrote:
>>
>> This documents close_range(2) based on information in
>> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
>> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
> 
> (Thanks for noting these commit IDs.)
> 
>> Signed-off-by: Stephen Kitt <steve@sk2.org>
>> ---
>>  man2/close_range.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 112 insertions(+)
>>  create mode 100644 man2/close_range.2
>>
>> diff --git a/man2/close_range.2 b/man2/close_range.2
>> new file mode 100644
>> index 000000000..62167d9b0
>> --- /dev/null
>> +++ b/man2/close_range.2
>> @@ -0,0 +1,112 @@
>> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
>> +.\"
>> +.\" %%%LICENSE_START(VERBATIM)
>> +.\" Permission is granted to make and distribute verbatim copies of this
>> +.\" manual provided the copyright notice and this permission notice are
>> +.\" preserved on all copies.
>> +.\"
>> +.\" Permission is granted to copy and distribute modified versions of this
>> +.\" manual under the conditions for verbatim copying, provided that the
>> +.\" entire resulting derived work is distributed under the terms of a
>> +.\" permission notice identical to this one.
>> +.\"
>> +.\" Since the Linux kernel and libraries are constantly changing, this
>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>> +.\" responsibility for errors or omissions, or for damages resulting from
>> +.\" the use of the information contained herein.  The author(s) may not
>> +.\" have taken the same level of care in the production of this manual,
>> +.\" which is licensed free of charge, as they might when working
>> +.\" professionally.
>> +.\"
>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>> +.\" the source, must acknowledge the copyright and authors of this work.
>> +.\" %%%LICENSE_END
>> +.\"
>> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
>> +.SH NAME
>> +close_range \- close all file descriptors in a given range
>> +.SH SYNOPSIS
>> +.nf
>> +.B #include <linux/close_range.h>
>> +.PP
>> +.BI "int close_range(int " first ", int " last ", unsigned int " flags );

The actual interface of close_range() uses 'unsigned int'
for the file descriptors:

$ sed -n '/SYSCALL_DEFINE.(close_range,/,/^{/p' linux/fs/open.c
SYSCALL_DEFINE3(close_range, unsigned int, fd, unsigned int, max_fd,
		unsigned int, flags)
{


>> +.fi
>> +.SH DESCRIPTION
>> +The
>> +.BR close_range ()
>> +system call closes all open file descriptors from
>> +.I first
>> +to
>> +.IR last

s/IR/I/

>> +(included).
>> +.PP
>> +Errors closing a given file descriptor are currently ignored.
>> +.PP
>> +.I flags
>> +can be set to
>> +.B CLOSE_RANGE_UNSHARE
>> +to unshare the range of file descriptors from any other processes,
>> +.I instead
>> +of closing them.
> 
> Really "instead of closing them"? I had supposed that rather that this
> should be "before closing them". That's also how the kernel code reads
> to me, from a quick glance.
> 
>> +.SH RETURN VALUE
>> +On success,
>> +.BR close_range ()
>> +return 0.
> 
> s/return/returns/
> 
>> +On error, \-1 is returned and
>> +.I errno
>> +is set to indicate the cause of the error.
>> +.SH ERRORS
>> +.TP
>> +.B EINVAL
>> +.I flags
>> +is not valid, or
>> +.I first
>> +is greater than
>> +.IR last .
>> +.TP
>> +.B EMFILE
>> +The per-process limit on the number of open file descriptors has been reached
>> +(see the description of
>> +.BR RLIMIT_NOFILE
>> +in
>> +.BR getrlimit (2)).
> 
> Given that we are simply closing FDs, how can EMFILE occur?

I was also going to ask this, but after some investigation,
it's possible.  Basically, CLOSE_RANGE_UNSHARE duplicates fds
before closing them.  In case that duplication is not possible,
ENOMEM and EMFILE are the two possible reasons.  It might be interesting
to note that those errors may only occur if CLOSE_RANGE_UNSHARE was set.
See below:

fs/open.c:
close_range() calls __close_range().

fs/file.c:
If CLOSE_RANGE_UNSHARE, __close_range() calls unshare_fd()
with CLONE_FILES flag.

kernel/fork.c:
unshare_fd() calls dup_fd().

fs/file.c:
dup_fd() may fail with -ENOMEM or -EMFILE.

> 
>> +.TP
>> +.B ENOMEM
>> +Insufficient kernel memory was available.
>> +.SH VERSIONS
>> +.BR close_range ()
>> +first appeared in Linux 5.9.
>> +.SH CONFORMING TO
>> +.BR close_range ()
>> +is available on Linux and FreeBSD.
> 
> Here, I think it would be better to write:
> 
> close_range()
> is a nonstandard function that is also present on FreeBSD.
> 
>> +.SH NOTES
>> +Currently, there is no glibc wrapper for this system call; call it using
>> +.BR syscall (2).
>> +.SH USE CASES
>> +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
>> +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
>> +.SS Closing file descriptors before exec
>> +File descriptors can be closed safely using
>> +.PP
>> +.in +4n
>> +.EX
>> +/* we don't want anything past stderr here */
>> +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
>> +execve(....);
>> +.EE
>> +.in
>> +.PP
> 
> .PP is not necessary before a new subsection (.SS).
> 
>> +.SS Closing all open file descriptors
>> +This is commonly implemented (on Linux) by listing open file
> 
> Is it really true that this is common? I suspect not. It's slow, and
> relies on /proc being present. I would have thought that more common
> is something like:
> 
>         int maxfd = sysconf(_SC_OPEN_MAX);
>         if (maxfd == -1)                /* Limit is indeterminate... */
>             maxfd = 16384;           /* so take a guess */
> 
>         for (fd = 0; fd < maxfd; fd++)
>             close(fd);
> 
> I think it's fine to mention the use of a /proc as an (inferior and)
> alternative way of doing this. I'm just not sure that "commonly" is
> correct.
> 
>> +descriptors in
>> +.B /proc/self/fd/

By reading proc.5, I think this should s/.B/.I/, right mtk?

>> +and calling
>> +.BR close (2)
>> +on each one.
>> +.BR close_range ()
>> +can take care of this without requiring
>> +.B /proc

By reading proc.5, I think this should s/.B/.I/, right mtk?

>> +and with a single system call, which provides significant performance
>> +benefits.
>> +.SH SEE ALSO
>> +.BR close (2)
>>
>> base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
>> --
>> 2.20.1
> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
