Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC2D63F5B52
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 11:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235917AbhHXJvt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 05:51:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235862AbhHXJvs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 05:51:48 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B290C061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 02:51:05 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y11so17863567pfl.13
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 02:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+/ijkxAW9VPWpJbuxSq7tJdsE2j0JAzydzyl5/mcOJw=;
        b=us9vniTnCKJhDNGxY4E9vAsD74f/1vBQYpT4eds9Nuo7xV153t0f/RNe7u7s+ClmlZ
         8tWNy0kF1L5CA3xogwsRl9dZWpOMxr7bYJ7uJAwnhBpxTAEG+2PnGeIjkQl6Bb61TC4B
         jh7arfX8VF31aNZLsqw4wYlEMrq91zTj/3HMKcl0phxUEKCMWfPwFHLcI/LMDxy49YaU
         kg9AnbAhMT8WaG5Cdh2t02i9q9rFKJa7qM5BXbupm/CVegEBFqHb6TrWbdcu18JKO0+v
         /JJ5hv43OOzMKJAqazlYGP39oValrVje/ayCjXjsePHDJiJ1gb+xRvWIJLhyznml1glC
         n+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+/ijkxAW9VPWpJbuxSq7tJdsE2j0JAzydzyl5/mcOJw=;
        b=uHhRfWwpJ7w5Pwdp/b3JT21IYEmgaYSivNMTN8TUHGk3/o+plEj44C4BlohonMyzlS
         cB+rhPJxU4kEjBwhb5q2KFCJuEmx6hUzxV0sTe39Rh6/FJOczxzolTuoO2b+8+wy5kyo
         q6TYpqSg0cxSZwE61vYyIJ4hf+vVNzgRSa78cfL82iDSBOSeb0FqFJBzXweDJpIwLJJE
         QsV+k6JdpcDvKQWkFMJq/otOhVODB4ym1NmQzsZ6/x3RdSbNeDZWsguFmAhmaxcpRAYk
         +/8uijvlZP7srsJIHLQtZqTmw3GJDGVQM+tIURAWRCwBA6OlqWdMLnEu8ucYIm3Q7u4X
         DC6Q==
X-Gm-Message-State: AOAM531v0Vr6IfJzATMLD2aRlXNW3FXIqw4zJciKSDBQyT3U5TpOcJE4
        LJyTnEeJjuA6BVnWBHSu3oWxoANCVyM=
X-Google-Smtp-Source: ABdhPJzPMvhg5KSclDVtlC+MGeDWNTLqewNWt4fSDfxHypaKg+vUDUvF0JBwUQfUnFlX+N9SPEsoSA==
X-Received: by 2002:a65:6398:: with SMTP id h24mr36299233pgv.367.1629798664394;
        Tue, 24 Aug 2021 02:51:04 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y25sm17268402pfm.80.2021.08.24.02.51.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 02:51:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
Date:   Tue, 24 Aug 2021 11:50:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ahelenia

On 8/23/21 11:01 PM, наб wrote:
> This demistifies the internals and removes outdated information
> and needless glibc guts

Some of this patch seems fine, but it does more than I would like to see
in one patch. Some comments below.

> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man3/alloca.3 | 66 ++++++++++++++++-----------------------------------
>  1 file changed, 21 insertions(+), 45 deletions(-)
> 
> diff --git a/man3/alloca.3 b/man3/alloca.3
> index 5bceeabe1..133ca6ab3 100644
> --- a/man3/alloca.3
> +++ b/man3/alloca.3
> @@ -84,20 +84,14 @@ T}	Thread safety	MT-Safe
>  .SH CONFORMING TO
>  This function is not in POSIX.1.
>  .PP
> -There is evidence that the
>  .BR alloca ()
> -function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
> -There is a man page for it in 4.3BSD.
> -Linux uses the GNU version.
> +originates from PWB and 32V, and appears in all their derivatives.

The patch subject says "rewrite NOTES", but here you change 
the CONFORMING TO. For the record, I think the change is fine;
there was too much info here that isn't really helpful.
But, I would prefer this change as a separate patch, with
a commit message that notes that the CONFORMING TO is
overly complex, so let's simplify.

>  .SH NOTES
>  The
>  .BR alloca ()
>  function is machine- and compiler-dependent.
> -For certain applications,
> -its use can improve efficiency compared to the use of
> -.BR malloc (3)
> -plus
> -.BR free (3).
> +Because it allocates from the stack, it's always faster than
> +.BR malloc (3)/ free (3).

Okay.

>  In certain cases,
>  it can also simplify memory deallocation in applications that use
>  .BR longjmp (3)
> @@ -125,51 +119,33 @@ Do not attempt to
>  .BR free (3)
>  space allocated by
>  .BR alloca ()!
> -.SS Notes on the GNU version
> -Normally,
> -.BR gcc (1)

(Removing mention of gcc makes sense...)

> -translates calls to
> +.PP
> +By necessity,
> +.BR alloca ()
> +is a compiler built-in, also known as
> +.BR __builtin_alloca ().

I'm not convinced about this change, or what follows. At the
least, it needs some explanation.

> +By default, modern compilers automatically translate plain

What does "plain" mean here? It is not explained.

>  .BR alloca ()
> -with inlined code.
> -This is not done when either the
> +calls, but this is forbidden if

Why lose the piece "with inlined code"?

And why the word "forbidden"? Who forbids it?

>  .IR "\-ansi" ,
>  .IR "\-std=c89" ,
>  .IR "\-std=c99" ,
> -or the
> +or
>  .IR "\-std=c11"

Okay.

> -option is given
> -.BR and
> -the header
> -.I <alloca.h>
> -is not included.
> -Otherwise, (without an \-ansi or \-std=c* option) the glibc version of
> -.I <stdlib.h>
> -includes
> +are specified, in which case
>  .I <alloca.h>
> -and that contains the lines:
> +is required, lest an actual symbol dependency is emitted.

(That last line seems like a useful addition!)

>  .PP
> -.in +4n
> -.EX
> -#ifdef  __GNUC__
> -#define alloca(size)   __builtin_alloca (size)
> -#endif
> -.EE
> -.in
> -.PP
> -with messy consequences if one has a private version of this function.
> -.PP
> -The fact that the code is inlined means that it is impossible
> -to take the address of this function, or to change its behavior
> -by linking with a different library.

Why remove the preceding piece? This should be clarified in the 
commit message.


> -.PP
> -The inlined code often consists of a single instruction adjusting
> -the stack pointer, and does not check for stack overflow.
> -Thus, there is no NULL error return.

Why remove the preceding piece? 

> +The fact that
> +.BR alloca ()
> +is a built-in means it is impossible to take its address
> +or to change its behavior by linking with a different library.
>  .SH BUGS
> -There is no error indication if the stack frame cannot be extended.
> -(However, after a failed allocation, the program is likely to receive a
> +As it's untestable, there is no error indication if the allocation

It's not clear to me that adding "As it's untestable," really helps 
the reader. Why do you think it does? (This should be explained in
the commit message.)

> +would overflow the space available for the stack.
> +(However, the program is likely to receive a
>  .B SIGSEGV
> -signal if it attempts to access the unallocated space.)
> +signal if it attempts to access that space.)
>  .PP
>  On many systems
>  .BR alloca ()

My feelings about this patch:

* There's good stuff here, and stuff that I am less sure of.
* This should be *at least* 2 patches, but possibly 3 or 4.
* We need some meaningful commit messages. Your two line commit
  message is too vague; think of people some years from now
  looking at these changes, and asking: "what was the author's
  motivation for these changes?"

Would you be willing to rework this patch in the light of 
the above please? Breaking it into a few pieces (if you can)
would make it much easier to wave some pieces through and
discuss the other pieces in detail.

Thanks,

Michael

 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
