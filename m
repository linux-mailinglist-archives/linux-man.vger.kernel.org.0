Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB4112156B5
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728941AbgGFLv7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:51:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbgGFLv6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:51:58 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6080BC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:51:58 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q15so38932197wmj.2
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eYgrILVvpoG4eoal8geAwUOlsDgty2lEy8SLW+xC+Fw=;
        b=KV/4POUlNoGu21RRC3CkJJ6+UoQejxnZYiUlT6K2pThCeMwuh93kFkE82vMtfZ5p0c
         yejB+h2D+3FweENEOYF/2iSo1ky8Ajw1ffscEcXzsAcIzwZuTj4M/l46iK4yFiE8oIoB
         DdYIPcqRlqswUhW+YOXBXBQudAgJb4IgyXQNFUu9jMZzv3W3ESZPs86mpyXbmOtMNRT5
         pOv4+p590MkwnZRhDiGA5WPcQ/v5UYc/UxZJKX0EbaXr4G/cM/0Jt0pxBhjCi7wGubR8
         pc7p8+464gzGV5iTle8/6vVOrdisBUSn2l8GyU7wuW1r1tSwKNCsJBxMghtD3CtEWO1Z
         Gmaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eYgrILVvpoG4eoal8geAwUOlsDgty2lEy8SLW+xC+Fw=;
        b=bi2NZsrwyIVef756AJKfbbB5CjYJImvLAaxWTfbsRSceAVMLCRq9nP2fxsyMjEDVRr
         azjdVFlG3PJH57Jg6xnT/Y6CQl5EmZ1mLaXdV3EVdKlOoAinkZThvM1XDMZa7KVo7+Jg
         DUfnZ46JWRwksg44pZrLb4YyadQK5SCjidx+DNB6VwKGkYnOWkLC8BVroL+BmCi+BNPc
         QiQrT1qdt1lkrE2tA0iVqJ4t60IE4mRuvMF75Dy1Ce/piCU8tVx03ZQVMI5L+11H5Uze
         FdhDFw9GUyY9UotL3oSxEdqDlrJxbJbegHzZQzqrHAiQOhHaHiNexC2HnCaS+qHnvMIC
         c9Lw==
X-Gm-Message-State: AOAM533zX5e4KrVYwEGRGOtxDkJG9G9iIgSYP3dzTkEgYoiMmVBR7amT
        D2x1/wZ7C/Oyx/bcnP5YWe1n3ENA
X-Google-Smtp-Source: ABdhPJx+RYJnAnIzgVGJW0xm47pLMPIL9eCdQp7/ipykkClWOqpxTxA0Qj702qL+LYrQuIGeVWYaow==
X-Received: by 2002:a7b:c18f:: with SMTP id y15mr49909960wmi.85.1594036313790;
        Mon, 06 Jul 2020 04:51:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id k185sm23183680wmk.47.2020.07.06.04.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:51:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: srcfix: remove superfluous quotes around
 space-free arguments
To:     Jakub Wilk <jwilk@jwilk.net>,
        Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200705134014.GA10659@rhi.hi.is>
 <20200706043133.pznhl57cs5revfun@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2492abac-ac1d-e017-f0dc-29468233fc1d@gmail.com>
Date:   Mon, 6 Jul 2020 13:51:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706043133.pznhl57cs5revfun@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 6:31 AM, Jakub Wilk wrote:
> THe strfmon(3) change is unrelated to the other changes, and should have 
> been in a separate patch.
> 
> * Bjarni Ingi Gislason <bjarniig@rhi.hi.is>, 2020-07-05, 13:40:
>> --- a/man3/strfmon.3
>> +++ b/man3/strfmon.3
>> @@ -29,10 +29,10 @@ strfmon, strfmon_l \- convert monetary value to a string
>> .B #include <monetary.h>
>> .PP
>> .BI "ssize_t strfmon(char *" s ", size_t " max ", const char *" format ,
>> -.B "...);"
>> +.IB  ... );
> 
> For variadic function the convention seems to be to format "..." in 
> bold; see scanf(3), printf(3), wprintf(3) and execv(3) man pages. This 
> makes sense, because unlike argument names, "..." appear literally in 
> the function prototypes.
> 
>> -.B const char *" format , "...);"
>> +.BI "const char *" format , ... );
> 
> Ditto. So this line should be:
> 
> .BI "const char *" format ", ...);"

Thanks, Jakub. Fixed.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
