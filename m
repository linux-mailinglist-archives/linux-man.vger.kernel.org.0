Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2DF42B0FB8
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 22:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726759AbgKLVCF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 16:02:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726337AbgKLVCE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 16:02:04 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB9EC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:02:04 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id d12so7439994wrr.13
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aHfYfFMWbQ8R6jRpHmGIOVVQrXDe4rBACcFXy1N9PTo=;
        b=C/23aAyFOCy8R7+RwvOJMgSzZBGvjP/B/9bkcab0D/MNz7x91hAASh8j3KPyH7GT24
         PJ/uLj1GaUO2ltJ2Ajlh5F91BnOuGiblSELonEui+I6hNRvaBw/vuccE4Xg8pewhNJJq
         DDY5Z+Hqg6vyh6OdArYk77mDNfoCQ2tU7YQJIM583NbAcO1Fcec/Q1wYiqmB0ExoZRh+
         Kt8uwHjK5Yd2rusccGeuugt3SC+Kj0e5yE0RONxXSZA/qH73/hLMVqFErCVl/j3uAlQc
         nJ5Vyij89QLlrgsRQ2znCOASgf/C6ulTTMSSnr0I+w7RzGWCybSfxeKe6Xdib2THubik
         o1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aHfYfFMWbQ8R6jRpHmGIOVVQrXDe4rBACcFXy1N9PTo=;
        b=Ukmi7qsLEjL6A53xew/YkuQ6HhSRjxwhvFj5zu8Ev9/E41OhEpMwyBHCtA8lWCIpqH
         xjg9CRYOL36otiNdiADmw3BFCZ7Ib86oxyZSeYCRkb1iaLbG9uH6kAZlUTdQ4moShoMB
         ZKtSTqQ/mdxHZofhb+ZQnZcv6UOkBDF64a0jXws4kXACIf4xrHfyCKFV20hdroo4+2XQ
         G+zqufyf4LWxom2ttf8YqExFHmc7nGOFWM4YC3HwzGQQ01aKbX+uFPdQpbAZXzo01UFb
         DcFoM1Lu+bLpADDtK4/9sNah18ths4AB70oZsU/hh2/JakZp9xea0Mg3LVSzl1itDtSA
         xOxg==
X-Gm-Message-State: AOAM5303ST/hzqz0hIVrZOyhGC5Z5BLUyM5RtBDw+UvdVk9X6tcNkNCY
        lnO/HLqUmECnND2iq4hXVQo=
X-Google-Smtp-Source: ABdhPJyVGaoWFHzKbqQuHG7/+8AzsE6xn9bNt4yDht0juqC3+CguuqHF3+B7XTpgyWkqYB7QTqC2qg==
X-Received: by 2002:a5d:474f:: with SMTP id o15mr1697236wrs.100.1605214922859;
        Thu, 12 Nov 2020 13:02:02 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id d10sm8211840wro.89.2020.11.12.13.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:02:01 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b3fd673a-200c-78fd-97fc-862f41e54d21@gmail.com>
Date:   Thu, 12 Nov 2020 22:01:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Is there a function to change the signal mask without leaving the handler?

sigprocmask(2).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
