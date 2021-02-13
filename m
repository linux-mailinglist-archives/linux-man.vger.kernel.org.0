Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F255B31ADB3
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 20:15:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbhBMTPv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 14:15:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhBMTPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 14:15:50 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D19DC061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 11:15:09 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id l12so3852616wry.2
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 11:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=s0t98r7Az5I35Idix501yZ18MDey7EplFY1xyk+tN4s=;
        b=M6g9OOxyftrttfayrCVHyxEVW+S2T8GxG79TqbXecatYPSpM6iQI6lBZN+MN9HAZ/0
         YAT3U5bFPi1wpb4EOqR29onducI3Wh/eJqGIJV+8qFBpQg8LoEg1PyJLPE4Atp3wbiVd
         44QZs1o2qvz4qEQ0wFDnmyq8xcl0P7ylb9SHC9OslkiN49xnSL/fq5GXTiVUXdykRe6V
         b9uMasofbWdSw8aZEzINgWo2oqaNXtSIVX0BTXKDSDqA9EyHX5nbFxBFVSr5hihWazVM
         M6j7o99fGsm7b7E490HNTEQ9jg7izI9Peb0gVp1tYw5zTAD6dyCOQoqPpEHP0xrjRjBZ
         SFZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s0t98r7Az5I35Idix501yZ18MDey7EplFY1xyk+tN4s=;
        b=UQNH8KvJi6CMWCLlpCoO/LEUIGqzCVTHFpb2Ih5GmJHGG5s4fHwSuK9eYsW+Vdfke3
         +oCPxee2aD9If9WvYigET4SVUuV658lmzcEfYaM+qbap/21iZSPChzYbompdd4hkQkK9
         PNCNbBiDEJRvLeEx/XMpBhjcK/ePCAq/U0YpLGFa/0SJbdcpAkQQvLz8Z1Pa78USuetW
         1XUEYL/B0rueDxqDjzHeZ4ElWQ8QV8HE/+YuwSx9MriieVJxybUhulwqp9yP9Eqh9eSG
         hkXkWhXfFlGthw6pWLOgbTyAdrCZW3h/4kAN0+ihfOIRFEKlV7CkfgCPgS/LlSe4kq+O
         +dpg==
X-Gm-Message-State: AOAM530qY+V0bqJbOdbXPZ+kFBRuK7u7/UqKvM5KKVCGn5yTyfJihyLx
        Cztdo4d8KxH/lD2dU+AGkXE/uPwalWCNtQ==
X-Google-Smtp-Source: ABdhPJygzJAkERffl4g+XtFD/yebGfwg6tyKAa2X8z08fBkzb7Ot6/8/yybe+xQvlFowS1sLPqI19w==
X-Received: by 2002:adf:fb91:: with SMTP id a17mr10193995wrr.93.1613243707272;
        Sat, 13 Feb 2021 11:15:07 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id y15sm16474492wrm.93.2021.02.13.11.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 11:15:06 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <05c94edf-b532-f2a6-0681-0b700d833e52@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5c13b177-241a-ef26-2c98-11e75c0a7b0e@gmail.com>
Date:   Sat, 13 Feb 2021 20:15:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <05c94edf-b532-f2a6-0681-0b700d833e52@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/2/21 6:43 PM, Alejandro Colomar (man-pages) wrote:
> On 12/31/20 4:26 PM, Michael Kerrisk (man-pages) wrote:
> [...]
>>
>> What do you think about the work-in-progess patch below? The following
>> may be useful for review:
>>
>> for p in $(git grep -l 'SYN' man[3-8]); do 
>>     echo "===================== $p"; man -l $p  2> /dev/null  | 
>>         sed -n '/^SYNOP/,/DESCR/p' | sed '/Feat/,$d';
>> done | less
>>
>> Cheers,
>>
>> Michael
> [...]
> 
> Hi Michael,
> 
> I developed a function for reviewing the prototypes of all functions and
> comparing them easily against glibc and kernel sources.  It's based on
> your code above.  You may find it useful (I made it generic enough to be
> useful for other tasks) to include it in your .bash_aliases.
> 
> [[
> EX_USAGE=64;
> function man_section()
> {
> 	if ! [ -v 2 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
> 		return ${EX_USAGE}
> 	fi
> 
> 	find "${1}" -type f \
> 	|xargs grep -l "\.SH ${2}" \
> 	|sort -V \
> 	|while read -r manpage; do
> 		<${manpage} \
> 		sed -n \
> 			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> 			-e "/^\.SH ${2}/p" \
> 			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
> 		|man -P cat -l - 2>/dev/null;
> 	done;
> }
> ]]
> 
> 
> Basically, at the root of man-pages, run the code below to see all
> syscall prototypes.

Perhaps we better add something in scripts/ with all of these
aliases and functions that you find useful. Then you (and 
maybe I) could . (dot) that in our .bashrc or so. Would you send 
a patch?

Thanks,

Michael

> $ man_section man2 SYN \
>   |less;
> ACCEPT(2)                  Linux Programmer's Manual
> ACCEPT(2)
> 
> SYNOPSIS
>        #include <sys/types.h>          /* See NOTES */
>        #include <sys/socket.h>
> 
>        int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);
> 
>        #define _GNU_SOURCE             /* See feature_test_macros(7) */
>        #include <sys/socket.h>
> 
>        int accept4(int sockfd, struct sockaddr *addr,
>                    socklen_t *addrlen, int flags);
> 
> Linux                             2020-04-11
> ACCEPT(2)
> ACCESS(2)                  Linux Programmer's Manual
> ACCESS(2)
> 
> SYNOPSIS
>        #include <unistd.h>
> 
>        int access(const char *pathname, int mode);
> 
>        #include <fcntl.h>           /* Definition of AT_* constants */
>        #include <unistd.h>
> 
>        int faccessat(int dirfd, const char *pathname, int mode, int flags);
>                        /* But see C library/kernel differences, below */
> 
>        int faccessat2(int dirfd, const char *pathname, int mode, int flags);
> 
>    Feature Test Macro Requirements for glibc (see feature_test_macros(7)):
> 
>        faccessat():
>            Since glibc 2.10:
>                _POSIX_C_SOURCE >= 200809L
>            Before glibc 2.10:
>                _ATFILE_SOURCE
> 
> Linux                             2020-12-21
> ACCESS(2)
> 
> [...]
> 
> 
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
