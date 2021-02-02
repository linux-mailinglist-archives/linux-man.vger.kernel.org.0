Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2C230C83C
	for <lists+linux-man@lfdr.de>; Tue,  2 Feb 2021 18:48:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237848AbhBBRpk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Feb 2021 12:45:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234128AbhBBRn4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Feb 2021 12:43:56 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 572B8C061573
        for <linux-man@vger.kernel.org>; Tue,  2 Feb 2021 09:43:16 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id y187so3042536wmd.3
        for <linux-man@vger.kernel.org>; Tue, 02 Feb 2021 09:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lmfhpbK9+/BM/y6rjTI3pyyDl30ApQbEHDhFUuidI1s=;
        b=rxcEkRwh4gpThJCph2zZWWOZaZG6q8oMgjq8OrT5izeeiOto7DDx/0vltVT2y47WA8
         ksF/yL0bbRGy22BxlctlEK/UdglGvP7tdGZFwsrwsrejwWUJjRM8uHaI8sBnXXzJ6QM7
         9xKnSd/loAM+J9+KA1eBCubbi2MfAhpp4ETOsz7Of7C8gi8gzsTFDRrE1POX4FXqHAq5
         yvvu1Ds4Q4b2chG8gq6lPfXh80V1yhcSGuh67VYlLJwjPq044g4So+ivhq4ez1faW+Uf
         D5ivAqbpBzUKk+bV3H8aAajtH87KnEbaGPXgt8MqAdeAjNBSEjYJLH9YiENwxUmHW/EV
         v5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lmfhpbK9+/BM/y6rjTI3pyyDl30ApQbEHDhFUuidI1s=;
        b=GooMktsAIOazPYrmvdNALbey0SWAnuCJebHCiiNPgNZQ23i3ju4GCuHd9a8j9YU+fn
         tL9Db9MjjmrFTbZCzNS+i2FhTfNF9swVG9UMHVU01bcJMURTbz9dRJ3Mj3AO5Ao3stfu
         fGv2VWFwbVeD6EX1YHr5GebCeh+3qvwGn2Q7IF116bwbaHryijlwGnxnVJjqLGRfZm7U
         M6qG2XHmcdCMeWoywpIGmx3sOQNAFJYuunD0BqLgoeyhyMapW2rpyZ24Ql0WBgLKvw8/
         Q7iwYqHGRwROqnNkYLSqJAuzmv7NFNnUWXe6NrOriJrELOPG/vWWscnGwgMS7ppJg0wi
         Da5w==
X-Gm-Message-State: AOAM532uM2OpwMGz1IPBhlVn4pP+cz9ughsiaGRkGnPtJ1kMt/ddlTUk
        JSHQTnIgCEJsXmLGhir3QYbWuynVNGk=
X-Google-Smtp-Source: ABdhPJxzPBX1FGCv7L7TKL+O9UcIEKnsMb8GiCYu7aCxoRv+O31HJ34pXi78QGgZCZH+Cs4GtvKOrw==
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr4775055wmf.82.1612287795105;
        Tue, 02 Feb 2021 09:43:15 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id l14sm32461391wrq.87.2021.02.02.09.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 09:43:14 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <05c94edf-b532-f2a6-0681-0b700d833e52@gmail.com>
Date:   Tue, 2 Feb 2021 18:43:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/31/20 4:26 PM, Michael Kerrisk (man-pages) wrote:
[...]
> 
> What do you think about the work-in-progess patch below? The following
> may be useful for review:
> 
> for p in $(git grep -l 'SYN' man[3-8]); do 
>     echo "===================== $p"; man -l $p  2> /dev/null  | 
>         sed -n '/^SYNOP/,/DESCR/p' | sed '/Feat/,$d';
> done | less
> 
> Cheers,
> 
> Michael
[...]

Hi Michael,

I developed a function for reviewing the prototypes of all functions and
comparing them easily against glibc and kernel sources.  It's based on
your code above.  You may find it useful (I made it generic enough to be
useful for other tasks) to include it in your .bash_aliases.

[[
EX_USAGE=64;
function man_section()
{
	if ! [ -v 2 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
		return ${EX_USAGE}
	fi

	find "${1}" -type f \
	|xargs grep -l "\.SH ${2}" \
	|sort -V \
	|while read -r manpage; do
		<${manpage} \
		sed -n \
			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
			-e "/^\.SH ${2}/p" \
			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
		|man -P cat -l - 2>/dev/null;
	done;
}
]]


Basically, at the root of man-pages, run the code below to see all
syscall prototypes.

Cheers,

Alex

---

$ man_section man2 SYN \
  |less;
ACCEPT(2)                  Linux Programmer's Manual
ACCEPT(2)

SYNOPSIS
       #include <sys/types.h>          /* See NOTES */
       #include <sys/socket.h>

       int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);

       #define _GNU_SOURCE             /* See feature_test_macros(7) */
       #include <sys/socket.h>

       int accept4(int sockfd, struct sockaddr *addr,
                   socklen_t *addrlen, int flags);

Linux                             2020-04-11
ACCEPT(2)
ACCESS(2)                  Linux Programmer's Manual
ACCESS(2)

SYNOPSIS
       #include <unistd.h>

       int access(const char *pathname, int mode);

       #include <fcntl.h>           /* Definition of AT_* constants */
       #include <unistd.h>

       int faccessat(int dirfd, const char *pathname, int mode, int flags);
                       /* But see C library/kernel differences, below */

       int faccessat2(int dirfd, const char *pathname, int mode, int flags);

   Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

       faccessat():
           Since glibc 2.10:
               _POSIX_C_SOURCE >= 200809L
           Before glibc 2.10:
               _ATFILE_SOURCE

Linux                             2020-12-21
ACCESS(2)

[...]




-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
