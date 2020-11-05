Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F16F82A87D5
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 21:14:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726729AbgKEUOh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 15:14:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726214AbgKEUOh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 15:14:37 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C36C0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 12:14:37 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id c9so2820031wml.5
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 12:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fXileg/9VEWA6CPsUeXyaEUoVXcO+vuSpdo2GRoPLSA=;
        b=dVdoZifTupEa/Srw1g1DT4aOf/NlCJwTJ5YFK3mGST4PYT7IDd4aOnaBmqc/40DzZ0
         2zKsXLPz5ZPkHs8afWdNRYZ2kfFaVDhpxxbRW5i2vFWs2w1mesPqvt9hGaVh0NiJuq2i
         nQbmgDh40XDDGJ8WrP66QhrlbrFIn0YgsNz0jGO3B9Cmos2lI16QzicmeEz0QREs+6BL
         zQ5A3uXZWawW0H8WflbmWntM1jR2Q9b80zfB7nCLQrs3gPt3KqnQoe6Gdv06nZ/85OT/
         xBGcFKCrA8Ux1DgwjJC4iC1h7bvkr6f9A76wQ7vvaP68Zr8cFH8xOiJ+MXpYB5R2tPRb
         pUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fXileg/9VEWA6CPsUeXyaEUoVXcO+vuSpdo2GRoPLSA=;
        b=t6NB0cLjJixGO8xt2AJgYysddcEPoWFAx1yaEC0/4KKq5cj7xw1Z1cP9YO6JEOoAcj
         iKA+eRwxHB1PY7VAv7x9EhROkhhpjPiD3meyrM7QmRyx3GfrgtiFE4PlVdKGSQa7Q6c0
         2aS0H+jcIGZj6eOXnHUoUXDBlnXjtp+A6jrZHZVXxTKR0mwNtuEGp2Wfag7m23Z8FHpI
         zf4n2NlcaGr1pcL7CG9Mt3IprBiWCGZ0QbyUBAJ3C6jtV7qTrnPkoHsNsSuM9HURJMHT
         K7m/+Tj1o4b7aVJKMfZS7Zv+c+vRm0rPRdxqoaENIH6cFSMgpcA8BXkKy7iv1U2uf6h0
         p4AQ==
X-Gm-Message-State: AOAM533UCM6BlZ202oNkRwngXtkhOJOXmuN8O4+sRmIsxRLAlypce5iA
        jS7BhS5oG/4q98l1It3xwyWyaJGUjuI=
X-Google-Smtp-Source: ABdhPJw9Z3rFZ5KKG3GCtFwtUYgjPIqzaJPSgIR788f4iL4v/xF/kujVQfVTGNgW6mQyJDmEDuwVLA==
X-Received: by 2002:a1c:cc01:: with SMTP id h1mr4755872wmb.114.1604607275814;
        Thu, 05 Nov 2020 12:14:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l3sm4541899wmf.0.2020.11.05.12.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 12:14:35 -0800 (PST)
Subject: Re: [PATCH] strerror.3: tfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201104163509.5795-1-colomar.6.4.3@gmail.com>
 <de7e87c2-a438-7375-f491-b4efc3338b05@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <ff7b7aaf-1abc-2623-f919-bf97e7b96554@gmail.com>
Date:   Thu, 5 Nov 2020 21:14:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <de7e87c2-a438-7375-f491-b4efc3338b05@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-11-05 10:51, Michael Kerrisk (man-pages) wrote:
> On 11/4/20 5:35 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> Thanks for catching that Alex! Patch applied.

You're welcome!

I found it while reading this: 
https://linux-man-pages.blogspot.com/2020/11/man-pages-509-is-released.html
:p

Best,

Alex

> 
> Cheers,
> 
> Michael
> 
>> ---
>>   man3/strerror.3 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/strerror.3 b/man3/strerror.3
>> index 1b95014ee..72b4d3994 100644
>> --- a/man3/strerror.3
>> +++ b/man3/strerror.3
>> @@ -252,7 +252,7 @@ T{
>>   T}	Thread safety	MT-Unsafe race:strerror
>>   T{
>>   .BR strerrorname_np (),
>> -.BR strerrordesc ()
>> +.BR strerrordesc_np ()
>>   T}	Thread safety	MT-Safe
>>   T{
>>   .BR strerror_r (),
>>
> 
> 
