Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 669062E7FC4
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 12:49:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgLaLtd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 06:49:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726071AbgLaLtd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 06:49:33 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D697C061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 03:48:52 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d26so19875933wrb.12
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 03:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DlNcDRofoDQ2LPoIA+6HhVteA878agTjCNVnOCEyHII=;
        b=h2tJOTxQidsrwkCamIxGaBEgNPLcLMN0+PGMu06n8rWMMCOHH/u8eEkD/TI0okZcRV
         Wz0pVaKvlooZyWm02YaCgT3xNwxsGq2RlVzsKZVacWc/pFPjc5d/pB2LQB13ggUvo2e3
         ekm1lAMAbUY7159HiIapMvW99sfw6OLTlj/5kKJA5MYWGllFp3duB8alBlgxWPiid3nb
         uVhrVQNmJjU6HgapdU/CCwmFZ9ZXXjhu/CR+UACVRDxBg3Gr3g7WsTAND7ilzVX+StQf
         +A1K7yaitfauDMMBcToKKC1oJnzKLWphhfPxiwV3d82vc6fuRhDyRJyIjb3utcAklVIb
         TjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DlNcDRofoDQ2LPoIA+6HhVteA878agTjCNVnOCEyHII=;
        b=BWIZsBcfTEHwh2UQos+0EDEfQj4H680aCTLqpUEvIfpTcc3FE4F6FBODRG4C7oZh0H
         MCWmO72kM6y5E2sPUvNV/7ah5K02ZYKj3nv1L2HnjVR9ZlYijfGP80250AcqRGtOpygY
         nrrbM3O59tPUi8DSZ5EW01ecHhknILgudyCIHpGdwQgeG4hqH/+hbPQSoZaVXn0B6lYB
         ubNtbSW+YBQWwIdL1Sj65/rwJCH7JUsrBbZTAXdoMl+3iX7RqiZyJ59bTxgGPiol63Fe
         Vp0QlG3hr57Na2T5GXWBm4UxvTWj73G4LvM7++r3buyaY1To8TfkLGc2TXY1zZO6Desb
         982Q==
X-Gm-Message-State: AOAM533KLHjL+svXLK3EFbo9pwrAhQttvkfobjgjkUDulGKqdkPCXWyd
        0PXeIgYFE9BApqNKO1woqOUmuZlUiSU=
X-Google-Smtp-Source: ABdhPJx58UEoIfrZ1+JkQQfQWGMuOaEj1Q68fhcZopy2WlanCtxIg2R4pzbyub0mwoLZMmoOpt4XFg==
X-Received: by 2002:adf:df03:: with SMTP id y3mr64690964wrl.102.1609415331058;
        Thu, 31 Dec 2020 03:48:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id a62sm12604263wmf.7.2020.12.31.03.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 03:48:50 -0800 (PST)
Subject: Re: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2)
 since 2.23
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20201230214147.874671-7-alx.manpages@gmail.com>
 <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
 <e87f1058-ef2c-e0eb-8d12-a63c20aef2e5@gmail.com>
 <2c506d32-6d11-e834-3d56-226ade68ca38@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <845edefe-571a-1c6c-3b9e-be86abfecd44@gmail.com>
Date:   Thu, 31 Dec 2020 12:48:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <2c506d32-6d11-e834-3d56-226ade68ca38@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/31/20 9:21 AM, Michael Kerrisk (man-pages) wrote:
> On 12/31/20 12:22 AM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 12/30/20 11:40 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alewx,
>>>
>>> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>>>> See glibc's commit: 0ce657c576bf1b24
>>>> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
>>>>
>>>> Reported-by: Jakub Wilk <jwilk@jwilk.net>
>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>> ---
>>>>  man3/get_phys_pages.3 | 13 +++++++++----
>>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
>>>> index 35f83fedb..a8a1ce3f4 100644
>>>> --- a/man3/get_phys_pages.3
>>>> +++ b/man3/get_phys_pages.3
>>>> @@ -55,15 +55,20 @@ The system could not provide the required information
>>>>  (possibly because the
>>>>  .I /proc
>>>>  filesystem was not mounted).
>>>> -.SH CONFORMING TO
>>>> -These functions are GNU extensions.
>>>> -.SH NOTES
>>>> -These functions obtain the required information by scanning the
>>>> +.SH VERSIONS
>>>> +Before glibc 2.23,
>>>> +these functions obtained the required information by scanning the
>>>>  .I MemTotal
>>>>  and
>>>>  .I MemFree
>>>>  fields of
>>>>  .IR /proc/meminfo .
>>>
>>> Thanks for the patch. But I think it would be better to put 
>>> all the info into NOTES, rather than splitting some out into
>>> VERSIONS.
>>>
>>>> +.SH CONFORMING TO
>>>> +These functions are GNU extensions.
>>>
>>> And it's good to add this, but let's make it a separate patch.
>>
>> Hi Michael,
>>
>> I didn't add that.
>> This is one of those times when git provides unreadable diffs.
>> Please have a closer look at the diff,
>> and also at the rendered output.
> 
> Yes, I see now.
> 
> Still, it would be best to put this piece into NOTES:
> 
> [[
> Before glibc 2.23,
> these functions obtained the required information by scanning the
> .I MemTotal
> Before glibc 2.23,
> these functions obtained the required information by scanning the
> .I MemTotal
> ]]

Hi Michael,

I've seen you've applied the patch already; maybe by accident?

I don't know exactly how you prefer it, so maybe now you can move around
the text to NOTES in a new commit.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
