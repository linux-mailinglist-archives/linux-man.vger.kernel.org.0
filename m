Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 070DA3C6556
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 23:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbhGLVT2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 17:19:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbhGLVT2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 17:19:28 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B4B7C0613DD
        for <linux-man@vger.kernel.org>; Mon, 12 Jul 2021 14:16:38 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id a13so27495927wrf.10
        for <linux-man@vger.kernel.org>; Mon, 12 Jul 2021 14:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9nih0SjesEyNu2f9sZkPaNzJGSfL1m6IfnFNdinAoos=;
        b=WfRrA0w8sfkww0ZRQH3itz/6wInMFfjUZV3jQ4qiT0GG1NKFowQxY1uULDxnsHcJTZ
         EM/Ks5gsOOzvUo5NoLAUPm3Tu938/yiSfAjSd5GYbf5rZ1GVMG5k6NHGcxRpb5amnuCq
         CgSeGxTos+wftHsoMf/vKAZ/d6rDx6MjrJnJlnHoRVBst7Lp3OxuwzlZ20ZJAukaIzy4
         S69dF1JfkOwVsu886IrjlUysU7RuNCB+3B/Q1hcYriUdywqXskYhCM9ujhp2J4NPKNoM
         qX8kFVPQu1989rEcDms+i3GfGKZB1LJrYy5FKd66yTURZw8roqpuJSiEiHKjf3Pwj2y2
         xrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9nih0SjesEyNu2f9sZkPaNzJGSfL1m6IfnFNdinAoos=;
        b=hitceif7trpj4GGowLkBBccfwqC+RZVgiaUjevFdGrL0E8+evMFGrDYnXb5wlw791R
         iTuJn10EIbYf8v/7JkdUKnUNIsinEMKKB9s0mY3iLTzWMKJ/Gi0EA0wHUDSMMrbH5WC1
         YCcvwTNWkJMyPYOb5/fV1fa0tl9gtnvUXUZBFXcHOXFU5Zg8oxTwwl4maoPzcZwO1kP7
         UFYC1jYQH8YtZOC0VUVW8JKYBht3Ni7gkouXGELaePdjIC3nBS2b0Oq4+Osgp4Sl5kVd
         y8/A4xcVcRmys3MXK8fMgb5w62xYbNABLfCXOghpkwKP4xu8Ik7SVkdJIcEzgCfnnSJI
         D0BQ==
X-Gm-Message-State: AOAM531xGda2pVSbIhS68eUHpaUI19bpvRaPk4zmXwUctqDYw02MHvq5
        sNK55ly6yd3Ka3zahdrJA6BhwW6J/5GkTw==
X-Google-Smtp-Source: ABdhPJx22YnZFSSqXEIiZcJd0C9u6pOy7FU1+iI/luRTHK6u6iVJQllrzmdLPExO2InU5Dt5VJDKpw==
X-Received: by 2002:adf:e3c1:: with SMTP id k1mr1225221wrm.78.1626124596925;
        Mon, 12 Jul 2021 14:16:36 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id f12sm458226wmg.16.2021.07.12.14.16.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 14:16:36 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
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
 <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
 <3bf01638-1d53-82f9-d66b-6e4365ef1ff2@gmail.com>
 <1d1a4318-654e-e071-efb3-fef9aa9a8b27@jguk.org>
 <7d6af9f7-d672-724b-0ab2-4616ee9f6f14@gmail.com>
Message-ID: <3e3e0c35-c4c3-338b-d0d6-4b3b7cdfcf27@jguk.org>
Date:   Mon, 12 Jul 2021 22:16:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <7d6af9f7-d672-724b-0ab2-4616ee9f6f14@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 10/07/2021 22:36, Alejandro Colomar (man-pages) wrote:
> On 7/10/21 10:49 PM, Jonny Grant wrote:
>> On 10/07/2021 19:37, Alejandro Colomar (man-pages) wrote:
>>> diff --git a/man3/wcslen.3 b/man3/wcslen.3
>>> index af3fcb9ca..868f748a8 100644
>>> --- a/man3/wcslen.3
>>> +++ b/man3/wcslen.3
>>> @@ -58,5 +58,12 @@ T}    Thread safety    MT-Safe
>>>   .sp 1
>>>   .SH CONFORMING TO
>>>   POSIX.1-2001, POSIX.1-2008, C99.
>>> +.SH NOTES
>>> +.SS wcsnlen(3)
>>> +If there is a known buffer size,
>>> +it is probably better to use
>>> +.BR wcsnlen (3),
>>> +which can prevent some cases of buffer overrun/overflow.
>>>   .SH SEE ALSO
>>> -.BR strlen (3)
>>> +.BR strlen (3),
>>> +.BR wcsnlen (3)
>>>
>>
>> Hi Alex
>>
>> Thank you for making the updates!
>>
>> As "buffer overrun" refers to writing to a buffer, my 2 cents would be to express as:
>>
>> "which will prevent reading beyond the end of the character buffer"
> 
> I wrote both overrun and overflow on purpose.
> I was thinking of something like:
> 
> const char *src;
> char dest[5];
> 
> src = "This is a very ... long valid string";
> len = strnlen(src, 5 - 1);
> /* strlen(s) wouldn't overrun, but the next call would overflow */
> memcpy(dest, src, len);
> dest[len] = '\0';

Sounds like any overflow would be due to the application code, rather than strnlen.

> 
> But after thinking about it a second time, I think I'll remove it, and keep only overrun (and I like your text, I'll copy part of it), as the overflow is a problem of considering that the size of the buffers is going to be the same, and the solution is not to use strnlen(3), but to differentiate both sizes, which allows to detect truncation.
> 
> If the input string is known but the output buffer is small, I'd call strlen(str) and then MIN(len, bufsiz)  (this is kind of equivalent to what strlcpy(3bsd) does).
> And if the input string is untrusted, I'd call strnlen(str, strsiz) and MIN(len, bufsiz) (this is kind of what strncpy_s(3) does).
> 
> 

strlcpy is considered harmful, best avoid it. It breaks ISO TR24731 "Do not unexpectedly truncate strings" by silently overwriting memory before checking there was enough space to copy all the bytes.

> 
>>
>> Any thoughts about adding the following?
>>
>> NOTES
>>      Calling strlen with a NULL pointer is undefined behavior.
> 
> 
> I'm waiting for Michael and/or Florian to comment on my proposal.
> 
> I don't want to fix a page and have 296 broken...  I want to fix them all at once, but am not sure which solution to apply.
> 
> But yes, adding a line like that one is likely.
> 
> Thanks!
> 
> Alex

Ok, no immediate rush.

Jonny

