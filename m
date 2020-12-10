Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3168F2D4F64
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 01:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728964AbgLJAZR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 19:25:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728791AbgLJAZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 19:25:12 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D12B1C0613CF;
        Wed,  9 Dec 2020 16:24:31 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id i9so3660200wrc.4;
        Wed, 09 Dec 2020 16:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uSIXfMhMnKiM8+KPjiJHJGdQzdO3M8deFNEnj1sZf9s=;
        b=QlFKAsowCD2EMqHO90AbD0zLnyM67dIUDBp51k1DHA4IvIxQ0XO6kOvVNFrYnSj/aC
         H82mvXNLFRO//3imdpB4+Gh86Vl4LYBTBXGFArreaUKlAdd57WpsAN3QD23CwfULnbve
         W91+UosmvjxMCrmQz1J34w4NP3v56dFG282R5I3T7CQFFvY9C9BJVTMT30kpRBzVdq2v
         ZrWbtLYxor0i3rLAzTFZ7sQH8U4NDiPaT5hddQnnk58XBYsgD3+SVtWZtcascyDhHKkb
         5QF1bTaLw7lu34Ehiq4TP5pFNfNDrNSL94YjUQxfNKUIjKwZIbjy+ObIZhd5JZlWtXIm
         RwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uSIXfMhMnKiM8+KPjiJHJGdQzdO3M8deFNEnj1sZf9s=;
        b=nHnWS0PIp+xJ4ihdMwm0eY8CsWRHVmN9umjKcbAnNyM+N3AkGOFzZXpZfH7Vqq00jG
         Cu7gmVTebe//byp5MpLqpKfDtE4il11tNaXVmL48ygiAoMn4YoLGyoder1JvKd+TPShl
         GRKE9hLCB68hxkKu0OKEPH2q6lywA/Sy567T1O3hdTcOGs9KHf5EkiBaPbNc83VJW8YB
         XmmkUhTiaSn4rjrk0fDfz6vO9K3QP3tT7OHdTfFxli4O3QmLd3Yjs/QmTPiXzOuq1sjS
         T/rGl2mSWVdSeQAOZXGYURQvMTiW1jE8RYa9ooqKzQyqe5gmXKDcE8brfG1uJgsMugrm
         VQfw==
X-Gm-Message-State: AOAM533MSOg67s32m8oFu+B9phJAaGP9lpoH67gYBAy3oh90Cu5nL3NU
        CWPObZgfbSKM13xFkR2/slAiWfHJty6TSw==
X-Google-Smtp-Source: ABdhPJzqs9b6Zk6n+qlxJN5q9oKwV5cLcF3fmlAVkVh0rBGkUBq/5JwSIB7ceT7u+DCOgTaA8w95gw==
X-Received: by 2002:adf:f74e:: with SMTP id z14mr5508820wrp.146.1607559870543;
        Wed, 09 Dec 2020 16:24:30 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u66sm6844141wmg.30.2020.12.09.16.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 16:24:29 -0800 (PST)
Subject: Re: [PATCH v2] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-kernel@vger.kernel.org
References: <20201209220023.17912-1-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e50183ce-3ccb-c41c-9d30-bfb622b3b1f5@gmail.com>
Date:   Thu, 10 Dec 2020 01:24:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209220023.17912-1-steve@sk2.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

A few more comments below.

Michael, please have a look at them too.

Christian, do you have any program that you used to test the syscall
that could be added as an example program to the page?

Thanks,

Alex

On 12/9/20 11:00 PM, Stephen Kitt wrote:
> This documents close_range(2) based on information in
> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
> V2: unsigned int to match the kernel declarations
>     groff and grammar tweaks
>     CLOSE_RANGE_UNSHARE unshares *and* closes
>     Explain that EMFILE and ENOMEM can occur with C_R_U
>     "Conforming to" phrasing
>     Detailed explanation of CLOSE_RANGE_UNSHARE
>     Reading /proc isn't common
> 
>  man2/close_range.2 | 138 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 man2/close_range.2
> 
> diff --git a/man2/close_range.2 b/man2/close_range.2
> new file mode 100644
> index 000000000..403142b33
> --- /dev/null
> +++ b/man2/close_range.2
> @@ -0,0 +1,138 @@
> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +close_range \- close all file descriptors in a given range
> +.SH SYNOPSIS
> +.nf
> +.B #include <linux/close_range.h>
> +.PP
> +.BI "int close_range(unsigned int " first ", unsigned int " last ", unsigned int " flags );

This line overflows an 80-col terminal.  Fix:

.BI "int close_range(unsigned int " first ", unsigned int " last ,
.BI "                unsigned int " flags );


> +.fi

Please, add a note here that there is no wrapper for this syscall,
as in other syscalls without wrapper (see membarrier(2) as an example).
That way it's easier to grep, if all pages have the same notice.

> +.SH DESCRIPTION
> +The
> +.BR close_range ()
> +system call closes all open file descriptors from
> +.I first
> +to
> +.I last
> +(included).
> +.PP
> +Errors closing a given file descriptor are currently ignored.
> +.PP
> +.I flags
> +can be set to
> +.B CLOSE_RANGE_UNSHARE
> +to unshare the range of file descriptors from any other processes,
> +before closing them, avoiding races with other threads sharing the
> +file descriptor table.

Please use semantic newlines.
See man-pages(7)::STYLE GUIDE::Use semantic newlines

> +.SH RETURN VALUE
> +On success,
> +.BR close_range ()
> +returns 0.
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the cause of the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +.I flags
> +is not valid, or
> +.I first
> +is greater than
> +.IR last .
> +.PP
> +The following can occur with
> +.B CLOSE_RANGE_UNSHARE
> +(when constructing the new descriptor table):
> +.TP
> +.B EMFILE
> +The per-process limit on the number of open file descriptors has been reached
> +(see the description of
> +.B RLIMIT_NOFILE
> +in
> +.BR getrlimit (2)).
> +.TP
> +.B ENOMEM
> +Insufficient kernel memory was available.
> +.SH VERSIONS
> +.BR close_range ()
> +first appeared in Linux 5.9.
> +.SH CONFORMING TO
> +.BR close_range ()
> +is a nonstandard function that is also present on FreeBSD.
> +.SH NOTES
> +Currently, there is no glibc wrapper for this system call; call it using
> +.BR syscall (2).

I can see that this notice is also present on a few pages,
but the one in membarrier(2) is more extended.

Please, copy the notices from membarrier(2).
There's one in SYNOPSIS, and one in NOTES.

> +.PP
> +.B CLOSE_RANGE_UNSHARE
> +is conceptually equivalent to
> +.PP
> +.in +4n
> +.EX
> +unshare(CLONE_FILES);
> +close_range(first, last, 0);
> +.EE
> +.in
> +.PP
> +but can be more efficient: if the unshared range extends past the
> +current maximum number of file descriptors allocated in the caller's
> +file descriptor table (the common case when
> +.I last
> +is
> +.BR ~0U ),
> +the kernel will unshare a new file descriptor
> +table for the caller up to
> +.IR first .
> +This avoids subsequent close calls entirely; the whole operation is
> +complete once the table is unshared.

I think the above is more suitable for the DESCRIPTION, but what are
your thoughts, mtk?

> +.SH USE CASES

This section is unconventional.  Please move that text to one of the
traditional sections.  I think DESCRIPTION would be the best place for this.

For a list of the traditional sections,
see man-pages(7)::DESCRIPTION::Sections within a manual page

> +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> +.SS Closing file descriptors before exec
> +File descriptors can be closed safely using
> +.PP
> +.in +4n
> +.EX
> +/* we don't want anything past stderr here */
> +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
> +execve(....);
> +.EE
> +.in
> +.SS Closing all open file descriptors
> +To avoid blindly closing file descriptors in the range of possible
> +file descriptors, this is sometimes implemented (on Linux) by listing
> +open file descriptors in
> +.I /proc/self/fd/
> +and calling
> +.BR close (2)
> +on each one.
> +.BR close_range ()
> +can take care of this without requiring
> +.I /proc
> +and with a single system call, which provides significant performance
> +benefits.
> +.SH SEE ALSO
> +.BR close (2)
> 
> base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
