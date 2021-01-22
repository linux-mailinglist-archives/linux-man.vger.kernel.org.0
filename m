Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FDF9300A45
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 18:51:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729044AbhAVRur (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 12:50:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729579AbhAVR2V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 12:28:21 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E411AC06178B
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:27:32 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id 6so5830887wri.3
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MSQT1Z+ke8prdUSDHb+BEaDn490iC5sDrHOQ8zlukm0=;
        b=R8So5zYDvAYFRH1jXTfLimgNvwzAz0ZbrLl4/wUTvbhEnFKz9dZRDTMh82tZV/ONVh
         /FRrUJQp5AlYCoKVX7QcNif/XSl6jhBihk6eYQaBqBx3j9WtFOB7hwO9bmH1GpolTqjS
         kpIvOSSR2JG9e0cKVJ3MS18c5q1y2y3T6j1AE5ZIKCeZt8/D9iruVEdJKgbAYdzKokxb
         bOx+z1QYP7VU3jVBRB1Om9pI0Qi+2IRVzBzabgAD8CaYr+y0bivBpGk6yobf8os1YfnB
         Z+s0Ra/1kaLn4rudp3WLrKmSHRDxL/v8zvxOopdi3ekA0rNPA0pcNKDfb6yQifJ6w13J
         pPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MSQT1Z+ke8prdUSDHb+BEaDn490iC5sDrHOQ8zlukm0=;
        b=cvlXqFeFYSHbsfgPHgvaiywyJJd1QQrmf0DJj3+ZGyzz+bvVMq0hXnJs1Z06TAXtpH
         r+sh11Q/Ad/g806qa8G3Lq0J/kWmBUJEa2+Xk2JrE79hxQKh+R+DwhYhwyAoDaT5qVkP
         wKdRqG7Xuh4pLPw02KvhDM3W4pcVgTOLdoGMgZziuRA9agY9Kn32Ui1qrQgZhYgvsDjL
         AWHl9YNDcCzDRK77bTTH4uV2ao1dcV2RmRA+3F9z/AiQ6kg8UCgwsfdJQPavLiV542Pz
         S5EjAgd0xsb3AFxZ4R0qldmfwUc61XWhs7LBOsMay86hTcXieKxR7yHvWUaNisLRUGLe
         p0rg==
X-Gm-Message-State: AOAM530sqXz+Fn3BXZLCys9SAD+j2QFiGG8qnABijCugS6Vyd0k7W2Z8
        68CkCUBRwoOD14ubyYudEKU=
X-Google-Smtp-Source: ABdhPJzw5AsRojEdDybp4HtTpruY/yPHMD0Uf8+kAqDI8TCBWJd5yJLTH4HItwdyRqd/Z28EekoL1A==
X-Received: by 2002:a05:6000:1815:: with SMTP id m21mr5475471wrh.350.1611336451717;
        Fri, 22 Jan 2021 09:27:31 -0800 (PST)
Received: from [10.8.0.134] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e16sm834178wrp.24.2021.01.22.09.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 09:27:31 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
 <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
 <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
 <20210122100718.ab3wkbyf2hv533rz@localhost.localdomain>
 <948982ef-a747-099a-78d5-096610ec0f57@gmail.com>
 <20210122145114.hc3vsw2gc4sjwkpt@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d27e393e-a75f-ea1b-4c8c-c5afe06189cb@gmail.com>
Date:   Fri, 22 Jan 2021 18:27:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210122145114.hc3vsw2gc4sjwkpt@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 1/22/21 3:51 PM, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2021-01-22T11:50:02+0100, Alejandro Colomar (man-pages) wrote:
>> On 1/22/21 11:07 AM, G. Branden Robinson wrote:
>>> I don't think I've ever seen URLs bracketed «like this».
>>>
>>> On the other hand, because \[Fo] and \[Fc] are in the ISO 8859
>>> character sets, aren't they much more likely to be supported by the
>>> Linux console driver?
>>
>> For that same reason we could conclude that <> (less than, greater
>> than) have even better support :)
>>
>> I'd use either u2039/A, or plain <>.
> 
> The less and greater than signs are already used to bracket URLs using
> the .UR and .UE requests on non-UTF-8 devices and non-groff formatters.
> 
> If funny characters (or the Unicode replacement character) are rendering
> around the URLs in your terminal window, then there are a few
> possibilities.
> 
> 1.  Something is misconfigured; try a stock groff installation in an
>      xterm.
> 2.  The font you're using in your terminal emulator lacks adequate glyph
>      coverage; a look at groff_char(7) may help determine this.
> 3.  Your terminal emulator inadequately supports some aspect of UTF-8.
> 

I'll investigate with the tools you gave me below.
Right now, the only thing I know is that I'm using Debian Sid's 
defaults.  I never touched groff's config files.  And thanks, for the 
man.local code snippet!

Thanks,

Alex

> /usr/share/groff/1.22.4/tmac/an-ext.tmac:
>      43  .\" groff has glyph entities for angle brackets.
>      44  .ie \n(.g \{\
>      45  .  ds la \(la\"
>      46  .  ds ra \(ra\"
>      47  .\}
>      48  .el \{\
>      49  .  ds la <\"
>      50  .  ds ra >\"
>      51  .  \" groff's man macros control hyphenation with this register.
>      52  .  nr HY 1
>      53  .\}
> 
> The above chunk of the groff man(7) extension macros has not been
> changed in 14 years, and no changes to the above string definitions are
> planned.  (Nor do I anticipate changes to the value of the HY register,
> since it's present for non-groff formatters, but it's a completely
> separate issue.)
> 
> $ grep -B 1 -Ew '(la|ra)' /usr/share/groff/1.22.4/font/dev{ascii,latin1}/*
> 
> /usr/share/groff/1.22.4/font/devascii/B-<       24      0       0074
> /usr/share/groff/1.22.4/font/devascii/B:la      "
> --
> /usr/share/groff/1.22.4/font/devascii/B->       24      0       0076
> /usr/share/groff/1.22.4/font/devascii/B:ra      "
> --
> /usr/share/groff/1.22.4/font/devascii/BI-<      24      0       0074
> /usr/share/groff/1.22.4/font/devascii/BI:la     "
> --
> /usr/share/groff/1.22.4/font/devascii/BI->      24      0       0076
> /usr/share/groff/1.22.4/font/devascii/BI:ra     "
> --
> /usr/share/groff/1.22.4/font/devascii/I-<       24      0       0074
> /usr/share/groff/1.22.4/font/devascii/I:la      "
> --
> /usr/share/groff/1.22.4/font/devascii/I->       24      0       0076
> /usr/share/groff/1.22.4/font/devascii/I:ra      "
> --
> /usr/share/groff/1.22.4/font/devascii/R-<       24      0       0074
> /usr/share/groff/1.22.4/font/devascii/R:la      "
> --
> /usr/share/groff/1.22.4/font/devascii/R->       24      0       0076
> /usr/share/groff/1.22.4/font/devascii/R:ra      "
> --
> /usr/share/groff/1.22.4/font/devlatin1/B-<      24      0       0074
> /usr/share/groff/1.22.4/font/devlatin1/B:la     "
> --
> [...and so on...]
> 
> The \(la and \(ra special character escapes map to < and > respectively
> for non-UTF-8 terminal devices in groff.
> 
> So, as it happens, do \(fo and \(fc.
> 
> Here's a simple reproducer you can feed to "nroff -man" or "groff -Tutf8
> -man".
> 
> 	.TH foo 1
> 	.UR bar
> 	.UE
> 
> Regards,
> Branden
> 


-- 
--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
