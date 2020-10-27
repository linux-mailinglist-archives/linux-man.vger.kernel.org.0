Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701D729A53C
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 08:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507328AbgJ0HIN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 03:08:13 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35418 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2507317AbgJ0HIM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 03:08:12 -0400
Received: by mail-wr1-f68.google.com with SMTP id n15so641164wrq.2
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 00:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iJUNg+DjGHr5Sid2mGMp2rjuGmhzR6I/Yq2pxuu1RGg=;
        b=L8dTDABQr/A1dagJWkG2y6KLJw4/8NZOSCGO2LUOpC8L+QPzQVeBQrUnrX5AKOm9rX
         /CQmVvNhuSarnfH7zaaDX1QoH3LCqFWEdRsO4wuw2xYwrrh0PU6IOr2V0iHumMQ8kajn
         8U0fX0P9dzIaTgOdAVxBTAmvTtEddTC0aGaDXD+eSwfppeuTIC7/iCWpMQzOnnEGxeCV
         eETXKvprNt6QpLBtDlYQBhI4TRAJ7xepQp66ZZIown8R+ky7dEXEqDB1cAX23o0/oBe8
         2ja6ltXpLbiykXqWFr10dC9NDBUmWic+6CAFEIxPJwNLkpQV777dT3tF3/jxCOSYl9LW
         b8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iJUNg+DjGHr5Sid2mGMp2rjuGmhzR6I/Yq2pxuu1RGg=;
        b=fAvtmn3AJHH1TtW6eSwWJXY9qIjVTPQ1JmoxdErIMryuVSUfmZy985r3PO2C7LrIOr
         JpIMyURAgHpPZJUiouTTwwa5kgA1j0ims3u1TtXiWHynnP+u/2MA9lBK52rIHiv2TjW4
         RpDKssxXF+pxh68N4avvhDBnEJOx/IcnM+8q2QV17Asx6WmbM8OTVNC+Tur17xRsXad9
         ZgcuRwkd/KgBMMPqhZAWsIlPvJ3fSCwnx9RLHX41RZluGsTOzobuOOJr0X5u9OA0lkgB
         fkKh9P+6ygM6qc6Ii1hBMfCFoJwiUz4rKGXfYFz/FsQETfLMM0HAU22sPktoc2fyRvDS
         hxbg==
X-Gm-Message-State: AOAM532gdE96PnkmKsnqNM4Z1K8x/jxU8+q1xm0a466LtVbcI7LmsrE7
        9cZUiXnBHOZ0YYJnTlWjRJA=
X-Google-Smtp-Source: ABdhPJyvNjcRtmV8ud6K0VSK3gynW8o3WXp3TpoLhZki2yc2Zgl8lALU4e/7//kzc5CWR4GpTbhlCA==
X-Received: by 2002:a5d:66cc:: with SMTP id k12mr946604wrw.47.1603782490654;
        Tue, 27 Oct 2020 00:08:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id x22sm831948wmj.25.2020.10.27.00.08.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 00:08:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "willy@infradead.org" <willy@infradead.org>
Subject: Re: [PATCH] system.3: Indicate MT-Unsafe
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        "Karstens, Nate" <Nate.Karstens@garmin.com>
References: <20201006161520.975-1-nate.karstens@garmin.com>
 <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
 <b9349b7939b140fc8e53d3b96807affc@garmin.com>
 <65eb1d09-64b9-03d1-321f-440b857ac1b2@linaro.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <672fc29e-1c5c-8c6c-c9f0-dfbd32c5ff57@gmail.com>
Date:   Tue, 27 Oct 2020 08:08:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <65eb1d09-64b9-03d1-321f-440b857ac1b2@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/7/20 8:06 PM, Adhemerval Zanella wrote:
> But calling system does not really incur in a race w.r.t the resources
> of the caller itself and least glibc does handle concurrent sigactions 
> calls and thread cancellation (by reaping the created process). I am
> not sure about other libc implementation though.
> 
> The file leakage will be only for the spawn program itself and although 
> it is might characterize as unsafe to call 'system' in multithread 
> environment I don't think this characterize as MT-unsafe (and with 
> FD_CLOEXEC/O_CLOEXEC system is indeed safe in this regarding).
> 
> So maybe document using a different markup to make it explicit?

Any further conclusions out of this?

Thanks,

Michael

> On 07/10/2020 11:35, Karstens, Nate wrote:
>> I'm fine with adding a "race" qualifier. Do you have any ideas on the type of race? I didn't see anything in the other man-pages that jumped out as being correct.
>>
>> Thanks,
>>
>> Nate
>>
>> -----Original Message-----
>> From: Adhemerval Zanella <adhemerval.zanella@linaro.org>
>> Sent: Tuesday, October 06, 2020 12:26
>> To: Karstens, Nate <Nate.Karstens@garmin.com>; mtk.manpages@gmail.com
>> Cc: linux-man@vger.kernel.org; libc-alpha@sourceware.org; willy@infradead.org
>> Subject: Re: [PATCH] system.3: Indicate MT-Unsafe
>>
>> CAUTION - EXTERNAL EMAIL: Do not click any links or open any attachments unless you trust the sender and know the content is safe.
>>
>>
>> On 06/10/2020 13:15, Nate Karstens via Libc-alpha wrote:
>>> The fact that system(3) does not support pthread_atfork(3) also means
>>> that it is not thread safe. See the discussion for the proposal of a
>>> close-on-fork flag in the 2020 April and May timeframe, especially:
>>>
>>> https://urldefense.com/v3/__https://lkml.org/lkml/2020/5/15/1067__;!!E
>>> Jc4YC3iFmQ!D9YVAE760hT-YFoOT14KmIu4y2cjQb8ZflVgpX-3rxgBF2WvxyATUeQogZF
>>> Ffv2sIQ$
>>>
>>> Signed-off-by: Nate Karstens <nate.karstens@garmin.com>
>>
>> Not sure if man pages characterizes file descriptor leak as mt-unsafe, at least we don't have this concept on glibc manual.  In fact, I think adding a MT-Unsafe mark to this potentially make any libc call that is not atomic potentially MT-Unsafe, either when they do not concurrent trigger race issues regarding memory semantic. At least I think it should add a 'race'
>> mark to indicate what exactly is MT-unsafe (as for other implementations).
>>
>>> ---
>>>  man3/system.3 | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man3/system.3 b/man3/system.3 index aef40417a..8730fabd3
>>> 100644
>>> --- a/man3/system.3
>>> +++ b/man3/system.3
>>> @@ -127,7 +127,7 @@ l l l.
>>>  Interface    Attribute       Value
>>>  T{
>>>  .BR system ()
>>> -T}   Thread safety   MT-Safe
>>> +T}   Thread safety   MT-Unsafe
>>>  .TE
>>>  .SH CONFORMING TO
>>>  POSIX.1-2001, POSIX.1-2008, C89, C99.
>>>
>>
>> ________________________________
>>
>> CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use of the intended recipient(s) and contain information that may be Garmin confidential and/or Garmin legally privileged. If you have received this email in error, please notify the sender by reply email and delete the message. Any disclosure, copying, distribution or use of this communication (including attachments) by someone other than the intended recipient is prohibited. Thank you.
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
