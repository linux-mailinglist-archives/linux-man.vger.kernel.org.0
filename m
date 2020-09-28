Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B47927AF58
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbgI1NsR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726420AbgI1NsR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:48:17 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44352C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:48:17 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z1so1440047wrt.3
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hQQTlqLNPfszxdJYspqx0f5cMEFsI8ZOWmKsrB/iC6s=;
        b=TAWqSfHgKyFx1k1kxO/wvdejSVnVeNo6tTTHoSf0PyuRUEL9tDE7F3SPxSXN2k1edF
         fRQHsUxU2iNMr8agBlQ2nnbc9wSDp53aKxAA1swal5ZxXg5EjbNb3BYbfMKvfswb+S65
         jWn0nPfUvGQYRI6iXmM26Yvvgm4csECE+BzgEQIMxxl5MBm853oJX+O3RwYJX3esxU/c
         bQUYn7nJSZ33YA9oqbT1TEZIolplU00twFMkvdotljD57s6evoFOI3+sMHXl8TD54WFY
         KnxBP/9cczP5gAJQoA1DchyLO7nfkjvCo6CSD/2M+H3VK4mMgCUHjfWv1TgkjYxqFZgl
         uvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hQQTlqLNPfszxdJYspqx0f5cMEFsI8ZOWmKsrB/iC6s=;
        b=kh8duy6u74bYrpsB5oQKLc88CNuSjbA+hQbrZQr1iPx7fuBDyq5pKML7ldLdPTHVc7
         eoJ8PAT/jqbK+/VM3lHBi1yTKo18MTnYtMFwPcw8GZoByBLJW8DuJHjPIGlJnmzta6H1
         mPiG467a19LhBr1+zF1ELgP6ppXtw6vEMCc/jj5GrZJMajOVqlXC5dK5vz62RT+S3H0l
         GhGwrGuzcviWUDqZlepHrWnVoV2SAKNjtFfuTxHmy/g1tQJErf1KEyPlzoFcx/DY5GER
         yn9V/1AzR01TslyUq4LieguBM+vkEhToYz1oO8jXr3ZzMlrnOSCvw161oa1QFYsu0/2q
         CzFA==
X-Gm-Message-State: AOAM531O4qG1CImbqkCyxviBMOIHnH7PeVGtedDENt+sUhhgxz/HKWxz
        8UFxjCLpqg5NAYc5J1fhh5M=
X-Google-Smtp-Source: ABdhPJxXYUcCX+w3zQupP+qDZOEvWHu1NtKYJkS/z1w4KsL+jFwyuL+VmqHABeNEbYWJv+3oi3IvRQ==
X-Received: by 2002:adf:8544:: with SMTP id 62mr1852760wrh.262.1601300895968;
        Mon, 28 Sep 2020 06:48:15 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id h76sm1407509wme.10.2020.09.28.06.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 06:48:15 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <20200928134122.GG6642@arm.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
Date:   Mon, 28 Sep 2020 15:48:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928134122.GG6642@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave,

On 2020-09-28 15:41, Dave Martin wrote:
> On Fri, Sep 18, 2020 at 01:27:55PM +0200, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
>>   1 file changed, 99 insertions(+), 4 deletions(-)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 84fea85b9..041e7e243 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
> 
> The distinction might not be worth highlighting here, but types like
> size_t are a bit special in that they come from the C standards and
> assumptions about them are really built into the compiler.
> 
> The system can define its own size_t, but it had better be equivalent
> to the compiler's definition otherwise bad things will
> happen...
> 
> 
>> @@ -92,6 +92,101 @@ See also:
>>   .\".I siginfo_t
>>   .\"type in this page.
>>   .TP
>> +.I size_t
>> +.IP
>> +Include:
>> +.I <stddef.h>
>> +or
> 
> Where does this arbitrary-looking list of headers come from?

There are two parts:  left to the ';', and right to the ';'.

Left: The canonical C standard header, and the canonical POSIX header, 
in alphabetical order.

Right: All other headers that shall define the header, according to 
either the C or the POSIX standards, in alphabetical order.

Cheers,

Alex

> 
>  From the C standards at least, <stddef.h> seems to be the canonical
> header for this type.
> 
> 
>> +.IR <sys/types.h> ;
>> +or
>> +.I <aio.h>
>> +or
>> +.I <glob.h>
>> +or
>> +.I <grp.h>
>> +or
>> +.I <iconv.h>
>> +or
>> +.I <monetary.h>
>> +or
>> +.I <mqueue.h>
> 
> [...]
> 
> Cheers
> ---Dave
> 
