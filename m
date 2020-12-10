Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56B662D693B
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 21:58:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390934AbgLJU5g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 15:57:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390901AbgLJU5e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 15:57:34 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B192C0613CF
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 12:56:54 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id g185so6684707wmf.3
        for <linux-man@vger.kernel.org>; Thu, 10 Dec 2020 12:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kT/g8HRCnL5Hcq97K4CA0vcNL050gJlyMSFp28J+PdE=;
        b=XVwBGejBoXaZ09hd0riXjxi+TaI4O7WmQ9emkMedCq0fOyEntjr1/3PuSbyvkLFAO0
         eUIfTTZSEKCh8lYF40dud8bVHGRquKh37IKK+7BqgTrEy0uHn6Ia9Jd8582qfJt9bzOD
         Ubxn4kD7QXh+BQUNH/GoZKCMs7MSKiRuHBHqCzoEv3cJE3KErYwDgHjgJN67iths9M0Z
         QsWyKlL68GVtBVajtarZVnOecxTrwSXOgdpM7U0v2kxWNHCJTMZ4+WDreX2SJMdLXzK+
         qfWwBgc1KkzKQNbLYBXiVYiJo9/z4v1Oj5BqQKEeg3mxnC73MWv/z+TXGzB1fp4gZeL3
         ndGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kT/g8HRCnL5Hcq97K4CA0vcNL050gJlyMSFp28J+PdE=;
        b=sXmv/WEreImHALi20355nmEVf4OuaZp1NTemm+M4ANoKmMEdMJojq9a3WtlaX+Bf2X
         IL2yUgzaQVGjVdamttomth0wY0sEHWX/DEyHjvKsZtFU/v/YKqrZReyIRo+5n04fD73W
         oCaN35uj5gMbAgp4nznZgu1KQLZiDOYw0Wpb7t9tBr+zu1iJ19/nBzbWe0cRApJ/heJS
         epJpxZLbBlxc8nsfiIacgXj31o1Ifda0hd5aCLuXN82Jf4nJ/Im74KrH74HaJanLnOgK
         emzMC3lNWsN0JQfQSgZ3fA1GX9FoX2jSGsyNB9f/QNsGgRXLtbICDaFbB6+Tluz/3PYT
         EqeA==
X-Gm-Message-State: AOAM530DDcWevPgS1PYH3SpcYaF2rE+W/XLJGZ0hiPoQN3O1HR4B+aI0
        XIKdnp98ezTHA7Repe63+aE=
X-Google-Smtp-Source: ABdhPJzESSVyImlFswbIx3qwCAkpldbtYWxXzBrfaxSOPL5TswVLgUe68PR8gXJfuzcqa0otni3k7A==
X-Received: by 2002:a1c:2783:: with SMTP id n125mr6056548wmn.74.1607633813269;
        Thu, 10 Dec 2020 12:56:53 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j15sm11125030wrr.85.2020.12.10.12.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 12:56:52 -0800 (PST)
Subject: RFC v2: Re: cacheflush.2
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Dave Martin <Dave.Martin@arm.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <20201210181726.GT6882@arm.com> <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f1f335e3-2459-3cfd-11c0-b105e7a5b734@gmail.com>
Date:   Thu, 10 Dec 2020 21:56:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

v2:

[
NOTES
       Unless  you  need  the finer grained control that this system
       call provides, you probably want  to  use  the  GCC  built-in
       function  __builtin___clear_cache(),  which  provides  a more
       portable interface:

           void __builtin___clear_cache(void *begin, void *end);
]

If you like it, I'll send the patch.

BTW, I'll also have a look and document the different prototypes for
cacheflush(2).

Thanks,

Alex

On 12/10/20 8:20 PM, Heinrich Schuchardt wrote:
> On 12/10/20 7:17 PM, Dave Martin wrote:
>> On Wed, Dec 09, 2020 at 07:34:09PM +0100, Alejandro Colomar
>> (man-pages) wrote:
>>> Hi Heinrich & Michael,
>>>
>>> What about the following?:
>>>
>>> [
>>> NOTES
>>>         GCC provides a similar function, which may be useful on  archi‐
>>>         tectures that lack this system call:
>>>
>>>             void __builtin___clear_cache(void *begin, void *end);
>>> ]
>>>
>>> Cheers,
>>>
>>> Alex
>>
>> Maybe we should discourage people from calling the cacheflush syscall?
>>
>> I think that people shouldn't be using the syscall unless they really
>> need the finer grained control it provides, and are prepared to take a
>> hit to portability.
>>
>> (On arches where userspace is allowed to do cache flushing directly,
>> __builtin___clear_cache() should transparently do the right thing, with
>> no syscall overhead -- if not, that's probably a bug in the toolchain or
>> compiler support library.)
> 
> What the compiler builtin does depends on the architecture (e.g. nothing
> for x86, cacheflush() for MIPS, a private syscall (0xf0002) on ARM,
> assembly code on ARM64, ...) and on the the operating system (Linux,
> BSD, OS X). For portable code the builtin is really the best choice.
> 
> Best regards
> 
> Heinrich
> 
>>
>> [...]
>>
>> Cheers
>> ---Dave
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
