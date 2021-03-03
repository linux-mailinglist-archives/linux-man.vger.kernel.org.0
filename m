Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4091132C75F
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386552AbhCDAbl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388405AbhCCVKG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 16:10:06 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDEB2C061756
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 13:09:25 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id dm26so8401075edb.12
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 13:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xtQIAG53LcX4xmVk0L7WpBzG20ri3VzM1fbc0bOVcyI=;
        b=DjzMbAqTTY53AjCkkLsX46lxtaMdPjLhJD41ldAQqguTCeyvhiCxPCNRb/zj4/+rSW
         Jmn9SG2CY56PtC/NAPPb8AC2QmUPTBksOVqyGYXQWzweY4jIlNzCk+Wt4op+X13mH88y
         PFOZrM3DO0wpurcKFZ+6SM2zEn7C8h/SCF4d6etuxCvor4bnQAvf+x+TP2jJ2XbGUBxq
         5M3+G5fzVoA4gx2+tBnmLki1Qqbxeniqfw9FYCt6cqUJmy966sXcrJnDsbudIXogABz7
         9vRqgaFY0tinOplcYjuKBQK8zCTpCizCeREDTGoI4jK+FOTD78ya6FjHHEenz9ucMtLI
         ycAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xtQIAG53LcX4xmVk0L7WpBzG20ri3VzM1fbc0bOVcyI=;
        b=pYe0SoSRe1OImqsT33WSke126TOnCYn2lkE1a+d7VUFxAvLwwJqX7toyXjoyAMbERU
         tjxl04du1xOaQ5lk4gPE7xuROQ/kN6+oXy6dNFH3WzzY2DK9oQjqMWSe9nG0Lig79CwX
         S6s52qbCjOMG8PDN4dkFnpQ7lYU+zqykPzFoogjOos7oTWclvDa+oMDI23cwY3DIySJg
         ww2zQ4o6iiQpjif/kvVqbKvQ25HjCvaKM/F2iP6UugH1EGocBIrwU15/FFiagTe76hM3
         UeadkcjyXB+I+QMeCFyOyYxTDbLdYkGDZH64vcsMs6c91W1rc9IRiaGZztlBWn/np1q5
         YkCA==
X-Gm-Message-State: AOAM532kkWN46uiA5Bd40aXTHma78scKuFn82q1N5EnQ6q4y+Oun0szr
        QCTIW0yZe+jBuKV5dpeP+GQhBbBdLkESXA==
X-Google-Smtp-Source: ABdhPJyOeeNEC3uz2rVfu/HJZ8AsFb7WCDgBb2aRzvD1xvuWuP5wxFnWGqVKRTOvbwrWMx7yF0tcPw==
X-Received: by 2002:a05:6402:1d95:: with SMTP id dk21mr1138125edb.280.1614805764402;
        Wed, 03 Mar 2021 13:09:24 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id i6sm18320963ejz.95.2021.03.03.13.09.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:09:23 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v3] man2/openat2.2: add RESOLVE_CACHED
To:     Jens Axboe <axboe@kernel.dk>, linux-man <linux-man@vger.kernel.org>
References: <51d86aa7-8a19-5457-6932-0bd3c746c4a6@kernel.dk>
 <38c96b3d-84b2-bebd-4163-27fd2b3295c1@gmail.com>
 <b0277762-1eda-7b13-1a40-2abb68ba1142@kernel.dk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <12662f60-158f-5fa4-15c9-1c9299b22b98@gmail.com>
Date:   Wed, 3 Mar 2021 22:09:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <b0277762-1eda-7b13-1a40-2abb68ba1142@kernel.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jens,

On 2/22/21 9:05 PM, Jens Axboe wrote:
> On 2/22/21 1:01 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Jens,
>>
>> On 2/21/21 2:12 PM, Jens Axboe wrote:
>>> RESOLVE_CACHED allows an application to attempt a cache-only open
>>> of a file. If this isn't possible, the request will fail with
>>> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
>>> This will generally happen from a different context, where a slower
>>> open operation can be performed.
>>>
>>> Signed-off-by: Jens Axboe <axboe@kernel.dk>
>>
>> Is it correct that this feature is now merged?
> 
> Yes, it's in Linus's tree:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/open.c?id=99668f618062816ca7ba639b007eb145b9d3d41e

Thanks. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
