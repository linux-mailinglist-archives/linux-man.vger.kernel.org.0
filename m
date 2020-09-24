Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8278276F5D
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:07:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727566AbgIXLG4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:06:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727589AbgIXLGw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:06:52 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72389C0613D3
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:06:52 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id n13so2900923edo.10
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IwhYXygEm1/aw8lSdiBAyBsp22BzTrAhW9/qwfYU7jk=;
        b=inLBDWQiwBq5MmErCyWosHri+WTh5Dh86aBp30MKv1zsWSr2of+6C6ZHBAeYFOib7i
         WOSSk7adfVsn/7K0SiqyMVTKpD3YGDotTBVsmioRNiyuj3WpjYTqTak1F48xnVmcn9Ln
         juuYlZxgUdTgLRqFIv33obWvjkA4l3AmUriCmvgnDyoDGJV5gUzqCY9hwiaRT9xCul9u
         auSwDz97yALQTD7MEagHvBCpz5b9XZF0WNh9Xa+dpTGn8wBq3F3SYTRDPX/3khRUSNw0
         si0HXierD1RawC5YvcrhGILhR2nE3msQm+FbPcOLDmaqjqdkbgYzuxC74cSFA5UHFS++
         4uWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IwhYXygEm1/aw8lSdiBAyBsp22BzTrAhW9/qwfYU7jk=;
        b=tgM0thjAd/f+oh/IpwE69F+kXrUzy2f8az+7zhQRV1hC9nwZ+VLmktbbV4RWRlTWKr
         DmlYczudyCjaDK3DjEHb1lFATiMaFITmfcA+iEk4q0RYea9YyfPK3Qm+9foiVKpDHbGG
         HCJxpN/Gn4nyrBHe/CK17p3TBxFTX4eqRKlHJ9ujVn1NaqpORg5yi9CtyyCPkqZdLOMP
         NMJS5qoB6OtRWrlVAFxuJeEmNe0NIDul4/5BBDCK7YGc0TArWnRxXJ5qE4v764oks+7h
         k+M0FeFtqQAxvWgYFIvAtPX6vroKp/18Ux+w1hlyrJP7YfHbShF0ycEZ864oN1GKnIiI
         pNmw==
X-Gm-Message-State: AOAM533ATOnWXxTaHKCEdJPGRv2nImOLHG0yFv6RDio/9erfm6HVgQrH
        cwtA1MrOuzmWVSV/tAx26SHhL1XiTWU=
X-Google-Smtp-Source: ABdhPJz/tp2VZy0nyCB6Zov6pD2/acDItXXBHzcW92SxxVE2fMc9vwquwFhwQjd7Be/QIaSGHwrAdg==
X-Received: by 2002:aa7:dcd3:: with SMTP id w19mr428825edu.18.1600945610692;
        Thu, 24 Sep 2020 04:06:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v18sm2232903edb.26.2020.09.24.04.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:06:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/6] system_data_types.7: Add lldiv_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-5-colomar.6.4.3@gmail.com>
 <02850055-efe2-ada1-6db5-e90a53277913@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dc8ef9a2-c947-10c2-8896-395c29963751@gmail.com>
Date:   Thu, 24 Sep 2020 13:06:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <02850055-efe2-ada1-6db5-e90a53277913@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 12:26 PM, Alejandro Colomar wrote:
> Oops,
> 
> see typo below:
> 
> On 2020-09-24 12:13, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 1f7c172d7..c3add1400 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -248,6 +248,28 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>>   .IP
>>   See also:
>>   .BR ldiv (3)
>> +.\"------------------------------------- lldiv_t ----------------------/
>> +.TP
>> +.I lldiv_t
>> +.IP
>> +Include:
>> +.IR <stdlib.h> .
>> +.IP
>> +.EX
>> +typedef struct {
>> +    long long   quot; /* Quotient */
>> +    long long   rem;  /* Remainder */
>> +} lldiv_t;
>> +.EE
>> +.IP
>> +It is the type of the value returned by the
>> +.I lldiv (3)
> 
> I should've used .IR
> 
> It's the same in the other patches
>
> Please fix it before applying if you haven't done yet.

I fixed them all to use .BR.


> I'll send a fix for imaxdiv_t.

Okay.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
