Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE20265E7E
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 13:05:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725779AbgIKLFe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 07:05:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgIKLFc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 07:05:32 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4792C061573;
        Fri, 11 Sep 2020 04:05:30 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id g4so11071559wrs.5;
        Fri, 11 Sep 2020 04:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rNSOatd/a8lRvkUOkd1gPcSvohda9ft8gvpNB6Cm5rs=;
        b=qlQYdi1h9rJ8cTFeADhT5fP5k6T1KAFKlLXhDQN5HpYm/s85w9j3qcnQq6z4OdQYap
         uS1TTorzRoPJeixlkkuqMScV+WQ3lJKniqFfOw20L342cPAEiP4m8789ImXAAwVWJe1g
         3hAkjj3DZKeiBd1lWPOfDJzw+1JJkaOYarBZCmHm6gUdV/2IdQssS5AckzXY5vZRuL1k
         FK6/O1RSJWOlPVvaK7YL61CnZGZSmNGFVdLU37068YOTXl86czfWuBY3uopT+W/gAEel
         2sswYCEjLC7WSDV+q7r7F9fFVfjeKxBEw9r5rcR5sCJby3VpfaSaqC3vuZrmlPl2I1/b
         h1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rNSOatd/a8lRvkUOkd1gPcSvohda9ft8gvpNB6Cm5rs=;
        b=JrY1gfCR9SXAKOdPh/T6h+qAfyXEAyoF45iKOpW/e26XeF2HcdNG2fgLT/Ke6yRF3J
         frCB2RMVv6QirZ26dGAtxvqu711AaztVoxoRgyy/Ipu87s6Lrujcw/j5NU6HCiMPO8JT
         qH2RqxCZndy6ZuINXDWj3djhAK81ADj7etiNjg1zuy9UyG/HZb4u+GIvem3Yf3uyEeIG
         YfeIfFd5sxADdGf2Puj+pCt0kq8AlHxdIOkMtFUkxMGS3mIvOMiwa/8tXd3UJLHlEAVh
         SxW5Vq1lt3xlCALY9Fch4YCuuS+FKaf7iCVxlmCJ7T0V0gAoo2zpCzXUM6vpKMu0wC8o
         Tn5A==
X-Gm-Message-State: AOAM5316w1QDmtjXRZX69FPHZe6b4N+cjfVrwIbyDuESI+Z2+9WhKI/N
        vxci9opdEXNmDf/1aK9FHxybh4KkdcE=
X-Google-Smtp-Source: ABdhPJyfJ9m9LtJ2Lcjy+gjCgX0xHRHJA1nBeMaVwkokx9CU2S0cFd97DJsqPy97IH61HDk6M0k6aQ==
X-Received: by 2002:a05:6000:1c8:: with SMTP id t8mr1514871wrx.3.1599822329409;
        Fri, 11 Sep 2020 04:05:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g131sm3590388wmf.25.2020.09.11.04.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 04:05:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/24] clock_getcpuclockid.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-10-colomar.6.4.3@gmail.com>
 <c2ac877a-3491-2044-aa87-b9cfcec25e44@gmail.com>
 <dd15974e-50ea-e456-2675-ec6002839aad@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35a8354c-7e9f-6382-ed2c-ffc566fbc4c6@gmail.com>
Date:   Fri, 11 Sep 2020 13:05:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <dd15974e-50ea-e456-2675-ec6002839aad@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 12:25 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-11 09:48, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>>> Member 'tv_nsec' of 'struct timespec' is of type 'long' (see time.h.0p),
>>> and therefore, the cast is completely redundant.
>>
>> Good catch! Patch applied.
>>
>> Cheers,
>>
>> Michael
> 
> Ping :)
> Did you really apply it? hehe

D'oh! Now I did.

Thanks,

Michael

