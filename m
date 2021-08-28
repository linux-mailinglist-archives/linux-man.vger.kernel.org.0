Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B65D3FA218
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 02:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232790AbhH1ASl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 20:18:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232616AbhH1ASk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 20:18:40 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24EE3C0617A8
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:17:51 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id u9so12790006wrg.8
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 17:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=f5+uIv75v+7ZPSyvrBcLUj31d69A/pBWqE2NHmPHfoc=;
        b=iDZSdc4wZkG0QpiROmmtPxKRFobhcoe06kFX5JKcx4yyXeUOjemDbCkwaFxxYx2JP+
         Wr1aTthKB9nU2FzBe+U5hMiZQZdUXtn25iuvDBA8zv2LuOuP2weiHcjvNb4jl9Nk/jW7
         j8FDeNFia+yoMNmVIgcUpMekSy6EIcLX8gUdGNZZibmjVCbX89bqkOrBqyTeHczzNXN5
         +hshbOAEbXJavchWVSPsjOXOtjI+UbdrikBx1DgO8ikSUpMKp443cuDQJDrT7pVE+06I
         O3Ho4yN6hVUI4OiwnnXgDxHAzCvQQPh5VC3JrrIK9djpBK/fsoQCUmC85etMHZfjlCRr
         LIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=f5+uIv75v+7ZPSyvrBcLUj31d69A/pBWqE2NHmPHfoc=;
        b=l1c1nOvDRNlCVb+ZMUtN+1KWG93PPbnDKPo2l1Aeo7K1XObhclBoVlzOma7lS19cZl
         yYTyX7x89p1ltN3ppjrvYNa4R98m26+TjbRQO8u2zCGGlJAUsDUJeKrN8cfhtX4KiPSz
         vThQLk2mErejKGVQ8NcUL6HdXsRe3QwJZVeBfoB2Y86EmiHRuCzXUmD58QBD/zPVcukQ
         DkGtcGAU2Dj1PX019TfDTJhCfnulAxrXTOfKrDQ36tteEnAw7oJi8rQgJZ0qJV3T0ZS6
         A2WkTJtaGNtxS3erlIav0Mi0V99jQigbJa6hGukQdR3u4yXE12I83VLRau9prOe06eJ8
         EuJg==
X-Gm-Message-State: AOAM530IKxPS08cTFZXYss14/Rt6szV3VEvkKy7ClbRcQHuOazox3iuM
        zdN15XtXKyHuF+5lt9bSc5k=
X-Google-Smtp-Source: ABdhPJyMHdZR6+qQrN4TfQ2Zs0z+Fgc1VxfoV1hTKrMSXFktSv6Sd5UU9WBSC6xxOg8ax9Pwq3mPPw==
X-Received: by 2002:adf:9e09:: with SMTP id u9mr5471410wre.306.1630109869781;
        Fri, 27 Aug 2021 17:17:49 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c24sm7705894wrb.57.2021.08.27.17.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 17:17:49 -0700 (PDT)
Subject: Re: Error in 'man operator'
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     David Sletten <david.paul.sletten@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
Message-ID: <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
Date:   Sat, 28 Aug 2021 02:17:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi David,

On 8/28/21 2:01 AM, Alejandro Colomar (man-pages) wrote:
> I mean:
> !(int)x
> (int)!x
> 
> The precedence doesn't matter there, as they apply one after the other, 
> right to left.
> 
> So, I'll keep casts in row 2.

Hmm, I just came up with some very stupid piece of code that can show 
the different precedence between "unary operators" and "cast operators":

sizeof(int)x;

Which I hope no-one on earth would ever want to be valid C.

If casts had the same precedence as unary operators, this would be:
First, cast x to int, then apply sizeof to the resulting int (since 
sizeof can be used without parentheses on non-types).

But since sizeof has greater precedence than the cast, it would be:
First, calculate sizeof(int), then... x?  Invalid expression!

And luckily, the second thing happens, and the compiler yells:

sizeof.c: In function ‘foo’:
sizeof.c:3:20: error: expected ‘;’ before ‘x’
     3 |  return sizeof(int)x;
       |                    ^
       |                    ;


So I think this deserves a new row.

Thanks!

Alex

> 
> Cheers,
> 
> Alex
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
