Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730B437EE8D
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 00:59:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbhELVwc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 17:52:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390223AbhELVFQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 17:05:16 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CE6C061378
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:59:19 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so3701667wmq.0
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yOB0gw7EwSb9SFYtB613jqPSOMZFCk4bHevBL+4HlQg=;
        b=vMG1dTplZmPPSfGrIoZTxb5e5yG5kqwVqrDmYZAXxh5tXQ9hUZ/kS6xE7VCBNJihmJ
         BsrjhcQ3IwPOzFdXFSkR+NULTqsmmhiPlPphfPCFfvmI6bXuE9X5comj8nTCbhETPtLi
         bnjsUqHyJxOp9gxHamXuVJngOtve2Oh3PvEaKBqQa4RsDeAjoNgwxhFGRZV/dJTo+3hL
         IJSx4qo1ckVEr3F/B2Fc7HLTi9JSKCMM1IrfZHGGVhIMVl+yffIBx/8pLaY9XlJs/eEj
         Xx9GaKg8OC5w/y/lT70SvDAvpfKm/OQAEQVO6sl7U3ZMvfCkeYxwXHYpFFMu/6ErA8i4
         rpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yOB0gw7EwSb9SFYtB613jqPSOMZFCk4bHevBL+4HlQg=;
        b=o68S4vJSur5SLmmaagTlcP/zIWRcOP3ZQGHcexymNyZhV0UAov2nUXWeV4elRxXf+J
         t5iwWXoQFdJ5hG3YvaMzF1vXVKgQlw5OTvk2IVCdJjlylt1c3372wBFSc0DkeZKG7ZIK
         hHInN3+ZbZOC7wuWeGqi44r+/NPy91lq0X37++MSitQghiyCzcXZrJeqKrWJKEUdoWPh
         NLqR84NCNEcJs6pBDa9FwRTP+cyDy0Qniyp81QvxKx5qfm/nVYZiVhkL1t4BtO/6ndLg
         0jpOuMsMiVZWDLi+f/l/SVJ8kjBAMMeyo8jnhy5O1Q6DD/0p1eVr3Wh05gHJbS3LAvY6
         PPhg==
X-Gm-Message-State: AOAM5305EVaiQyJJXTENhb+HpuKmz7Ev++3UeJBQfdvjPZmmWMgPItiH
        mSciZdJ6LTBZIHmMoLzn/QrbMudsD70KBw==
X-Google-Smtp-Source: ABdhPJyIs7HajzV/E7LTIMHHt2wQbIzsHvWxtW/NYOq11D4HBC8hh/8kY7s6Seo4BivKcyB7rSqc1Q==
X-Received: by 2002:a05:600c:8a9:: with SMTP id l41mr329064wmp.73.1620853158066;
        Wed, 12 May 2021 13:59:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t8sm660705wmb.2.2021.05.12.13.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 13:59:17 -0700 (PDT)
Subject: Re: [PATCH v2] MAX.3, MIN.3: New page (and link page) to document
 MAX() and MIN()
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210512204311.19399-1-alx.manpages@gmail.com>
 <20210512205615.19985-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a073e182-6876-f28a-ff81-0148272d3bbb@gmail.com>
Date:   Wed, 12 May 2021 22:59:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210512205615.19985-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/12/21 10:56 PM, Alejandro Colomar wrote:
> +.SH DESCRIPTION
> +These macros return the maximum or minimum of
> +.I a
> +and
> +.IR b .
> +.PP
> +If any of the arguments is of a floating-point type,
> +you might prefer to use
> +.BR fmax (3)
> +or
> +.BR fmin (3),
> +which can handle NaN.

Would you move this to a NOTES section?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
