Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F02A72782A6
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727151AbgIYIWm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727067AbgIYIWm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:22:42 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8DD4C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:22:41 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v12so2278627wmh.3
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=igRqMh/BmZSAiTmacRc4+NSmjSCbiYvtkvF9kuRBpXI=;
        b=K5ZBCPAWcN89Jrx1lKATKtZioYvueFt3M7EpqvBw6hKiTNEr4BB3tCqzVHvft17Ksr
         LHp24fT4LUkssPhGhbhMuCV8N6Mh6Yxs7TqhjmWQUhRdv8ePSyl1WhpwdWi5cBD+Lr9b
         6hCBlOf510xWUDaZgMr8QCkzM1vOQfcc1yNa4TEsxsumvLe0f95MppoUbxwEaK4jeoFf
         pqPdFdUeDWN5CtA1KVJ9dh+hIp/XzruWsVDFotTVy/uCB7AH3uED1DtCb2XYVrp1Tb7O
         W5Byn0A6uZsA0aTiZDfnxc9GfRr2H1ivSB5dz8H1QP7INEzw4NaxJq4C95mU9N9HcIBu
         BM3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=igRqMh/BmZSAiTmacRc4+NSmjSCbiYvtkvF9kuRBpXI=;
        b=D1Ijpy3o38TTiGzRTo4kObJeoZpQ0NT7ee7VxY9birQHm8DwFxvBeO0TKJwHR8dSOu
         TsQedKnbCcmcxh4UvKAEZyHjQuD4wK7mpXrAvqBVjsNgIvqTR19AmVJOO0e0nWleA6OI
         qcl9FVJfp9v/+7byr3M07BnkGW4mYE1erJ1sksYAgo0xW0KcKC8u9h34kzc2bbcwQkBI
         qk7mFrGxIRL/ph3tZrf/tKh37ox/g8woyiWXzVx/Dr7Q7mgmHQQxSbm07kWpz8GRNtG0
         mjhcqD8dVfwZysvhz77muiQE8+GLv+trxaeA0x8l0sy0lHM0G4Ly+biEOUc9J3PFdJMj
         pEww==
X-Gm-Message-State: AOAM531FG+FWKJKYyxTk1bw40ymsBJZmKir+JuIJKCtX8gpmgvHldyxI
        9X9I3xbjHFqGMymUuDSrjIOIQ/zZfLFtGw==
X-Google-Smtp-Source: ABdhPJxIPgy/TrQAC/Ft4NeTqP1bF9Sh7z+4q2s7izXfr6OdH0Rgd+DCG5EdSMaZ04IZ/YnMYh2DKQ==
X-Received: by 2002:a1c:6555:: with SMTP id z82mr1810761wmb.101.1601022160478;
        Fri, 25 Sep 2020 01:22:40 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 11sm1967612wmi.14.2020.09.25.01.22.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:22:39 -0700 (PDT)
Subject: Re: [PATCH 04/10] system_data_types.7: Add float_t
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-5-colomar.6.4.3@gmail.com>
 <5090c977-c75f-66a4-848f-e7ed94510d16@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <fff82316-9b02-33d9-eeb2-4ab6e73ecbd6@gmail.com>
Date:   Fri, 25 Sep 2020 10:22:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5090c977-c75f-66a4-848f-e7ed94510d16@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-25 10:13, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> A few comments here that also apply for the double_t patch.
> Could you revise please?
> 
> On 9/25/20 9:31 AM, Alejandro Colomar wrote:
>> +The implementation's most efficient floating type at least as wide as
>> +.IR float .
> 
> The C standard is rather terse here. Perhaps we could make the
> reader's life a little easier. How about something like:
> 
> [[
> This a type that is intended to be the implementation's
> most efficient floating type that is at least as wide as
> .IR float .
> ]]

I removed the "intended" part to simplify it a bit. Do you prefer to 
keep it?

> 
>> +Its type depends on the value of the macro
>> +.BR FLT_EVAL_METHOD :
>> +.RS
>> +.IP *
>> +0;
>> +.I float_t
>> +is
>> +.IR float .
>> +.IP *
>> +1;
>> +.I float_t
>> +is
>> +.IR double .
>> +.IP *
>> +2;
>> +.I float_t
>> +is
>> +.IR "long double" .
>> +.IP *
>> +Other implementation-defined values.
>> +.RE
> 
> I think we can format this better as a hanging list.
> Something like this:
> 
> [[
> .TP
> 0
> .I float_t
> is
> .IR float .
> .TP
> 1
> .I float_t
> is
> .IR double .
> .TP
> 2
> .I float_t
> is
> .IR "long double" .
> .IP
> For other values of
> .BR FLT_EVAL_METHOD ,
> the type of
> .I float_t
> is implementation-defined.
> ]
Yes, I wasn't convinced by my formatting.  Thanks!

I'll fix this patch, and the srcfix that depends on this too.

BTW, I'll also add a note that FLT_EVAL_METHOD is defined in <float.h>
Would you add that to "Notes", or as part of the description?

> 
>> +.IP
>> +Conforming to: C99 and later; POSIX.1-2001 and later.
>> +.IP
>> +See also the
>> +.I double_t
>> +type in this page.
>>   .\"------------------------------------- gid_t ------------------------/
>>   .TP
>>   .I gid_t
> 
> Thanks,
> 
> Michael
> 
> 
Thanks,

Alex
