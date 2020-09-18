Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AEE0270864
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:36:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726252AbgIRVgd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726192AbgIRVgd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:36:33 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 530C3C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:36:33 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c18so6953061wrm.9
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mic4agqNwPljdDCH5Kh0Unltg5x9DnNXSoRJ9gZjL2M=;
        b=g5KXCNsrJ8Yjf3Wzrl59i2ZP1AfgPycA26ga0LzPvRchjRPl4CvkyqyqU/Ny/otwv9
         S+pMB9aX9Rtta+NfyqDXAP3MpW66nqjMPHkEAR176dBE0z0GMxFGA00h/wyM6hZTpd7W
         /cvFc2RmOosPqb16OZHGJAD/Oh7HBlAvTDKRQCkYhe3ma9Ff/+Ytq8zbgH1FJ42O0klS
         onXn7mLIP+tuN65RKnDcE5P66PfhNatI8L3vDqPlRV6wvEgUFaGPuKOm1ldK+CW3ss91
         AUocM/MP7PxtIkuIh3MmmCwVk1P68HLvdRETNzTX33UHTzRDeiriNoRBPnOJ0AjTMTd5
         //Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mic4agqNwPljdDCH5Kh0Unltg5x9DnNXSoRJ9gZjL2M=;
        b=W3fa1eX4V2tDO20+JS/S9l8INIILma/uJSzCooMhuZvLkxejBMp2d9MKe0QJUGnbu8
         MsPGYn3LWyBaqo9pHcTpWW8aKNwk4xZhnkHX1xBEgXcxPFx6aTCVn9uEDjEEy0CryWBr
         UV8KP1a0UKkW0YweHSLAXSeEh6hcu2TuExmMuYsAOeRJnieHdirMZxIS1FUluhGKXjD2
         BgV6KItPcz2z1hedbBxYBsgEp7RU8htrqln9hbD5o1FrhDmK2u8wszOTKkW+gmTkmU2w
         74wu9rVO0JTqyvqGfWiqEuFCSNZqKnzaTgYHMP2FdLEKnlep6d2dE26baX4Rzo1fKaI5
         UKMA==
X-Gm-Message-State: AOAM531omrlpyCGQtwHz628lUeqKUZgtYSk5QrutaBku1zs1Eojoz6N2
        lgBuDM9II2Kak06aF9CLwUIUzbka8sA=
X-Google-Smtp-Source: ABdhPJzLH6nM5fUQ/Oalzz2kGcqbbeY6T50l9xn7oE61w1tEyFotHP9hkVc/2UAut9uRJgSYcpJm/A==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr39456559wra.412.1600464992049;
        Fri, 18 Sep 2020 14:36:32 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w7sm7263172wrm.92.2020.09.18.14.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:36:31 -0700 (PDT)
Subject: Re: [PATCH 3/9] system_data_types.7: Document sigevent
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-4-colomar.6.4.3@gmail.com>
 <0f7cd0c7-9fac-e177-9147-4ce67e64bd7c@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3edec1f5-7bd6-7780-e160-a892b38cecf3@gmail.com>
Date:   Fri, 18 Sep 2020 23:36:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0f7cd0c7-9fac-e177-9147-4ce67e64bd7c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-18 23:09, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 9/18/20 7:04 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 57 ++++++++++++++++++++++++++++++++++++----
>>   1 file changed, 52 insertions(+), 5 deletions(-)
> 
> 
> Thanks, Alex. Patch applied. I added a line re description,
> deferring to sigevent(7).
> 
> Cheers,
> 
> Michael

Thanks, Michael.

Cheers,

Alex
