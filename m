Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02816488528
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 18:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233129AbiAHR6s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 12:58:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbiAHR6r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 12:58:47 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493EAC06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 09:58:47 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l4so6053250wmq.3
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 09:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VE6D28z6ljYSiQNjNtQmbZcF0JT9OJsv3AqYuBZuQOI=;
        b=Dx4IfIYn0tqVPjQAqDPHZM91MMqpnbfCiZcrue0KaMxCPFteDKIsJuyMzSi8gtgbZt
         tiGHeH3uvtjNb+56f4Oddir6M/YiyV9FyQSKGtHiLGBGwwC/xsocdpIoLcBW0k8msqtq
         G2J2Ugde9pKhuzDF/EIeO6mCj3j6EwBEOb8pQl8toBVJY5o/WA8ITtvydqEcaJ9DRk9L
         jFTBf28h1tpFqfd41F4LALPypcK9tKBwADlBeto06l4e/Q4huBYWzBQHUGuFaN53M1VO
         rKONU6S03o8J+vxmmYi1bcRDma3xHzhe51nvk6b3PqxX7GK/Ve3MFeNPxZWWJtA/P3oJ
         xj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VE6D28z6ljYSiQNjNtQmbZcF0JT9OJsv3AqYuBZuQOI=;
        b=XzJB4YBG9Jc9Kgwf0AU23F23STiI6Yp+47YTr3BA5JSWT1OX3hNcAvMfdw9qc/MwU3
         4gfBXHPu/Jn+Yq1fgkc4k/3AxXWFlpZiZFlJVqUBlKY9QFujFTE7ySAVJmYdc0fZuQWA
         cbKRc6bLePQ8TDlvW/SnF//gfpimFR0WPL1EGZe2Gsa0vfby+1hSK4ZcVpPf+J0PfH2a
         xt+xxp2WN8MRUIZ2ZyEZSligFrNeVyu60wfGQp8Jk7lMFn2s0F7cmUtQ7bak9Lr89dbt
         vtbIsx2/RcIiUg1itfDDddm8GIqmhJ+0Dk7/tPfen/h0eAap+aEWES/ml5DkfIKVyamF
         e31w==
X-Gm-Message-State: AOAM532fZ0e0HFbngNRVOaqqRMEmp1hlGSVMPi+YtFTmGj13XKLE2T8V
        mLKGG63tE/BfH5T9ETwrYlk=
X-Google-Smtp-Source: ABdhPJzlZjtjmGHEhwCL1xpW+UZgEYXI+HhPpYQ3NRdjXTTUQZATbGJGyEacuYyBiDjX3ckD72vN5w==
X-Received: by 2002:a7b:cdef:: with SMTP id p15mr3706489wmj.141.1641664725785;
        Sat, 08 Jan 2022 09:58:45 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t6sm2151503wrx.114.2022.01.08.09.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 09:58:45 -0800 (PST)
Message-ID: <62e71f12-0c4b-fe5e-29df-4b99c6fd2dd9@gmail.com>
Date:   Sat, 8 Jan 2022 18:58:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 6/9] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-6-steve@sk2.org>
 <ee6f8448-4a84-3a94-d6d0-e9eabc3705a1@gmail.com>
 <20220108091352.kxrbpbolcilgna5x@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108091352.kxrbpbolcilgna5x@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Jakub!

On 1/8/22 10:13, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2022-01-08, 02:41:
>>>      /* Free the locale object. */
>>> -    uselocale(LC_GLOBAL_HANDLE);    /* So \(aqloc\(aq is no longer 
>>> in use */
>>> +    uselocale(LC_GLOBAL_LOCALE);    /* So \(aqloc\(aq is no longer 
>>> in use */
>>
>> Why?
> 
> $ gcc -Wall newlocale-example.c
> newlocale-example.c: In function ‘main’:
> newlocale-example.c:67:15: error: ‘LC_GLOBAL_HANDLE’ undeclared (first 
> use in this function); did you mean ‘LC_GLOBAL_LOCALE’?
> 

That makes sense!  I applied the patch, and added that to the commit 
message.

Thank you both,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
