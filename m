Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEFD634274C
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 22:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbhCSU7z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 16:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230304AbhCSU7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 16:59:53 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA8BC06175F
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 13:59:52 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x13so10417867wrs.9
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 13:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MlX6HR69Zf0+cWFVizGgA3h2XO3GfEFDa+Wk3l4uVh4=;
        b=OSnmHfWrIz8SRpw3BYc0UuODRjyO/bCi4vogeS67tCR2f7MQsiUm/26G/+0nLgxr2k
         j4IxOstaBTe0oerH4E1+SMbhu9FynRRuLJZGyOMaIOZ6HfxMWgyHKmlkeXbO57cKv0Gr
         2hvBP4rlY7M2pcfkd7xb7F2GtvTDe1Yd/oTsl39OyY7mO0U2vn9KnlEmkKy4u40sSgOa
         G5bdrQ+9hNjw7/zjGKnDbBhXmjDgzf8P7GQhsZl2oW4tod3B/LX/DHJ3Jfeot4jT1u+q
         ZCxLDGSFLhB/nrXjsLK5NTnurq3MRReDixqCKvzVnwUBHfctJM3j7cz0U7KrrIc32r2Q
         pQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MlX6HR69Zf0+cWFVizGgA3h2XO3GfEFDa+Wk3l4uVh4=;
        b=pNpWmQsc3xwq/Yy11Vyrnv+Rj6zN0pgV1CLfKa+DbPLas60CP9J5630fjlDBcPe1Iw
         5hvkSEUikQrs24OofGlpGTXlNPMkPe2OLdKObcrDAx99Q2p70JzZT0dZ71eUQAOybCdb
         9CSUqMIPcI5JY/C3VQRV8eTKlwugYnHT2XLY703qXnIKHiPlwuNwxcns1jwg8gWVP/QN
         u/P/I2Ra52f/t2RlRsRD4X7kZuXWuwJM7IePVPsuHKtRzddceer+6mj5jUAWQGPLIQAO
         BhRPq2HJkDMwvvKeh6ZT0JBVGSzM52q1eCTH0cGWRYwyVOVG9TY15h7hr2M7AhEmjfOU
         zoXg==
X-Gm-Message-State: AOAM531dGn+w7sRm2cyCcGsn7CT/yiyU4atIo1CvQRzqryaHe7WFACxE
        ENjeQNrY+GQxSBGi6uTlYFs=
X-Google-Smtp-Source: ABdhPJyNhi6GxOF8KQZJ3OMVMWvNeaCwaqzb2+X+4Ae/3GCc3rTHrv2bhhx82zvQYDD7NONLEk9g/A==
X-Received: by 2002:adf:fecc:: with SMTP id q12mr6284284wrs.317.1616187591203;
        Fri, 19 Mar 2021 13:59:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16sm9369203wrt.21.2021.03.19.13.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 13:59:50 -0700 (PDT)
Subject: Re: [PATCH 00/24] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 5)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
 <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9ef3b4d9-403b-4e75-8170-3a700fb597e8@gmail.com>
Date:   Fri, 19 Mar 2021 21:59:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <c2920146-e8d2-ea8c-80fa-76c56e5ac6a9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 3/14/21 9:51 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 3/10/21 7:31 PM, Alejandro Colomar wrote:
>> This fixes up til trunc.3 
> 
> trunc.3? I'm a little confused, since the last patch is for swab.3.

Ahh, I was also confused after your email.  Now I understand it.
I checked more pages after swab.3, but they didn't require changes.  I
wrote the last page I checked so that I wouldn't check them again in the
next batch :)

> 
>> (I didn't send you scanf.3
>> in this patch set because I did in my mom's computer and forgot to push).
> 
> :-).

Hehe

> 
>> When you come back and merge all of the pending patches, I'll send/resend
>> anything that's not in sync anyway.
>> So don't worry about missing some of them.
> 
> I've applied all of the below patches.
> 
> Thanks once again for all of this work!

:-)

> 
> Cheers,
> 
> Michael
> 
>> Alejandro Colomar (24):
>>   sem_getvalue.3: SYNOPSIS: Use 'restrict' in prototypes
>>   sem_wait.3: SYNOPSIS: Use 'restrict' in prototypes
>>   setaliasent.3: SYNOPSIS: Use 'restrict' in prototypes
>>   setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
>>   setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
>>   setnetgrent.3: SYNOPSIS: Use 'restrict' in prototypes
>>   sigwait.3: SYNOPSIS: Use 'restrict' in prototypes
>>   statvfs.3: SYNOPSIS: Use 'restrict' in prototypes
>>   stpcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>>   stpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strcat.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strfmon.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strftime.3: SYNOPSIS: Use 'restrict' in prototypes
>>   string.3: SYNOPSIS: Use 'restrict' in prototypes
>>   string.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strptime.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strsep.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strtod.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strtoimax.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strtok.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strtol.3, strtoul.3: SYNOPSIS: Use 'restrict' in prototypes
>>   strxfrm.3: SYNOPSIS: Use 'restrict' in prototypes
>>   swab.3: SYNOPSIS: Use 'restrict' in prototypes
-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
