Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FCA0123C40
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2019 02:13:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726446AbfLRBNn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Dec 2019 20:13:43 -0500
Received: from mail-io1-f66.google.com ([209.85.166.66]:40420 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726402AbfLRBNn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Dec 2019 20:13:43 -0500
Received: by mail-io1-f66.google.com with SMTP id x1so190571iop.7
        for <linux-man@vger.kernel.org>; Tue, 17 Dec 2019 17:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q9g03u04gdCZdXuMFsqeGiorv5o3EKrHCoFuyWommas=;
        b=dvIahFl4W71+/97tCA9EHR6WraVy0zt4rDCn4fDi+JJFUPn89/Cw1tyW86J6/Njj01
         0uMBGnwo2/WL43GvshZFe/U8XnmsY4hrS1MWN4E0mR5Trq7qoItCGmkXjfr6cSTuVGmw
         3kp8ZA3VGfk4Qtp97XEWYpwgrp4MqEqOWE9znrYKYQvTxmx+2ibKK13hfsHeZwSpdqUQ
         v/dP7SeF1Y0L6eyZT8dDI4mSGzb+BqxjUDGziMByAHiLPKXKPuV8MYuHHDwtDmLOjAzy
         1KMxHY+pnScnpnokddm40RkJu3IhHro8n/vyum0CAIexsatnq++Qi6T9zgg5Upflp4QW
         UqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q9g03u04gdCZdXuMFsqeGiorv5o3EKrHCoFuyWommas=;
        b=BtWDGwgw1i6lzU12ied354V+raVbG3d2moDIxSo1qPzkcoQGTt3vE1u6fo+do2N4vq
         avIJU5Qz1Csic1LvBDYD1X6m0YFYSkyn/XiBDCZ0DKtq+ekLIW03aMKktoAgMw/7gEt3
         gIJ/WBPhYYdv2OqdqaoN2OpTkGJ/6455JKScnGu2Lao0GC/uCqVUcRC1X5Ziq6TweBPp
         /9wiIZZhofM/bvDnu/8Cibt/A71WISD6QOo4V7AOVzJaxUJvoizkFx2YiunD0dndr42K
         JdTXTtWyCOnkfo0skSWTbEFpD5DPKxWzHKukRClnHSkag0fRU7dPIvoE6ttmDpTrs12/
         5CqA==
X-Gm-Message-State: APjAAAU04CDcemt9a1PYOlaVv3zACXcbNqj5l8/PCeOfE8ou7EEFaYMp
        NJdxwBM/nmvRLvuWFuOR2k+Ll7dv77uupw==
X-Google-Smtp-Source: APXvYqz8Qh2bzSNKw3iyVqRxEqxN+JWXAoP/JY2832DlLZd87gQxozxc7N1UlJWIOyz5qmqJrypNCg==
X-Received: by 2002:a6b:6e02:: with SMTP id d2mr681553ioh.22.1576631622021;
        Tue, 17 Dec 2019 17:13:42 -0800 (PST)
Received: from [192.168.1.159] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id m24sm111765ioc.37.2019.12.17.17.13.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:13:41 -0800 (PST)
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
To:     Leonardo Bras <leonardo@linux.ibm.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
 <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
 <de08861a89ca3481fe81e80e509b7572116260c0.camel@linux.ibm.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <258fa69f-9eee-677b-e349-96197761dd3b@kernel.dk>
Date:   Tue, 17 Dec 2019 18:13:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <de08861a89ca3481fe81e80e509b7572116260c0.camel@linux.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry, better late than never?

He's right, Nick Piggin removed that flag (and promised to reinstate it,
but a decade later I'm not holding my breath).


On 12/17/19 2:12 PM, Leonardo Bras wrote:
> On Fri, 2019-09-13 at 14:55 +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Jens,
>>
>> Would you be willing to take a look at this man-pages bug report
>> relating to vmsplice()?
> 
> Hello Jens,
> 
> Could you please provide feedback on this patch?
> 
> Thank you,
> Leonardo Bras
> 
> 
>>
>> Thanks,
>>
>> Michael
>>
>> On 8/2/19 12:24 AM, Leonardo Bras wrote:
>>> As explained in splice.2, SPLICE_F_MOVE became a no-op, and since it
>>> is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.
>>>
>>> I took a look in current code, and found no use of this flag:
>>> When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
>>> user_page_pipe_buf_steal, which is only used on
>>> user_page_pipe_buf_ops, as a .steal component.
>>>
>>> But, in the whole kernel code, there is no calling of a steal()
>>> function, making me believe this flag is not used anymore.
>>>
>>> Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
>>> ---
>>>  man2/vmsplice.2 | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
>>> index 17834607b..94fb86142 100644
>>> --- a/man2/vmsplice.2
>>> +++ b/man2/vmsplice.2
>>> @@ -123,6 +123,11 @@ if this flag is not specified, then a subsequent
>>>  .B SPLICE_F_MOVE
>>>  must copy the pages.
>>>  Data must also be properly page aligned, both in memory and length.
>>> +Starting in Linux 2.6.21, it is a no-op, because the
>>> +.B SPLICE_F_MOVE
>>> +also became a no-op on
>>> +.BR splice (2)
>>> +.
>>>  .\" FIXME
>>>  .\" It looks like the page-alignment requirement went away with
>>>  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
>>>
>>
>>


-- 
Jens Axboe

