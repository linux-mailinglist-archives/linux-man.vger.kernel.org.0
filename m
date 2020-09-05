Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D52525E8BB
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:36:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726456AbgIEPgS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726266AbgIEPgR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:36:17 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 238AAC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:36:17 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z4so10350841wrr.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2R0d3Wdsmc3yJOTv/xuXKhfVdKRWOzKuKIV10fYP1h0=;
        b=PElGsGNCj/+SSgrX5YBLWaHW9Llr23GuSTte248j+fejAAADTtE30xHbp5a0Dzn41R
         zut0SKKWvN/CosO55/Kt1Him8uaNin3hP1xd+xFqlErIElTAJpwJmcimXVPyrzr7Rh42
         fviJuE6FWurS3FrVmsvmhxrm3AOAxBsX3gZ7btJWcNHqsBK97FvVg/W5DxhN+daCucU4
         27AGf/RjZ0IfGy9eYzfVo4XaTyeBAZDYxD1CJ4V6k779zjtm3NN+K1w+m5Cp+gWXcMI3
         zKJnHtmxEw89f5JXQ2mnGvwzBpnDoAkdS99EmbHDIF3CTe8TZhDoL6iGK6cyLWCj425Y
         wPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2R0d3Wdsmc3yJOTv/xuXKhfVdKRWOzKuKIV10fYP1h0=;
        b=uLitdLQGI1NbcRJi93df/ztie1TXr4i9u/RYX/2fg0XDqT2vG+SAPmW4VoJvWRbfnD
         ClTrUU95JqnszfY18cRR2gD/gTdFQXezLMahOQVjiRsTWQ59Q4p0mAb7Gluoq4r7YF/j
         tAYx2dURl4ka7bYROhm5x1PcgwW+ui1V7L1Smj3v42cJesuICxc3ZdV5gf+kc/Y/w/b1
         OMWoW56UNv0jorX3K0fwp8jhEvEP0i674IRyFhJinL8IHhY+LhdcCxqAO0yrGa4m1FjE
         s6i5XLZ1hRH6ZehtWFkKlfzAnAbR91lE7dMYBp53ozBTbtAvv/JlXMkyjdwP9CVoyDf9
         oa/g==
X-Gm-Message-State: AOAM532jYTtwpnvSmQgt98jselRP+HW2Sy0o9yMx+UQME0e4OlyC4KNe
        y7J4DOTSwKu7vtCvUBEa1iVrzU4qZoA=
X-Google-Smtp-Source: ABdhPJy8Pfi4wRHb4iXjAzT3mSn25g/GH1VVzKZ7Lc1Bd7x6H5B/5X10CC2H5sv0xjYfO8fNTwu8kw==
X-Received: by 2002:adf:f492:: with SMTP id l18mr13506742wro.280.1599320175578;
        Sat, 05 Sep 2020 08:36:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id 31sm17925980wrd.26.2020.09.05.08.36.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:36:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 35/35] qsort.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <20200905142037.522910-1-colomar.6.4.3@gmail.com>
 <c5bde196-b3a0-10dc-1404-0c46fee14a8d@gmail.com>
 <d304e467-9551-25d8-b07c-49a69f868a44@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6b4a90d4-05cf-7e15-940c-a866985739bd@gmail.com>
Date:   Sat, 5 Sep 2020 17:36:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d304e467-9551-25d8-b07c-49a69f868a44@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 5:32 PM, Alejandro Colomar wrote:
> On 9/5/20 5:27 PM, Michael Kerrisk (man-pages) wrote:> On 9/5/20 4:20
> PM, Alejandro Colomar wrote:
>>> Use ``sizeof`` consistently through all the examples in the following
>>> way:
>>>
>>> - Use the name of the variable instead of its type as argument for
>>>   ``sizeof``.
>>>
>>> 	Rationale:
>>>
> https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
>>>
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>
>> I'm not convinced about this one. Do you really think it
>> improves readability? I kinda feel that it does not.
> 
> Well, I have two different ideas for this one.
> In terms of readability, `char *` might seem clearer.
> In terms of preventing bugs, `argv[0]` seems safer.
> For real code I would use the latter.  For the man, I have doubts.
> 
> Follow your intuition :)

Nothing personal, but I'm rejecting this one :-).


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
