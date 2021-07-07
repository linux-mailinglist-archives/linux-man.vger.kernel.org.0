Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 627EE3BECA7
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 18:57:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbhGGRAa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 13:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbhGGRA3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 13:00:29 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D0B4C06175F
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 09:57:48 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d12so3251777wre.13
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 09:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=btlaLRWsSvnBhJxeddBhHI+O2Qzcpg7G/2Ox+yt/a+w=;
        b=oUCLKgKxUqICcVxM7YUtdreUnf4FdPfd1cqiCKPJVhb0K30LRaZIcVOKUqn4Zxq4lH
         ITe9tuoYPmDRrPeqTMx6DXxliO9tz3gAPxx3Gj6TnNl/T0S1M4tGgQreMRyh1zJYg5Sp
         bf4Xqt7Fg6xyFsCWfbh7JtQuyGVFGEigvRn4UoNxbbklzHMyu+VVi4vzd7GuHKE51bMq
         ppCTyHDOno1r/rSV/JGfTvcQQdSjZ5lom569Eun/tQ+jNv6ifRnQ2xDOw1mtssxlChfC
         VAYk3dF/ac6K5vcDSvLpGR3PZNX29Nu/jgOT7EKtxHKdzk2+iPsTjMdD2IjeS6QACD9V
         e7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=btlaLRWsSvnBhJxeddBhHI+O2Qzcpg7G/2Ox+yt/a+w=;
        b=gqTiygE7aoAtUoQEtuzy7giMYIg6p8wohxyoBKXmykEnDdU0USZ18iBdDgmPpIRzyf
         YZ+cjE65RYT2A02N5NcrZ0waCmUY7GFSvvxJl2jQXqEnOzaqvVpdviGy8/FLsY+Bjxf/
         JRawZDQ4InPQWaIeJRi9swIU3cFQFybXmH/DzvjAtYHX+/Zs2lzzHnBaejunEv4PxVmu
         q8RyH7ohOhWMgHsHQpAsTNpyI1yFFAuHxm3QlsbCdA6gbVGHbjVbL4ISecqiIp1vP6SP
         /a9M5b+L4U3/Pnd4R3uGi+geHqt5NkmviluRjuiUYikqlVrQ1W6APm4vk+FLj0Yxo7o9
         XiIA==
X-Gm-Message-State: AOAM530hzpZGFLgnyjmYRJarO4ZRZ88YwWkWCsgqaJm+y5C9T5IWCsfn
        yj9XWBPWkrriC63556OQUdk=
X-Google-Smtp-Source: ABdhPJy9l3Psz3RJ/YSW4+IwERaja6k1gq8pQ2/k2ilwCcrOlugJYZVqLc/xnvo6/hiBsMnLY2j1IQ==
X-Received: by 2002:a5d:560c:: with SMTP id l12mr29640176wrv.310.1625677066891;
        Wed, 07 Jul 2021 09:57:46 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r4sm22174364wre.84.2021.07.07.09.57.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 09:57:46 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
Date:   Wed, 7 Jul 2021 18:57:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/7/21 3:31 PM, Jonny Grant wrote:
> 
> 
> On 07/07/2021 13:31, Alejandro Colomar (man-pages) wrote:
>> On 7/7/21 2:22 PM, Alejandro Colomar (man-pages) wrote:
>>> I disagree with this.  It is likely that the behavior is that, given the current implementation of Linux/GCC/glibc.  But it is undefined behavior, and anything can happen.  You should just try harder to avoid it, and not rely on any possible outcome of it.  GCC people may decide tomorrow to change the behavior to do some more agresive optimizations, and the documentation shouldn't preclude such a thing, as long as it's legal according to the relevant standards, and sane.
>>
>> The standard (and implementations) define a set of thing you can do in C.  Those are an equilibrium between usability and room for optimizations.  Some things must remain undefined for the language to be more efficient and simple.
>>
>> If the language, or an implementation of it, attempted to provide a defined behavior for absolutely everything, some optimizations could not be done, and also, it would be much harder to actually implement it (and also document it).  So for good reasons, UB (undefined behavior) remains undefined.
>>
>>
>> Cheers,
>>
>> Alex
>>
>>
> 
> Hi Alex, Florian
> 
> Do you think this would get optimized out by GCC too?
> 
> size_t safestrlen(const char * s)
> {
>      if (NULL == s) return 0;
>      else return strlen(s);
> }

This would be optimized if the compiler can determine that s == NULL or 
s != NULL, which tipically would be that you ask the compiler to 
optimize, AND the compiler can deduce at compile time its relationship 
with NULL; OR you ask the compiler to optimize at link time (-flto) AND 
the relationship of s and NULL can be deduced at link time.

However, I don't see why that would be a problem.  Either you can 
guarantee that s is not NULL, and you don't need to call this 
safestrlen() wrapper, or you cannot guarantee it and then you are forced 
to call this wrapper.  The optimization, if it happens, will be good.

What I recommend you to do from time to time, to make sure you don't 
miss any warnings, is compile the whole project first with '-O3' and 
then with '-O0'.  If you are a bit paranoic, sporadically you can try 
all of them : '-Og', '-O0', '-O1', '-Os', '-O2', '-O3', '-Ofast' but I 
don't think that is necessary.  Of course, always use '-fanalyzer' (GCC 
10 and above).

> 
> 
> 
> Maybe the man page could just state:
> 
> 
> NOTES
> 
> The calling strlen with a NULL pointer is undefined behavior.

Okay.  I agree that should probably be documented.
I'm surprised it's not documented already.  Not even in the glibc manual 
(or I couldn't find it).

There are a lot of functions that should get this addition, though.  I'd 
like to patch them all at once.  I'll try to find a list of functions 
documented in the man pages and that have nonnull in the 
oimplementation.  If I don't come back soon with a list, please ping me.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
