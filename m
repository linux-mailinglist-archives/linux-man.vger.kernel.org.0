Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 828043C2A80
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 22:44:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbhGIUrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 16:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhGIUrM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 16:47:12 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744E9C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 13:44:28 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id q18-20020a1ce9120000b02901f259f3a250so7047307wmc.2
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 13:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hWA3PfEj0sUYmua9c5YmWZQn9DXltelaogsF1EWSi3Q=;
        b=Oc71hryoogVtNPqkco0SFnbIhFUyOTwKm+Wb3EL9600+x4j/+XbeDu76n1l6MEblE7
         ctf2nBbuVs1JiWeFyAcaTaV3EpGyFerhyCDWVujf6bavP3OWwhzVFadsTLXO3NG++Q3H
         9oDHgeth9Nl07oOsh9g614dEZCW0EITCXvRsAW8fWXgg/2aH9YSK4xFMf0dfe7eCzK3c
         hs1Jali3vk31v5BcgKZN2tgPhM7sPsEpgOASRbw2Uyyw+oBmRyEahhJBQpa6LJ8JLqwa
         +D5Ee+Ol5fygL30/1B1HAXm3zZa/nsJ/Tt8PpSqsuIHYx6v6Ltsg8Rp62IhubJLhXdMo
         Fifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hWA3PfEj0sUYmua9c5YmWZQn9DXltelaogsF1EWSi3Q=;
        b=a504un8RAuVbuQyCIMlxQTOKWIQnckPJyiXqhzzXspTHQi+y+cQhx+4ddpCGgNdTt9
         gAPHH9ojlUjbw7Vbp89vxko0K2kGhB0dATXKd2CNnHoBcn1gxBGlvDccf9syLD4/e1h2
         JnpuElR8CwvQ6NfwKGpt7INUHNrJZagQYn2zgbBNlIhJfUCIibNHXXmE4o9jFxg2lRxf
         4PAKfHatcdkZAEULW85AkOtnUJjJ/iI5MCuem6iDJS1ms1gpiz3oZ7S8QGQ3jIXURuiK
         bgLKki6r6ghcRkbtTQYTg7/NmK4aLWucKRICXjxEIYJfYrXSw2+ROJeekznYyKVeSHLz
         lzjA==
X-Gm-Message-State: AOAM531oIsPbyQBQjlKlFoKyTI+zCGvpgwBFBLeoSBqt9ACYp7W7QlO4
        CwJ6ZHoxc4TqWw0PFr4FKYdSjg==
X-Google-Smtp-Source: ABdhPJy5ehSkcx6hq31DUs79OsBLpYT5Tmxx+qSjGyr7PI6GOVPeE/1GzXDxwElJ/Nvc/c79auwnFA==
X-Received: by 2002:a7b:c852:: with SMTP id c18mr40932369wml.128.1625863466971;
        Fri, 09 Jul 2021 13:44:26 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id v206sm5345621wmg.37.2021.07.09.13.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 13:44:26 -0700 (PDT)
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
Date:   Fri, 9 Jul 2021 21:44:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 07/07/2021 17:57, Alejandro Colomar (man-pages) wrote:
> On 7/7/21 3:31 PM, Jonny Grant wrote:
[snip]
>>
>>
>>
>> Maybe the man page could just state:
>>
>>
>> NOTES
>>
>> The calling strlen with a NULL pointer is undefined behavior.
> 
> Okay.  I agree that should probably be documented.
> I'm surprised it's not documented already.  Not even in the glibc manual (or I couldn't find it).
> 
> There are a lot of functions that should get this addition, though.  I'd like to patch them all at once.  I'll try to find a list of functions documented in the man pages and that have nonnull in the oimplementation.  If I don't come back soon with a list, please ping me.
> 
> Thanks,
> 
> Alex
> 

Perhaps the NOTES section on strlen(3) could also give a hint that strnlen would be better to use than strlen if the max buffer size is known.  Likewise suggestion the same for wcslen(3) could suggest wcsnlen(3) where the buffer size is know.

With kind regards
Jonny
