Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6F33A201A
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:31:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhFIWdA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:33:00 -0400
Received: from mail-pj1-f53.google.com ([209.85.216.53]:56074 "EHLO
        mail-pj1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbhFIWdA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:33:00 -0400
Received: by mail-pj1-f53.google.com with SMTP id k7so2455909pjf.5
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=T8z/UfyIrxQw1IhIVSqZo+i748jwUUInp+feXJ1eR9s=;
        b=AiPj1l9Bh3to6Z5/i60ve5EtvgcXN2MlmKB1tLZD7r34vgdDbGMbd6WB0PptYbXN2J
         NayodlLSaaSEfhwyJcP6BUitCEDb2lJg5FdHY6Xcr6bhpVr0y4VcJjyBmyPwcQfJnIgK
         aP0jO0RtGCO/dRmqJY1vAin/He+yjowtkLehp+D5wIQsLvvjCKmvDdqr3TWQGqlB/w0H
         /ser3wLmwAEvoi9uDVQFfptXd8IzI3phoyOdWWlAVVOI13s7OFpieaCIOqPAoXb/Tr8C
         +u4uiDQT3S3mBZS7UrhMuvxzk6xuuVL4gQVeZE2suQRHz6eG1565xvzymZ+PQTT2rma2
         BERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=T8z/UfyIrxQw1IhIVSqZo+i748jwUUInp+feXJ1eR9s=;
        b=JsDYljdWPVS16kIyt1M8279yd2DRyxnPZp14bQeyOn7RoLYdACiwb8CtihNziPqwem
         Sf3jZlyiT7tIG4R2Nshprl2CArFdmorJ6Puyc5jE5tQFlgTqD9EDp/bvCiPIAO9NRQrn
         Uw1C8aezd3o2HFMldHo96ZBm08aOW7wE0kd3HNIEqqfmGpdCTOEjzjMuVQUxdSVWRvbz
         CS+Rm8jPKoG3KwvaM6xAncsw4xG03n0VdxN3/yKvHILQc2KYlCneid9AthO0A0CxsLye
         R+8xcUKucEY4kvSXg2k3/KOhkxz2PdrxJsLknm9MnQ4lebCE8R4v1YNZj18hcbWhUDKY
         zfXg==
X-Gm-Message-State: AOAM53299gnaY8TPaACPSXukhMItb5ffMWbCVL4/gmkoSIOTmySKMb5Z
        l8GwCldFf7Vy96PmsKuhECg495v0tKw=
X-Google-Smtp-Source: ABdhPJzweRE4B3yWxI/tK54mMJccUAtLZsCB6CYOV8UEzX8EfY844v7jxhgpEUnEtTt2TnzakdE5pg==
X-Received: by 2002:a17:902:e213:b029:115:b33c:7c73 with SMTP id u19-20020a170902e213b0290115b33c7c73mr1706029plb.46.1623277797917;
        Wed, 09 Jun 2021 15:29:57 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g8sm641008pgo.10.2021.06.09.15.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:29:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/10] man2: SYNOPSIS: Use syscall, and fix includes.
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
 <ddc30879-c7c1-d66e-2eed-443319f3186b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6ea04241-a0e0-b8b6-e91e-ebb8fb2ae9e5@gmail.com>
Date:   Thu, 10 Jun 2021 10:29:54 +1200
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

[I hit send too soon....]

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
> 
> Right now I have around 20-30 more patches about this pending, and 
> that's all; I've finished.

Good!

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

Okay.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
