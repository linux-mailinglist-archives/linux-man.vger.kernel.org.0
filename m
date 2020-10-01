Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F253280308
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732242AbgJAPk5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:40:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731885AbgJAPk5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:40:57 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCDB5C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:40:55 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id e17so3421527wme.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fqFP3HN3l4uO5fBioTCbaZrVXi5E66MzNy3MFePRkZ4=;
        b=V6m5o+ngTYKh9hDrgdr5UQYgMY3BhEonD/frgkr4utQsscx+iNWDI8z/sAII/zVmDV
         gmrFoAEKl4v3fJ9UF2DYDDIgbxAyjjq+G2H60l/nUvqdCVt2p8UBIfJ65HgDzdoOMF8M
         4DGAb4u1heisUvHH+WmbBDeWNEUikXgYDq0g87KalBks8v7rX36O2naaw8iLm7bz/Ddo
         L7wyNZCeSTyfZ3iOoyd+J50IPEABKJHZ4qI1pc09PEZID5HNfFfLC9+dJtlSQsgjEiUO
         /SWnt14yXaDzL6VN2Eds1Qf3KvnyDR+jtnitWCbkLvFMWZEDtY3lDiGoFdPk/71rnuYS
         3VUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fqFP3HN3l4uO5fBioTCbaZrVXi5E66MzNy3MFePRkZ4=;
        b=dp+QCa5KIYSfuSQfw3MQJ1SAVybXKTsmWj/jwA4YW8BJic4tlzb1ZORpxarnnP6rov
         TayHffpipYicTnhQRNmQZW5AtQ9UGfAl6Z9DWpLRGbxOlx+51sqw/wJKV7b+QyoJPEZo
         aCXgxTLZP7q74+BwSiyx5a/1fGie2fr2Ki/Om6+OTrpfJBmdAYsi366vBAN2bOMuXhII
         qVYnbyXq6bCnP1adqabViBBPonhUZhUsOyGPS6+XufdIywheCMg2MkYFc+w38THIqGew
         PH0tQJwir/0GanhTWMtKz75v6LZX2cY8gRkB2lPL7QKryBHPcLmsKpvvAfpRn9yRhKcl
         MY2A==
X-Gm-Message-State: AOAM530TJgIEKjPvQ0K1ab7OZszXTB0oGzyhkbaPie2qKTBqp9QO+Jn7
        JzcISqIah0b51504/6SHaKg=
X-Google-Smtp-Source: ABdhPJx7o1SSJ70w6kTCcopgpdbSO5dkTVIcGPMB9fX09h2q56vt4xQ/9FerBaa63wQ+gSGETnVVAA==
X-Received: by 2002:a1c:a444:: with SMTP id n65mr625880wme.122.1601566854440;
        Thu, 01 Oct 2020 08:40:54 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v2sm9785312wrm.16.2020.10.01.08.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:40:53 -0700 (PDT)
Subject: Re: [PATCH 0/2] Document void *
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
References: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
 <71c5f264-38f4-18ee-fe96-39aad08c3369@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
Date:   Thu, 1 Oct 2020 17:40:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <71c5f264-38f4-18ee-fe96-39aad08c3369@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-01 17:34, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 10/1/20 5:06 PM, Alejandro Colomar wrote:
>> Hello Michael,
>>
>> This type is very special,
>> so I will probably have missed some details about it.
> 
> I do wonder if we actually need this in page at all, and given:


I think it should be.
I would also document 'void', even if it's a bit weird...
They are very useful, so why not document them?

> 
>> Also, do you like the link name?
> 
> I really don't like it... I don't want to create files
> whose names are globbing characters; that's a road to pain.


Yeah, me neither... :)

> 
> So, even if we did document this type in the page,
> I don't think we can have a good link name. (I suppose we
> could add it to the pagewithout having a link.)


But maybe we can have a link void.3.

> 
> Thanks,
> 
> Michael
> 


Thanks,

Alex
