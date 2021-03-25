Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3DE7349BAE
	for <lists+linux-man@lfdr.de>; Thu, 25 Mar 2021 22:33:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbhCYVc5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Mar 2021 17:32:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230389AbhCYVcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Mar 2021 17:32:24 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 476AAC06174A;
        Thu, 25 Mar 2021 14:32:24 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v11so3708701wro.7;
        Thu, 25 Mar 2021 14:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nbNivWiWgaBMZuyO4MpN+8EYAa/41jtzT5v1aG+/fJw=;
        b=Q2UpVjLeH9lnudNPvjqKIwJPfOC6tqAcXg1q/QxTB5RWQ721mgUIQFzRGc3Ln6q0rw
         ycXPsWhmmhRPTgWTzpKj5FH5M5+QE5pxzQxnB4dOzzNSg8ucOm340vhce7Pun0LmAIPj
         +5yJYXOru/sWeBKGS/yojEtJsmN10lzXrrPj6h/q7M9zl0w/nvdM/VtAzRRdN5uDF7aX
         h8eWI6zYFtWS/Ql0mIcW2FrIpJ3Pw/Vo4gNfptnZT0Gfa7HKjG0x6rVL4dUJgvR5PmAz
         eEGsg2mBdTogaI1NLHwkga45nKBp3NXTs3/ABFbB/RvBBVtJH1w9aCLt+/l04lAlt3kQ
         wOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nbNivWiWgaBMZuyO4MpN+8EYAa/41jtzT5v1aG+/fJw=;
        b=fZY1dD/q6MxlJpVG9MLwV7WANz7w+ut5RCsBdhZQtXSU+MrjjnEN/whSSQireH7Qr4
         xgw1N+cJOckhpdoxr6W/2n0HXAdbu7p0DsakgpwPvlVN/J3AEGXMkbapBcVfTIYynbqi
         /Rzs+dhsktVUyNCOaomSPp9GjGJlz/HjxKQLAlsdphfrnYI6iL3WGf9Ut/5Es6BOpyIA
         x14DXM71YjkV1GTeBGW0i9Myw2aDACAovN9fJJRYkGaI8Dqk4arHvWZklqpfJmMaEZm3
         obuUzjJYsPyyUXBJFtd2uwxHSGwlAKiVG8Kl+R9iRj54XZWrsvpPRMX5wjFi7kLzQoQi
         YTAA==
X-Gm-Message-State: AOAM532nCwkjFP04KHggWV+r44p+Tr2NilkIow0Ny1NGGYFDl7NGcQCM
        zHSKi0pC35+F8K3k8eLL0kg=
X-Google-Smtp-Source: ABdhPJz3FG0ilHrC2E5KSJQMQ8xEG4quMfDb50CMmWsBKp6l/vc9HCS8k5p5NWXIiNj3wcASIaputg==
X-Received: by 2002:adf:a1d8:: with SMTP id v24mr10805038wrv.378.1616707942884;
        Thu, 25 Mar 2021 14:32:22 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 91sm9329621wrl.20.2021.03.25.14.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 14:32:22 -0700 (PDT)
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
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <dbc37834-9fb1-ca44-7ed5-9f8f6cc53741@gmail.com>
Date:   Thu, 25 Mar 2021 22:32:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210323191618.GJ6486@xz-x1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

On 3/23/21 8:16 PM, Peter Xu wrote:
> On Tue, Mar 23, 2021 at 07:11:04PM +0100, Alejandro Colomar (man-pages) wrote:
>>> +.TP
>>> +.B UFFDIO_COPY_MODE_WP
>>> +Copy the page with read-only permission.
>>> +This allows the user to trap the next write to the page,
>>> +which will block and generate another write-protect userfault message.
>>
>> s/write-protect/write-protected/
>> ?
> 
> I think here "write-protect" is the wording I wanted to use, it is the name of
> the type of the message in plain text.

Okay.

> 
> [...]
> 
>>> +.B EAGAIN
>>> +The process was interrupted and need to retry.
>>
>> Maybe: "The process was interrupted; retry this call."?
>> I don't know what other pager say about this kind of error.
> 
> Frankly I see no difference between the two..  If you prefer the latter, I can
> switch.

I understand yours, but technically it's a bit incorrect:  The subject 
of the sentence changes: in "The process was interrupted" it's the 
process, and in "need to retry" it's [you].  By separating the sentence 
into two, it's more natural. :)

> 
>>
>>> +.TP
>>> +.B ENOENT
>>> +The range specified in
>>> +.I range
>>> +is not valid.
>>
>> I'm not sure how this is different from the wording above in EINVAL.  An
>> "otherwise invalid range" was already giving EINVAL?
> 
> This can be returned when vma is not found (mwriteprotect_range()):
> 
> 	err = -ENOENT;
> 	dst_vma = find_dst_vma(dst_mm, start, len);
> 
> 	if (!dst_vma)
> 		goto out_unlock;
> 
> I think maybe I could simply remove this entry, because from an user app
> developer pov I'd only be interested in specific error that I'd be able to
> detect and (even better) recover from.  For such error I'd say there's not much
> to do besides failing the app.

If there's any possibility that the error can happen, it should be 
documented, even if it's to say "Fatal error; abort!".  Just try to 
explain the causes and how to avoid causing them and/or possibly what to 
do when they happen (abort?).

> 
>>
>>> +For example, the virtual address does not exist,
>>> +or not registered with userfaultfd write-protect mode.
>>> +.TP
>>> +.B EFAULT
>>> +Encountered a generic fault during processing.
>>
>> What is a "generic fault"?
> 
> For example when the user copy failed due to some reason.  See
> userfaultfd_writeprotect():
> 
> 	if (copy_from_user(&uffdio_wp, user_uffdio_wp,
> 			   sizeof(struct uffdio_writeprotect)))
> 		return -EFAULT;
> 
> But I didn't check other places, generally I'd return -EFAULT if I can't find a
> proper other replacement which has a clearer meaning.
> 
> I don't think this is really helpful to user app too because no user app would
> start to read this -EFAULT to do anything useful.. how about I drop it too if
> you think the description is confusing?

Same as above.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
