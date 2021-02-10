Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A04A317229
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 22:16:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232208AbhBJVQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 16:16:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233545AbhBJVPp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 16:15:45 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB13C061574
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:14:59 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id lg21so6698457ejb.3
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0OOFi/g3xdZI5o7iRP+XOVgMwE1gR1JaUa8X5ryooS4=;
        b=XriyZcruhk2YiVae062M7iYR8j576PnVDEVo92s00AmLQOmeqVj+vEDlXoU5SWVcVl
         rDMyQpyfnll4aSajDErXHKg3v2h8Dncn0ejnCaBZNwd3RD2J5kLRgZfOsBvX4kkp9WIZ
         gLSSfa58EtSzmN3BIlWPnn2zjjlsMLxAKtl2b0wUw4pnFAsUoxsusD3FGEZWyUIFBsGr
         0fasJ2qJzgWF13GTMZFkM+gtUolZ9OzJ0Q6DBXKmW1uLWMHMupn8jdeLScfp/Ua6y3R/
         45XBhZQbgSl/R5DStT93We9r1qT8dunlwOhK9gr7wa+AZCjY2XMBL2HdhEbZMuHl+7YH
         wFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0OOFi/g3xdZI5o7iRP+XOVgMwE1gR1JaUa8X5ryooS4=;
        b=JG49/thqsitNGR3GYQLaj3AusCLyz9OS/YLc+/+Nx3qqdwSmfTAQ6EViJ3c6YSqf0R
         IdZpYM2UYc9eQyXgp00CeR7//R8favn/Hc18TkvRx7Ahi4yfaNMuFuncdNYAMAWzRi3b
         4vn6nSuNVoe+rCu2rwSGkiI5r5SJHA23yTPRT7XR5HVl12oEKyAT9H25mXFvuPtmUHUl
         +sAqdGpXO6+ZiNCkMJLIPsD2Ic5xY/1jNqhc3j4nE8GPqAVX8KyrSWvRxId8mN4W5rkf
         cU1eCoZVJ+pcpVj2FdP4yfm1wEb3Hu4RO58huUZ4E5WSl0iDZyYoY4F1ZrAyG9BZE+K6
         2Bdg==
X-Gm-Message-State: AOAM533RgHdkgg0d/eyEVw7xiRHxx8F6fmkQ0MlO9fekI4xTUGlYJCLB
        G7rYWT6eR/a6hJ2W2Qg8VBU=
X-Google-Smtp-Source: ABdhPJzTK1qVgNdVrhWiaceVJipFIoPMHWzoI9OVDa2BGfv1frtLvY3BzV12LkFFHS/EaeuRHjGiKA==
X-Received: by 2002:a17:906:12d2:: with SMTP id l18mr4808832ejb.308.1612991698777;
        Wed, 10 Feb 2021 13:14:58 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id z2sm2217684ejd.44.2021.02.10.13.14.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:14:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH] open.2, rename.2: refer to tmpfs rather than shmem
To:     Jakub Wilk <jwilk@jwilk.net>, Alyssa Ross <hi@alyssa.is>
References: <20210210174245.17027-1-hi@alyssa.is>
 <20210210181252.pnteiqm5mj3zljse@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6b93551d-c5aa-cd77-c9e5-404b4be9c550@gmail.com>
Date:   Wed, 10 Feb 2021 22:14:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210210181252.pnteiqm5mj3zljse@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/10/21 7:12 PM, Jakub Wilk wrote:
> Hi Alyssa!
> 
> * Alyssa Ross <hi@alyssa.is>, 2021-02-10, 17:42:
>> Skimming open(2), I was surprised not to see tmpfs mentioned as a 
>> filesystem supported by O_TMPFILE.
>>
>> If I'm understanding correctly (I'm very possibly not!), tmpfs is a 
>> filesystem built on shmem, so I think it's more correct (and probably 
>> much more widely understandable) to refer to tmpfs here.
> 
> This is my understanding too. See 
> https://www.spinics.net/lists/linux-man/msg13703.html for previous 
> discussion.
> 
> (Michael was going to fix rename.2 back then, but something went wrong.)

Mea culpa. I fixed it in one place in page[1], but missed the other.

Thanks,

Michael

[1]
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=010a79cd86da27a665346e96ad93945c42ace9b1

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
