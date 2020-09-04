Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3511525E09A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 19:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726521AbgIDRPr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 13:15:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbgIDRPq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 13:15:46 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCB66C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 10:15:45 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z1so7498853wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 10:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fLIKteh/rwGfjkRkt0Du7ljy351vSaZpki8iUP3SDfo=;
        b=Ftp5R1NOIx2kJLAqGlLtOTeygFgj5xJJJclT7lphTZdkZYLIdzP5nkWTvx5FwlNfJ2
         yqoZFn6rpifSeSRudpCy7PydPl9EB3IPV2+/sstaulXyVBGUULlzCbYp8ygS9dWchFZj
         eVZHzMNIOCgc+FkIxaWAzWmSCq/5Zp4saPceODYknVUWOIIIKL72QhcPhKG+X5Ki5Mz1
         pC20S2A3dvuxwmQcrr/dueePu1zPHjK9fr6GD/TNIMusji+0c/psI3mo+aslkyW0uYOR
         A7iN9DAXbJdZpL63QAAjjjr33wTOGlUyL1JNOh8xY0M/CEYTNFav2QGrbxE/SdwRnGB8
         nSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fLIKteh/rwGfjkRkt0Du7ljy351vSaZpki8iUP3SDfo=;
        b=rDAxDzal1b3ciChvWHwubW4un4JdRPGT+c6yLx8eUiGytOc5wHepkaxGpSm9LSjL/I
         8g1Ibcc78vlUnxuRbY5mei/zsVkipolpMqv7CZuaMUxUgnc1Yt5m5jFpBu7BmebEKP91
         K31R3Uwo1HPzBdSv7UUwoJQZLeX8gcDbzoiIQPmnYE2Svwn3RmugAN544QgyvtJr9hO6
         tNZw6zCnHImVCQW5hAwmTVPGXWyPMzFB9ZFyJfm69a3aQgipJ2dH1v39ljMZsh9MEun+
         Qj1geqbSSj7z0hvFTtYgjscdaxxW7K0QAVFjd67Qtd9VL+UGVrCHVV7MdkQfb7PS0MIQ
         UJIw==
X-Gm-Message-State: AOAM533ac8ndAiPTENbfNhl6jdbEJpOqNDgbdObu1V5MlUF6V+LZqrMq
        qfkmYmtO4rrfS7jeCtYcecQ=
X-Google-Smtp-Source: ABdhPJy7PIN55hoBekVGmkllvpL3h2Jtjf8uyWVzMBFg078PLxIWKbKxYwKnuBka2/6Ag6pEeY57Sw==
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr9090313wrx.16.1599239744497;
        Fri, 04 Sep 2020 10:15:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id v128sm11644172wme.2.2020.09.04.10.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 10:15:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 30/34] aio.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <93a1103a-8964-d213-2892-5dc7fe8513f1@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08318f8e-8129-cec5-69a5-c234703fcd31@gmail.com>
Date:   Fri, 4 Sep 2020 19:15:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <93a1103a-8964-d213-2892-5dc7fe8513f1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 5:04 PM, Alejandro Colomar wrote:
>>From 33a09662331be9666c2f69dc60a792d9deee761e Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:57:28 +0200
> Subject: [PATCH 30/34] aio.7: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/aio.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/aio.7 b/man7/aio.7
> index dd05dce83..d3ab3f422 100644
> --- a/man7/aio.7
> +++ b/man7/aio.7
> @@ -311,11 +311,11 @@ main(int argc, char *argv[])
> 
>      /* Allocate our arrays */
> 
> -    ioList = calloc(numReqs, sizeof(struct ioRequest));
> +    ioList = calloc(numReqs, sizeof(*ioList));
>      if (ioList == NULL)
>          errExit("calloc");
> 
> -    aiocbList = calloc(numReqs, sizeof(struct aiocb));
> +    aiocbList = calloc(numReqs, sizeof(*aiocbList));
>      if (aiocbList == NULL)
>          errExit("calloc");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
