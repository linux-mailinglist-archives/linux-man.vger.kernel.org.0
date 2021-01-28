Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36AC4307798
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 15:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbhA1ODM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 09:03:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbhA1ODK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 09:03:10 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117DCC0613D6
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 06:02:30 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id n6so6707231edt.10
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 06:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2O34SV3dRWlN53aoQWoi5a7WTgyO8z/C9XeQKiNdpyE=;
        b=QzxJkU0GZCZjkJoSn4yWVurrff7Nnth8VM/hQCSlcNTBpFuuHLbCiB1i/gu+fT9fDQ
         H2KQm6yF0hw79RUEqPOeIq5IVfgGMkDVyWCQousRKyhm+gMYy+trwnBx1aKxXDd2Yx01
         e5s+MaO+hzdEEaFhcV5B/2nS3OPR+FvrsMbMtFC/gqiEdrFyr40e+r+85rHN50bLwkeA
         xYPqSISUnDrQJyXEcWXn1kd3M8CUsIJSAufJlpJifXlKg2KRPSbbSxwJMnt43sLId3VP
         lhM9jQr8zFBPz45EAbcWTCx3U8B/1K2Ts1UIX9SCGYslE/jonUdJBYs7lnKwbsU5X4Y4
         0sHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2O34SV3dRWlN53aoQWoi5a7WTgyO8z/C9XeQKiNdpyE=;
        b=lpAYM5UYJdReFsymoofVIRskAa6XHp7NN+1i5amgf8upbQjmYzEhHkhg/0I9e/qryA
         njhEByDRtUFxgLmXCp/FFVCIdy/jebJhL4GI7cGyi4eOdDEaW9A1eoBGJQHRe/f45kKl
         wrSVX8PsocQvg/bqTZOXsIB2dMfJStZgmA1Wt0VLEH8qFxQidiFHYCZwVORNoJOoaxNv
         h/wsu4wyrHqR8XXL0D9/lpwkW8ptPXbqx8mvy36D3jtJqRoYhMcqqstWOUCAK5fGgdLN
         Eq/WP1qD1ThCJ1zFE1lqxHBVrFIP6szi70VrMWnZwxUBBIn4tSILwpVfPuNEC1O4u3Pk
         h7Pw==
X-Gm-Message-State: AOAM531OM91PRf3xRR4LI56SMIh311k3y+3iD4aAnUl0mlO7tE7E94g8
        5mjocwf9S5lYJMcSeuYy18RGk/lS8QI=
X-Google-Smtp-Source: ABdhPJxnfOn9xfeOorsB5w4NJwPLD/EIToMMAr4qT8M87nQ/FbhrnmXAXISLPVkZpBW8YP0e4o5cUQ==
X-Received: by 2002:a05:6402:149:: with SMTP id s9mr14235842edu.247.1611842548282;
        Thu, 28 Jan 2021 06:02:28 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id b26sm3073563edy.57.2021.01.28.06.02.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 06:02:26 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Various pages: Use the 'logical' quoting method
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210124151035.70536-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3848130f-8622-465a-7000-004f04511335@gmail.com>
Date:   Thu, 28 Jan 2021 15:02:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> This fix places periods after the closing quotes.
> This is preferred practice in Great Britain,
> and normative in various European languages.
> 
> See "Hart's Rules",
> and the "Oxford Dictionary for Writers and Editors".

Thanks for the patch. Things are a bit more complicated.

> Found using:
> 
> $ find man? -type f \
>   |grep -n '^[^.].*[^."]\."' \
>   |less;
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/access.2   | 2 +-
>  man2/mknod.2    | 2 +-
>  man2/mmap.2     | 2 +-
>  man2/shmget.2   | 2 +-
>  man2/vfork.2    | 2 +-
>  man3/cfree.3    | 2 +-
>  man3/ctime.3    | 2 +-
>  man3/lseek64.3  | 2 +-
>  man3/rcmd.3     | 2 +-
>  man5/passwd.5   | 2 +-
>  man7/man.7      | 2 +-
>  man7/pthreads.7 | 2 +-
>  man7/uri.7      | 2 +-
>  13 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/man2/access.2 b/man2/access.2
> index 7f796d00a..454dc1cda 100644
> --- a/man2/access.2
> +++ b/man2/access.2
> @@ -346,7 +346,7 @@ Only access bits are checked, not the file type or contents.
>  Therefore, if a directory is found to be writable,
>  it probably means that files can be created in the directory,
>  and not that the directory can be written as a file.
> -Similarly, a DOS file may be found to be "executable," but the
> +Similarly, a DOS file may be found to be "executable", but the

I did some rewording here instead.

>  .BR execve (2)
>  call will still fail.
>  .PP
> diff --git a/man2/mknod.2 b/man2/mknod.2
> index fad459d8c..8df261311 100644
> --- a/man2/mknod.2
> +++ b/man2/mknod.2
> @@ -265,7 +265,7 @@ or
>  .I dev
>  is not 0, the behavior of
>  .BR mknod ()
> -is unspecified."
> +is unspecified.".

The "logical" rules don't say to use /."./, I think. See
https://en.wikipedia.org/wiki/Quotation_marks_in_English#Ending_the_sentence

And since this is a question of quoted sentences(s), the period
does rightfully belong inside the quotes, I think.

>  However, nowadays one should never use
>  .BR mknod ()
>  for this purpose; one should use
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 132a5b14f..79f7d060d 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -310,7 +310,7 @@ at which point touching the "guard" page will result in a
>  signal.
>  .TP
>  .BR MAP_HUGETLB " (since Linux 2.6.32)"
> -Allocate the mapping using "huge pages."
> +Allocate the mapping using "huge pages".

I did some rewording here instead.

>  See the Linux kernel source file
>  .I Documentation/admin\-guide/mm/hugetlbpage.rst
>  for further information, as well as NOTES, below.
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index fade94c7f..b145b4cf8 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -117,7 +117,7 @@ to ensure that this call creates the segment.
>  If the segment already exists, the call fails.
>  .TP
>  .BR SHM_HUGETLB " (since Linux 2.6)"
> -Allocate the segment using "huge pages."
> +Allocate the segment using "huge pages".

I did some rewording here instead.

>  See the Linux kernel source file
>  .I Documentation/admin\-guide/mm/hugetlbpage.rst
>  for further information.
> diff --git a/man2/vfork.2 b/man2/vfork.2
> index dbb803b66..930dafa7d 100644
> --- a/man2/vfork.2
> +++ b/man2/vfork.2
> @@ -311,7 +311,7 @@ or
>  .B SIGTTIN
>  signals; rather, output or
>  .IR ioctl s
> -are allowed and input attempts result in an end-of-file indication."
> +are allowed and input attempts result in an end-of-file indication.".

See above. (mknod(2))

>  .\"
>  .\" As far as I can tell, the following is not true in 2.6.19:
>  .\" Currently (Linux 2.3.25),
> diff --git a/man3/cfree.3 b/man3/cfree.3
> index ff4bba318..45db549b9 100644
> --- a/man3/cfree.3
> +++ b/man3/cfree.3
> @@ -100,7 +100,7 @@ Answer: use
>  An SCO manual writes: "The cfree routine is provided for compliance
>  to the iBCSe2 standard and simply calls free.
>  The num and size
> -arguments to cfree are not used."
> +arguments to cfree are not used.".

See above. (mknod(2))

>  .SH RETURN VALUE
>  The SunOS version of
>  .BR cfree ()
> diff --git a/man3/ctime.3 b/man3/ctime.3
> index 89107975b..9178c809a 100644
> --- a/man3/ctime.3
> +++ b/man3/ctime.3
> @@ -406,7 +406,7 @@ functions shall return values in one of two static objects:
>  a broken-down time structure and an array of type
>  .IR char .
>  Execution of any of the functions may overwrite the information returned
> -in either of these objects by any of the other functions."
> +in either of these objects by any of the other functions.".
>  This can occur in the glibc implementation.

See above. (mknod(2))

>  .PP
>  In many implementations, including glibc, a 0 in
> diff --git a/man3/lseek64.3 b/man3/lseek64.3
> index f6bab174d..1f9a4f787 100644
> --- a/man3/lseek64.3
> +++ b/man3/lseek64.3
> @@ -140,7 +140,7 @@ When users complained about data loss caused by a miscompilation of
>  glibc 2.1.3 added the link-time warning
>  .PP
>  .in +4n
> -"the \`llseek\' function may be dangerous; use \`lseek64\' instead."
> +"the \`llseek\' function may be dangerous; use \`lseek64\' instead.".

No. This really is exactly the string that glibc used to produce!

>  .in
>  .PP
>  This makes this function unusable if one desires a warning-free
> diff --git a/man3/rcmd.3 b/man3/rcmd.3
> index 9f0b72a6f..5dbb31447 100644
> --- a/man3/rcmd.3
> +++ b/man3/rcmd.3
> @@ -256,7 +256,7 @@ On failure, it returns \-1 and sets
>  to indicate the error.
>  The error code
>  .BR EAGAIN
> -is overloaded to mean "All network ports in use."
> +is overloaded to mean "All network ports in use".

Changed.

>  .PP
>  For information on the return from
>  .BR ruserok ()
> diff --git a/man5/passwd.5 b/man5/passwd.5
> index 469d29260..ee8b9311b 100644
> --- a/man5/passwd.5
> +++ b/man5/passwd.5
> @@ -123,7 +123,7 @@ Dennis Ritchie has reported: "Sometimes we sent printer output or
>  batch jobs to the GCOS machine.
>  The gcos field in the password file was a place to stash the
>  information for the $IDENTcard.
> -Not elegant."
> +Not elegant.".

See above. (mknod(2))

>  .TP
>  .I directory
>  This is the user's home directory:
> diff --git a/man7/man.7 b/man7/man.7
> index 2fa944c94..03518738f 100644
> --- a/man7/man.7
> +++ b/man7/man.7
> @@ -181,7 +181,7 @@ of text.
>  Below are other relevant macros and predefined strings.
>  Unless noted otherwise, all macros
>  cause a break (end the current line of text).
> -Many of these macros set or use the "prevailing indent."
> +Many of these macros set or use the "prevailing indent".

Changed.

>  The "prevailing indent" value is set by any macro with the parameter
>  .I i
>  below;
> diff --git a/man7/pthreads.7 b/man7/pthreads.7
> index 4696bde3e..1c29efd4c 100644
> --- a/man7/pthreads.7
> +++ b/man7/pthreads.7
> @@ -133,7 +133,7 @@ the same process as the caller.)
>  The system may reuse a thread ID after a terminated thread has been joined,
>  or a detached thread has terminated.
>  POSIX says: "If an application attempts to use a thread ID whose
> -lifetime has ended, the behavior is undefined."
> +lifetime has ended, the behavior is undefined.".

See above. (mknod(2))

>  .SS Thread-safe functions
>  A thread-safe function is one that can be safely
>  (i.e., it will deliver the same results regardless of whether it is)
> diff --git a/man7/uri.7 b/man7/uri.7
> index 44d1cb6cb..f20390cb8 100644
> --- a/man7/uri.7
> +++ b/man7/uri.7
> @@ -291,7 +291,7 @@ A more portable syntax is to use an empty string as the server name,
>  for example,
>  <file:///etc/passwd>; this form does the same thing
>  and is easily recognized by pattern matchers and older programs as a URI.
> -Note that if you really mean to say "start from the current location," don't
> +Note that if you really mean to say "start from the current location", don't

Changed.

>  specify the scheme at all; use a relative address like <../test.txt>,
>  which has the side-effect of being scheme-independent.
>  An example of this scheme is <file:///etc/passwd>.

I see now that the logical system was already (by quite a margine) the 
majority  usage in the manual pages.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
