Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3723D2E0F6D
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 21:37:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727404AbgLVUhP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 15:37:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727245AbgLVUhP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 15:37:15 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9850CC0613D3;
        Tue, 22 Dec 2020 12:36:34 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id x22so3113501wmc.5;
        Tue, 22 Dec 2020 12:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fORW2+CGSW3Pk0l4/3mJXO5/qaffNRMyYfVPnRFzFmo=;
        b=WT8GZeeBZ9EzPWLiC1HyXONwqS6RnOqE7JeBbX6ya2JVzA3i/GsqL70ESipJEGaxV3
         ml+7HFjo8rOEIU5sfHK+vQ1eAGZW+qpkQ/EDH/l8Kp1q7uB1QOcGFLH2u2kj8puyZdb4
         rlxzqfodFrBuisoaKp4mWbyJEyRuw3NoKSGf86lf9D/yNGlmVQkcnDTK5SyFAu6psgHf
         iyMo+XL+XgzZN2vUzn+KAYtnAzJVRmvBNdHxQuxkVc+HvXyTsPrns0v6dcUXFN4vyulU
         ayCzOBTHw0RHGIXcDvU8JaS04cAoL5sKBXnUyyqm0lFtOmrIf3xvgqYr+FfZHTNVdmjl
         3OJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fORW2+CGSW3Pk0l4/3mJXO5/qaffNRMyYfVPnRFzFmo=;
        b=UFBK2GBJIT/0Fdx23zS3gkQlFrcfpyW43U6cTYzMsk2HJq9+/mD1nixDW8qj2zZ//4
         eFjBrA1lK0g5EWjwcQxhhJrMfNB6Hi2zGSPfWdFUlMGDgBkFlX4Zw3K1sio8uz7JFiWr
         5XZvXK1dYhEEqzPhu050lo6V/N2f9pSyU0+NSdwKaGbFtl+7Fc61fbSNQDHP6yzsq9Oz
         3CD997nvtoKDmStu3+yT8NAWpv+2L+VBlLoEirJxONKoj2yzIzfPZQsGudayRvDIE/zU
         XjDj3kVUWbP/ahcEN81ppPNpiaYLgA+ErP/I0/826tzYY+3ZBG/F3/ZQPTpQ064RZFc3
         qaPA==
X-Gm-Message-State: AOAM531Yv4Oi3YmotUXlFa+TnBXMWWUFOEvKMDmMar/RZgRciCCw9G07
        CsC6YeUFH1NTWKxUor1mAoCJUI6JRutghw==
X-Google-Smtp-Source: ABdhPJz9iBLX6xdwhF9iLQDo53ZcKlpZ/+z6hCISdxiBx/x3YZtMxHL6VALrblLSNu2+f6Fo9vDZKw==
X-Received: by 2002:a1c:8085:: with SMTP id b127mr23101142wmd.16.1608669391914;
        Tue, 22 Dec 2020 12:36:31 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id w8sm32096912wrl.91.2020.12.22.12.36.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 12:36:30 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <20201221194656.22111-1-steve@sk2.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <174e60ee-aaad-ed16-186e-d199014dfc0c@gmail.com>
Date:   Tue, 22 Dec 2020 21:36:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201221194656.22111-1-steve@sk2.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen,

Thank you for your revisions! I still have a few comments.

On 12/21/20 8:46 PM, Stephen Kitt wrote:
> This documents close_range(2) based on information in
> 278a5fbaed89dacd04e9d052f4594ffd0e0585de,
> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8, and
> 582f1fb6b721facf04848d2ca57f34468da1813e.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
> V5: clarification of the open/close_range/execve sequence
> 
> V4: sort flags alphabetically
>     move commit references inside the corresponding section
>     more semantic newlines
>     unformat numeric constants
>     more formatting for function references
>     escape C backslashes
>     C99 loop indices
> 
> V3: fix synopsis overflow
>     copy notes from membarrier.2 re the lack of wrapper
>     semantic newlines
>     drop non-standard "USE CASES" section heading
>     add code example
> 
> V2: unsigned int to match the kernel declarations
>     groff and grammar tweaks
>     CLOSE_RANGE_UNSHARE unshares *and* closes
>     Explain that EMFILE and ENOMEM can occur with C_R_U
>     "Conforming to" phrasing
>     Detailed explanation of CLOSE_RANGE_UNSHARE
>     Reading /proc isn't common
> 
>  man2/close_range.2 | 267 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 267 insertions(+)
>  create mode 100644 man2/close_range.2
> 
> diff --git a/man2/close_range.2 b/man2/close_range.2
> new file mode 100644
> index 000000000..0677a9bf9
> --- /dev/null
> +++ b/man2/close_range.2
> @@ -0,0 +1,267 @@
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
> +.BI "int close_range(unsigned int " first ", unsigned int " last ,
> +.BI "                unsigned int " flags );
> +.fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
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
> +can be 0 or set to one or both of the following:

Better, I think:
"flags is a bit mask containing 0 or more of the following:"

> +.TP
> +.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)"

s/5.10/5.11/ ?

> +sets the close-on-exec bit instead of

s/close-on-exec bit/file descriptor's close-on-exec flag/

> +immediately closing the file descriptors.
> +.TP
> +.B CLOSE_RANGE_UNSHARE
> +unshares the range of file descriptors from any other processes,
> +before closing them,
> +avoiding races with other threads sharing the file descriptor table.
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
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
> +.SS Closing all open file descriptors
> +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
> +To avoid blindly closing file descriptors
> +in the range of possible file descriptors,
> +this is sometimes implemented (on Linux)
> +by listing open file descriptors in
> +.I /proc/self/fd/
> +and calling
> +.BR close (2)
> +on each one.
> +.BR close_range ()
> +can take care of this without requiring
> +.I /proc
> +and within a single system call,
> +which provides significant performance benefits.
> +.SS Closing file descriptors before exec
> +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
> +File descriptors can be closed safely using
> +.PP
> +.in +4n
> +.EX
> +/* we don't want anything past stderr here */
> +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
> +execve(....);
> +.EE
> +.in
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
> +but can be more efficient:
> +if the unshared range extends past
> +the current maximum number of file descriptors allocated
> +in the caller's file descriptor table
> +(the common case when
> +.I last
> +is ~0U),
> +the kernel will unshare a new file descriptor table for the caller up to
> +.IR first .
> +This avoids subsequent close calls entirely;

s/close/.BR close (2)/

> +the whole operation is complete once the table is unshared.
> +.SS Closing files on \fBexec\fP
> +.\" 582f1fb6b721facf04848d2ca57f34468da1813e
> +This is particularly useful in cases where multiple
> +.RB pre- exec
> +setup steps risk conflicting with each other.
> +For example, setting up a
> +.BR seccomp (2)
> +profile can conflict with a
> +.BR close_range ()
> +call:
> +if the file descriptors are closed before the
> +.BR seccomp (2)
> +profile is set up,
> +the profile setup can't use them itself,
> +or control their closure;
> +if the file descriptors are closed afterwards,
> +the seccomp profile can't block the
> +.BR close_range ()
> +call or any fallbacks.
> +Using
> +.B CLOSE_RANGE_CLOEXEC
> +avoids this:
> +the descriptors can be marked before the
> +.BR seccomp (2)
> +profile is set up,
> +and the profile can control access to
> +.BR close_range ()
> +without affecting the calling process.
> +.SH EXAMPLES
> +The following program is designed to be execed by the second program
> +below.

I have some specific comments below, but a more general comment
to start with: why use two programs here? It seems to add complexity
without demonstrating anything that couldn't also be demonstrated
with a simpler single program, or have I missed something?

> +It lists its open file descriptors:
> +.PP
> +.in +4n
> +.EX
> +/* listopen.c */
> +
> +#include <stdio.h>
> +#include <sys/stat.h>
> +
> +int
> +main(int argc, char *argv[])
> +{
> +    struct stat buf;
> +
> +    for (int i = 0; i < 100; i++) {
> +        if (!fstat(i, &buf))

I kind of prefer "fstat(...) == 0"

> +            printf("FD %d is open.\en", i);
> +    }
> +
> +    exit(EXIT_SUCCESS);
> +)
> +.EE
> +.in
> +.PP
> +This program executes the command given on its command-line,
> +after opening the files listed after the command
> +and then using
> +.BR close_range ()
> +to close them:
> +.PP
> +.in +4n
> +.EX
> +/* close_range.c */
> +
> +#include <fcntl.h>
> +#include <linux/close_range.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <sys/stat.h>
> +#include <sys/syscall.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +int
> +main(int argc, char *argv[])
> +{
> +    char *newargv[] = { NULL };
> +    char *newenviron[] = { NULL };
> +
> +    if (argc < 3) {
> +        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\en", argv[0]);

Line too long. Please break it up so that it renders well on
an 80-column terminal.

Or, alternatively: 

        fprintf(stderr, "Usage: %s <command> <file>...\en", argv[0]);

> +        exit(EXIT_FAILURE);
> +    }
> +
> +    for (int i = 2; i < argc; i++) {
> +        if (open(argv[i], O_RDONLY) == -1) {
> +            perror(argv[i]);
> +            exit(EXIT_FAILURE);
> +        }
> +    }
> +
> +    if (syscall(__NR_close_range, 3, ~0U, CLOSE_RANGE_UNSHARE) == -1) {

Line too long.

Alternatively, what about s/CLOSE_RANGE_UNSHARE/0/? Or it
considered best practice to always use CLOSE_RANGE_UNSHARE?

> +        perror("close_range");
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    execve(argv[1], newargv, newenviron);
> +    perror("execve");
> +    exit(EXIT_FAILURE);
> +}
> +.EE
> +.in
> +.PP
> +We can use the second program to exec the first as follows:
> +.PP
> +.in +4n
> +.EX
> +.RB "$" " make listopen close_range"

Perhaps we don't really need the preceding line?

> +.RB "$" " ./close_range ./listopen /dev/null /dev/zero"
> +FD 0 is open.
> +FD 1 is open.
> +FD 2 is open.
> +.EE
> +.in
> +.PP
> +Removing the call to
> +.BR close_range ()
> +will show different output,
> +with the file descriptors for the named files still open.
> +.SH SEE ALSO
> +.BR close (2)
> 
> base-commit: b5dae3959625f5ff378e9edf9139057d1c06bb55

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
