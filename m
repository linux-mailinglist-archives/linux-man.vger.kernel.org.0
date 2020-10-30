Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FBE32A0F17
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 21:06:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726991AbgJ3UGB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 16:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726704AbgJ3UGB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 16:06:01 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9118BC0613CF
        for <linux-man@vger.kernel.org>; Fri, 30 Oct 2020 13:06:00 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k125so3269590wmf.0
        for <linux-man@vger.kernel.org>; Fri, 30 Oct 2020 13:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G0r5kiZa5EgGeMCiEjecwqT7ANdW6+tWpSi6TJU8+jk=;
        b=oXcs1zPoFxeIyoSSwUIIEU9C648VcZWs1aRqGX0rGz7AfIDFQC+mBbgMbolsef5/bx
         6aOTtOdNcyhYK5DO7acAttJNr0JyTYDb16L3cR4a+Yd3KeZi9iK2ADPzR9KPek0jyYXp
         FVInTmnGgFqtE4zL4Y2jqNSbKKQxVI0/xDR7GGE6Quderr2fTQejO/nKCrFn2UX+Gix+
         olbb4BPfAuolun87JPHVDCODCWcUrOxr821w7YUCNE9Yuc7296wg5n4qpqcc46x8soPM
         ntGY9+cOpIsXPi14tf2PLDsCsdPnheO9tXfaq2SxNOPtb8202EA5UVdVu8mYABKWqJXA
         8DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G0r5kiZa5EgGeMCiEjecwqT7ANdW6+tWpSi6TJU8+jk=;
        b=NxAptgXzri4y2XOeOnaLN6/cE7vkD2BnkKDYtQhEU5kmUaxXpIOMiQqZbggPUXne+v
         jRYNjMLIKV0rJWkI4K1BuqZ7GoZ5M3DFPCyJRQ+1f0cH3JxjRWUUX6hdKt+5935pig+z
         NeC/yV5ug5c2sCAGwCeRu5s3dCfRR3yJcFVXXbQfvkTCgvKazlP5rX89Ee2Gy/KOldOh
         P9wqUf7NF37V8GKvmMCRcZUDcYRou2NRY416qaZLQdno+rizHVlIcfJUaf7OQ/crH/EJ
         0un8NR+8fk7YreN+nZi8lD8of+8eXIdp7W6VkpUjXLosCtfJ/l2OPDmRIqvtbFITeoE7
         ePpA==
X-Gm-Message-State: AOAM5339a0s0JdUFL+ZDhKIYJqBY6216ttKJsMTfDsMtZhAniwaAsmB7
        fnHTos22xXrhzOv0YsRY6xiAUMLOg7U=
X-Google-Smtp-Source: ABdhPJwlQWbU1pDW9N4V3maPTCFR8Zb799rVgOMmWT+NNIWuU2DxyM9rZANnDmAz/LhYxyBaYH42Yw==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr4526035wmf.122.1604088358964;
        Fri, 30 Oct 2020 13:05:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id b7sm10973952wrp.16.2020.10.30.13.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 13:05:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] futex.2: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201030124921.36716-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cfc9e789-aa92-4b7a-fad8-d0233c7d674a@gmail.com>
Date:   Fri, 30 Oct 2020 21:05:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201030124921.36716-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/30/20 1:49 PM, Alejandro Colomar wrote:
> That comment wrapped on an 80-column terminal.
> Divide it into two lines.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/futex.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 73de71623..538001e1d 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1816,7 +1816,8 @@ fpost(uint32_t *futexp)
>  {
>      long s;
>  
> -    /* atomic_compare_exchange_strong() was described in comments above */
> +    /* atomic_compare_exchange_strong() was described
> +       in comments above */
>  
>      const uint32_t zero = 0;
>      if (atomic_compare_exchange_strong(futexp, &zero, 1)) {


Thanks. patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
