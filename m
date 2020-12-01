Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D80B02CAE7C
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 22:35:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728548AbgLAVdq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 16:33:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728023AbgLAVdp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 16:33:45 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C9F5C0613CF
        for <linux-man@vger.kernel.org>; Tue,  1 Dec 2020 13:33:05 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id 23so5097061wrc.8
        for <linux-man@vger.kernel.org>; Tue, 01 Dec 2020 13:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tDoQUfAVjZF/IOu8Dxdrft+KsReIVnKoVHUxJhqGLBI=;
        b=W3Lh0DDvWItL/kFbdrPM8BZrAfXPv5PAgUmWfPEj1Ek/1Xm17D5u5vFrQcgfXaCiGL
         skKUcEoGTBG6GZrb/VxSB7PwuMvAitpvZ1Bih+T5AJ7H++ipBSfjgCD6ozoDOX2Xi9X6
         /bpdx3+e1h4Dlwwb7kxQzoccn2qQiJ3gIjaPq7/Y/63iydvfSZicf+I9h40qQLXibMIE
         S2gtMmd1iwkxhIkxJpvwSUr1DhXYqIQk338yduyxMixtyEfj66NbtI+hIaL31u8vH7Zw
         iFUp44dkjLPe33NwWMjoPjUFwms9QiZbJb0By1M0jAusnCSCm9G/xwUjXcr8XgqYXQwL
         b6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tDoQUfAVjZF/IOu8Dxdrft+KsReIVnKoVHUxJhqGLBI=;
        b=KPjCM67iKgm+q++yD+dOa4kT7jbRJYgtLTAgONxwDbmHptnGk8nnyoI8V6o9cLjXNe
         kIXIVBR9grE5SpEnDHu0QktXFJqfTJOCzski5M1DYl3Q2kcaO1ZjvXCL2mOVaWWVrpyO
         vVqqlcxHCTW5pBK9RTcMvCFVeA5/JjgKIntn/LTAbYQLusAqY36BgQVjzreDRTO3R02Q
         SJskYf4cEvhmoLgJq9PgOQRZc7SHUpV9PMPGKg3Crhn2OW1azBsrE7svtLzGkN0J1hMH
         Q3x3cTHnYhhWAPBLqV36J2nHA4OsWFYCDg5FaL5XHb97W92pwuuG1yqYF6iPBqoBekwo
         /S0g==
X-Gm-Message-State: AOAM533DBm3WoY2ubm4PkCu2StfWDR9G5sYPQ45kNYddCzBohPq1i0H5
        GE61kdraw8nX1vRTkMJB0n35kuPIID9Qlw==
X-Google-Smtp-Source: ABdhPJxC5v7t4TQ32EU72I37oe/t+E26osWiIcmPCu/efGKzyy63h7zO2nKxRYmcPtZ77f35Sw9ehA==
X-Received: by 2002:adf:fe51:: with SMTP id m17mr6568156wrs.98.1606858384135;
        Tue, 01 Dec 2020 13:33:04 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id p19sm1463899wrg.18.2020.12.01.13.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:33:03 -0800 (PST)
Subject: Re: [PATCH] keyctl.2: tfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Arusekk <arek_koz@o2.pl>, linux-man@vger.kernel.org,
        Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20201201144024.7556-1-alx.manpages@gmail.com>
 <7f2fab76-b144-0b1a-6568-4d2d9959c47f@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <39d20193-ff0a-0362-2b44-77f7c2da4978@gmail.com>
Date:   Tue, 1 Dec 2020 22:33:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <7f2fab76-b144-0b1a-6568-4d2d9959c47f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 12/1/20 8:48 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 12/1/20 3:40 PM, Alejandro Colomar wrote:
>> From: Arusekk <arek_koz@o2.pl>
>>
>> Fixes: fa76da808eff
>>
>> Signed-off-by: Arusekk <arek_koz@o2.pl>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Arusekk sent this patch twice. I applied the first version in my local tree,
> but this version of the patch has a better commit message, so I dropped the 
> old patch and applied this version instead.

Are you sure?
I only see one patch from him.
If you're seeing it on lore,
you're probably seeing it repeated because it
shows similar emails on the same thread even if unrelated
(which I agree, causes some unnecessary confusion).

The only patch I see from Arusekk is:
Message-Id: <20201201112245.11764-1-arek_koz@o2.pl>
which has this same commit msg, but without the signature, which I added.

BTW, thanks for reviewing the other thread!

Thanks,

Alex

> 
> Thanks,
> 
> Michael
>> ---
>>  man2/keyctl.2 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/keyctl.2 b/man2/keyctl.2
>> index 8930fb78b..4fa54bc14 100644
>> --- a/man2/keyctl.2
>> +++ b/man2/keyctl.2
>> @@ -33,7 +33,7 @@ keyctl \- manipulate the kernel's key management facility
>>  .B #include <sys/types.h>
>>  .B #include <keyutils.h>
>>  .PP
>> -.BI "long keyctl(int " operation ", ...)"
>> +.BI "long keyctl(int " operation ", ...);"
>>  
>>  .B "/* For direct call via syscall(2): */"
>>  .B #include <asm/unistd.h>
>>
> 
> 
