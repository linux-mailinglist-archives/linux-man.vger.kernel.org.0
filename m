Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 023543159F9
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 00:22:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233522AbhBIXUf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 18:20:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234601AbhBIWfb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 17:35:31 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC8A4C061756
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 14:34:35 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v15so68767wrx.4
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 14:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H148wu/4MHO84DUkizVrGZI/Sq3Bu2M6qhQMhnTydR4=;
        b=Icoo2DUKSCZvqKrH4poOY3W23uUoXHP7Q4RDKeg4jwWuj7HyglZWc46ZgTgGZnEt/E
         vjc9rLVT4hpdoC0LVXc/N8j3gVcVzLxbpCAtiINdzleHTsLaO+axkVxHD854lM+2OTrF
         UBvaWlNzHc09E/eZV2qVFrUhfWFcaWsTm3y8FPs3Mpxzvxm4BRJtZg4xgUDWNQZhwJos
         RaquLXhqcXch60qttCxo40Nxf88wQ3JQ7G5VLB51DfjvyEp3+1j235NS3YNVtiQK2j1W
         pFwYXfohYyvrgBE1bTDz5gNnCM+diou8J6x58T4axGzdi7ery88bJVdwPJwRRP0T54TU
         t6dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H148wu/4MHO84DUkizVrGZI/Sq3Bu2M6qhQMhnTydR4=;
        b=m9woNBE8zhQQDyqMzhn6FfUSYjNo2l5cdGGr8LUfkaA6cnVPdX5JEYL+LMLVh6FjSY
         P8K3yzse2EyL2qZWFfHM84KiNcrYSJpsW5AiJgQHvb3zLCjKGgZNMW7X0PCbt5//ZC3i
         G4sfo+3KGo5atQNK9sbNKbCNooQfJtIP6ylwAg6T+rvTiWHADux0vL8xRVPQYhOo8KRS
         PZPA0pfPZs8j4IQ0N0OY5YQTOWAFCrS69nNwKthbY3EYuqCZnFov1VljaeVRRHM7RP1K
         jhgJ+vwWA7GmICS7zOCzcqbxXEBNTwFv+CYwSP+Uc+3D0wbqZVbsl/yFoFPEdMrRWgyp
         b60A==
X-Gm-Message-State: AOAM5316Y95bZm873mTLv2tTIaVzjUvdROw2XtXi5nU9uon5D+vZytkQ
        EFKOSrP1nb2c3bUsNce6itBw5p8A3hI=
X-Google-Smtp-Source: ABdhPJyIuGaBWzxCrm2VcUQnKJWbJ9cbhauZ1+Ec9t8rguUZ7/CVOGEsqkL407vR0Q0qyFKVg89akA==
X-Received: by 2002:a5d:698d:: with SMTP id g13mr315989wru.30.1612910074469;
        Tue, 09 Feb 2021 14:34:34 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f6sm189188wmq.33.2021.02.09.14.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 14:34:33 -0800 (PST)
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
 <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
Date:   Tue, 9 Feb 2021 23:34:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2/9/21 7:25 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/8/21 11:36 PM, Alejandro Colomar (man-pages) wrote:
>> [CC += linux-man@]
>>
>> I forgot the list.
>>
>> On 2/8/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> I think we should simplify the prototype of ptrace(2) from using 'enum
>>> __ptrace_request' to 'int'.  It is an implementation detail that should
>>> be transparent to the user.  Other pages where glibc uses an 'enum' are
>>> documented to use 'int' (I don't remember the names of those, but
>>> remember having seen them a few days ago.  Otherwise, we might have to
>>> document 'enum' elsewhere, which I don't think adds any value.  What do
>>> you think about it?
> 
> I'm somewhat conservative on this point. It's been documented
> this way forever, so I'm inclined to pause before changing it.
Okay.

> I feel like we lack information. I'd like to know about some of
> the other cases where enums in glibc are documented instead as int.
> But, on the other hand, maybe this is not the highest priority,
> so it may not be worth too much effort to discover those examples.

I checked all of them ;)
It's more like 50/50.

Here are the glibc results (grepping though the kernel is taking much
longer, but I guess the command will have ended by tomorrow morning, and
I'll send you a follow-up.


.../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
               |while read -r f; do \
                       grep_glibc_prototype $f;
               done \
               |grep enum;
extern long pciconfig_iobase(enum __pciconfig_iobase_which __which,
extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
extern int ptrace (enum __ptrace_request __request, ...);
extern long int ptrace (enum __ptrace_request __request, ...) __THROW;
.../gnu/glibc$


Of the above, only ptrace(2) uses 'enum' in the manual page.
The others use 'int'.


.../gnu/glibc$ man_lsfunc ../../linux/man-pages/man3 \
               |while read -r f; do \
                       grep_glibc_prototype $f;
               done \
               |grep enum;
extern int mcheck (void (*__abortfunc)(enum mcheck_status)) __THROW;
extern int mcheck_pedantic (void (*__abortfunc)(enum mcheck_status))
__THROW;
extern enum mcheck_status mprobe (void *__ptr) __THROW;
.../gnu/glibc$

All of the above use 'enum' in the manual page.

Cheers,

Alex

......

man_lsfunc prints a list of all C functions documented in the SYNOPSIS
of a directory such as man2 (it can also be used on a single manual
page, such as `man_lsfunc man2/open.2`).

function man_lsfunc()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
		return ${EX_USAGE};
	fi

	find "${1}" -type f \
	|xargs grep -l "\.SH SYNOPSIS" \
	|sort -V \
	|while read -r manpage; do
		<${manpage} \
		sed -n \
			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
			-e "/^\.SH SYNOPSIS/p" \
			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
		|sed \
			-e '/Feature/,$d' \
			-e '/:/,$d' \
		|man -P cat -l - 2>/dev/null;
	done \
	|sed -n "/^SYNOPSIS/,/^\w/p" \
	|grep '^       \w' \
	|grep -v '[{}]' \
	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
	|grep '^\w' \
	|sort \
	|uniq;
}


> 
> Thanks,
> 
> Michael
> 
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
