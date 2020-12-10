Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82C5B2D6B77
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 00:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726564AbgLJXDS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 18:03:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731920AbgLJXC6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 18:02:58 -0500
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69AEAC061794;
        Thu, 10 Dec 2020 15:02:18 -0800 (PST)
Received: by mail-ed1-x544.google.com with SMTP id u19so7366154edx.2;
        Thu, 10 Dec 2020 15:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QDZfvpgZSfMYfm7MEplQFWEgvIINNAQMW+C7CmvjGcU=;
        b=KUI9rPWT/0+rSzRNQaNaQ3NVgkfonMI8ZVVsav9PfhIg6FKx95jUOL4pHJx7gMxPyU
         b6Ui6J/1xVEmEEMpWPgD25yW/Nq0NQ1hhIbcEZCHQJcaZgyiQ4R+Ji2SaUahaeDabVqN
         eAlN5gSBkdqSpmiTm9/iT9Q+pRt6Pilz818SeSpCNyzWu0Ru5wwbb2PvLsRJVssDPCeN
         IgIDK2EaW+FXsDhjI+TBDJoK2jp4Lh9UJ5ey/GUO0C3nGhSWeS60qTRD/YatY4hDON12
         XNtcU71REpRKtvpnGy3H3ztJKeudF/Ci5pxkiM+JTv28EMAht0GPNetTkdUy/LcJIa6X
         H0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QDZfvpgZSfMYfm7MEplQFWEgvIINNAQMW+C7CmvjGcU=;
        b=iuNPo3DZzyUtDCeHd3tqIMQxu+Wyjfz+iUgHjakldMTZ4XG/jK9fxWbT9wLWpnCvzy
         dwFOxJtqw7OfEK/0dIuWdm7UtoZqqzfS/Xq2M1soLIDM6to3x1FDt3142AmZ/1bQgREF
         /GrLPCmjKJwlPaQxHc9wlJf8oncrVZN3FhWcPZv9lTE25bZ07gBHh/ep/LIdPY/iJHI3
         /mIL6hq0vOw0jSlW+hcPMjO1GosQJZT+jCkw/ZCEVJkEhglG6aY1DbL64aViCl1+Llp8
         toZwwwaeSCnEcsKaVx7UH+8UdOgTPNCQTYGFrQQIGoviYleFAHiqKelRtUxJQagU/jWZ
         8Xvg==
X-Gm-Message-State: AOAM531/7rAXzkeQ+MjO3Mo0SQuiQS85mx0WzaWzAq+AS7UZJXFxYiz7
        hYvZYY75ygtSFeSsQWB9ef6zTRYs4QkSPg==
X-Google-Smtp-Source: ABdhPJzInVj+AThpD9+6RasllPgRmzwc1VA5+NhFge7wB9ouml/YAJcu6dNedBR0fJ98/V6W6o40NQ==
X-Received: by 2002:aa7:d593:: with SMTP id r19mr9226053edq.246.1607641336805;
        Thu, 10 Dec 2020 15:02:16 -0800 (PST)
Received: from ?IPv6:2001:a61:25cc:8301:40d9:de28:875c:ad0d? ([2001:a61:25cc:8301:40d9:de28:875c:ad0d])
        by smtp.gmail.com with ESMTPSA id b11sm6170758edk.15.2020.12.10.15.02.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:02:16 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] close_range.2: new page documenting close_range(2)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Christian Brauner <christian.brauner@ubuntu.com>
References: <20201209220023.17912-1-steve@sk2.org>
 <e50183ce-3ccb-c41c-9d30-bfb622b3b1f5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <67052f7d-700f-6721-e8be-2a3c9bc8bc34@gmail.com>
Date:   Fri, 11 Dec 2020 00:02:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e50183ce-3ccb-c41c-9d30-bfb622b3b1f5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/10/20 1:24 AM, Alejandro Colomar (man-pages) wrote:
> Hi Stephen,
> 
> A few more comments below.
> 
> Michael, please have a look at them too.
> 
> Christian, do you have any program that you used to test the syscall
> that could be added as an example program to the page?
> 
> Thanks,
> 
> Alex
> 
> On 12/9/20 11:00 PM, Stephen Kitt wrote:
>> This documents close_range(2) based on information in
>> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
>> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
>>
>> Signed-off-by: Stephen Kitt <steve@sk2.org>
>> ---
>> V2: unsigned int to match the kernel declarations
>>     groff and grammar tweaks
>>     CLOSE_RANGE_UNSHARE unshares *and* closes
>>     Explain that EMFILE and ENOMEM can occur with C_R_U
>>     "Conforming to" phrasing
>>     Detailed explanation of CLOSE_RANGE_UNSHARE
>>     Reading /proc isn't common
>>
>>  man2/close_range.2 | 138 +++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 138 insertions(+)
>>  create mode 100644 man2/close_range.2
>>
>> diff --git a/man2/close_range.2 b/man2/close_range.2
>> new file mode 100644
>> index 000000000..403142b33
>> --- /dev/null
>> +++ b/man2/close_range.2

[...]

>> +.SH USE CASES
> 
> This section is unconventional.  Please move that text to one of the
> traditional sections.  I think DESCRIPTION would be the best place for this.

Actually, I'd just drop this SH line, and keep the
subsections where they are in NOTES.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
