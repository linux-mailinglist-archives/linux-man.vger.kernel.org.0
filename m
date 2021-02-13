Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA5931ADFC
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 21:37:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbhBMUgQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 15:36:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbhBMUgP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 15:36:15 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C681EC061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 12:35:34 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id g6so3968739wrs.11
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 12:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LBcSZCFKUSqSyzoItHrOzvpq3fgHR55mqD+0D+n583U=;
        b=j20P68QEvcxAYLxG9vxDQow94qJfjGVpPcYfoZLKjEE2EkcbJFAdE19pfyTzcMcP3p
         VXsOZDYn6CCNxOv31wuenUw80iVJ1Y3w6fmO5RnSPf3xNKyx5FuhYBxrO0YcJ2YINw39
         tdUHXcGOCNgKJhCxT0EgKQVNJuCTzsi4d/y4moYeAIbgFBAv0gs96qMbEA4eLwjbfOPu
         6nJ8qNiLOoBJNoD433gnm11/h760jN8S55pRS9jmEtdrXbEYrkLDzmU1fa/DV3NG+KF+
         BvLZ2DQjVU79l5h4Dav2jIUWCy8usbQLOFEqN/Befx4RRZ7/Hzi5qwerkytYU2EG2dXt
         DBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LBcSZCFKUSqSyzoItHrOzvpq3fgHR55mqD+0D+n583U=;
        b=HHlcHkeXiDprOCTw8Ygw4Cf+mDsKgLdKCUZQW0d4q8ETUOfKBv+ALSXO+7Xs6SLlTh
         V7UXi3BsZZuVI5uimLF3ko0Sj7ews9F5DZ42em/BTbn6BAtp893BYpEuWGbttc8AusbP
         tWTnLvCOAcFJRQdWROwoqcpGjPD/CtuddTcurNQ4+ClxvMDB7B2gLugbZcCQqxOjYMy/
         UjGOCLIYy0ZA/jw92whR9MEMPp5PcgTkwjYyuzlyOMLVVaP8TlAeatVuu+4cjHu1gqlq
         dmjmTZa9+ryl8FuDs+OjRTZIdqYzIYmaX7v64bo0XW8+52OprlbGUyCd6WTUy1FliDcW
         pVNA==
X-Gm-Message-State: AOAM5307Du3FXgudLMgXM54gs0wOgmdRJEzqcKcoHP6HZ1eHz53Hey0/
        2cpUc8iMNowxcV5/RE6n9w4KUuj5C7g=
X-Google-Smtp-Source: ABdhPJzEbktxqISvTdXl6Nv9kwz3S37DWHR3DK6c/BuviyX8eNAkXSGDQd+zyg2CJC7GTuMXIvmPSA==
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr10652330wrp.345.1613248533042;
        Sat, 13 Feb 2021 12:35:33 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o13sm629429wro.15.2021.02.13.12.35.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 12:35:32 -0800 (PST)
Subject: Re: openat2.2, open.2: openat2(2): Inconsistent prototypes: const?
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <b3fae639-4ba1-1d92-f8d5-febdafc1874b@gmail.com>
 <2fbd319a-89f4-dfd2-0421-540134419235@gmail.com>
 <30323eb5-11e5-0e7c-014c-ef0aa9afb45e@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <18f50a68-772c-127a-a7bf-b8c8e8151215@gmail.com>
Date:   Sat, 13 Feb 2021 21:35:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <30323eb5-11e5-0e7c-014c-ef0aa9afb45e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/13/21 7:10 PM, Michael Kerrisk (man-pages) wrote:
> On 2/13/21 7:06 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 2/13/21 5:40 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> openat2(2) is documented differently in openat2.2 and open.2 (without
>>> and with const for its 3rd parameter, respectively).  The return type is
>>> also different.
>>>
>>> Do you know which one is correct?  Else, I could read the source...
>>
>> Good spotting! The openat() page is correct. And POSIX says:
>>
>>  int openat(int fd, const char *path, int oflag, ...);
> 
> Ignore what I just said. I was misreading your mail.
> I'm not sure of the answer. The source says:
> 
> SYSCALL_DEFINE4(openat2, int, dfd, const char __user *, filename,
>                 struct open_how __user *, how, size_t, usize)
> 
> Thanks,
> 
> Michael
> 

Hi Michael,

How about documenting raw kernel syscalls as 'syscall(__NR_xxx, ...);',
instead of using a hypothetical wrapper that the user should write?

In those functions with glibc wrappers, I'd document both the raw
syscall and the glibc wrapper.  I mean something in the line of keyctl(2).

This would end with the thing that glibc documentation "hides" kernel
documentation (as the manual pages (usually) only document glibc
wrappers when they exist).

It would also avoid some confusion, and would be clearer than the "glibc
doesn't provide a wrapper..." notes (we could remove them or keep them
for even more clarity).

What do you think about it?

If we do that, I'd leave it for 5.12.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
