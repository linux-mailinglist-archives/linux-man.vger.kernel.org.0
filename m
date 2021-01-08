Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6652EF19A
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726482AbhAHLuR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:50:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbhAHLuR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:50:17 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CC49C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:50:01 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id w5so8683256wrm.11
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M3Qb79gYLf2onszv+qJ9wtwjKwEa0rIqjBMMbwGDCZk=;
        b=ZFZjORTDZwJ1rFHQPhbrJyBrPZLSleBZXEvd1BowxNVZYlh8r5G0GO5Y8wJjNhxmK2
         AGr7kA9kTeZmXAm+65lpUvX9YsT1v9oM2W8gK2KG8j+mNhOfz5dcQjUW/kTT+IuJNTzh
         oEORbe9wAQ3zsvFyRdAc1DWQRoGjxjInzex7K1gzrYnY3Wm7HyZgkYykezMxEqkAvzBu
         PUzpC5w0pM0TMuHG5zpfRVEso0bCjvyULAXLyUnobcIy+rHGwMq8HAdIrPhJZPZoRCdu
         BDqqUJocuW3CwiQjL0erP5cJ5FFLn16d4K7ZiB35/2CNvVGMoP9kT6/Y9B3y3tRa8Pcb
         gYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M3Qb79gYLf2onszv+qJ9wtwjKwEa0rIqjBMMbwGDCZk=;
        b=Xbr1GZ+d2Dtq+WEYWAvOWbQIgLPoX3yRm3ImyasEZea7WpNaG8YCZtAgPbXbxFMsM3
         fjg59XzG5Nz3pP05Cb/EaG3fUh2/jPnhzBYFA5oK8XixpqAl0fad7xQHr9v7QeMFzk87
         X7W7FJti9zHQqUEkB9lZnnY18m4UjbQgB4XLDhhEtNrN8KujHmSTjy9RbNQ2/wp9Iay9
         eW+0vYumPtx7iPKfUqRHIuCt7DDvi4Qg/uYKM6yjY8d3y5HC1Il3mQIzNACrfQiZHBme
         sbUnPPHIw9bw33M0M7cSjceMBvPadAsW4Tw55nVRxQ/4V8ItB96tS0JibBmhAEHmUfUT
         Y/TA==
X-Gm-Message-State: AOAM530tgtSfHPOgT59xzn4A2c5CU3mi+LtA4514q+dNnQ4Fg0fqwsk6
        Bpqjb8u6N853OQJSp/NKoQquASw6xO8=
X-Google-Smtp-Source: ABdhPJykutazft8e82R+sbqutiQFiEDGcw3NaUXsbo7xel7XNv4SkR668mThaVKw2vIDjOTRK7s8tQ==
X-Received: by 2002:adf:e60f:: with SMTP id p15mr3254103wrm.60.1610106600285;
        Fri, 08 Jan 2021 03:50:00 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id y63sm12096875wmd.21.2021.01.08.03.49.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:49:59 -0800 (PST)
Subject: Re: Escaping whitespace
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
 <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
 <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
Date:   Fri, 8 Jan 2021 12:49:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/21 12:29 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Thu, 7 Jan 2021 at 18:11, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> On 1/6/21 1:51 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> While having a look at your latest commits,
>>>> I saw that there's a bit of inconsistency in escaping whitespace
>>>> (existing previous to the commit):
>>>>
>>>> Sometimes it's [!\ (], and sometimes it's [! (].
>>>
>>> Thanks for prodding me about this.
>>>
>>> Yes, it's inconsistent. And given the use of .nf/.fi
>>> around the text blocks, escaping the spaces serves no
>>> purpose. So I made a more radical fix; see commit
>>> 5c10d2c5e299011e34adb568737acfc8920fc27c
>>
>> Nice!
>>
>> After your following commit (422d5327a88fa89394100bafad69b21e50b26399),
>> I found that there are many such cases.  Just [[grep -rnI '\\ ' man?]]
>> and you'll see.  Some of them are valid, but a lot of them aren't.
> 
> Can you point me at some examples?

A sample:

man3/envz_add.3:61:.RI ( *envz ,\  *envz_len )
<< this should be two lines
man3/xdr.3:184:.IR "long\ *" .
<< unnecessary
man3/scandir.3:277:.IR "const void\ *" .
<< unnecessary and self-inconsistent
man5/proc.5:1350:.RI ( "readelf\ \-l" ).
<< unnecessary
man7/symlink.7:424:.I "rm\ \-r slink directory"
<< unnecessary and self-inconsistent
man7/feature_test_macros.7:492:.IR "cc\ \-std=c99" ).
<< unnecessary
man8/ld.so.8:313:.IR "readelf\ \-n"
<< unnecessary

Maybe I'm missing something?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
