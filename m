Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38B76209A60
	for <lists+linux-man@lfdr.de>; Thu, 25 Jun 2020 09:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390013AbgFYHQQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Jun 2020 03:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726149AbgFYHQP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Jun 2020 03:16:15 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72E8BC061573
        for <linux-man@vger.kernel.org>; Thu, 25 Jun 2020 00:16:15 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id cy7so3355159edb.5
        for <linux-man@vger.kernel.org>; Thu, 25 Jun 2020 00:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RXTLhnMbEFbC2vQr3DDjW3vOsWO9yOOBn9D5z6z+ADo=;
        b=lRgmGQuttxat7YpYDDaD4A3Dd929lLt6iXrXF3cj34LG4H+ad390IqHiZSAfV6aOQG
         0qAkduGlG2HNZHN/qEcJnwDJDPYA2E8VvC9Dz+SUQSDiHVerqyZt/OYedZ43stn7wHjw
         EJzcOf/F0WD77fCqEq7TceyEFURBiTN1eEnKpAI9QmrGn6y193JDEesaTaQXvCwz21lF
         o32a3KTskhcQRJeVqTyJC2s0IJIZVO8g13X/sgO/uwhC9jSp4YGm7GdHO9IJLqyfa+jW
         CH0oSRJgFpJo+Pb9t8cFllGbRahWQIfDRlXsHyNnLBvQDn/syvgpGXe365kUHnFTOXzS
         5Xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RXTLhnMbEFbC2vQr3DDjW3vOsWO9yOOBn9D5z6z+ADo=;
        b=duFDMZrcEPFQpKp0EYbhbI44a75Q8tNQ0sf1cYeDcd++R8Ga5arL9hcljPFzf+Upak
         kEKXbM8z/OMgTubC5y1WGpWTga9HLn/8erIqfVC0fwzQA9mDmtAusurVoFcWgFBqnJmY
         xn5VHkhDOWT/PEkDos4pCf3MSlAugSGDWSolsdyUNftN5KYa/GNC1Mcycci+ft72bsef
         3EKm+zpQI/mP8JXQRBcxvpE3ve/gJ8F+cNsBEkVXgNE44D3iysPc09BewsU+Trmq+ht3
         +kh/5iUIIY+3fYhxwkd8MwftqBKzIkBl5qlqYEY6IqSPfn/pA/PbikpZ8c1W2UuC4yI2
         ViLA==
X-Gm-Message-State: AOAM5328Mivev9Qw/fp2Tw/kH7yk+mvSnzYnn7dXc2CsH+ET9QEfk4KH
        KVMtiKDwXvOp3vBWE1yPKchhWvPq
X-Google-Smtp-Source: ABdhPJy4iLkT92LroJFrWKU9zuPr0Zx6nxx4Z3yuIvkhKZcnGX8whQ8kGq8chDMNYLzS6IbdJjTKnQ==
X-Received: by 2002:aa7:c592:: with SMTP id g18mr30823553edq.85.1593069374006;
        Thu, 25 Jun 2020 00:16:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id x16sm4971176edr.52.2020.06.25.00.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 00:16:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] ld.so.8: Explain than empty entry in LD_LIBRARY_PATH
 means cwd
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
References: <20200623225910.1008-1-arkadiusz@drabczyk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <856b0c96-f641-dda3-cfaa-57444b7c561b@gmail.com>
Date:   Thu, 25 Jun 2020 09:16:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623225910.1008-1-arkadiusz@drabczyk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Arkadiusz

On 6/24/20 12:59 AM, Arkadiusz Drabczyk wrote:
> If this was ever going to change the test case is very simple:
> 
> /tmp $ touch libc.so.6
> /tmp $ LD_LIBRARY_PATH=: sh
> sh: error while loading shared libraries: libc.so.6: file too short
> 
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks for the patch, and the succinct test/demo in the commit 
message!

Patch applied.

Cheers,

Michael
> ---
>  man8/ld.so.8 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 9034612..2e98b7f 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -319,6 +319,7 @@ A list of directories in which to search for
>  ELF libraries at execution time.
>  The items in the list are separated by either colons or semicolons,
>  and there is no support for escaping either separator.
> +A zero-length directory name indicates the current working directory.
>  .IP
>  This variable is ignored in secure-execution mode.
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
