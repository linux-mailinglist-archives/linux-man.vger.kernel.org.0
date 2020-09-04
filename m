Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A50BD25DD1A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:22:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730237AbgIDPWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730817AbgIDPVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:21:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89921C061263
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:21:36 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v4so6424856wmj.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nohNUR/tMTryEWXGY+NenLzFoWSVUihyujDwWf65whs=;
        b=mFkc8rKGArEUHlVyzmn3MmjOev8a2II0ojq2sZDfHeYaZnLeUrO7Rr9yKmOD1rvszB
         EgjgNrHTtEO78okHcWtikUI0RGL0jv838C33PB3dgPBU9lfPOaJqHBwFvEhspgotvIVl
         ZPXQtPZRMc6uLWeLmKPmfc60RW4bm1j3FjUJfJxRMwAnuyN8LA+BzR9qB/telEDFAMo5
         0AqIu3jKtpw3NDnCoH6xgr3iYW24FI1+56QChdmoZNZyxArW3nrylvGVVWlsQZKMTWvk
         HRhE3ASDbqnTnbOaVi2q6cqDxAVv/OofuFdSXwQso2/p/SIrmgPMkov+cn50ZVXgvPTI
         sNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nohNUR/tMTryEWXGY+NenLzFoWSVUihyujDwWf65whs=;
        b=INKzsYruy+OtwaciOH0OH/A5JHr4XX8cLENjnBEVvqqk9idTntn48yf9eOjDXo67NO
         Exzeb+NvLfkGWwWY/ih5Y//Up5usqRFTp1oUTuFdL0+9JyS8Rv9rQAnM4tps2E30iMdj
         C18tKIqN+OjY9IuKN+dZY9fgOT6nczMsJbNfQRGgsWDclTgtxm0mBxlxe4mqVhKRtJW7
         I52PwMYqU2T4EFPfM1bcM3E3sGGnl4F67IKOlkRMFu/dm1Q0iKjbCsXcv8fbfPP0MJ/N
         kJSBIb5s5VzWGsgBSzKwkgZ8Z9j1VUPGrdFKvS62rLEGCMg8aOatMxr+EvjPtS/9FIfZ
         ED6w==
X-Gm-Message-State: AOAM532t3WyTWEDTabLaUo8Rh9S4HjG2HhzaQ5yL+F2FgNzA8eWGrJPf
        0HOWrUC+BIyfq5YITDg/sE5B4AAdzbU=
X-Google-Smtp-Source: ABdhPJx0gxkaufIyvFfXqk0bRIkZp6OKW0CaDfhaIbHlNHAICAkvkPUunWkjHMU8pWRsSrnxPNgX+Q==
X-Received: by 2002:a7b:c056:: with SMTP id u22mr8152477wmc.188.1599232895189;
        Fri, 04 Sep 2020 08:21:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id n16sm12840524wrj.25.2020.09.04.08.21.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:21:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 16/34] getaddrinfo.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6c5c132c-d9af-bb9f-5e50-6d003efac178@gmail.com>
Date:   Fri, 4 Sep 2020 17:21:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:32 PM, Alejandro Colomar wrote:
>>From f926f02eede41183aed7ae279eb333273bd0c8dc Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:46:35 +0200
> Subject: [PATCH 16/34] getaddrinfo.3: Use sizeof consistently
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

Patch applied. Thanks!

Cheers,

Michael


> ---
>  man3/getaddrinfo.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
> index 158fd2e31..70e6b4cc0 100644
> --- a/man3/getaddrinfo.3
> +++ b/man3/getaddrinfo.3
> @@ -721,7 +721,7 @@ main(int argc, char *argv[])
>      /* Read datagrams and echo them back to sender */
> 
>      for (;;) {
> -        peer_addr_len = sizeof(struct sockaddr_storage);
> +        peer_addr_len = sizeof(peer_addr);
>          nread = recvfrom(sfd, buf, BUF_SIZE, 0,
>                  (struct sockaddr *) &peer_addr, &peer_addr_len);
>          if (nread == \-1)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
