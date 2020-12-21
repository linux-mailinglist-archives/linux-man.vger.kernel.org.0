Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF512DF9F7
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 09:33:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726100AbgLUIdb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 03:33:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726061AbgLUIdb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 03:33:31 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 060B2C0613D3;
        Mon, 21 Dec 2020 00:32:51 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id r3so10176923wrt.2;
        Mon, 21 Dec 2020 00:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=76pbg1Gp/jhrHpTAM39k6d840aLWZNosvajfDu042P8=;
        b=FyPxExmtzSrTbdF8pIGj2DWUSTwxGJRgj8U7COK8VOTPjOmYg1/mf6Z260G3MGfLpd
         +yQcc/rMre4i2LTi4pohc0McnX5Soov7lXSBHmc2FlP4NBUqIqJ7R3aAX9V9zIUZNZZ1
         GmPvmMfBzNuO1H3aSHM9yv0l/gCH+46V3R3YO2l1ZkEwYPekJBKtaNw5H4wsuEtKp+0W
         volwaikuuDoHyPSEH7YkOVgoypZa092huwdOhdGO+SkirDgLRdb+9Bp9KgRpMCnnliSQ
         nCgdUutd1+Qq5NkgyTpT+5YicqVHupJyphxBIVs5azK3hLCAm06VVzV2vrLJOPFuvmvj
         e65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=76pbg1Gp/jhrHpTAM39k6d840aLWZNosvajfDu042P8=;
        b=pDIzWIScs2NlBkri/mJrzahdEBKeFTukLjjMat79fmu9NUqMSSevASIWJlSYU3OzOF
         MuLETxxWyKCf9I84D04pHtoIyQtLaEVlX1CEzhM25ZWKI0ZrsbZ3VM915TI0X6wHWZOO
         1PKsFsQww0O4xKAOPd1SAVgpXv6dcV1TRpdbPhcd4fgCUinw+lg9JYD/xgx7DHhEHgSF
         BFvOdYjQEL8jKqSxcjArcIWnf2aNzr9C75L3bqMwbb4ZZb02BOrwdgcx8RYHXjH895/J
         lIPApTv0wcONdaGYL1XZv1+7rXhHQkemliqKh0erwwimchkl59Tu7CIXPsuhj3A3KkQC
         I3xg==
X-Gm-Message-State: AOAM533noGjt0aQffZXsPNQR4i41i70zSkHDzG55UXquoB8W/pkk3oVI
        SxqLovtNJcWvU+U/O47gA2t8xpODmGk=
X-Google-Smtp-Source: ABdhPJwlBaPa4tqBbI2cAr3aJlLtl+OICGNvbaH+OKE7FRubLEO8IkM9PVxiLEtesc8Nc5KcSu5S0w==
X-Received: by 2002:adf:8185:: with SMTP id 5mr16965242wra.44.1608539569638;
        Mon, 21 Dec 2020 00:32:49 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n17sm21708241wmc.33.2020.12.21.00.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 00:32:49 -0800 (PST)
Subject: Re: [PATCH v3] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
References: <20201218165815.6963-1-steve@sk2.org>
 <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
 <20201220230053.733f3036@heffalump.sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d3816808-92ee-0615-162d-fa5e83ef4493@gmail.com>
Date:   Mon, 21 Dec 2020 09:32:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201220230053.733f3036@heffalump.sk2.org>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/20/20 11:00 PM, Stephen Kitt wrote:
> Hi Alex,
> 
> On Sat, 19 Dec 2020 15:00:00 +0100, "Alejandro Colomar (man-pages)"
> <alx.manpages@gmail.com> wrote:
>> Please see some comments below.
>> It's looking good ;)
> 
> Thanks for your review and patience!
> 
>> On 12/18/20 5:58 PM, Stephen Kitt wrote:
>>> This documents close_range(2) based on information in
>>> 278a5fbaed89dacd04e9d052f4594ffd0e0585de,
>>> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8, and
>>> 582f1fb6b721facf04848d2ca57f34468da1813e.
>>>
>>> Signed-off-by: Stephen Kitt <steve@sk2.org>
>>> ---
>>> V3: fix synopsis overflow
>>>     copy notes from membarrier.2 re the lack of wrapper
>>>     semantic newlines
>>>     drop non-standard "USE CASES" section heading
>>>     add code example
>>>
>>> V2: unsigned int to match the kernel declarations
>>>     groff and grammar tweaks
>>>     CLOSE_RANGE_UNSHARE unshares *and* closes
>>>     Explain that EMFILE and ENOMEM can occur with C_R_U
>>>     "Conforming to" phrasing
>>>     Detailed explanation of CLOSE_RANGE_UNSHARE
>>>     Reading /proc isn't common
>>>
>>>  man2/close_range.2 | 266 +++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 266 insertions(+)
>>>  create mode 100644 man2/close_range.2
>>>
>>> diff --git a/man2/close_range.2 b/man2/close_range.2
>>> new file mode 100644
>>> index 000000000..f8f2053ac
>>> --- /dev/null
>>> +++ b/man2/close_range.2
>>> @@ -0,0 +1,266 @@
>>> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
>>> +.\"
>>> +.\" %%%LICENSE_START(VERBATIM)
>>> +.\" Permission is granted to make and distribute verbatim copies of this
>>> +.\" manual provided the copyright notice and this permission notice are
>>> +.\" preserved on all copies.
>>> +.\"
>>> +.\" Permission is granted to copy and distribute modified versions of
>>> this +.\" manual under the conditions for verbatim copying, provided that
>>> the +.\" entire resulting derived work is distributed under the terms of a
>>> +.\" permission notice identical to this one.
>>> +.\"
>>> +.\" Since the Linux kernel and libraries are constantly changing, this
>>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>>> +.\" responsibility for errors or omissions, or for damages resulting from
>>> +.\" the use of the information contained herein.  The author(s) may not
>>> +.\" have taken the same level of care in the production of this manual,
>>> +.\" which is licensed free of charge, as they might when working
>>> +.\" professionally.
>>> +.\"
>>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>>> +.\" the source, must acknowledge the copyright and authors of this work.
>>> +.\" %%%LICENSE_END
>>> +.\"
>>> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
>>> +.SH NAME
>>> +close_range \- close all file descriptors in a given range
>>> +.SH SYNOPSIS
>>> +.nf
>>> +.B #include <linux/close_range.h>
>>> +.PP
>>> +.BI "int close_range(unsigned int " first ", unsigned int " last ,
>>> +.BI "                unsigned int " flags );
>>> +.fi
>>> +.PP
>>> +.IR Note :
>>> +There is no glibc wrapper for this system call; see NOTES.
>>> +.SH DESCRIPTION
>>> +The
>>> +.BR close_range ()
>>> +system call closes all open file descriptors from
>>> +.I first
>>> +to
>>> +.I last
>>> +(included).
>>> +.PP
>>> +Errors closing a given file descriptor are currently ignored.
>>> +.PP
>>> +.I flags
>>> +can be 0 or set to one or both of the following:
>>> +.TP
>>> +.B CLOSE_RANGE_UNSHARE
>>> +unshares the range of file descriptors from any other processes,
>>> +before closing them,
>>> +avoiding races with other threads sharing the file descriptor table.
>>> +.TP
>>> +.BR CLOSE_RANGE_CLOEXEC " (since Linux 5.10)"  
>>
>> |sort
>>
>> I prefer alphabetic order rather than adding new items at the bottom.
>> When lists grow, it becomes difficult to find what you're looking for.
>>
>> CLOEXEC should go before UNSHARE.
> 
> That makes sense.
> 
>>> +sets the close-on-exec bit instead of immediately closing the file
>>> +descriptors.  
>>
>> [
>> sets the close-on-exec bit instead of
>> immediately closing the file descriptors.
>> ]
> 
> Is this for semantic reasons, or to balance the lines and make them easier to
> read in the roff source?

B is also true, but mostly A.

Cheers,

Alex

> 
>>> +.SH RETURN VALUE
>>> +On success,
>>> +.BR close_range ()
>>> +returns 0.
>>> +On error, \-1 is returned and
>>> +.I errno
>>> +is set to indicate the cause of the error.
>>> +.SH ERRORS
>>> +.TP
>>> +.B EINVAL
>>> +.I flags
>>> +is not valid, or
>>> +.I first
>>> +is greater than
>>> +.IR last .
>>> +.PP
>>> +The following can occur with
>>> +.B CLOSE_RANGE_UNSHARE
>>> +(when constructing the new descriptor table):
>>> +.TP
>>> +.B EMFILE
>>> +The per-process limit on the number of open file descriptors has been
>>> reached +(see the description of
>>> +.B RLIMIT_NOFILE
>>> +in
>>> +.BR getrlimit (2)).
>>> +.TP
>>> +.B ENOMEM
>>> +Insufficient kernel memory was available.
>>> +.SH VERSIONS
>>> +.BR close_range ()
>>> +first appeared in Linux 5.9.
>>> +.SH CONFORMING TO
>>> +.BR close_range ()
>>> +is a nonstandard function that is also present on FreeBSD.
>>> +.SH NOTES
>>> +Glibc does not provide a wrapper for this system call; call it using
>>> +.BR syscall (2).
>>> +.\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
>>> +.SS Closing all open file descriptors  
>>
>> The comment with the commit would be better inside the section it refers
>> to, so:
>>
>> [
>> .SS Closing all open file descriptors
>> .\" 278a5fbaed89dacd04e9d052f4594ffd0e0585de
>> ]
> 
> Indeed!
> 
>>> +To avoid blindly closing file descriptors in the range of possible
>>> +file descriptors,  
>>
>> [
>> To avoid blindly closing file descriptors
>> in the range of possible file descriptors,
>> ]
>>
>>> +this is sometimes implemented (on Linux) by listing open file
>>> +descriptors in  
>>
>> [
>> this is sometimes implemented (on Linux)
>> by listing open file descriptors in
>> ]
>>
>>> +.I /proc/self/fd/
>>> +and calling
>>> +.BR close (2)
>>> +on each one.
>>> +.BR close_range ()
>>> +can take care of this without requiring
>>> +.I /proc
>>> +and with a single system call,  
>>
>> s/with/within/
>>
>>> +which provides significant performance benefits.
>>> +.\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
>>> +.SS Closing file descriptors before exec  
>>
>> [
>> .SS Closing file descriptors before exec
>> .\" 60997c3d45d9a67daf01c56d805ae4fec37e0bd8
>> ]
>>
>>> +File descriptors can be closed safely using
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +/* we don't want anything past stderr here */
>>> +close_range(3, ~0U, CLOSE_RANGE_UNSHARE);  
>>> +execve(....);> +.EE  
>>> +.in
>>> +.PP
>>> +.B CLOSE_RANGE_UNSHARE
>>> +is conceptually equivalent to
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +unshare(CLONE_FILES);
>>> +close_range(first, last, 0);
>>> +.EE
>>> +.in
>>> +.PP
>>> +but can be more efficient:
>>> +if the unshared range extends past the current maximum number of file
>>> +descriptors allocated in the caller's file descriptor table  
>>
>> [
>> if the unshared range extends past
>> the current maximum number of file descriptors allocated
>> in the caller's file descriptor table
>> ]
>>
>>> +(the common case when
>>> +.I last
>>> +is
>>> +.BR ~0U ),  
>>
>> Literal values are not (usually) formatted.
>>
>> [
>> .I last
>> is ~0U),
>> ]
>>
>>> +the kernel will unshare a new file descriptor table for the caller up
>>> +to  
>>
>> [
>> the kernel will unshare a new file descriptor table for the caller up to
>> ]
>>
>>> +.IR first .
>>> +This avoids subsequent close calls entirely;
>>> +the whole operation is complete once the table is unshared.
>>> +.\" 582f1fb6b721facf04848d2ca57f34468da1813e
>>> +.SS Closing files on \fBexec\fP  
>>
>> [
>> .SS Closing files on \fBexec\fP
>> .\" 582f1fb6b721facf04848d2ca57f34468da1813e
>> ]
>>
>>> +This is particularly useful in cases where multiple
>>> +.RB pre- exec
>>> +setup steps risk conflicting with each other.
>>> +For example, setting up a
>>> +.BR seccomp (2)
>>> +profile can conflict with a
>>> +.B close_range  
>>
>> .BR close_range ()
>>
>>> +call:
>>> +if the file descriptors are closed before the seccomp profile is set  
>>
>> .BR seccomp (2)
>>
>>> +up,  
>>
>> Please, split at a different point.
>>
>>> +the profile setup can't use them control their closure;  
>>
>> I don't understand what you wanted to say.  them?
> 
> Oops, I meant "the profile setup can't use them itself, or control their
> closure".
> 
>>
>>> +if the file descriptors are closed afterwards,
>>> +the seccomp profile can't block the
>>> +.B close_range  
>>
>> .BR close_range ()
>>
>>> +call or any fallbacks.
>>> +Using
>>> +.B CLOSE_RANGE_CLOEXEC
>>> +avoids this:
>>> +the descriptors can be marked before the seccomp profile is set up,  
>>
>> .BR seccomp (2)
>>
>>> +and the profile can control access to
>>> +.B close_range  
>>
>> .BR close_range ()
>>
>>> +without affecting the calling process.
>>> +.SH EXAMPLES
>>> +The following program is designed to be execed by the second program
>>> +below.
>>> +It lists its open file descriptors:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +/* listopen.c */
>>> +
>>> +#include <stdio.h>
>>> +#include <sys/stat.h>
>>> +
>>> +int
>>> +main(int argc, char *argv[])
>>> +{
>>> +    int i;  
>>
>> We use C99 declarations for loop indices.
>>
>>> +    struct stat buf;
>>> +
>>> +    for (i = 0; i < 100; i++) {  
>>
>>     for (int i = 0; i < 100; i++) {
>>
>>> +        if (!fstat(i, &buf))
>>> +            printf("FD %d is open.\n", i);  
>>
>> s/\\/\\e/
>>
>> see: d1a719857b7eb68f5e5c1c965089038dee683240
>>
>> I sometimes forget to fix those after copying the program to the page.
>> My solution is to copy the rendered text from the man page to a file
>> and then compile, and those errors become obvious ;)
> 
> Ah yes, good catch. I was looking into automating checks for the source code
> included in man pages throughout the project, but that throws a spanner in
> the works!
> 
>>
>>> +    }
>>> +
>>> +    exit(EXIT_SUCCESS);
>>> +)
>>> +.EE
>>> +.in
>>> +.PP
>>> +This program executes the command given on its command-line after
>>> +opening the files listed after the command,
>>> +and then using  
>>
>> s/using/uses/
>>
>>> +.B close_range  
>>
>> .BR close_range ()
>>
>>> +to close them:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +/* close_range.c */
>>> +
>>> +#include <fcntl.h>
>>> +#include <linux/close_range.h>
>>> +#include <stdio.h>
>>> +#include <stdlib.h>
>>> +#include <sys/stat.h>
>>> +#include <sys/syscall.h>
>>> +#include <sys/types.h>
>>> +#include <unistd.h>
>>> +
>>> +int
>>> +main(int argc, char *argv[])
>>> +{
>>> +    char *newargv[] = { NULL };
>>> +    char *newenviron[] = { NULL };
>>> +    int i;  
>>
>> dd
>>
>>> +
>>> +    if (argc < 3) {
>>> +        fprintf(stderr, "Usage: %s <command-to-run> <files-to-open>\n",
>>> argv[0]);  
>>
>> s/\\/\\e/
>>
>>> +        exit(EXIT_FAILURE);
>>> +    }
>>> +
>>> +    for (i = 2; i < argc; i++) {  
>>
>>     for (int i = 2; i < argc; i++) {
>>
>>> +        if (open(argv[i], O_RDONLY) == -1) {
>>> +            perror(argv[i]);
>>> +            exit(EXIT_FAILURE);
>>> +        }
>>> +    }
>>> +
>>> +    if (syscall(__NR_close_range, 3, ~0U, CLOSE_RANGE_UNSHARE) == -1) {
>>> +        perror("close_range");
>>> +        exit(EXIT_FAILURE);
>>> +    }
>>> +
>>> +    execve(argv[1], newargv, newenviron);
>>> +    perror("execve");
>>> +    exit(EXIT_FAILURE);
>>> +}
>>> +.EE
>>> +.in
>>> +.PP
>>> +We can use the second program to exec the first as follows:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +.RB "$" " make listopen close_range"
>>> +.RB "$" " ./close_range ./listopen /dev/null /dev/zero"
>>> +FD 0 is open.
>>> +FD 1 is open.
>>> +FD 2 is open.
>>> +.EE
>>> +.in
>>> +.PP
>>> +Removing the call to
>>> +.B close_range  
>>
>> .BR close_range ()
>>
>>> +will show different output, with the file descriptors for the named
>>> +files still open.  
>>
>> [
>> will show different output,
>> with the file descriptors for the named files still open.
>> ]
> 
> Thanks, I'll send a v4 with all the fixes above.
> 
> Regards,
> 
> Stephen
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
