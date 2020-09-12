Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2864626783D
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 08:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725808AbgILGdI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 02:33:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725800AbgILGdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 02:33:07 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5167BC061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 23:33:06 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s12so13409103wrw.11
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 23:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Lhf+ebiY/SR5lujEGopXmmjAhRpXrpAWz3YRmxsN9/8=;
        b=hLh/cj3qdJ6YyHvEEIFCvljV+5YP3mc4NeAQyN4fSfiD7DiUWHraPt5FywpA2YSxAo
         FqzaPLOM2pAkLj+SVE6t00I/eYjHPAV3LX87dCxVgKMZF/LaWoZFrsjqVULY1TSoN5ks
         xEJfBuA7yZuVlwazo7LsA8t/3C0RZ3PjXgWm8+86qFBnFpyfmOmUxW3Mhebhcp5KH03l
         tq2AVWvnye9Dp6q7dqVZ/HZnkpCgydD5e7NY9//UsMc0nKf1KDmOHuqdKMaRLY/WscM9
         127hYJUpI3yAhgswONatOZCVMcDKMO2ZpNViOehmC9UQxt0lQKq6PtyYtufEeqZhh2XN
         GpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lhf+ebiY/SR5lujEGopXmmjAhRpXrpAWz3YRmxsN9/8=;
        b=RFeix3QHXD3CDHSWmbvBUA4R10fElnuHybmdlUDaIjP/ZjCu1iL6LJaurml+G1XX9c
         VR4Hf8CPQwhfv8ZG8LWC8rDeu2au9rXEdHubzdjvayXqvoD6/6/7JYmbrEN8S6EjZZPC
         BYbS12TrvESfxhD09oUWoF7qvS/FoZ2Z9mVs3ljeobkzDx5n5v0v4TXaZ5a4A7W/pAnP
         lZ7zY0tjiKWX6c37/xivOqaByBwqeFXyZ6Acou0GS18cPlADbVavpsT1kvvKr5RjgPPt
         rp1w7A/q/6XtA7vL+B54XYNZBny6vsj8CeKRC2BOaS2CalwPz8ggMY035Wk27X/CvNN/
         yTpA==
X-Gm-Message-State: AOAM530ANLtp8aROM5ptLp8e6y5oCEsbPdHXToQpt0RIE/NHRjZmSsXa
        t+CM2luF9bxd4pdjuih4YpwNucGIPWY=
X-Google-Smtp-Source: ABdhPJwaMGro2KapBFimb97yRL9SSerXnldeCtFjiZVR4jXlhW9K3jN9buOugXZmf2Y0lhW6dwpBfQ==
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr1692923wrx.212.1599892384855;
        Fri, 11 Sep 2020 23:33:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b11sm8693366wrt.38.2020.09.11.23.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 23:33:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
Date:   Sat, 12 Sep 2020 08:33:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/11/20 2:47 PM, Alejandro Colomar wrote:
> Hello Michael,
> 
> In the past, when I was beginning to learn C, I had a lot of trouble 
> with the types.
> 
> When you want to know about a function, you just type 'man function' and 
> that tells you everything you need to know.
> 
> However, when you need to use a type, such as a struct or one of those 
> weird POSIX types (e.g., loff_t), the only solution is to grep through 
> the system headers (e.g., 'cd /usr/include/; grep -rn "struct 
> timespec"'), unless you already know in which man page the type appears.
> 
> I remember well when I wanted to use 'ssize_t' for the first time: it 
> was a nightmare to find which header I had to include to get it.
> 
> Do you agree that it would be a good idea to write man pages for the 
> types, or at least write link pages that link to the page where the type 
> is mentioned?

Your not the first to suggest this. Most recently, if I recall
correctly, Florian also suggested it.

The idea seems reasonable, but I wonder about the best way of doing it.

I propose the desired information for each type would be

* Type name
* Short explanation of the type (often this mcould be just a
  few words, I think)
* Whether the type is specified in POSIX; POSIX requirements on 
  the type.
* Header file that defines the type (in some cases, there 
  may be more than one. This info can be discovered in the
  POSIX spec. (Alex, do you have a PDF of the POSIX spec?)
* Cross references to manual pages of relevant APIs that use the type.

There are some weird corner cases. For example, clock_t:

* times(2): clock_t == clock ticks (sysconf(_SC_CLK_TCK))
* clock(3): clock_t measures in CLOCKS_PER_SEC

Then, do we do one page per type? At first glance, that seems
unwieldy to me. (I could be wrong.) And it seems to me that
there might be benefits in having all of the information in 
one place rather than spread across multiple pages. (For example
cantralizing the info would make it easier for the reader to
get an overview.)

Alternatively, we could have one big page that is a list of the 
types with the above information. Say "system_data_types(7)".
That page might be an alphabetically ordered hanging list of 
entries that look like this:

    timer_t     <time.h> or <sys/types.h>
        POSIX timer ID.

        Conforming to: POSIX.1-2008.

        See: timer_create(2), timer_delete(2), timer_getoverrun(2),
        timer_settime(2)

Then of course, we'd need to have links to that page, so that
people could just type 'man timer_t'. What section should the links
be in? The reasonable candidates would be section 3 or 7. I'm not
yet sure which is better. But the point is that we'd have files 
such as timer_t.3 (or timer_t.7) that are link pages containing the
line:

    .so man7/system_data_types.7

For the moment at least, I'd favor the "one big page plus 
links" approach.

Your thoughts?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
