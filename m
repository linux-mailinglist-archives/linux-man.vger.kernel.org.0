Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1433DCBA9
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 14:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231803AbhHAMaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 08:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231722AbhHAMaM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 08:30:12 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C09FC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 05:30:03 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l11-20020a7bcf0b0000b0290253545c2997so9319791wmg.4
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 05:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L8AtBCqnQA63nBaj6lTZXeSo/KJjfJvtIq/+LABixJU=;
        b=JZs1JcWuTEyJFCiWTwiMseauUSCsyTS2Ntu1KjpgnGjBiw3yAYZ/yIiQwwJDM3pOz3
         t0mPsy29+krqIvwu51UoYoez33uSr00AyZ5sXpBXpX7+rm7QqYyV7aj+98+dAsNgp0cP
         aw2DYm5tvxRFpja3GPEDNSwE+P2JwZmdINwdKp/qRPLRIZrG29v3PaLqJdDAudMjHYDu
         GUu1yIJhnNAfQwJrJcsFglyDvRJyPTzHJmmnC7XHfzXdE2HDEkPOhNeAucppAuX+IStC
         0jH7vRs1l8oJp0SCvQ5HpI3CeZhWTQvTLbM+3/2T845G436XppFJE9Znfjkb6RGTdAMn
         WZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L8AtBCqnQA63nBaj6lTZXeSo/KJjfJvtIq/+LABixJU=;
        b=dUPdkvGEqGceAHqc1zMg/VBZv7nkEsJZ8f1jX9CFX1uDng19praRbJ/dFXZoxa2KI0
         drZ7HdQY9ou27eLslU2kJ5i7HNIeetuamUS/swqZ3GKuJ86Twr8VeXqGUFaDp51x90e/
         A9dMM28kSZMI5p8bdM8yzDQKZi0gQeAUR0ZEJ3DKNtQ1FDHG3v/GC5AYoNn6VAIm75Ej
         EVDddHx/dIb0l8RHqs1d2it+upkhSclzY7xR5eWyE5Df0rI/srta1Ozbdtc0mPAp0bHK
         X4syO0wncp4f8weVl2A4vJpTYPmM7m0D1wkPPxstOhpo6F0Kn3fko1DLHPzAo/Hkza/j
         /PzQ==
X-Gm-Message-State: AOAM532OfQcEAk+BCVJCIFT7fVEDxpoAZ4KnGvC/xGFuqA8jPxAlOQat
        53cPGUJe/AM2Z5Wv2seLGhROv5hYA+o=
X-Google-Smtp-Source: ABdhPJw4O+2jK2l663auMbv6uy7A1r9wCGCah+zj1o2fiSLDUZpoO3NYZrBZmqkV6PLBD7iqVQVfYw==
X-Received: by 2002:a1c:238e:: with SMTP id j136mr12171554wmj.91.1627821001945;
        Sun, 01 Aug 2021 05:30:01 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id x21sm7410324wmi.46.2021.08.01.05.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 05:30:01 -0700 (PDT)
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
 <20210801114156.w3hmedegg5574zho@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3ace504d-338f-039f-462d-3faffc9af4d1@gmail.com>
Date:   Sun, 1 Aug 2021 14:30:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801114156.w3hmedegg5574zho@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden,

On 8/1/21 1:41 PM, G. Branden Robinson wrote:
> At 2021-08-01T12:49:39+0200, Alejandro Colomar (man-pages) wrote:
>> $ apt-file find git-send-email
>> git-doc: /usr/share/doc/git-doc/git-send-email.html
>> git-doc: /usr/share/doc/git-doc/git-send-email.txt
>> git-email: /usr/lib/git-core/git-send-email
>> git-email: /usr/share/man/man1/git-send-email.1.gz
>>
>> You should install git-email if you're on Debian.
> 
> Evidently!  Good grief, why is that split off?  <grumble>
> 
>> apt-cache also helps if you don't know the exact name of the
>> git-send-email file:
> 
> Yup, it was more like I did not even imagine that the package had been
> split up like that.  I thought there must be a licensing problem or
> something.

The same happened to me the first time.

I guess it's the way Debian folks do their packaging, breaking 
semantically :) every package into smaller packages.  As send-email 
isn't needed at all for (basic) git usage, it can go into a separate 
package.

I like it.  It reduces the size of every package, and you have more 
control over what you have installed on your system.

Comparing that to the short time that I used Manjaro (Arch-based), where 
I had to install full-blown GUI programs just to get a C library...

> 
>>> I did a web search and did not find any reports that NeoMutt does
>>> violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I
>>> use its SMPTS server to send mail.)  Does someone on this list have
>>> experience with this MUA and/or provider?  Is there a trick?
>>
>> I also use gmail, so their servers shouldn't cause any errors, I
>> guess.  But I'm no expert on emailing.
> 
> Damn.  I really like GPG-signing my outbound mails, especially including
> patches.  I try to exemplify the audit trails I advocate.
> 
>> [sendemail]
>> 	smtpuser = alx.manpages
>> 	smtpserver = smtp.googlemail.com
>> 	smtpencryption = tls
>> 	smtpserverport = 587
>> 	smtpPass = my_password_goes_here
> 
> Thanks!  Without some NeoMutt help, it looks like this is my route
> forward.

If you get it to work while still signing your emails, I'd be interested 
in knowing how you have set it up.

:)


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
