Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B57DC33A813
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 21:54:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233389AbhCNUxv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 16:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230441AbhCNUxp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 16:53:45 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 373B2C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:53:45 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id r17so62899120ejy.13
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 13:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i7Ixiiv2HwTfefivIDHW0RbUnPqfoMkG6EGVCXNxf38=;
        b=YRDyHa7ZNwJFrd8J3UWjsZSznqJ9VANUfNcyLNGWGwdoOc95p2VKapgk34iT8T9z2y
         S29KJuicEfEcnp+G6fcTTLSQbQTZYqADS7DIwsxttdglDSYbkFT37GYyf6ZYbcVUzDIM
         gBc4vCGjBsgCZqQ3ZC6eOdTf+vdXfpcg+a9WhgqXkpu0J+JCzlicQxhfZn6W/ljsKHBa
         45qwgb1YWZdDk8vKptcQYzBiFzXFsYx7eQBcQhNvaP/3vs0uKxZfECd4SRG8npZte3U8
         7CjwtQpDEbo0jLJXGVQBPIG434p/IVyE9PTD5eNxKYx1q0Ewb7xMkHUBhDWj8dhWDTng
         Phrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i7Ixiiv2HwTfefivIDHW0RbUnPqfoMkG6EGVCXNxf38=;
        b=j8im+VnZ41/NkBJ146fQrX78mwGxyqb1QDEW1BiqJlIRTY8XhdQZPoLsEj64qaOZww
         Mtb3w2gkpiAPCwDskpLjHFkkPax4I3uP20pJrgE8oOUSlLVsqIbarsloJyrk/QcRire1
         jGvcwNgiV993qotsGpQlWBQIHDRlzOm6/0Djg+cYNahcwZS8qf+zSVHeS55PZ8OqE99q
         Uj0fDai51PueQKdfhqfJt+GlG+u/1Cy8Zi652kGSqmz/LRlNTy3q1p/QwojYvI7ZxQ5G
         G9afusw1da/XBYtxHO3wEl7SBi8Q/2RzNT9SwySkHKqlyp0P/EcQbV2Ovx09bLKDkgKc
         LNXw==
X-Gm-Message-State: AOAM531x4H6N4Or6rG1LBj4pPAuFoyB8Cqy6mRE5DFHF4S+9tWC4tuQk
        hNmT8oktyupkK7qA4DPA8Frx1hqcLGw=
X-Google-Smtp-Source: ABdhPJzHkKk7FBQCo3egxPoHIJFvxpJcuBrKikU49g/mOkxP+SX1R3sN3LBrfLWDft7p/+4dqukjbw==
X-Received: by 2002:a17:906:d157:: with SMTP id br23mr20771879ejb.192.1615755223981;
        Sun, 14 Mar 2021 13:53:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id q10sm6728402eds.67.2021.03.14.13.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 13:53:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/24] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 5)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
 <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8d280f7b-034a-3b91-5f50-60bf2cbbcaf3@gmail.com>
Date:   Sun, 14 Mar 2021 21:53:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/14/21 9:51 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 3/10/21 7:31 PM, Alejandro Colomar wrote:
>> This fixes up til trunc.3 
> 
> trunc.3? I'm a little confused, since the last patch is for swab.3.
> 
>> (I didn't send you scanf.3
>> in this patch set because I did in my mom's computer and forgot to push).
> 
> :-).
> 
>> When you come back and merge all of the pending patches, I'll send/resend
>> anything that's not in sync anyway.
>> So don't worry about missing some of them.
> 
> I've applied all of the below patches.
> 
> Thanks once again for all of this work!

I forgot to mention that you seem to have made a local fix for a small
white-space bug in sigwait.3, but didn't send me that patch. Consequently,
the sigwait.3 patchy didn't apply until I made the same fix.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
