Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA6BE3169D2
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 16:13:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231709AbhBJPMm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 10:12:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231690AbhBJPMk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 10:12:40 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC2FEC061574
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:11:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id h12so2986482wrw.6
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YSc9QGbnBZfRa4ooutRERRStjiOrFPcs953nG48phXw=;
        b=eAQHFU/xucuP6fIqdD7E2wJgO2SevHoAIObdVcb7C4mpceNRjsom732W/n8V1gYjdH
         KVq0NW31yPf+4dyU4cwQRtrpes/PCedRlam2DJaxrROF/3TUfdnCpPg/dE6igxwtbDz+
         0oYn8ZgwQPGMMBYUFItvyne828IuE5p3rNageEqMMKt8h8NjcTrTRfMdQzthFEuGTilu
         ul5eU64LLlKqmhXlLV8YTdV207YCSLompsSv8uxI4vui6f6iVpcfqCCqRcEpu7uqj8k2
         cFXtnWHuqZMUVyDYPUX1ZdIroKH1/e5yqkm0IoCjhsqCs1dDT83IjPqCk6PA79Q7mFEP
         4r8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YSc9QGbnBZfRa4ooutRERRStjiOrFPcs953nG48phXw=;
        b=Zkc2IeZxo8A+f6Cs1/LcvrnWF4qMbUr3lWaY26J+Y71xiyQ/wT1QdMUDwQafYaxcp6
         SC9vBRpxi4jTuXc8ycnmwk5lKSsUHIRZBkwKpeb8hLU81utd/35zb/Ip7+ILc57XbYr7
         YBwFxTdaLfHy3rSA/92bUfcBMIXjp+1Ske4JyrwOFIqrfjqgjGwWkQ09HiFgUCj9nH/a
         IXxlQ4is2ogZTGQ8t3sNS4/MAWuDjscJY4uRPUagsykEHyRM/2xlZ9ZE1LtzKt6MiQDV
         tJNDDuzak10bj8EHvx4EaGM0xaxJVjsVt0ezVaz2DowVPYjDJeLBJXIdNujeIwswpvwF
         4eKg==
X-Gm-Message-State: AOAM533olVF/3J0w5QcKJs6dbEtTS6dWqOcV6ilIc1X1geSRh/37JASp
        HkgYiTJkw3kfbbiV4Ab4f/M=
X-Google-Smtp-Source: ABdhPJyOQgRhaLkSxM+EPjJ8BlwxT7EJjL/CiKtjXZuZgWNxgWkICo4xDLPkzHYmReLdHrAqOXPyVw==
X-Received: by 2002:adf:dd83:: with SMTP id x3mr4109496wrl.421.1612969917648;
        Wed, 10 Feb 2021 07:11:57 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id m18sm12656488wmq.1.2021.02.10.07.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 07:11:57 -0800 (PST)
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of
 STAILQ
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
Message-ID: <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com>
Date:   Wed, 10 Feb 2021 16:11:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[ CC += glibc ]

On 2/10/21 4:06 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> When I refactored queue.3, I found out that there was no documentation
> for SIMPLEQ.  I didn't do anything about it because I've never used it
> and didn't understand what it was, and more importantly why.
> 
> Now I found out that it only exists because of historical reasons [1],
> but it is identical to STAILQ (minus a missing SIMPLEQ equivalent for
> STAILQ_CONCAT()).  So I'd add links simpleq.3, SIMPLEQ_*.3 -> STAILQ.3,
> and add a paragraph to queue.7 and another one to stailq.3.
> 
> What do you think about the following?
> 
> Also I don't know if we should encourage one of them.  STAILQ seems to
> be more complete.  What would you do about it?

BTW, a suggestion for glibc:  glibc could simplify the code with things like

#define SIMPLEQ_ENTRY(type) STAILQ(type)

It would make it more obvious that they're the same thing.

> 
> Thanks,
> 
> Alex
> 
> [1]: <https://gitlab.freedesktop.org/libbsd/libbsd/-/issues/5>
> 
> ---
> 
> $ git diff
> diff --git a/man7/queue.7 b/man7/queue.7
> index f92887a36..c3facafd0 100644
> --- a/man7/queue.7
> +++ b/man7/queue.7
> @@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
>  Present on the BSDs.
>  .I <sys/queue.h>
>  macros first appeared in 4.4BSD.
> +.SH NOTES
> +Some BSDs provide SIMPLEQ instead of STAILQ.
> +The interfaces are identical, but for historical reasons
> +they were named differently on different BSDs.
> +STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
> +For compatibility, glibc provides both sets of macros.
>  .SH SEE ALSO
>  .BR circleq (3),
>  .BR insque (3),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
