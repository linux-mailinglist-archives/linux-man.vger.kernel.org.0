Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79FC532D94F
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 19:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232658AbhCDSOg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 13:14:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbhCDSON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 13:14:13 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9466AC061756;
        Thu,  4 Mar 2021 10:13:32 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h98so28670312wrh.11;
        Thu, 04 Mar 2021 10:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LxB9+vPeZCQGgYfmPoWB4CHgIz+gt8MLqthX/gFqZ3U=;
        b=B2ooff6kakZeG2uBiJu3XKYQ7mywheQeV3oBzlJ2STyJSNdIAk2QMhBwvZsu4O3N/O
         5LwKz/RswGJhuTL7bp6d0odZHMCQZhjOiPUAxS19I9pbJyvMzuX7OozP5///hi134tXH
         vDmeS7FhNIDlYukW6lUCivl9JJ84OoOMSarfoiKcIV65B93YJtzAMOIkol3Vg9wqZ7k/
         9nl9mDe+fcsLZFZB+y+ebYWUDuWcFXbV1/BbRNG4CDezegCVZSgsqNo09aUhoh88ox7G
         O8TtBi5MuTXQ2ev35FyCcBN1rLJCbtB77800IjFdAIKve3V32ns9/ttNML/KNXvFkJt9
         wVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LxB9+vPeZCQGgYfmPoWB4CHgIz+gt8MLqthX/gFqZ3U=;
        b=aWc7/E5/Ef+cotXjh3hT1ABACdDmpGzePw0flzbmo+LoFAiSXoqFAigVPzNaLFScEC
         i9GNbh4UY7QNWV9atTFdRl1jJOma5BxD29PFSswCE1/HwZaMPVUnqg78wqr3LgXQ77a4
         R3idN5lOB1bRZ4KjQWd74QG5dBXh3xGgsD7Uhz/uqh7xODIiQA9aCKwZC8NelLwLP7en
         uW3c4l4/wMKLoww1Ab+b7dnqKs9i1TN1DsvBGMtUpWgeUalAzQVsD+lYRTJ9uZwzYQvP
         Cgd/c5hVaZUt85j/McWEt5xBesr57hlCjRWpBbSnjj7eZ9jd9YhJ+fYyPcy9WagbYGZZ
         RX9w==
X-Gm-Message-State: AOAM530feoph929q8wubZ1hIVuyiLpfOUfBhzWgWDZwRsleb1hEmS6nV
        on2bHyBmyvjaSc175p+LYS9Nx11L+1+Asg==
X-Google-Smtp-Source: ABdhPJwckwo0GuaE3KN/vJPzU1CQ5l0n3JCR/c2i5MOh6U1hAxklMv0L4htnvQr7tAFHSZXLfbhHzg==
X-Received: by 2002:adf:f144:: with SMTP id y4mr5391618wro.408.1614881611301;
        Thu, 04 Mar 2021 10:13:31 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id i26sm378258wmb.18.2021.03.04.10.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 10:13:30 -0800 (PST)
Subject: Re: [PATCH 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
To:     Peter Xu <peterx@redhat.com>
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-2-peterx@redhat.com>
 <b0583d47-43ba-6077-9d93-074cd34993f3@gmail.com>
 <20210304155019.GX397383@xz-x1>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3e96f127-5dd0-28f7-4b86-1bf4e623bd06@gmail.com>
Date:   Thu, 4 Mar 2021 19:13:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210304155019.GX397383@xz-x1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

On 3/4/21 4:50 PM, Peter Xu wrote:
> On Thu, Mar 04, 2021 at 10:22:18AM +0100, Alejandro Colomar (man-pages) wrote:
>>> +.BR UFFD_FEATURE_THREAD_ID
>>
>> This should use [.B] and not [.BR].
>> .BR is for alternate Bold and Roman.
>> .B is for bold.
>>
>> (There are more appearances of this in the other patches.)
> 
> Yeah I got a bit confused when differenciating those two, since I also see
> similar usage, e.g.:
> 
> .BR O_CLOEXEC

Yes, these are minor imperfections that got into the manual pages, and 
we don't remove them due to the churn that it would create (and 
possibility of introducing other bugs while doing such a big scripted 
change that couldn't be easily reviewed (thousands of lines)).  So as we 
still have those lines, they tend to confuse.

> 
> I'll fix all of them appeared in current patchset.  Let me know if you also
> want me to fix all the existing uses of ".BR" too where ".B" would suffice.
> Otherwise I won't touch them since I can't say they're wrong either (I think
> most of them should generate the same output with either ".BR" or ".B" if
> there's only one word?).

Our current non-written guidelines are:
We are fixing the existing ones as we modify code near them,
but leave untouched code that is far from what we are changing, even on 
the same page.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
