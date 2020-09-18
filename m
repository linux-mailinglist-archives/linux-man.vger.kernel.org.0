Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12EE127086D
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbgIRVjU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRVjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:39:19 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71338C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:39:19 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so6980766wrt.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=81vstScny+hDic/Kqk1iMKVmAOHIvYNg8nMUJlhKO+c=;
        b=jN2+usdxgR6I1apoGk709wzBVK6QF33GkJ0jswoEsaIrAi56b8Q021rsJIk34KTqX3
         8Fyh1WMIT/kpFid4Hbkdf6KJAu1Aty7o0dzf624tC+SKL8O1OH//AomRuSuavOgwS2dP
         hgowL+dYo+/PS+UQ6g/v5UEA++0Fd0qJvVpW1oIgqchrjT352b2Yf5n/CHLFYV+LnUhE
         doK30+J0DnLi1nhtsAgtvUY+pws2OjKQeR9bqp+Jd4wT8abAJUmBdtGe6qh6VB5XSKq3
         2q5hoF1GCI4n6jDYuiYVpAW+eseUbuHrFfLcPebg+RU7EB9ipc9CqDYuIEuYyQdltZ4t
         2JeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=81vstScny+hDic/Kqk1iMKVmAOHIvYNg8nMUJlhKO+c=;
        b=DwL31BhylnWi2wE7ecPJcDUO5gvn7GjzNpQFWNC9l0zFmVokn2yXQ2Fnl3wC7iBkjP
         uu2cIAOJL2essg6l9tP6/iGjhqIsKYGcjBlf9MFBcSg43/2VKxl3knKDDWG70vXJYcuY
         KktF0IyDYQzzgQH4bQK7GSt1tERXNLlDZoSd0VzGI0dnD74jp9IZNpiKic2X2nU3ybDY
         CaMbsGYohZJIFs56/+pYR6DxuhrD1i5eVWNQCfxWvnOBJ7NwUmB8Lx1hngBt44VN5d6a
         pT1RwgaR8aw+QpxVuURADg/MZXwcv0Kcp6GeZFO7Dk1lfJSdmSotRLjbbdUxmTW5QG+6
         p5Vg==
X-Gm-Message-State: AOAM531lcR1pz4t/OG/aY0d2D+Q8veR6AO5jbyQRgte52BZhih28QT3e
        RXUT5+gGrn1KcPHP89FZqaw=
X-Google-Smtp-Source: ABdhPJxP2ttceF7owkXXAqxlZdwz+KP3m/bA0HNZYKtb2dqQJSLq+QLOY+VJoxaTFs03+cYpSM/gfw==
X-Received: by 2002:a5d:6b84:: with SMTP id n4mr42592362wrx.55.1600465158050;
        Fri, 18 Sep 2020 14:39:18 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n4sm6699526wmc.48.2020.09.18.14.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:39:17 -0700 (PDT)
Subject: Re: [PATCH 4/9] sigevent.3: New link to new documented type in
 system_data_types(7)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-5-colomar.6.4.3@gmail.com>
 <8cea2a6b-bbe1-3289-a0c2-3baa75ec757a@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3f33a784-6771-d91f-ae15-2ba599c108ea@gmail.com>
Date:   Fri, 18 Sep 2020 23:39:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8cea2a6b-bbe1-3289-a0c2-3baa75ec757a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-18 23:10, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/18/20 7:04 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man3/sigevent.3 | 1 +
>>   1 file changed, 1 insertion(+)
>>   create mode 100644 man3/sigevent.3
> 
> I think that I won't apply this, since it will hide sigevent(7).
> Okay?
> 
> Thanks,
> 
> Michael
> 
> 
>>
>> diff --git a/man3/sigevent.3 b/man3/sigevent.3
>> new file mode 100644
>> index 000000000..db50c0f09
>> --- /dev/null
>> +++ b/man3/sigevent.3
>> @@ -0,0 +1 @@
>> +.so man7/system_data_types.7
>>
> 
> 


Fine,  sigevent(7) already documents the type, so it's perfect.  The 
type will be documented in system_data_types.7 anyway, so no problem.

I guess you'll add a reference to system_data_types(7) in sigevent(7), 
right?

Thanks,

Alex
