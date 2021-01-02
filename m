Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEA32E881B
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 18:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726617AbhABRX1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 12:23:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726598AbhABRX0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 12:23:26 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF281C0613CF;
        Sat,  2 Jan 2021 09:22:45 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id q18so26824927wrn.1;
        Sat, 02 Jan 2021 09:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RI1la07RMQBdSgSsKtoVFZ2QOt8sq2ZX/FQ9Zp/ixKI=;
        b=ErklI5srz1vsEtddQfL3x0koi1oLhbejQ2b89HBrzztFzyEo36TEqR6b5+lxfbbGnN
         yIADv+oabgyNcUj0QoGMk2vf8IkqHLJ94iSwnzdWMYFNedE2l5B/Fxp+7u8z/ULRcM4+
         bgTLdGQZTqC9ruVjidkx+rieWqvt01+Nzb0+PcL57zYnWs5haVyM47imm480ydMoPWP5
         SW35QA1i8BQfOLvRcSSIyX0wnzJjz+fMcqFze2DDzJrE6viSbYtfcizErroUAD2cmhPB
         05zR2Y+MKV7co0SdT5C+Kc8mHeFCt5O3vb4SxL4WmVQWNSYSdxsIP2T66pItR3zLOMgc
         wu2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RI1la07RMQBdSgSsKtoVFZ2QOt8sq2ZX/FQ9Zp/ixKI=;
        b=PzXlHoLDv6dhnisHLs+o6UQwP615p/k4O11E/qbRn6uS77IHn84ptHKCdbR9UEyajX
         fouZ+YcHp6rjLAcnl+JyvqT0N7RokPVcHgk6FEeV0JodOFW15yQi5wowQDXbjlPYAWJV
         oSzR9wVflB1B9zPKwvtFtgxnaKfuS/8KwEOrSBK+Bc+LNh9qGXCQzKO2qVP+45uN378u
         5g4E0gOQWBJGErIT2O/nzefHbfdPLVDaCWvrP9fH0O6WRcPilgS4JnFgbXYHCt4xlpn3
         j1HMyXUjioyBI4CrWo26QqXj6Aexu1KXWh+QeG+5YNkzYehKidCDd0WYzLe4QJeTjn6+
         VrOg==
X-Gm-Message-State: AOAM531mIh/GAuQ5BgXYKWvcnHxLCWUBND+hxtDsAbnM2HnGsR9q9r0t
        hT+G0b1TYCio0sKEHiONniJbvwR6cR4=
X-Google-Smtp-Source: ABdhPJzOK+t+heJUiYXmEwE8OeRKRcbgevvkRMhUJwL2dOFvPQ3UTthIIpYgYzFsBYsNXPyLbf6Juw==
X-Received: by 2002:a5d:4f82:: with SMTP id d2mr72511496wru.87.1609608164430;
        Sat, 02 Jan 2021 09:22:44 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id a17sm84075069wrs.20.2021.01.02.09.22.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 09:22:43 -0800 (PST)
Subject: Re: [PATCH] getcpu.2: Document glibc wrapper instead of kernel
 syscall
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201230214147.874671-6-alx.manpages@gmail.com>
 <9a4fecc5-be0a-99a9-a101-ca956cdceaa8@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <13d3b37a-6a06-c1c7-3f75-bdd4b90e3aaf@gmail.com>
Date:   Sat, 2 Jan 2021 18:22:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <9a4fecc5-be0a-99a9-a101-ca956cdceaa8@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/2/21 9:41 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>> The glibc wrapper doesn't provide the third argument.
>> Simplify the info about the (unused) kernel parameter
>> to the minimum that is useful.
>>
>> kernels <=2.6.23 are EOL since a long time ago.
>>
>> The old info is commented out instead of removed.
> 
> I tend to be rather conservative about preserving historical
> detail in the manual pages. Yes, 2.6.23 may be EOL from the
> kernel community's point of view, but even in quite recent
> times I've run into folk in the embedded world that who have
> to at the very least support 2.6.* systems. So, as a general
> principle, I'm inclined to retain the kind of info that this
> patch removes. (I admit though that this is an extreme case:
> historical behavior in a system call that is not frequently
> used.)
> 
> There are exceptions. Occassionaly I run into historical 
> info in manual pages that is clearly wrong, or incomplete.
> In such cases, I am sometimes inclined to trim the details,
> rather than invest the effort in working out all of the
> historical details.
> 
> Clearly though, some fix is needed, since we now have 
> a glibc wrapper that has just two arguments. I've applied
> the patch below.

Hi Michael,

Agreed :-)

Cheers,

Alex

> 
> Cheers,
> 
> Michael
> 
> diff --git a/man2/getcpu.2 b/man2/getcpu.2
> index a75123f97..59089bd74 100644
> --- a/man2/getcpu.2
> +++ b/man2/getcpu.2
> @@ -14,10 +14,10 @@
>  getcpu \- determine CPU and NUMA node on which the calling thread is running
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/getcpu.h>
> +.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
> +.B #include <sched.h>
>  .PP
> -.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node \
> -", struct getcpu_cache *" tcache );
> +.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node );
>  .fi
>  .SH DESCRIPTION
>  The
> @@ -37,10 +37,6 @@ or
>  .I node
>  is NULL nothing is written to the respective pointer.
>  .PP
> -The third argument to this system call is nowadays unused,
> -and should be specified as NULL
> -unless portability to Linux 2.6.23 or earlier is required (see NOTES).
> -.PP
>  The information placed in
>  .I cpu
>  is guaranteed to be current only at the time of the call:
> @@ -82,16 +78,31 @@ The intention of
>  .BR getcpu ()
>  is to allow programs to make optimizations with per-CPU data
>  or for NUMA optimization.
> +.\"
> +.SS C library/kernel differences
> +The kernel system call has a third argument:
> +.PP
> +.in +4n
> +.nf
> +.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
> +.BI "           struct getcpu_cache *" tcache );
> +.fi
> +.in
>  .PP
>  The
>  .I tcache
> -argument is unused since Linux 2.6.24.
> +argument is unused since Linux 2.6.24,
> +and (when invoking the system call directly)
> +should be specified as NULL,
> +unless portability to Linux 2.6.23 or earlier is required.
> +.PP
>  .\" commit 4307d1e5ada595c87f9a4d16db16ba5edb70dcb1
>  .\" Author: Ingo Molnar <mingo@elte.hu>
>  .\" Date:   Wed Nov 7 18:37:48 2007 +0100
>  .\" x86: ignore the sys_getcpu() tcache parameter
> -In earlier kernels,
> -if this argument was non-NULL,
> +In Linux 2.6.23 and earlier, if the
> +.I tcache
> +argument was non-NULL,
>  then it specified a pointer to a caller-allocated buffer in thread-local
>  storage that was used to provide a caching mechanism for
>  .BR getcpu ().
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
