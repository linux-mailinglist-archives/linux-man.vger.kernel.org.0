Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D663B276235
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 22:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726419AbgIWUfU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 16:35:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726199AbgIWUfT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 16:35:19 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D2E8C0613CE;
        Wed, 23 Sep 2020 13:35:19 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g4so1415736wrs.5;
        Wed, 23 Sep 2020 13:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+JAoNjE9BgUgD/+Nf0dEC/V7RUaftxkwzVMbH4CwSVQ=;
        b=lRn68ON7gqkN0fpBPmNJJ62K7nvMcG93yf5fYTDknk7w0WENXAHqjxi703j4UFgwMG
         aIb9BwHnIe93k6gtaJgBFyTudZgb+IOhHUBsG9clYo1Rg0mGIZ8WxWBrq1K3XXzy0iH5
         tRrNRnZvG9oUUuZ4u+eLyL5t8MoNE3HN0UaWEsKlD+0vfU1m1uusMx8I9FTJ5Mx5GhhO
         Q4lQ/ghwXzSZX3f/hoBdedJFGtBKdsvO/MQco9M4lqvZ/G8NXChQmoALwLoKiiXl72Lu
         iVIkyQrUNcBmnUgGEI0ujuoeMu/rnZx3+S5f+TQUIZ49Mjp7nnGlCeZFptN6jpnkuGh/
         gDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+JAoNjE9BgUgD/+Nf0dEC/V7RUaftxkwzVMbH4CwSVQ=;
        b=ma+jK1M5V/u68Bcn4gJ76ueToPwYQiGet+BdD/QVX7U278FDG+43AnzTAgBzplXPdS
         xu/OQD8oXb6s8Ybww3iAIeEGlhSea5nXV+hBHWmsTyYGRa5z+u4c/u6X7sB3xEb2thaF
         +6OVQFfs/f3OoGuxRCHUdE/YipSrQyFmOqg3XvRtOj37Pv1Gf04xQAOYMnhkTRKneUOf
         6hIR+vWIpePDwIzvSN5FhT1yhdMCkbRX6hxswByE7gXnlQgJHPqCEYp3XjRGcLIfgfn4
         ZfbrpvbXw1PB/uVGmem52XMneKOa8PGNR/Z9AH6YXEBDKz95pjMLzYbMNUxuQfNorDSn
         0PNQ==
X-Gm-Message-State: AOAM531klQXrR3OAXrQi6kKPWDTfiVhc+nPVFiQJxvBZDBuCxgGGXUtN
        t+NsQEfih2BLYrpxO1xN+v0CWtg5jFs=
X-Google-Smtp-Source: ABdhPJyQTBMSYo+WY1tf+NPwrxEyJPXJUoGDRUSqew4rUkpd7WSrRqukQPhUBVfdIdkLsOiqdHzSrg==
X-Received: by 2002:adf:b306:: with SMTP id j6mr1353497wrd.279.1600893317599;
        Wed, 23 Sep 2020 13:35:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m12sm862761wml.38.2020.09.23.13.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 13:35:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, lnx-man <linux-man@vger.kernel.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
 <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <de87f720-68fd-02ef-1ce4-aba7593dd84a@gmail.com>
Date:   Wed, 23 Sep 2020 22:35:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/15/20 12:03 PM, Stefan Puiu wrote:
> Hi,
> 
> On Fri, Sep 11, 2020 at 6:28 PM Alejandro Colomar
> <colomar.6.4.3@gmail.com> wrote:
>>
>> Hi Stefan,
>>
>> On 2020-09-11 16:35, Stefan Puiu wrote:
>>  > Hi,
>>  >
>>  > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
>>  > <colomar.6.4.3@gmail.com> wrote:
>>  >>
>>  >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>  >> ---
>>  >>   man3/getgrent_r.3 | 2 +-
>>  >>   1 file changed, 1 insertion(+), 1 deletion(-)
>>  >>
>>  >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
>>  >> index 81d81a851..76deec370 100644
>>  >> --- a/man3/getgrent_r.3
>>  >> +++ b/man3/getgrent_r.3
>>  >> @@ -186,7 +186,7 @@ main(void)
>>  >>
>>  >>       setgrent();
>>  >>       while (1) {
>>  >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
>>  >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>>  >
>>  > I'm worried that less attentive people might copy/paste parts of this
>>  > in their code, where maybe buf is just a pointer, and expect it to
>>  > work. Maybe leaving BUFLEN here is useful as a reminder that they need
>>  > to change something to adapt the code?
>>  >
>>  > Just my 2 cents,
>>  > Stefan.
>>  >
>> That's a very good point.
>>
>> So we have 3 options and I will propose now a 4th one.  Let's see all
>> of them and see which one is better for the man pages.
>>
>> 1.-     Use the macro everywhere.
>>
>> pros:
>> - It is still valid when the buffer is a pointer and not an array.
>> cons:
>> - Hardcodes the initializer.  If the array is later initialized with a
>>    different value, it may produce a silent bug, or a compilation break.
>>
>> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>>
>> pros:
>> - It is valid as long as the buffer is an array.
>> cons:
>> - If the code gets into a function, and the buffer is then a pointer,
>>    it will definitively produce a silent bug.
>>
>> 3.-     Use sizeof() everywhere, and a magic number for the initializer.
>>
>> The same as 2.
>>
>> 4.-     Use ARRAY_BYTES() macro
>>
>> pros:
>> - It is always safe and when code changes, it may break compilation, but
>>    never a silent bug.
>> cons:
>> - Add a few lines of code.  Maybe too much complexity for an example.
>>    But I'd say that it is the only safe option, and in real code it
>>    should probably be used more, so maybe it's good to show a good practice.
> 
> If you ask me, I think examples should be simple and easy to
> understand, and easy to copy/paste in your code. I'd settle for easy
> enough, not perfect or completely foolproof. If you need to look up
> obscure gcc features to understand an example, that's not very
> helpful. So I'd be more inclined to prefer version 1 above. But let's
> see Michael's opinion on this.
> 
> Just my 2c,

So, the fundamental problem is that C is nearly 50 years old.
It's a great high-level assembly language, but when it comes
to nuances like this it gets pretty painful. One can do macro
magic of the kind you suggest, but I agree with Stefan that it
gets confusing and distracting for the reader. I think I also
lean to solution 1. Yes, it's not perfect, but it's easy to 
understand, and I don't think we can or should try and solve
the broken-ness of C in the manual pages.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
