Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6CF231ACC0
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 16:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbhBMP6O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 10:58:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbhBMP6M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 10:58:12 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A98C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:57:31 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id lg21so4435590ejb.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PjDEC0F4IQIaMXjljdlqi5sTL8ThVbqC6OlylzOvUnk=;
        b=Hx+j204ASfWe+eIRVgLvmMBWebOFpj/N8v7OxMK5Dx4ULJzD0BzMcg1RtyutVqAWw7
         XbYVZolBVJWjGGeyLL6DrZ1E5AtSB6/jNNbmmjmjFXGKBJhxg9VrFlRYdJZRn1ysXJhd
         T+TSjPJStoHWQ5++bvKS6NOrHyUK/BsJHxMfAF9Lq8Ya5XiTn5B6p4EQ8uAUVZMgqhO9
         5thiDgeWZgkFoHlfDph8tuRa6TB2YpZG00pNTOpGXxjDJRI8NP3ntoZsTkypiWrXAKC4
         bV6ZkvQM1p+pC/0ZPtDOU/gSVL17/uo1q17yoBfbX4fZGKbGEQ2PLLTOmAkx9ruNCjio
         Qqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PjDEC0F4IQIaMXjljdlqi5sTL8ThVbqC6OlylzOvUnk=;
        b=jhoUSJex8FGWNYFDiJ5stHbk384AZTs2G2Jy9J5lZrfRkCRdB4HNLoJdfRM9uYiSNA
         BWraO7//WDGkIr8VjUUaQG0qByu2l0slb/QWxTHftIuEMnKPoKq27BQHZE5Uy1JyDDCG
         Tb8E9sJN7PKY3KHE9lV8a1mRzksi6akob/wSeSpAHIouP3EM3Dq7IcG3OqCOfY+MAGXV
         q/h4nXmBY2DwuImscr1kdK1xIQQLw3WSOSYCnN5arBGd4/IKLrNuDh77y+L0+H1m51TQ
         ZRCAWSDm1YKPI5hPACO8g6sb7cjnxM6Jb+hrxWFz+Muyh1sG+eZ16nmvfEwxUgLigLOt
         /z0A==
X-Gm-Message-State: AOAM5314yvdwMKv77oIqQZ2TLVFjU+KipitoyYZH6QYk45L2nkUeOYXS
        B02E5g2CWPh4nqE/UunkDWjni25aErEmTw==
X-Google-Smtp-Source: ABdhPJyRGHPKZ4ghifaZHRmTlC5BZRPnLPmL1XrWY1TUUgcBpz4Px7aDgVmUNXfaHLODs9w7f7WI+w==
X-Received: by 2002:a17:907:98d7:: with SMTP id kd23mr8053228ejc.283.1613231850215;
        Sat, 13 Feb 2021 07:57:30 -0800 (PST)
Received: from [192.168.178.63] (dynamic-095-118-040-212.95.118.pool.telefonica.de. [95.118.40.212])
        by smtp.gmail.com with ESMTPSA id u5sm7837852edc.29.2021.02.13.07.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 07:57:29 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: man2: SYNOPSIS: prototype fixes
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <576dc286-a538-ff1d-92d6-58829d8ce8d6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <562f1d52-a3bc-44fd-53dc-3db4250280cd@gmail.com>
Date:   Sat, 13 Feb 2021 16:57:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <576dc286-a538-ff1d-92d6-58829d8ce8d6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/12/21 6:56 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I fixed all of the man2 prototypes to use 'restrict', and also fixed> those with incorrect types and missing 'const'.

That's great!

> There are quite a few commits (see below).  How would you prefer it?  A
> patch set with all of them?  Separate patches for each of them?  A patch
> set for restrict, and the rest separately?

I think the last option is best. (I assume you mean separate patches 
for each of the rest of the changes?)

> I could reorder them too.
> Right now they are as I wrote them (alphabetical order).
> 
> BTW, it was quite easy and fast thanks to the consistency fixes in the
> SYNOPSIS :-)

Yes, I can imagine it would have helped....

Thanks,

Michael

> Commit list:
> 
> [[
> * b55125c38 - Fri, 12 Feb 2021 18:28:46 +0100 (11 minutes ago) (HEAD ->
> devel)
> |           vmsplice.2: SYNOPSIS: Fix prototype parameter type -
> Alejandro Colomar
> * 34d9dd72b - Fri, 12 Feb 2021 17:53:17 +0100 (46 minutes ago)
> |           tkill.2: SYNOPSIS: Fix prototype parameter types - Alejandro
> Colomar
> * 4e42b38c5 - Fri, 12 Feb 2021 17:45:38 +0100 (54 minutes ago)
> |           timer_settime.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * 51e62f8b2 - Fri, 12 Feb 2021 17:42:52 +0100 (57 minutes ago)
> |           timer_create.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * 3e571e917 - Fri, 12 Feb 2021 17:24:52 +0100 (75 minutes ago)
> |           stat.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
> Colomar
> * f3c8d2b4d - Fri, 12 Feb 2021 17:12:37 +0100 (87 minutes ago)
> |           statx.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
> Colomar
> * bfbd4b4d7 - Fri, 12 Feb 2021 17:08:44 +0100 (2 hours ago)
> |           spu_run.2: SYNOPSIS: Fix prototype parameter types -
> Alejandro Colomar
> * 1fb014a27 - Fri, 12 Feb 2021 17:02:36 +0100 (2 hours ago)
> |           spu_create.2: SYNOPSIS: Fix prototype parameter type -
> Alejandro Colomar
> * ae642106c - Fri, 12 Feb 2021 16:56:16 +0100 (2 hours ago)
> |           splice.2: Use 'off64_t' instead of 'loff_t' - Alejandro Colomar
> * 2078af674 - Fri, 12 Feb 2021 16:46:46 +0100 (2 hours ago)
> |           socketcall.2: Add note about missing glibc wrapper -
> Alejandro Colomar
> * 01b4bfbd5 - Fri, 12 Feb 2021 16:39:13 +0100 (2 hours ago)
> |           sigwaitinfo.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * bb7808087 - Fri, 12 Feb 2021 16:30:47 +0100 (2 hours ago)
> |           sigprocmask.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * 48d241968 - Fri, 12 Feb 2021 16:01:17 +0100 (3 hours ago)
> |           sigaltstack.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * 36428c48c - Fri, 12 Feb 2021 15:52:37 +0100 (3 hours ago)
> |           sigaction.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> * 16b7a5f97 - Fri, 12 Feb 2021 15:04:40 +0100 (4 hours ago)
> |           setfsgid.2: tfix - Alejandro Colomar
> * af7affdd2 - Fri, 12 Feb 2021 14:48:43 +0100 (4 hours ago)
> |           select.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
> Colomar
> * 1e336e93b - Fri, 12 Feb 2021 14:31:38 +0100 (4 hours ago)
> |           sched_setattr.2: Add note about missing glibc wrappers -
> Alejandro Colomar
> * f2602e04a - Fri, 12 Feb 2021 13:04:24 +0100 (6 hours ago)
> |           s390_pci_mmio_write.2: SYNOPSIS: Add 'const' qualifier -
> Alejandro Colomar
> * 3423c9e83 - Fri, 12 Feb 2021 12:42:40 +0100 (6 hours ago)
> |           recv.2: SYNOPSIS: Use 'restrict' in prototypes - Alejandro
> Colomar
> * 138c3ac1c - Fri, 12 Feb 2021 12:20:21 +0100 (6 hours ago)
> |           readlink.2: SYNOPSIS: Use 'restrict' in prototypes -
> Alejandro Colomar
> 
> ]]
> 
> If you ever need to do something like this again, the following commands
> may be useful (I'll need them for section 3 soon):
> 
> For reading the man_pages SYNOPSIS:
> 
> .../linux/man-pages$ man_section man2 SYNOPSIS |less;
> 
> For reading the glibc prototypes:
> 
> .../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
>   |while read -r syscall; do
>           echo "=============================  ${syscall}";
>           grep_glibc_prototype ${syscall};
>   done \
>   |sed -e 's/\bextern //' -e 's/\b_*//g' \
>   |less;
> 
> For reading the kernel prototypes:
> 
> .../linux/linux$ man_lsfunc ../man-pages/man2/ \
>   |while read -r syscall; do
>           echo "=============================  ${syscall}";
>           grep_syscall ${syscall};
>   done \
>   |less;
> 
> 
> ......
> 
> Functions (I've improved these a bit over time):
> 
> function grep_syscall()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.c$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> 
> 	find * -type f \
> 	|grep '\.[ch]$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
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
> 
> function man_lsfunc()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find "${1}" -type f \
> 	|xargs grep -l "\.SH SYNOPSIS" \
> 	|sort -V \
> 	|while read -r manpage; do
> 		<${manpage} \
> 		sed -n \
> 			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
> 			-e "/^\.SH SYNOPSIS/p" \
> 			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
> 		|sed \
> 			-e '/Feature/,$d' \
> 			-e '/{/,/}/d' \
> 		|man -P cat -l - 2>/dev/null;
> 	done \
> 	|sed -n "/^SYNOPSIS/,/^\w/p" \
> 	|grep '^       \w' \
> 	|grep -v ':' \
> 	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
> 	|grep '^\w' \
> 	|uniq;
> }
> 
> function grep_glibc_prototype()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.h$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn \
> 	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
