Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A80125DCEA
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:12:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730798AbgIDPMB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:12:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730777AbgIDPL7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:11:59 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB759C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:11:57 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id w2so6407934wmi.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AdLV9YJUjnLAQ+JQ9cfkAho1/qjI7j9F9E0VKpW+cys=;
        b=VGCiPtVSxuj92QO9gTy9rr4mE926isJZNVoUmHHhbrzvRCRWtCIRj9eR5hlD69tfOU
         C+V3prvqq+u0oybjaDbdsyyBFSnPXEJXkMy0pi3yL09W4DdKhrqIILhzdgamOIGANvRq
         vlL8k0LiHmZR4JnoJNj4pZgYVH+YjPMmz3c3Shxim+n4ecxB5NoIzbQ8mrMGg5uiKVJg
         ymfVv1zsl02i1AQzmLGIIOmtLXpKS+1mx/60EGsEy/FkLYHtEVg29VA86uvxuXvAM3UX
         i2FAedDKEqIM+GO7fjPsRURs9tigD3h/mU9e1/MPy6+sNG+Lq2Vml0q4lnf3azqxVp41
         35qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AdLV9YJUjnLAQ+JQ9cfkAho1/qjI7j9F9E0VKpW+cys=;
        b=VQu6ykIY1/NspUZKIUt3etW9YDZkxygNTQJEgfIeL3cm4ux0wGQr8mSTznuPh2Csd5
         exWBaRr15J+wsf9VYS4D7XguLn3zq9MVfHjqGGv9QyubIl7bD0+MzORU77apc2MPv3bj
         Huc+R5eS25w6WPBmm26yzcqhF74LUxEhdmWYRcdNIrQwmUtypZYhAHprL5IK8MA+Y8XG
         zzZXDfrUIjmPlipXud3olpRv9NHekjZIASxygSow22JC2BPOR3sLd8syetamQnHEmVsr
         HgKIophdj4NcRAwIZSfKPLFwlOcQqDYwJJCj8P+NNcu7AtfUyVZraXpzslmmvTW6pkP5
         bVCw==
X-Gm-Message-State: AOAM531zIMgQj9c9dk4FnFyYAnKnk9FDyBXaUq/8hLGAK/0AOXaTbMPg
        ed4lN7MXsVCCsT6ch8RfzK3sYf1H6XE=
X-Google-Smtp-Source: ABdhPJxTl5AR7MuJx8bLJwbb2TvtntsE+HSpvc9Sp44v38gHDtBQkOVeQAF4jYrxOIeyw8GoAUJC8w==
X-Received: by 2002:a1c:c256:: with SMTP id s83mr8136737wmf.93.1599232316400;
        Fri, 04 Sep 2020 08:11:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id z83sm4093513wmb.4.2020.09.04.08.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:11:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 09/34] sysctl.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3fe03c56-4b86-0f3a-85ce-3d1c31bf20b6@gmail.com>
Date:   Fri, 4 Sep 2020 17:11:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 3:43 PM, Alejandro Colomar wrote:
>>From 90572d59a4f3b1986e57c0b32e14e4e68ecab716 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:39:56 +0200
> Subject: [PATCH 09/34] sysctl.2: Use sizeof consistently
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
>  man2/sysctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/sysctl.2 b/man2/sysctl.2
> index 65f79516d..161060490 100644
> --- a/man2/sysctl.2
> +++ b/man2/sysctl.2
> @@ -154,7 +154,7 @@ main(void)
>      size_t osnamelth;
>      int name[] = { CTL_KERN, KERN_OSTYPE };
> 
> -    memset(&args, 0, sizeof(struct __sysctl_args));
> +    memset(&args, 0, sizeof(args));
>      args.name = name;
>      args.nlen = sizeof(name)/sizeof(name[0]);
>      args.oldval = osname;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
