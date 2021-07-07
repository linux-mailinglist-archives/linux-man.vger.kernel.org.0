Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 062863BED25
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 19:33:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230335AbhGGRge (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 13:36:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbhGGRge (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 13:36:34 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A94BC061574
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 10:33:52 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v5so4005518wrt.3
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 10:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SE/Tsj48+w/Yv45yOwgwMWJHrjaKA9iBCuBtie21iR4=;
        b=RUXgJYiKqlq++6tHKk1ZMeKIVsQ76pYX0QA0QSfbYLyF0LVPdqVSA5HytW3NQ0DnOj
         nGAy6O+zaP39hgEr6RRB/TOg2fh5Tw2/hcyr9pwiKqbhWvynbNz9G8hQlQ20eKBalzLd
         BIAXJZC2PCRVPJqKNFPrp+F+pDs/h/NmHc1fxKhMQaOxG+EsadcmF4+stREOm/JxynGY
         6vb4fG45O8Fv1i6/QVM3uJxah/vGuaN8qtFOk+4ZNbdgG6j/z6oe6QWlmdhb04lIQBfy
         PTOGsOJBm4CAg0Lm+tYGLk80YZ3PxAZBpjBkIxaYE6+KAHdJgmsuEXlBEmV7xdocHllx
         Q0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SE/Tsj48+w/Yv45yOwgwMWJHrjaKA9iBCuBtie21iR4=;
        b=tWCb/EOkD2gtKrlRXa8BZUgBK4CNgCb/VINlfpe+c9c+8yZ7S2HVbcRyVUVzmbTnNN
         66dIvnH70opbAzJl05OuTKKqiNgxMuWSEf+ZUncQR+1oDJ/odB1EXLssbBy1MM2zOHb7
         dwQcddPUae600xUm/C8INPyFjLHjajg4TBZnGlmJop2FdO0sXBEOIJbg98QS2zTdnfOV
         i4VdcmHSr3DqgZ+GSSBxjRCU0KASEeLs8arhM9ASIXTzxdTKepwQznyFEhkGZgdvlzsS
         6zr6MqrOWCKjzs8TdPX6WyUftZSB/a5UsrzTzRiODfWgLheqjqT1NP8K71u//cKFTrNy
         MoOA==
X-Gm-Message-State: AOAM533G1qkjJZ2ZAmuqg9ZT4+Zk1Sy4eSeFojbNT7+34pFXtOR0Uo7U
        Da5Tt2L1sblL77F69PXHiVk=
X-Google-Smtp-Source: ABdhPJyPXCnyC/FXJdq7BOA79ua9qMnWrLHTdkPKhEdb1rwRWfwxkcYr2CP3inmj4KQFZjYLfm6dgg==
X-Received: by 2002:adf:e40e:: with SMTP id g14mr10603191wrm.413.1625679231319;
        Wed, 07 Jul 2021 10:33:51 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d17sm20574341wro.93.2021.07.07.10.33.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 10:33:51 -0700 (PDT)
Subject: Re: strlen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Libc-alpha <libc-alpha@sourceware.org>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <84867122-ec74-b87b-a459-3e7178ffc6d2@gmail.com>
Message-ID: <8b0914da-0413-e161-3835-c43ed6d0042c@gmail.com>
Date:   Wed, 7 Jul 2021 19:33:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <84867122-ec74-b87b-a459-3e7178ffc6d2@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/7/21 7:23 PM, Alejandro Colomar (man-pages) wrote:
> How do you think this should be handled?
> Adding a line in NOTES for every such function?  Adding [[gnu::nonnull]] 
> to every such prototype in SYNOPSIS (this might be too noisy)?  Else?

As an example of how man pages could look like with the addition of 
[[gnu::nonnull]], you can have a look at this manual page of mine:

[[
...
SYNOPSIS
        #include <alx/base/stdlib.h>

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_callocs(type **ptr, ptrdiff_t nmemb);

        [[gnu::malloc]] [[gnu::warn_unused_result]]
        void *alx_mallocarray(ptrdiff_t nmemb, ssize_t size);

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_mallocarrays(type **ptr, ptrdiff_t nmemb);

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_mallocs(type **ptr, ssize_t nmemb);

        [[gnu::warn_unused_result]]
        void *alx_reallocarrayf(void *ptr, ptrdiff_t nmemb, ssize_t nmemb);

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_reallocarrayfs(type **ptr, ptrdiff_t nmemb);

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_reallocfs(type **ptr, ssize_t nmemb);

        [[gnu::nonnull]] [[gnu::warn_unused_result]]
        int alx_reallocs(type **ptr, ssize_t nmemb);

        [[gnu::nonnull]]
        int alx_frees(type **ptr);
...
]]

Source: 
<https://github.com/alejandro-colomar/libalx/tree/main/share/man/base/man3>.

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
