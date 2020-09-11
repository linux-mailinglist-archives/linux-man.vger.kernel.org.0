Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46CA1265C9E
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725766AbgIKJgh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:36:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKJgf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:36:35 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08C7FC061573;
        Fri, 11 Sep 2020 02:36:35 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id m6so10836551wrn.0;
        Fri, 11 Sep 2020 02:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=igCOZXDM6PaF8F143CEO3P3+VcsnAkp4IkwrhE7k3LY=;
        b=e5l6BWXPw4r/OyKUPIpda19V7aQFzeVPZrO8U+/nzgRVNJfJH1dRxBiYZOpPbNNe2s
         kcVRvbuIsWNPfon8yteSJ3SU60aFDi4pi1yMoFSEjrmsr+b420JWk72sXueprHaBMfPn
         irxiAtgkUO45x33G8BEoaMcWMo2RJbXdjoCpMiqXNReyxJWJFijhmLgkRIWkIXkdfHy/
         QOyOWjDFKLjWYL+dGqLtdE6SEfJeOTASCBbdotsSBaEsC73LTwa4om2ZdRn2uJmgPKsq
         AOFyOt5Bq4bsFOQltWDCJiEphhRMW+Wqo5azEOOwFt9RpMCky/17s5MN5/ljiwXzOXpy
         rhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=igCOZXDM6PaF8F143CEO3P3+VcsnAkp4IkwrhE7k3LY=;
        b=KL+h/ormvmlNrZ7viQsJPTTxdO+MuFNZU4cEKL/lXBBrZki0+QasMzFpVJZjvUBVEk
         k7WgLu1vyp06r06qFc5wcHWSJuPFvl2jSKDb7ddhHIXG9fRorSyDE363B0+I0zvvtUA6
         tkILnuWwNbXX47P5czpNseDB1clB9ZqTXDukKbzlth6NzBUhy+fPYh0vzBReyAW3xp3z
         GJoBE7fjJxJJn76mffhlOQemfptATytB81VDeti8YSFZcSHeSLqG4LuJPUQODBWf5xJK
         pXG6HQWcbpOfv8m+0SpKyxhsBl98WoSRmHmi0s9peZNdKUAEto7RvY6O1GCt5iKwknj9
         ld7g==
X-Gm-Message-State: AOAM532asHSRAWkCR/DxLdTy5aGDJvnB13tkeDCF3TGRkSI+oXdC/pWT
        Jep/ZuSmhaJ4GSB23CR4LlrraUPZrgw=
X-Google-Smtp-Source: ABdhPJw//kNWx4ai1cDM24sdziIkXkKoH219MDadcte3j6AKx1hbBQ938lVzBXtNAAb+BIAbYRB/Dg==
X-Received: by 2002:adf:ec47:: with SMTP id w7mr1232552wrn.175.1599816993479;
        Fri, 11 Sep 2020 02:36:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t22sm3791467wmt.1.2020.09.11.02.36.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:36:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 11/24] stat.2: wsfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-12-colomar.6.4.3@gmail.com>
 <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
 <11344e3e-1c0b-b61a-4794-807714b1c09d@gmail.com>
 <f4b14c0d-248d-669f-b748-3890de7bb73a@gmail.com>
 <81da8e01-d0bf-958a-3533-aad25f75bbe4@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b36543ee-b827-3457-99ca-84c00ca54e6b@gmail.com>
Date:   Fri, 11 Sep 2020 11:36:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <81da8e01-d0bf-958a-3533-aad25f75bbe4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 11:34 AM, Alejandro Colomar wrote:
> 
> Hi Michael,
> 
> On 2020-09-11 11:19, Michael Kerrisk (man-pages) wrote:
>> On 9/11/20 11:16 AM, Alejandro Colomar wrote:
>>> Hi Michael,
>>>
>>> On 2020-09-11 09:25, Michael Kerrisk (man-pages) wrote:
>>>> See my reply to patch 10/24.
>>>
>>> As with 10/24, here's the new version.
>>
>> Thanks, Alex. Applied.
>>
>> Cheers,
>>
>> Michael
> 
> I accidentally used a tab instead of spaces in my last commit.
> This fixes that by using only spaces.
> 
> Please apply this patch on top of (already applied) v2 11/24.

Thansk, Alex. Patch applied.

Cheers,

Michael

> ----------------------------------------------------------------------
>  From daad53ccc36a75a0a9928e0807de38925b9b1433 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Fri, 11 Sep 2020 11:29:40 +0200
> Subject: [PATCH v3 11/24] stat.2: wsfix
> 
> I accidentally used a tab instead of spaces in my last commit.
> This fixes that by using only spaces.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man2/stat.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 08af24c56..7e5417480 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -665,7 +665,7 @@ main(int argc, char *argv[])
>       }
> 
>       printf("ID of containing device:  [%lx,%lx]\en",
> -	    (unsigned long) major(sb.st_dev),
> +            (unsigned long) major(sb.st_dev),
>               (unsigned long) minor(sb.st_dev));
> 
>       printf("File type:                ");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
