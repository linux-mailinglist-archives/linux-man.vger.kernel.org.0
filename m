Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F7D63E3762
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:20:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbhHGWUq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWUq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:20:46 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEA9DC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:20:26 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f5so217808wrm.13
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bPn2AtIj0513ZukLykWHrGQ7/O3Sq2DQ/gWGbRq6zT8=;
        b=SA3xis4p93193hwpQkiqxAWOH5gP5uJTtWCw4v5lh4htGUhf7fd8rf0L76XqmYUWuw
         I/i35iooS930Und/jB0vbU4Ye+vpEhgJahE0VniLFICUnVMTyU/isrXe0v9U7WN0wtq7
         UcZ3AobHKeRomOPp1I7zBFOvbX/gAOOpmAZxF/6ZgXKnNRymqhL3AQf0bTKTqMLyh0YE
         5tweY9FieuZk2Aaqc3j3Q5KGnIibfoL25sj85aiAXnQx8zbht7aOpLUP4DfUpFjeTK9I
         g86D3js8IHPm7opSkN69xHmtcAet3uVyGMOH2PxyOrtX7h9MP9jSbhDqtLKrJNfUoFnD
         eQFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bPn2AtIj0513ZukLykWHrGQ7/O3Sq2DQ/gWGbRq6zT8=;
        b=GYElCLm0KS6YtMsIzh0H3/NT+CRhNZ26ZUnRzq8FnOafT58EKBzup+v4Iwc5jU6q/E
         3C/wlbn8xJiwGTUFUeACUwK0A0NfkiISbVhejlsZC4Z4WblzggGqX8CSLSe65h3mGkbN
         YLsccbx6kMFOiOK7cRv5LU6IVKVl6J6F0RgCZCzy2sImCdjLfRAGEj0JgtOeNWExRElr
         CfmAIefXPPr8PuyPLcLLsM/o428KL+En/AgGXztSHYszWGKMIDcvSxmpOY9C0BVVBcao
         VbTUiwEB3hCLATn+LYB7KdJEfQU9mvf9s5KeB/DUtNlPoD0bFXKBphwlVOehsSho8XAt
         VexA==
X-Gm-Message-State: AOAM530mfH1L78uzSFW1569A6ELMkGA1UA6cJsBxE0WhUHKnaYu076hx
        cUBG3lYPtEB55hcNjHZCj85tlW7EGhU=
X-Google-Smtp-Source: ABdhPJz7UbxPQvIRb9ES9/xL4NV0xf+1BoblRtmu91L9JJwRMXcN29/FtYV/9v2jowY4WNQZLodF1A==
X-Received: by 2002:a05:6000:10d0:: with SMTP id b16mr17525706wrx.332.1628374825245;
        Sat, 07 Aug 2021 15:20:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l2sm2368309wme.28.2021.08.07.15.20.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:20:24 -0700 (PDT)
Subject: Re: [PATCH 07/32] printf.3: wfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sergey Petrakov <kr@spmail.info>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-8-alx.manpages@gmail.com>
 <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com>
Date:   Sun, 8 Aug 2021 00:20:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,


On 8/7/21 11:34 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex and Sergey,
> 
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> Reported-by: Sergey Petrakov <kr@spmail.info>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man3/printf.3 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/printf.3 b/man3/printf.3
>> index fcc3bd6f3..1074626e1 100644
>> --- a/man3/printf.3
>> +++ b/man3/printf.3
>> @@ -115,7 +115,7 @@ is the same as
>>  except that it outputs to a file descriptor,
>>  .IR fd ,
>>  instead of to a
>> -.I stdio
>> +.I FILE
>>  stream.
>>  .PP
>>  The functions
> 
> Why this change? What is wrong with the existing text?

I seem to remember that my thoughts when I saw the report were:

stdio is marked in italics, which usually would mean a type (by the
context), but it's not a type, so probably the author meant FILE and
wrote stdio as a typo.  But it could also be that the author meant '.BR
stdio (7)', and it's only a ffix.

What do you think?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
