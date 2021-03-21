Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 500B1343344
	for <lists+linux-man@lfdr.de>; Sun, 21 Mar 2021 16:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbhCUPp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Mar 2021 11:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbhCUPpx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Mar 2021 11:45:53 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D492C061574
        for <linux-man@vger.kernel.org>; Sun, 21 Mar 2021 08:45:53 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x16so14100870wrn.4
        for <linux-man@vger.kernel.org>; Sun, 21 Mar 2021 08:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ECZXPgunWp2Jqt/fL2S9MIeG1OJsjKQdIqYIMnx8M6M=;
        b=DAfvsUlll8kBIcaZ3TgcM4cmNa0WkAw1O6AXIqyvN80xOddV0bTLRx/8zz3E6IqFbh
         8HmcAQx7+u3TMjkahcJN9otuzTBbNz4BDWlX8/4EwnLJvs3esVo1kNC5h6RJhI0TRhl+
         lNweYvDckLOQxSvjUh1TAXRkVujaA4vYLmot9MxinZ1b8zwWGLf1Di+ZX2Vl1UmjkR7u
         SJLgSoNBhzNYXaTWpJkhQ3jr1X2lIC9R74VIyQ/AEYQC+7oXqaFloC7EAVqCr6Zo3DsF
         zVWUQkFq1yPbwxIaobGjQzM+IbeyVhomBMfFy6EVU/A4S0ruhZYJxbOQPqLIcSMfdKck
         Bq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ECZXPgunWp2Jqt/fL2S9MIeG1OJsjKQdIqYIMnx8M6M=;
        b=hXlJsbiwsM6odkiCWdJ5L5KKpfUCPZyiFAK5zGuvj1y0H6iOwMvPTIsCH8I1yINpG1
         6+JLYAAQqq7lORpVSP/gCZua/3Z4b0+UCDldnQwqRJ2yGymn+32WoThcKUfn4x2vGBUb
         b7HIvimWpx/WeGW9jbjB8g1/BEzuBpkedNOaSNXySEMNFlg310quT63VvIwmI6fkh70X
         3eOrxHZPPfxdiT9QHspRp7QNgnRVtIMLoSCOQbiW0m7e30G1LN6Qkznnxum081NWaGRb
         4rHi+9G+t0TIJMdwvIHU936FY77yPLF+LDhT1MCyJAjKzkHq7KwVvz7ofcSTqzZbY4r/
         CDig==
X-Gm-Message-State: AOAM531QiqGPMNbFSkOAWFAJVp0ptyAdYt8cl3cWwyWi8cMPwDATawSx
        NUZiboNx3jDJez9DsdqYNtpGYiPUcgw=
X-Google-Smtp-Source: ABdhPJy2wgJBhZmPp2QFUntRmmUtj8Er0iIijX0KfZNrMoHIc+7HEcxwytkL+GPICzqfI5pAlRYe4g==
X-Received: by 2002:adf:d851:: with SMTP id k17mr14494606wrl.254.1616341552016;
        Sun, 21 Mar 2021 08:45:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id f7sm13383396wmq.11.2021.03.21.08.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Mar 2021 08:45:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Szunti <szunti@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: user_namespaces(7) should mention overlay as mountable since
 Linux 5.11
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <87v9a0wews.fsf@gmail.com>
 <CAKgNAkh9XgUT+257TLtKBHsxuOHopqt76BL2xCz+JN2=u-xm=w@mail.gmail.com>
 <20210314232009.GA2561@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e01b2c6b-06bf-fe41-d2f4-383797d3461c@gmail.com>
Date:   Sun, 21 Mar 2021 16:45:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210314232009.GA2561@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/15/21 12:20 AM, Dmitry V. Levin wrote:
> Hi Michael,
> 
> On Sun, Mar 14, 2021 at 11:04:26PM +0100, Michael Kerrisk (man-pages) wrote:
>> On Tue, 9 Mar 2021 at 16:00, Szunti <szunti@gmail.com> wrote:
>>>
>>> user_namespaces lists in Capabilities section the filesystems that can
>>> be mount:
>>>
>>>   Holding  CAP_SYS_ADMIN  within  the  user  namespace that owns a process's
>>>   mount namespace allows that process to create bind mounts  and  mount  the
>>>   following types of filesystems:
>>>
>>>       * /proc (since Linux 3.8)
>>>       * /sys (since Linux 3.8)
>>>       * devpts (since Linux 3.9)
>>>       * tmpfs(5) (since Linux 3.9)
>>>       * ramfs (since Linux 3.9)
>>>       * mqueue (since Linux 3.9)
>>>       * bpf (since Linux 4.4)
>>>
>>> IUUC this list should add
>>>       * overlay (since Linux 5.11)
> 
> It should rather say overlayfs.
> 
>> Could you add some info about how you discovered/verified this please.
>>
>> That helps us check the details.
> 
> What a coincidence, I just happen to have the relevant Linux kernel
> merge commits cached:
> 92dbc9dedccb9759c7f9f2f0ae6242396376988f aka v5.11-rc1~83
> 4cb2c00c43b3fe88b32f29df4f76da1b92c33224 aka v5.11-rc7~28

Thanks Dmitry nd Szunti. I've added overlayfs.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
