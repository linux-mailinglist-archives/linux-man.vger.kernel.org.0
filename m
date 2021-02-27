Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12561326E5D
	for <lists+linux-man@lfdr.de>; Sat, 27 Feb 2021 18:23:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbhB0RT5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 12:19:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbhB0RQ4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 12:16:56 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8257EC06174A
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 09:16:14 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id b18so5170010wrn.6
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 09:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rLIvdL31ffVILM5QZEKTWebgCq9wgDGQBaXEShtAC1M=;
        b=KbLPgGi/S+29sPqAUtvOXByOV06v3UfwTaJb3y8n1oXyID/sa/ZxXOw7FX4eLOQ8nn
         VfDA4bomq2sXS3PbeqCg8MKpq+HddmJs1fYW4749Qo0eIPoGEjARbseDb2kPYzkauoVS
         AbId5Tm1CIkUlc/bOKFEreFYKBOAzRLEtY0Yk48oKMEk1Xt5vR7hw7q+LRKNlUFQvz1P
         r/rxMZw/x2BO5I36UiynKh09GjKdhbK2up0D/pXJK+Qqg9NzngFSUrvH9rYkkiUOobbj
         Frfk67305mUsOsYu2bY7bHIKGo5HFVC0QVCvmJawEhTXtrKZ8GgHkL3i5XfDEfM3IE/I
         oRNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rLIvdL31ffVILM5QZEKTWebgCq9wgDGQBaXEShtAC1M=;
        b=Y1wpvCGu/FCg6Rv4IM6hA2a6miiLRfB1Ixpmr0OJvCc6AoxwXGAh4hOlwPiSatqOAi
         c4EvNaq4bKvxS2d3A1KdLfZG5vAuqzITSKlDsCG5gUMGEgF9DyM3gjEKaYTKC+QqgCwE
         73WRTXY2Ad7h7gWP3OT7Y5XxaHwkP1lsoXdktcTggs5mYO0ez7zL/E2hIklunedaWoSV
         t4qCzVIB6K4AkZhlYbErEdaYHUoP2twEImCmKbp89t+oIs5HvgSZ6hLNiXpfcq3e6/eC
         CwUmP7Offm6ZMIRJ33Ri94JpllXtxaMZ88PrajJUP0MvwCmT5FIzVVs8sb9rIyDshqsM
         7Zrg==
X-Gm-Message-State: AOAM531AfsfEPtaDIdahej2++2vRMyrn9iKpT62st8F8SdTjzoZf09Cx
        siIwiU5EF+Iuj783r1/07HcSSuCCcAHdfA==
X-Google-Smtp-Source: ABdhPJxXOyhQvLydluwZhh6Q4IcpAWNTUPrcHdgOo9P3bsZGug3aIJg5sANMbxqWhGbzKZNPVkLJRg==
X-Received: by 2002:a5d:47c7:: with SMTP id o7mr3107529wrc.3.1614446173127;
        Sat, 27 Feb 2021 09:16:13 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id r18sm19155027wro.7.2021.02.27.09.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Feb 2021 09:16:12 -0800 (PST)
Subject: Re: [PATCH v9] scripts/bash_aliases: Add useful functions
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, Walter Harms <wharms@bfs.de>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
 <20210219143221.108935-1-alx.manpages@gmail.com>
 <CACKs7VAD69B2+rRPkXLwy0YtVOswvbqJjvvMNQ_rdQoBjF-sow@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <072ee0c3-f30f-9da3-1b3f-37b5bc095806@gmail.com>
Date:   Sat, 27 Feb 2021 18:16:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CACKs7VAD69B2+rRPkXLwy0YtVOswvbqJjvvMNQ_rdQoBjF-sow@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stefan,

On 2/27/21 4:09 PM, Stefan Puiu wrote:
> Sorry for jumping in this discussion so late, but I was wondering
> about one thing (see below).
> 
> On Fri, Feb 19, 2021 at 4:38 PM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
>> +#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
>> +# printing the filename, line number, and the prototype.
>> +# It should be run from the root of the linux kernel source tree.
>> +# Usage example:  .../linux$ grep_syscall openat2;
>> +
>> +function grep_syscall()
>> +{
>> +       if ! [ -v 1 ]; then
>> +               >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>> +               return ${EX_USAGE};
>> +       fi
>> +
>> +       find * -type f \
>> +       |grep '\.c$' \
>> +       |sort -V \
>> +       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
>> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>> +
>> +       find * -type f \
>> +       |grep '\.[ch]$' \
> 
> Any reason not to use "find . -type f -name '*.[ch]'" when you need to
> restrict the files you're looking at? I would expect that to be
> faster.

I don't like find syntax.  I never remember how all of its options work.
grep is much simpler, and everyone knows how it works.

find has: -[i]lname, -[i]name, -[i]path, -[i]regex, -[i]wholename
I don't want to be reading the manual for all of them each time I use 
find.  grep does the same with optional -i and some simple regex which 
anyone could understand with some basic regex knowledge.

For the performance part, I don't know; but we might be surprised.  At 
most it might be a bit faster (nothing like 200%), but I care more about 
readability.

I also avoid using find -exec option, and instead use xargs.  It's way 
simpler to understand, at least for me.

See also:
<http://doc.cat-v.org/unix/find-history>
<http://harmful.cat-v.org/cat-v/>

> Also, not sure what you are trying to do with 'sort -V' - why
> not feed the results directly to pcregrep?

Some consistency.  Sometimes this function finds more than one prototype 
for a syscall.  I prefer that everyone using this function gets the 
results in the same predictable order, instead of some random order.

> 
>> +       |sort -V \
>> +       |xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
>> +       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>> +}

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
