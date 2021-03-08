Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E16F6331016
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 14:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbhCHNzB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 08:55:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbhCHNyb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 08:54:31 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57990C061760
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 05:54:06 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m20-20020a7bcb940000b029010cab7e5a9fso3848163wmi.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 05:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=KnaOej5eS6H338VRbBs+GYk7XtUhtOo+NCg8eqHdwHY=;
        b=AcgM9kwimmAY4CYumaPspgucsQ7tp/ULyU+jwj1EzPbV8WGfLfoHFXULNuzEaAtiaI
         IYpq65N9IbeKNBylQJM57UueekFy9T6tun7iRTGLfEvO6EBA5xcNQD7YM6FqtIty8tZU
         HY/Q13vdi4fp4XnUFBGV25sd08NrSvlP6zpA9SEXKi41KQzzVA6UoW7ifdFvoxhA623+
         XEOLeUki2hBkCvfjO+A3F/Bi8K9WkZXWD87FgMrv3XyZnjZivpeSE6wieJEEFG2xiEwX
         UC/oEq801VBR2sSP0eIsGOWcV3sFOTO1kQX0gmCO0YHeELCEmQkk/G352tDX58AL9UYF
         bwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=KnaOej5eS6H338VRbBs+GYk7XtUhtOo+NCg8eqHdwHY=;
        b=RLiayYZieTatDIaQUlegrj0NIE4p4bN2LUhXDhnzYPdl0tL9KuxcQIkvUAqJRmafq3
         GbQ3/l1AStmdLeu2kIjqgOm5/B6Q60SeSSlALHYROFKimzx5JxLYPagHhGKFjXYqdPsM
         zRr9kV7wLYNvqTFxVY7NO9Is1jURQCQrlLW6IBfaDLaJDvr7PMSO0XERolPpo2Y4E97Y
         urtaUS59SKjmOdaBSQg2+Jxat1UrgCMoMMVyvEEi4zFQZJvoncyKx3D/CNHNEKVFOoRd
         qXDBi9uVBJXSx2nNRwhthq5HPxBEtcu1+QCKbXXXSQTUetkLBydQvjto6h+7aQt2KIaF
         vmwA==
X-Gm-Message-State: AOAM533P66P9dFy/G/ykmunfUP9gBJH4si4FIZzjbQvQYbm2Myz8OlAZ
        XRLimhjtYNcaaT60lZL5QeOwGxrT60Q=
X-Google-Smtp-Source: ABdhPJwQlIYdbTBpN/M0gpfTxZIGZ1Sg/X1rJyH6GOZOxgI2iI20x9foiw80br3u84WZGYLMZNoBew==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr22385697wmh.137.1615211645130;
        Mon, 08 Mar 2021 05:54:05 -0800 (PST)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n23sm15369193wra.71.2021.03.08.05.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 05:54:04 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Formatting very long function parameters
Message-ID: <2e686e13-f846-573f-1468-5e652d571e89@gmail.com>
Date:   Mon, 8 Mar 2021 14:54:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I have a problem with pthread_mutexattr_getpshared(3).
After adding 'restrict', the first parameter alone would use 81 columns,
so I came with 3 options:

A)	Move the parameter to a new line,
	leaving the open parenthesis at the end of a line.

[
        int pthread_mutexattr_getpshared(
                                      const pthread_mutexattr_t 
*restrict attr,
                                      int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                      int pshared);
]

B)	Compact the pointer to use only 80 columns,
	by deleting a cosmetic whitespace,
	and exceptionally ignore the 78-column right margin.

[
        int pthread_mutexattr_getpshared(const 
pthread_mutexattr_t*restrict attr,
                                         int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                         int pshared);
]

C)	(What POSIX does) Break the 1st parameter at the pointer:

[
        int pthread_mutexattr_getpshared(const pthread_mutexattr_t
                                         *restrict attr,
                                         int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                         int pshared);
]


I did the 1st one, but I'm not sure about it.  Do you have any preference?

This is only problematic when both the function name and the 1st 
parameter are very long, which is rare, so it shouldn't appear in many 
pages.  I don't expect to find another case.  Option B) might not be an 
option if there are more like this (if those use >82 columns).

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
