Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4673F2E86CF
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 09:45:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726340AbhABIpQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 03:45:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725320AbhABIpQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 03:45:16 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45C13C061573
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 00:44:35 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r7so25987904wrc.5
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 00:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fqfvc3i6umfsZl2ZoeWIiwgWTNyCcFMjjJ7rwVH4R9I=;
        b=ZtszNahuCVZtc1ybn6oHAMp1c7ejuDxU4xp7JmuJI7aWnRLn9vRjsa1xwE4fQvNBNo
         ZZskQP3EtMfDU0ePAOvGfh9dmevOc2yp7XNaDB3PENGDOT15koUT2OUfu00up/Tyc0nW
         NoJVttt7imTonqVfIcJWEN3mIrpe+rWapsvjdAfoaqGu2FQTOoLOYWrX5LPs7xaRAMrU
         s1ZuDsoHxlruj8GVFuk8oiNcs5C0JTd06OeHLqsjX4FrSoqJZ3GPvhvdwGwuwl/o77/o
         gYcHAEb3ck2GRy3iP06IzswDRHeRG4808+lbaBxM2RVLu+agDlZEjh48VP4MlPBysU9+
         776w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fqfvc3i6umfsZl2ZoeWIiwgWTNyCcFMjjJ7rwVH4R9I=;
        b=uZoW3ubwl8YuNnDQA5DDb3JOacP9z3A+EIcs5jERK2QqjnafcrRoS2m8xJoaqxA7mz
         2YBtOefin9zAQlAxjJuj8wtH/M1SEf/dvb8I4jly3c9yIquAiTGOY95xrD0KqD/6HfYg
         jrMLc631wmg260jJCl8/m0WhhT8zJaLQF/Fe/AtUKO0dsdGQ+Dz0/kbQ9bqdyEyWAEje
         9dYHO1zCNb6DmfR3DGbJgrxhsz3VNH0oSVbify2dLjTT5+3PeCSmoXKnFxzmVd3B2WSw
         SmBhYhUexXwPpUD7AnCsd5KAAvREOEYt13yjBFIddC1Fg6xG95bv82cisZHtSFUiylq6
         trOQ==
X-Gm-Message-State: AOAM533iiSRgunwBU6VMIx75hkl0qdTLgeRlNLMY6nYVGkwwFSoygMf3
        zF4GnszA677VkxY1HbLQJbhB0U1ioY4=
X-Google-Smtp-Source: ABdhPJzVgT2ltiRyQrprKUKHrpKI8SUvPwp0+3SZsKlVCSAVq9AL2qyizz1vaUop7xy9gW2gvBDtzw==
X-Received: by 2002:adf:e990:: with SMTP id h16mr73323104wrm.307.1609577073185;
        Sat, 02 Jan 2021 00:44:33 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id v7sm21748851wma.26.2021.01.02.00.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 00:44:32 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] copy_file_range.2: SYNOPSIS: Fix prototype parameter
 types
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-5-alx.manpages@gmail.com>
 <2b1cbbc7-a1f3-dbef-1d23-d96409e4490c@gmail.com>
 <a27fb355-f3be-036a-459a-1769e72e3a70@gmail.com>
 <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
 <99e9cd99-880d-7ae6-2e90-6b3877c314d3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <97457bf2-2b29-af4b-c910-2391c69c4134@gmail.com>
Date:   Sat, 2 Jan 2021 09:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <99e9cd99-880d-7ae6-2e90-6b3877c314d3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/31/20 1:46 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I'm fixing the example, and I trying to see if I can remove some of the
> headers with the change.  However, it's difficult to find that for sure,
> at least from the manual pages alone.  I think that's one of the biggest
> inconsistencies in the pages and I'd like to fix that some day.
> 
> Also, I'll resend the old patch documenting off64_t in
> system_data_types(7), given that this interface uses it.
> 
> For the SYNOPSIS sections of man2 and man3,
> I'll try to have a single header,
> and if there are some other headers needed (for type definitions, or
> other), I'll add a comment to all of them, so that it's clear why each
> header is needed.
> 
> See stat(2) as an example of what I don't like:
> 
> [[
> SYNOPSIS
>        #include <sys/types.h>
>        #include <sys/stat.h>
>        #include <unistd.h>
> 
>        int stat(const char *pathname, struct stat *statbuf);
>        int fstat(int fd, struct stat *statbuf);
>        int lstat(const char *pathname, struct stat *statbuf);
> 
>        #include <fcntl.h>           /* Definition of AT_* constants */
>        #include <sys/stat.h>
> 
>        int fstatat(int dirfd, const char *pathname, struct stat *statbuf,
>                    int flags);
> 
>    Feature Test Macro Requirements for glibc (see feature_test_macros(7)):
> 
>        lstat():
>            /* glibc 2.19 and earlier */ _BSD_SOURCE
>                || /* Since glibc 2.20 */ _DEFAULT_SOURCE
>                || _XOPEN_SOURCE >= 500
>                || /* Since glibc 2.10: */ _POSIX_C_SOURCE >= 200112L
> 
>        fstatat():
>            Since glibc 2.10:
>                _POSIX_C_SOURCE >= 200809L
>            Before glibc 2.10:
>                _ATFILE_SOURCE
> 
> ]]
> 
> Why should one include all of those headers?
> Which has the function definition?
> And what do the others provide?

There's a lot of history here, and I do not know all of it.

In old standards, <sys/types.h> was often required for various
APIs. Eg.e., in XPGv4.2 (1994), there is the following spec:

OH  #include <sys/types.h>
    #include <sys/stat.h>
    int stat(const char *path, struct stat *buf);

And the standard says that "OH" means
    "This indicates that the marked header is not required on
     XSI-conformant systems. This is an extension to certain 
     formal standards where the full synopsis is required."

So, it seems that some ancient systems may have requried
this header (<sys/types.h>) for portability, presumably because
<sys/stat.h> did not itself define various types used in the 
'stat' structure (at least on some systems. So, for portability
reasons, the Linux manual page mentions this header file.

I have no explanation of <unistd.h>. That was there when I
inherited the project (and back then there was no version 
control). But it was there back in 1995. Perhaps there's
a historical reason. Perhaps there was a mistake. (No version
control, no mailing list, so who knows.)

I'm not averse to seeing some of this cleaned up.
It's not fun work, of course! Maybe POSIX.1-2001 (as well
as 2008) might need to be checked, since info in that
standard is a snapshot of history that could conceivably still
be relevant now (in terms of portability to implementations
that are older but possibly still relevant).

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
