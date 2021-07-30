Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47DB13DB4C8
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 09:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237905AbhG3H7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 03:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237886AbhG3H7y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 03:59:54 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8C89C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 00:59:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id b11so4789899wrx.6
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 00:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lgUYMsW89DrGoaiZnrIcKvuPxin52F8/EpVRMZYV3fY=;
        b=tl445w1vSpHbJsfafn1Dwrt4yMZzX8d0WirrTGcpYIXckGRkFfhNZBZ8zOmRE4fsqQ
         uzZC+/8AlnlXceOf/1tIcT6COt9+bCVzK3RNpSNDj4uT+htCcq3aBM9zs251t40cHVzS
         uASaQQs9jELuug5hNMoNcaPh/53FlqtX+o4s2TTGQJ6FjCKNYhMNQNFIrSZLsL2KB+Q1
         WGZCbe8e8Rbd/SFxlTejVj8w7uSUQ7HziIwVcDlZjcHb6bDIYu/Jx3ukzFJ+Urop3g+v
         HF8M9z6yjjZYNn/I0Xc4vIQ6Yv5A0+YopJIVHlut4HxuBpV4OCQ5A1vOe8Lxwdnje06N
         J13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lgUYMsW89DrGoaiZnrIcKvuPxin52F8/EpVRMZYV3fY=;
        b=AQncSEEG+cw2jpWytwGAJObBruK5sT3lBzE2Er7r4cZgKFoO+eqjBSGpN3FH8+7VX9
         y4sO7QAhss4ia3b8IKOSV8DEuLNqwUSmL2JQkFp8pbyu5qAZLaRuy6L5r8ps7Jga6fOW
         U2hWyR588wKu69jGEscG7hqa1/2Paq8RLPrOM+UGH2GEYPuAaQJTBMrn2caBA5U6d7XQ
         pNwZ+MuazuafEJESTrVlyCD9nqtIVxrmibJk9n2OGDGWoul35zFDTDIA7TWCGCZOW6Lz
         v3dd5Sv0J4H1WAhQ5Izq0R96fnFAiqXA5YsuvNUSfqDLjnfzRS/H1TdTvnDUocNQxYZ1
         xmhw==
X-Gm-Message-State: AOAM5310lKGThdS31lT/d8wyIcv2znCdASMYDQm5wjq2XCSJDGUQnQ9l
        Ydp5TEQguj+mSrpEJUE4b0M=
X-Google-Smtp-Source: ABdhPJxYq/PkATqfmmyUXp/9q6mObSKgpsY1JsUdm4QxpW4X5pQmoLDuiprhRKXVBL7MAE6zfw/Lkw==
X-Received: by 2002:adf:fc0c:: with SMTP id i12mr1541607wrr.373.1627631987507;
        Fri, 30 Jul 2021 00:59:47 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t8sm929994wmj.5.2021.07.30.00.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 00:59:47 -0700 (PDT)
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2,
 TCSETSF2
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Glibc <libc-alpha@sourceware.org>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
 <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
 <20210730002104.ug6gfh3xh4anh3e5@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e0b11f78-93c0-e3e4-097f-5e92f0b99e97@gmail.com>
Date:   Fri, 30 Jul 2021 09:59:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730002104.ug6gfh3xh4anh3e5@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 2:21 AM, Pali Rohár wrote:
> On Friday 30 July 2021 01:39:11 Alejandro Colomar (man-pages) wrote:
>> user@sqli:/usr/include$ grep -rn 'struct termios {'
>> asm-generic/termbits.h:12:struct termios {
> 
> You have there a mistake. It is 'struct termios2', not 'struct termios'.
> 
> And for 'struct termios' it is more complicated as there are two
> different 'struct termios'. One in file <bits/termios.h> (included from
> <termios.h>) and one in file <asm-generic/termbits.h> (included from
> <linux/termios.h>).
> 
> Function tcsetattr() uses 'struct termios' from <bits/termios.h> and
> ioctl TCSETS uses 'struct termios' from <asm-generic/termbits.h>.

Right.

Anyway, it is in the same header:

user@sqli:/usr/include$ grep -rn 'struct termios2' | grep -v define
asm-generic/termbits.h:21:struct termios2 {


Regards,

Alex

> 
>> user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
>> x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
>> user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
>> asm-generic/termios.h:12:#include <asm/termbits.h>
>> user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
>> x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
>> user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
>> linux/termios.h:6:#include <asm/termios.h>
>> user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
>> user@sqli:/usr/include$


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
