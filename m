Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDABC342C64
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 12:42:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbhCTLlf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 07:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbhCTLlP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 07:41:15 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30631C061762
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 04:41:15 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id o16so11762955wrn.0
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 04:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2EBzPsGGiOKeQie/8WrhRU3Sd6gdBZWJPbkMA8O9vAs=;
        b=c76zd8BfaPi5R1P1hswAtMExGco7VnErRZOTDRpinI6tzCgU4opsIflbaOJQdFnZC9
         sJhpqSMrLVOaOfgVSvui4NoZFafERSH5KtHz3ucSP1o52Ui0nBUsudWkGxRPG4wEFEuP
         pi+vrWjwxYbUqGqLvEeVgTl9ykOf9vM72f74osLqen3V1VHKDkL1Pb/gK2Sqg7MBBFUG
         9kduj2MevSlGZ1b1GjhACq7wqgf8VSFtkxeGVBNfZ+6jIfHGgoM9zAA2OkZOJG0qW1Fv
         elvRRypX3TxNvZ7Ir88Q2uAgQ6xu3M+QKKryAVEJKHBw/rVRrSeHr3vDbWVXFbT5Ikoj
         YNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2EBzPsGGiOKeQie/8WrhRU3Sd6gdBZWJPbkMA8O9vAs=;
        b=QnafjQXTEW6Ic3Of+GwPhnz3fkJPll6YcxpfAYnF+wLmz8NrCfu8AZkFDA1quCFqrb
         5+n+iF6WHpZ44P00sqq2Pd1vCncN7kOSaHVNSbn6E/mOv7skQk6a8dTTDgBSFHirUQkp
         KLcMbV818tebJTcYnBGK2eOvkKYlCzdWsl/0u3hXi7JONG5+/XugY3YklDZfhoR3SY3o
         mkaiPwUSw0dbJsyfPQni3t2N2UMk87V2ESExFUYRWSdODGV5qu9+kM6OdtIb8oMrpfYY
         CwPk6/6c1BOpMCnj9BXxjet+1p9Plv+J021WerEqiHA0Gv19elT+8iC0cDPss6+tk4Ji
         ffcA==
X-Gm-Message-State: AOAM5321x342TRknfcNjLTgykI/LHrtBvC7sE20aC5Y5Q8wU9Rpm/GBE
        OB8Fk2XJtR1L0+aPWPx/9po=
X-Google-Smtp-Source: ABdhPJyL6Oq0xiqDA0O6yG8cShYs9duD2uhdfrGAoHE1rkZ69R9UaXdk8LLbIHWUpcfyxCCxCj8/+w==
X-Received: by 2002:adf:f083:: with SMTP id n3mr8850109wro.134.1616240474006;
        Sat, 20 Mar 2021 04:41:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 13sm10024456wmw.5.2021.03.20.04.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Mar 2021 04:41:13 -0700 (PDT)
Subject: Re: [PATCH] errno.3: ENODATA is an XSI STREAMS extension
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mark Kettenis <kettenis@openbsd.org>
References: <20210319235717.28264-7-alx.manpages@gmail.com>
 <20210320095818.qdhi4rtwy3r2bflf@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
Date:   Sat, 20 Mar 2021 12:41:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210320095818.qdhi4rtwy3r2bflf@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 3/20/21 10:58 AM, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-03-20, 00:57:
>> -No message is available on the STREAM head read queue (POSIX.1-2001).
>> +No message is available on the STREAM head read queue
>> +(POSIX.1-2001 (XSI STREAMS option).
> 
> The parentheses are unbalanced.

D'oh!

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
