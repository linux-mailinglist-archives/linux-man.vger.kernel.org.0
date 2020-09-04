Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5903225DDEA
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726032AbgIDPi5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:38:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgIDPi4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:38:56 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B4CC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:38:56 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id c19so7764937wmd.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gy7c0gszVdvYo8Wa4sTSMUNXOcaKRbjqnFIlUswtfDA=;
        b=IoNugXojoEfYsq2QkbuUO9Pc4c7lXPmrdnMYuFStiIS0p+i9ewtc+PJh1GGzlXEtqu
         omqBqGD6yppe4CbRu+APkj2kuhC/1rqwAAyjy5SW3lOAIIrA3bYt72iQ54V4+zSCQ7KD
         4ZxRHQkhAPv3goXqDrxRPZLErhRNn7dBtuUGAY6ZYN7A5drPXwYQUjDjn3YcnveH2xZp
         dUGe8Vvojd7kc0iSiOG8XkvgxTu23JLVFHKMpvq+VdWtPbTBOmEdFzw1m6G2bDo9rB6b
         NE8gtLfZCCvvCBhD5Ti+6XTjgWbREkkcZXevMhtyEhH2cQxRfFnVCHsVSnSuFZMsZsIA
         gOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gy7c0gszVdvYo8Wa4sTSMUNXOcaKRbjqnFIlUswtfDA=;
        b=Lawkq89aBM03iot4wSYtTPiXp/chkrhK8rj83XHN3BJNkcoapC7aveyH/wJYGvdbpj
         BTtOlt6S66RvgnnMSk6JSXWU/eAAxygRXVfvUnqN8hilRcyJDeigbPVvpAtChymoupaB
         oD1YfPOjbPpSV1RRawozmfR0r5ziA8q2tznLMeQnCgp+FacL4cUn5ByWAsb+zASUUCMa
         OQP5B7uTElbOohNBBltI7BoEWMZ71zX2SOgLbmWqOxRrFCGO5+hNfuvXC5Qr4j5yJB87
         UNTkh0DtFMU3bj5kAEERf8mrTboDPukCcaY7ECAMopYm+paA5dAqQr7Iap7fUR8Gz44f
         tPGA==
X-Gm-Message-State: AOAM530/sMT5dlRCWTohTfDU+saeP8CNbHcDUTKXJPJmAMliCWCdXsIG
        to8Ds2Yjl/k5171zl1Z/b9s=
X-Google-Smtp-Source: ABdhPJwsO/e0myXBK0NPdaTSIlT2So6a3h2jWy3HOX9S4CeaAcLyGkMxemXkg1tmYrP0Ho9e5GNKEg==
X-Received: by 2002:a1c:234b:: with SMTP id j72mr8312988wmj.153.1599233935159;
        Fri, 04 Sep 2020 08:38:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id i3sm11841892wrs.4.2020.09.04.08.38.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:38:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 31/34] fanotify.7: Use sizeof consistently
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
 <1d9ef046-8c69-1e40-4f7f-5fbee25aadbc@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3d1801e5-6c83-3a90-1bd7-25b6d33e0607@gmail.com>
Date:   Fri, 4 Sep 2020 17:38:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1d9ef046-8c69-1e40-4f7f-5fbee25aadbc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 5:05 PM, Alejandro Colomar wrote:
>>From 75af70465a8e60aa1d96b32d843b074966b7a878 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:58:14 +0200
> Subject: [PATCH 31/33] fanotify.7: Use sizeof consistently
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
>  man7/fanotify.7 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index a7d60b2b9..29c818027 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -808,8 +808,7 @@ handle_events(int fd)
> 
>                      response.fd = metadata\->fd;
>                      response.response = FAN_ALLOW;
> -                    write(fd, &response,
> -                          sizeof(struct fanotify_response));
> +                    write(fd, &response, sizeof(response));
>                  }
> 
>                  /* Handle closing of writable file event */
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
