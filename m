Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6209225E852
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:21:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728264AbgIEOVY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:21:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727875AbgIEOVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:21:23 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9598DC061245
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:21:21 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v4so9282741wmj.5
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vdSygWmtopXUM6L5CHdZ1vzgWUUKf4w9ZxJE9UnZupk=;
        b=h15sCyPrx/isADaiG+8gD9GaTHA9pmSVtCEK22c1KXw2Pk6CDjwQZcdWTtW7+/RByu
         wj4SC3hdYfJ4XZT78mhlgbEItAF7O4e438dPjxippALl926/nJXchKDZd4DEWqn096ev
         3H95TIVh55xgcPg/n9t9UfFmvKMaUIKqOS9Xo11MtsYx9L3SQYVFrtjOvaKfXxiBKHfj
         Gc3SWz9uaLoMgpYcIXrKYBwSPBaqpSNsiNbFfIEOo+GSzCWKHY+1XWJY26DcVJ15sJrv
         9s6ShIKD2xJrI1+7wAvGiYb22CQWih4PvIbiqv6QBLY7pFiGDiqBf2j936r6pxeWAArR
         F0tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vdSygWmtopXUM6L5CHdZ1vzgWUUKf4w9ZxJE9UnZupk=;
        b=lEnYXNvKUE/RN+ADDrhJCGNvxx9B80ANYMNVbexAkjTWmjaPaId5+N8g/J3S5RNmY0
         Ief/RRn+wrECEIBGUqn8h8tyKdFXdjbFgHJZbPNEQo8/lHDmccW8Gi33ti5bt43NSPGe
         y7xM30ofQANe0YY+4/iN0el7sUWEmQDZMzSK9gMlX8vvlhqDJ7Mvxu18dwDM7CCwh/9C
         DRR6f9DfmU4PUltzSoA//yG+SsT1+qPG7Rjk+bLURptw6EY0DKwFevFvER76/DRt4Llj
         ZJRi8FqEGYeTcttmFTfu+maouoNpfClZ6Nyh2SrVpY7zzu13rF/S8QjTWs2iNXxh2Pdt
         I9ug==
X-Gm-Message-State: AOAM530zrFibVUCo9d4AaGnWiorA7vFKXxXEWA16PVZVuFKv5DtXKWO6
        jxXP0ssC4agF+wD8U1IHO2o=
X-Google-Smtp-Source: ABdhPJz+gynmaR112ZsGzrwoXZIjlzLGGmRXniWxZvUKD0fxiT6U35CWzuoiwysxiga6r59gjQoAOQ==
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr12917366wmm.102.1599315680200;
        Sat, 05 Sep 2020 07:21:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id h2sm18149689wrp.69.2020.09.05.07.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 07:21:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 21/34] mbstowcs.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4fd750e7-bf8a-5c10-c1be-81f3b7cc36c3@gmail.com>
Date:   Sat, 5 Sep 2020 16:21:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:45 PM, Alejandro Colomar wrote:
>>From 1b70e7a1da093e4a8e3be79aaed623b21c10e763 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:51:07 +0200
> Subject: [PATCH 21/34] mbstowcs.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Patch applied.

Cheers,

Michael

> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/mbstowcs.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
> index cf650506e..2f9fbc17c 100644
> --- a/man3/mbstowcs.3
> +++ b/man3/mbstowcs.3
> @@ -186,7 +186,7 @@ main(int argc, char *argv[])
>      /* Allocate wide character string of the desired size.  Add 1
>         to allow for terminating null wide character (L\(aq\e0\(aq). */
> 
> -    wcs = calloc(mbslen + 1, sizeof(wchar_t));
> +    wcs = calloc(mbslen + 1, sizeof(*wcs));
>      if (wcs == NULL) {
>          perror("calloc");
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
