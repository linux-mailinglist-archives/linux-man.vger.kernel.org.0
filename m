Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E40E32CF8D
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 10:23:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237444AbhCDJXK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 04:23:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237440AbhCDJXB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 04:23:01 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29164C061761;
        Thu,  4 Mar 2021 01:22:21 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id b18so20316216wrn.6;
        Thu, 04 Mar 2021 01:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zy3rCEIJJQG4D6NTJu5yArmUIakSSBXTfjLBnVaRdVU=;
        b=uoTbi83DK4j9/XXsxbyDakO+8oCrZY2fOPxV4jxI297fTy3LHxVScXr/Tt2Yv9CyzO
         OA3MQD0hHs/YGgZxf/HUqLZFVthg7Bkes08Lg2sGCk20mDCwWezh24Wvb0wmUzjdQFpI
         a+FyShe50aPsvQ88oFw9ISo8ubLWJfrzZJE9KlWq7w/Zei8v6nCoG0PohrxvYl7Rl0Ai
         IVgii1kzmRcvg6wNAYbj5OuI1xvdnbVx5FBXP5/5ACVjWtxdoVx93fARwSwYUmXAf7Cz
         DpnDN2HmJQwGoNMG6Y+U9eoijUIOnvz3kJRfXwD6i8VJvQUeyqF4Is4Djkp+YOZPNChB
         wFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zy3rCEIJJQG4D6NTJu5yArmUIakSSBXTfjLBnVaRdVU=;
        b=uFK6VEt3QX1o7WGfrf+KPaEBJ7KJrTgSAKHumB/HsVVU4QKr1x2qp7i7Zqay9wTB9X
         qWASuEinv1n42VCQtdCf5DWHyIEo1T0QIOV7QwjzN3GZVJlaD6iQJaeX0E8hdpGpF64b
         eLwR17lK/GSlyFpfuFkbIb14f1Ru48tywgPBMjsti/PiGOeJh1ndbnYEj0IxFJGhHnVh
         9ZVzwgTZvbqHZjMe24T12EgXeq2e0mkAc+sIpPOnb1vLJY0L/lmQNsidifzJ1jVbUygK
         zwtHiZ8BNtaOa6u2IblhWWEoBVde2cfA0NzSztJRsU/8GojTqEUyASGWQpUWQIdkfJ+Y
         R//Q==
X-Gm-Message-State: AOAM532Um2mu6Zc9eHGX8PiwP5hF5/xNw8oN6hSezXi5VITZpwaSIDnR
        1zqhpZSzAoxzxiFzl7HPq9LN+hlLWov+yg==
X-Google-Smtp-Source: ABdhPJwx7gh+SFafQsixrLEy3kWyFdiEfxzd35REAZ85Mbu2PEdy34VFv94D1EL9pvWYRX2NfAa8Og==
X-Received: by 2002:adf:80e7:: with SMTP id 94mr2954891wrl.5.1614849739999;
        Thu, 04 Mar 2021 01:22:19 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id p10sm21724284wrw.33.2021.03.04.01.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 01:22:19 -0800 (PST)
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
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b0583d47-43ba-6077-9d93-074cd34993f3@gmail.com>
Date:   Thu, 4 Mar 2021 10:22:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210304015947.517713-2-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Peter,

On 3/4/21 2:59 AM, Peter Xu wrote:
> UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>   man2/userfaultfd.2 | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index e7dc9f813..2d14effc6 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -77,6 +77,12 @@ When the last file descriptor referring to a userfaultfd object is closed,
>   all memory ranges that were registered with the object are unregistered
>   and unread events are flushed.
>   .\"
> +.PP
> +Since Linux 4.14, userfaultfd page fault message can selectively embed fault
> +thread ID information into the fault message.  One needs to enable this feature
> +explicitly using the
> +.BR UFFD_FEATURE_THREAD_ID

This should use [.B] and not [.BR].
.BR is for alternate Bold and Roman.
.B is for bold.

(There are more appearances of this in the other patches.)

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
