Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 237EC2E1CEB
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 15:05:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728511AbgLWOFL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 09:05:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728449AbgLWOFK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 09:05:10 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE92BC0613D3
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 06:04:30 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z12so3052262pjn.1
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 06:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=l1jYEyFpj7mPT8zJ6e8hEFQrNvghxsNYKC2LxcL3nR0=;
        b=cLF5Mjxx4FonmrDxojawprQwpRBVg2FEp4n6McklSx036yqF9mQgYeRVEblB71XQFk
         Dx/VqI+YSGAHV1ZSG0UhAGO0JTPVJRDAPlyWonwNysGK+MxteZvyhDynahxp6QYeks8a
         Y4mLu91hSNHa6ilkijbOphVFOByJqFUS5OCQJQNfA3tVtzCz5LdqxzKzNPxAQN4sXWW8
         F79doF7R5U4VOxE21MN0d6v+lWo9sLjYfmDyUxDP68B7w03Rint7ezWUHICai7sn4lrA
         ieuBkUtypeX1QawJf5LP1JxotVQIB9K9ZMdhNzHktHHJCe9IO6NrnJu+Ed0GLCalnHRF
         t4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l1jYEyFpj7mPT8zJ6e8hEFQrNvghxsNYKC2LxcL3nR0=;
        b=hwCIFOIGjWzkVEmXqhOU1EJyszvExaf3MMYKdeOgptCMj7dXDQ44s2316Q0Swxg8Gc
         R58o8DCjvMC8866tG3Y3h2ThAGjOKPd61LoN+OopdnFKeW7O69JxSFx0gN4C28nsLPWu
         CFmoXZ4+53RV3CcGD8PXc2BX0lQbC3lYU7dUeGR1QUR3axzn1Da9/nGbcrBArk7Xo+2V
         Rhu1i3XMxkUAoBoxta/pGXYC6T24YiYiUGLTgsl4JMF20FyRVg2l0iHAVPISzfmOciBS
         xblclbaTQwDBog/DXNt9pZMr93b4z7sKUsHN32gKuAOlj/EkGL57JYMpS5O9oT2tQiYx
         nq0A==
X-Gm-Message-State: AOAM530p5geaVt7EJgYs56hZCzFv3uIWXX76NbclVXlBQRDMyoFjnP/U
        92j8Jt6+/rIg1tfEuMoLmt2emsSx+dXieA==
X-Google-Smtp-Source: ABdhPJx97XiNtHQI7rbUL7O2uelFM+4oK9mL5+PvT6bxc49za9iqGHCQ6mq12+TjfvaG+CNYcaKFKQ==
X-Received: by 2002:a17:902:ba8d:b029:dc:bc0:4d5 with SMTP id k13-20020a170902ba8db02900dc0bc004d5mr25982389pls.75.1608732269740;
        Wed, 23 Dec 2020 06:04:29 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id f24sm22297136pjj.5.2020.12.23.06.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 06:04:28 -0800 (PST)
Subject: Re: [PATCH] man2/openat2.2: add RESOLVE_CACHED
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <187e84bd-59c8-dc68-1eef-9cd13aa70d38@kernel.dk>
 <1f657d57-0e53-a5d4-ac76-410212eaa822@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <17281afd-16b9-1564-6c21-6c5dfa469dd6@kernel.dk>
Date:   Wed, 23 Dec 2020 07:04:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1f657d57-0e53-a5d4-ac76-410212eaa822@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/23/20 5:41 AM, Michael Kerrisk (man-pages) wrote:
> Hi Jens,
> 
> On 12/17/20 10:18 PM, Jens Axboe wrote:
>> RESOLVE_CACHED allows an application to attempt a cache-only open
>> of a file. If this isn't possible, the request will fail with
>> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
>> This will generally happen from a different context, where a slower
>> open operation can be performed.
>>
>> Signed-off-by: Jens Axboe <axboe@kernel.dk>
> 
> I take it that this feature is not yet merged into the kernel?
> (At least,  I couldn't grep RESOLVE_CACHED in current
> kernel sources.)

Right - see the email thread linked in the posting. Should be landing in
5.12 though, and I just wanted to hash out the details of the man page
upfront so it'd be ready to go as well. Sorry if that wasn't 100% clear!

>> First attempt at this, fully expecting the phrasing to require some
>> massaging.
>>
>> Also see: https://lore.kernel.org/linux-fsdevel/20201217161911.743222-1-axboe@kernel.dk/T/
>>
>> diff --git a/man2/openat2.2 b/man2/openat2.2
>> index 3bda20620574..282c13e2df96 100644
>> --- a/man2/openat2.2
>> +++ b/man2/openat2.2
>> @@ -385,6 +385,15 @@ This may occur if, for example,
>>  a system pathname that is used by an application is modified
>>  (e.g., in a new distribution release)
>>  so that a pathname component (now) contains a bind mount.
>> +.TP
>> +.B RESOLVE_CACHED
>> +Fail path resolution, unless all components needed already exist in the
> 
> I think "Fail path resolution" needs some clarification.
> 
> Maybe something like:
> [[
> Make the open operation fail unless all path components
> are already present in the kernel's lookup cache.
> ]]
> ?

That is cleared indeed, I'll rephrase that one.

>> +lookup cache. If any kind of revalidation or IO is needed to satisfy the
>                  ^
> Please start new sentences on new lines. Using such-called "semantic
> newlines" makes for cleaner future patches.

OK

>> +lookup, then fail the open attempt with
> 
> "fail the open attempt with"
> ==>
> .BR openat2 ()
> fails with the error

Fixed up

>> +.B EAGAIN.
>> +This is useful in providing a fast path open that can be performed without
>> +resorting to thread offload, or other mechanism that an application might
>> +use to offload slower operations.
>>  .RE
>>  .IP
>>  If any bits other than those listed above are set in
>> @@ -421,6 +430,14 @@ The caller may choose to retry the
>>  .BR openat2 ()
>>  call.
>>  .TP
>> +.B EAGAIN
>> +.BR RESOLVE_CACHED
>> +was set, and the open operation cannot be performed cached. The caller should
> 
> semantic newline

OK

Thanks Michael, I'll make the edits.

-- 
Jens Axboe

