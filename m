Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7AE3A2006
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhFIWbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:31:42 -0400
Received: from mail-pf1-f178.google.com ([209.85.210.178]:41753 "EHLO
        mail-pf1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhFIWbm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:31:42 -0400
Received: by mail-pf1-f178.google.com with SMTP id x73so19748834pfc.8
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3MNFmoEnSk6GSx+4wQBbV9xcDP4JlbeOetpvAhDw3Fk=;
        b=q8ZSkGWvfsbGcbPA8YCQAbqzoQtWGJXGm3GxRKkpi2dwzNNh8pN/6JrwTjOyCSgspF
         ontWiluENY/oAiziZHSWpkK7wz0W5qXfHCe3dIfod5jTYYQKVWrxbOWYApDd/CyPsTZs
         JkFhvogaSB4lowal/cIqn4EAN8OPzNTg3ImOo11ArZZOOYeL3b8cNJ9bvZiHTvDkX0pF
         1du2oiQ1RX3Mf+A9xEaU1qrKt/aWoOCNS6eXxx6uWkWH7jF5oLiNuSNdIDLLQ4o1Xsyp
         SeOFOhGrND5B/aD/IoGMZXsuWHrRxWPuOdoVXvIWV4W39vprHfmW7GDYCDbyy4s2V+k8
         D7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3MNFmoEnSk6GSx+4wQBbV9xcDP4JlbeOetpvAhDw3Fk=;
        b=clv8oFR3l1p5ZSXyfx1VJmaIUFBAqxZ1n2rL4i86pR9KS6ll5q5GlJDPqQFTpUWvkN
         C7fOPa4nwTJGB1cP8DeMYFMgVXKp8hj3ImvQgQ0DdC2g7Kd9Ugj6HwqbtbuttdczkVPw
         2FJYiDmdRGzfWEesuxZx43nhX4pKbWSSb/dAxu8H4fHnfdz7UYzITnpAtBRiJtPw0rWJ
         29FdMeU5zT23U2Yh3N1GMXVeFaTaKgHa4aTLKNvchQNVWvesbWXrxI7B1UhfLUYWkP07
         HGpKlaLDpH5b2++04DjVospI/wL1SCT0LwfVtmAAUyW+M0Ukwj/ipzMgziyFY+Mjx6mv
         hTlw==
X-Gm-Message-State: AOAM532O4FFvYSm9RtLqr1CevqwPrapU85ujQ0kOAeSLaSCcI9XSwxGs
        LxmfB50pBo9X4CK2s/rN3Se6dnNb0QM=
X-Google-Smtp-Source: ABdhPJzSUQQu7jbOYcj04+ZtYcw1dHjKkw6YBhi0btwV0ua84jpmpVEc6sx5tQiiDcMGkANdAa+ykQ==
X-Received: by 2002:a05:6a00:da:b029:2ef:6042:5957 with SMTP id e26-20020a056a0000dab02902ef60425957mr2020971pfj.10.1623277727256;
        Wed, 09 Jun 2021 15:28:47 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id a20sm484998pfk.145.2021.06.09.15.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:28:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/10] man2: SYNOPSIS: Use syscall, and fix includes.
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
 <ddc30879-c7c1-d66e-2eed-443319f3186b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f0c45bfb-cc5f-ad29-167c-c77fefb385f5@gmail.com>
Date:   Thu, 10 Jun 2021 10:28:43 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <ddc30879-c7c1-d66e-2eed-443319f3186b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 7:09 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 5/22/21 1:25 AM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> Almost finished these:
>> $ man_lsfunc man2 | sed -n '/socketcall/,$p' | wc -l
>> 67
>> $ man_lsfunc man2 | wc -l
>> 401
>> $

From v2, I applied all except 3+4. Could you please resend
whatever should be applied to seccomp.2.

Thanks,

Michael

> Right now I have around 20-30 more patches about this pending, and 
> that's all; I've finished.
> 
> I'll hold them until you apply (or reject) the various patch sets that 
> are pending to avoid creating conflicts.
> 
> After that, I think we should release v5.12 :).
> 
> And after the release, I have 4 branches to develop a few things for 
> 5.13/14 (some of them depending on what we decide about some RFCs):
>   - library: Use LIBRARY section (similar to FreeBSD)
>   - stdint: Use standard (<stdint.h>) types, as well as standard attributes.
>   - system_data_types: Document more types (I was documenting those you 
> mark in TLPI as important).
>   - examples: Fix the includes in the EXAMPLES sections to use the 
> minimum number of includes, by using iwyu(1).
> 
> 
> 
> Cheers,
> 
> Alex
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
