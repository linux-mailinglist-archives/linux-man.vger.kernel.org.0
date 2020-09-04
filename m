Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DE2925DD0E
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730771AbgIDPUp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:20:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPUo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:20:44 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D0D8C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:20:43 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so6425088wmb.4
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Dx4RPjuEsYECpbHCoHZhHrEP07kUepcObVgFosgDVPU=;
        b=k9kOX4bhdGh/SWw3KA2sLPwGns/P6OneNw2qsOE0D/5WcxYUMPJKKXHsCUk2EptcaF
         ydWpHai/P/GGd1i0kQoEuftsHbrB+GndB/1IMVNJ72QBziX1sLsMCH+10iqPAl6xAsBA
         bVEytcf1aPXxvZY8iP/PMwOuY1qkcamBjd/I3d3C6+zR1WVB462VE6nTGhAn4/OqW/3I
         kVLPzpNVweCZrlY45suhSq5SayhHFjIbxJ+SwGnzNRCocS9Xkuhjm2qQGg1sUIUUW27c
         2iLlQJrUeAbfuRJFzCyZ2Rhwe44CAzmfdTGujDRS/r/DysleJQVgTIFmNRAMGTjjEjI0
         IR0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Dx4RPjuEsYECpbHCoHZhHrEP07kUepcObVgFosgDVPU=;
        b=ncpP4Ks946APyL9IqPINvsdHtZ7ijPwcuScn+wVWVJLp4JXjLJwT7W67NqJFaImgG+
         qr7da+v5AgDgPOnYCUSpLzOPHFfnXnpEfErq27GREh72oUNhYUUrdn7EWu2KKEk9qaEP
         1GtSsGj2pVMnKaTA6ZG2vxwBXzoyjrziGVPolmODY+Blka6Hg8xnQc+vB+TIt1Rkj0xx
         F1mKLxjvH9QyGOjVZslM/ZM6oPU0YFsKDm9BPZyObgTvvfaSOaqKAc7Ps/Vmzjwtnm0K
         ZS/QceRU+rSQhvzfJk2qiuAZoaEV+LkMcXM/G6SI5BXokCc2NfQUsDe9YzyDq6F24EMW
         xGeA==
X-Gm-Message-State: AOAM5311bvIqm6DIxif98NkyCznfXEpD9jgjN9/S7hGkLPFucH8br48f
        0rev03MS78caw0Cs8QIFCGxbg5JtHDo=
X-Google-Smtp-Source: ABdhPJx1CiRJXBcQqsg7BGa5mu0DWghgF5nVoaDK3GRKs+HwyCaBgFeOv9DgW9sMtu6742JvziwYHQ==
X-Received: by 2002:a1c:c90d:: with SMTP id f13mr8296901wmb.25.1599232842299;
        Fri, 04 Sep 2020 08:20:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id h5sm12448909wrt.31.2020.09.04.08.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:20:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 15/34] getaddrinfo.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d672dbe9-977d-c9b3-9a36-e5ac8f4f4a9f@gmail.com>
Date:   Fri, 4 Sep 2020 17:20:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 3:53 PM, Alejandro Colomar wrote:
>>From eef612c1f5f039421bd0fa167e1972e98d934bce Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:46:06 +0200
> Subject: [PATCH 15/34] getaddrinfo.3: Use sizeof consistently
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

Patch applied.

Cheers,

Michael

> ---
>  man3/getaddrinfo.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
> index 8aa544789..158fd2e31 100644
> --- a/man3/getaddrinfo.3
> +++ b/man3/getaddrinfo.3
> @@ -679,7 +679,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
> 
> -    memset(&hints, 0, sizeof(struct addrinfo));
> +    memset(&hints, 0, sizeof(hints));
>      hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
>      hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
>      hints.ai_flags = AI_PASSIVE;    /* For wildcard IP address */
> @@ -775,7 +775,7 @@ main(int argc, char *argv[])
> 
>      /* Obtain address(es) matching host/port */
> 
> -    memset(&hints, 0, sizeof(struct addrinfo));
> +    memset(&hints, 0, sizeof(hints));
>      hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
>      hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
>      hints.ai_flags = 0;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
