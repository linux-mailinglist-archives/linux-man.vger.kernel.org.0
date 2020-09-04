Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B00C25DCFD
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:14:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730810AbgIDPOi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:14:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730841AbgIDPOf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:14:35 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F0A4C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:14:33 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so7145260wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cebSpk02vS9AVlV3PJ8nX+xicogdQtJJIuNvdJzMbCk=;
        b=UEltX6Zt9MnUOSGfU/AsR2Qf+pTX9KKX44BEZ5DvUNepQmAD4nw3LTw2FafTr/Bmtz
         JRba4jFFsLBdeM1Fh4RwKZYXbS0kvp1Z9QKNiATth+uys/ws4lt+CeChI1khmgH7O7F/
         nLOBBV/7VkiVb3+9SRK8Ud/BkHAajh5FXjzusf7SH/2In/Fma4g8zPI9y+9je+mAtHs1
         f+OLrfGPtu3+wxXgv5PK8rWdtjNBhFMNUrGeBL0HONnz5nXOpw0jN0+spWJKSnznJcdJ
         OKYtOnntFFzx8ipO/RllkivJjogYxsHjkpuW/mZ7WSlizTGuIY4o0a/2heb1oOCWM+wq
         s0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cebSpk02vS9AVlV3PJ8nX+xicogdQtJJIuNvdJzMbCk=;
        b=Xz17sqfXf00n2Egc1CATGo3dpDBUI+7Gfjbw9X8R1JMrDnVugVtDPOYi0e/OfjuoAf
         2Ew5jJwZmssOetM4nRS9/228W+N5ACXfpxfnhQY7cw8U1sRIRpiYhd3Hi3InHSf/lkcF
         sgxC4G0m5RdnFeGsHAByHUPW1VunLnejyhvJk+dyX5DQrrO/r+DKZtp9ikS4RZ5Pauj2
         c/caUUg5qT2RFqzKmy2IMjCNykhIwLopWTmB9mfOxzbOPp4mKX617ndajI8aGBUfT2wM
         bKSzsTBzAoWAV4emiFaJOmLbTHrL9z2q3KiHO4VyUs88PleYLHjQ9C2Ji8l4RZhNNW2H
         3/dA==
X-Gm-Message-State: AOAM531IXODuBxFpsfO+mo+UDhSpTdFo7W9Z/kLgg93oR0uQ/eCxmyGc
        YnZMMrm6BW+nXIltBysC6N4=
X-Google-Smtp-Source: ABdhPJziDB8WdE2myEY0r1SZhODQd64z+pdc1sV8Zk35B3FfyI5obR2evM8uLsd8Lrj4oZVBG5IlrA==
X-Received: by 2002:adf:9cc6:: with SMTP id h6mr7976735wre.405.1599232471960;
        Fri, 04 Sep 2020 08:14:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id u16sm12461903wmc.7.2020.09.04.08.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:14:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 11/34] timerfd_create.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d0fad983-97f0-f855-1b1d-cb0770e7f0a9@gmail.com>
Date:   Fri, 4 Sep 2020 17:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 3:45 PM, Alejandro Colomar wrote:
>>From d347c933a8c253028f8f76c4170b65b85ce7d605 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:42:28 +0200
> Subject: [PATCH 11/34] timerfd_create.2: Use sizeof consistently
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

Applied. Thanks!

Michael

> ---
>  man2/timerfd_create.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 67a13dba3..fd4acf3e9 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -700,8 +700,8 @@ main(int argc, char *argv[])
>      printf("timer started\en");
> 
>      for (tot_exp = 0; tot_exp < max_exp;) {
> -        s = read(fd, &exp, sizeof(uint64_t));
> -        if (s != sizeof(uint64_t))
> +        s = read(fd, &exp, sizeof(exp));
> +        if (s != sizeof(exp))
>              handle_error("read");
> 
>          tot_exp += exp;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
