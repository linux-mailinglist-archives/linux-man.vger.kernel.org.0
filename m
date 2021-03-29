Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6776D34D9DC
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230271AbhC2WGH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:06:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbhC2WFi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:05:38 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 721ACC061574;
        Mon, 29 Mar 2021 15:05:38 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z2so14287155wrl.5;
        Mon, 29 Mar 2021 15:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mjz+YD2Tx5DyOSE35KploiTIrbyo0/nx0vHxTLevzjo=;
        b=u4MQp80YbJspUlArV+2AMcNlbbrSB0ygmvrACJSMzfcmbKJ76RPn40s9Ax3m6ZW4aP
         9+q+4+mJFePQe1RCR0HZSEHgyDVWL2KUA+Aq+/McNCP1/W1RoK7d3yjHF/7+Ds0ALB3B
         CplGxGA4HU4MiUoNWBOvj9szAIC9Nv2iv9HxwjPoGECUHbg+U+LZ4eCTbD0kMaKYDF/t
         qz9/EfZc428woz9t5yuCb55P1sWK73HVMizLuepav2ejy0cMRjufJVx6ziPbviJHympF
         bUJBc5Ioi96yeINSOvcYAA6tdYRZ+o/9iA1lapU0YC5xA7DNyV7bmInPUIMb7xxBrxid
         SX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mjz+YD2Tx5DyOSE35KploiTIrbyo0/nx0vHxTLevzjo=;
        b=BwxSRuPrE3Yrbfv0sYicP/fy9hzrWwLnlNdezsObNck0ob9cGu1t6m1lrOFN5uXcbn
         TjZFdP3/iQObkw1tEUkawd+p3EFeKIX2iSGB+iZ343wYs34klDxZVsYn5P1p5dqCyICR
         elgqsz+xyMWv2KewlOTB3rN/6UcoNR2r2r+QA+ghs9dEFa0pMlwPvDaamyb4ufzCLZTM
         GLfa3NR87gk6gcM9V7MkTUsjfMtnEUttagtrV6uK2pgob3z3q+xprHNDsdz6EtM2giYz
         wQqkC75W/zJFepYJhpjTOZuYgpYolrp+4JhJVhC6FLosmsYPv4QGA29qMMw92XlfjW0r
         SxMQ==
X-Gm-Message-State: AOAM5325H6u5RQ/3cCe3GuZTHM3vx0RfrAIETL8ubnscccesYYEIdum8
        0eJ7FvuAUkInfyzCKx60XGs=
X-Google-Smtp-Source: ABdhPJySeTzypB3koxOyvmgY9zf9P7ZJV9vOyS8o1ib16/QGqeMcX3j3f0lyiHn+CndLD3mUE24Tzg==
X-Received: by 2002:adf:c752:: with SMTP id b18mr30301620wrh.233.1617055537072;
        Mon, 29 Mar 2021 15:05:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p10sm32803994wrw.33.2021.03.29.15.05.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 15:05:36 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
To:     Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-5-peterx@redhat.com>
 <c65b5f04-4620-4c7e-e71f-91fc8394d164@gmail.com>
 <20210323191618.GJ6486@xz-x1>
 <dbc37834-9fb1-ca44-7ed5-9f8f6cc53741@gmail.com>
 <20210329215145.GE429942@xz-x1>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5fc2ff4e-15f8-8d50-ab7c-1bb401a99ead@gmail.com>
Date:   Tue, 30 Mar 2021 00:05:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210329215145.GE429942@xz-x1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

On 3/29/21 11:51 PM, Peter Xu wrote:
> On Thu, Mar 25, 2021 at 10:32:20PM +0100, Alejandro Colomar (man-pages) wrote:
>>>>> +.TP
>>>>> +.B ENOENT
>>>>> +The range specified in
>>>>> +.I range
>>>>> +is not valid.
>>>>
>>>> I'm not sure how this is different from the wording above in EINVAL.  An
>>>> "otherwise invalid range" was already giving EINVAL?
>>>
>>> This can be returned when vma is not found (mwriteprotect_range()):
>>>
>>> 	err = -ENOENT;
>>> 	dst_vma = find_dst_vma(dst_mm, start, len);
>>>
>>> 	if (!dst_vma)
>>> 		goto out_unlock;
>>>
>>> I think maybe I could simply remove this entry, because from an user app
>>> developer pov I'd only be interested in specific error that I'd be able to
>>> detect and (even better) recover from.  For such error I'd say there's not much
>>> to do besides failing the app.
>>
>> If there's any possibility that the error can happen, it should be
>> documented, even if it's to say "Fatal error; abort!".  Just try to explain
>> the causes and how to avoid causing them and/or possibly what to do when
>> they happen (abort?).
> 
> Okay.  Would you mind me keeping my original wording?  Because IMHO that
> exactly does what you said as "trying to explain the causes" and so on:
> 
>         .B ENOENT
>         The range specified in
>         .I range
>         is not valid.
>         For example, the virtual address does not exist,
>         or not registered with userfaultfd write-protect mode.
> 
> It's indeed slightly duplicated with EINVAL, but if you don't agree with the
> wording meanwhile if you don't agree on overlapping of the errors, then what I
> need is not reworking this patchset, but proposing a kernel patch to change the
> error retval to make them match. I am not against proposing a kernel patch, but
> I just don't see it extremely necessary.
> 
> For my own experience on working with the kernel, the return value sometimes is
> not that strict - say, it's hard to control every single bit of the possible
> return code of a syscall/ioctl to reflect everything matching the document.  We
> should always try to do it accurate but it seems not easy to me.  It's also
> hard to write up the document that 100% matching the kernel code, because at
> least that'll require a full-path workthrough of every single piece of kernel
> code that the syscall/ioctl has called, so as to collect all the errors, then
> summarize their meanings.  That could be a lot of work.

Yes, That's fine.  I was only curious about the overlap, but if they do
overlap, that's it.

>>>>> +For example, the virtual address does not exist,
>>>>> +or not registered with userfaultfd write-protect mode.
>>>>> +.TP
>>>>> +.B EFAULT
>>>>> +Encountered a generic fault during processing.
>>>>
>>>> What is a "generic fault"?
>>>
>>> For example when the user copy failed due to some reason.  See
>>> userfaultfd_writeprotect():
>>>
>>> 	if (copy_from_user(&uffdio_wp, user_uffdio_wp,
>>> 			   sizeof(struct uffdio_writeprotect)))
>>> 		return -EFAULT;
>>>
>>> But I didn't check other places, generally I'd return -EFAULT if I can't find a
>>> proper other replacement which has a clearer meaning.
>>>
>>> I don't think this is really helpful to user app too because no user app would
>>> start to read this -EFAULT to do anything useful.. how about I drop it too if
>>> you think the description is confusing?
>>
>> Same as above.
> 
> Above copy_from_user() is the only place that could trigger -EFAULT so far I
> can find.  So either I can change above into:
> 
>         .TP
>         .B EFAULT
>         Failure on copying ioctl parameters into the kernel.
> 
> Would you think it okay (before I repost)?  I'd still prefer my original
> wording because I bet 90% user developer may not even know what does it mean
> when the kernel cannot copy the user parameter, and what he/she can do with
> it..  However if you think it's proper I'll use it.

Okay, I'll take your original words.  Maybe all this "extra" info could
go into the commit message.  I'll wait for your resend with the a-b and
the minor changes :-)

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
