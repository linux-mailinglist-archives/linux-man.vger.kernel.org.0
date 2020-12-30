Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA3E82E7707
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 09:32:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726161AbgL3IcD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 03:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgL3IcD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 03:32:03 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D665BC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 00:31:22 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id h16so14727513edt.7
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 00:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oHSYiRpk7zkULdsdyx/6Iz1SPrEDxfZ7e37KWsj3h50=;
        b=BWHaxbS7BvnBmjPjM6pDsdf5AWa7uEamllAX14viN9sOWvvQvJGatUCc1tWiNNsJS0
         k+6GzcRArNPuj4FYsn6A4d90cGPHIPjzmEzUAaMeo48X1Q9zuV3Pc0+cRr06kjAoycln
         tVXRTPPalBvX7MDuzrIeiv0TwLq2ZlKSwpgGLwS82rIMIJX/QjB/OA714zEyW670Ac3Y
         L7QwnUVbS2oa4OBR+o4kbNa5FnFuljMHwuUhyLQXm+btYaWyLzQa5vWx52PDL1YBAb2S
         /m7VUjQvZQXduWFo3YrUQt4zVEHKPFKf7qZTHV/ivsdEjHp3uKrMkQrQJH4SZRouXWjb
         M3eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oHSYiRpk7zkULdsdyx/6Iz1SPrEDxfZ7e37KWsj3h50=;
        b=CmGukIYq7t4m+5T8kz0rEI2DPgS32c11fqyDVWxb20jKjuM8Mum/jxpRWNCWM91e57
         TN+q/nRW7JWb46gILa6MOdaXAIGmTCRvYlYB7lrkrrmsbQ2Ba4Jh3P10sS31GiAGDiyL
         7V8Ezr06wrAGLGotlQsVHAsIRCxz/jV/I+xGetxSVIoifJ6MiZks0i1gicnqywvZcRGk
         aEXWEqRRMbtcgFoaNwp1cmc5Ag9TBY9r5akOGAMFYyy5hzL9n6sAhXgXgYeZQCR0x/3z
         ImIs2R0UFK6sekHWREFkoW8bZk3kJtCy7+bgtVPhPWqv5Q5HpkpEPN2khcw/ZwzIcvub
         p1lg==
X-Gm-Message-State: AOAM530lNHM0tFibKtHad0dp19fhdbkGGN7eC/F8CJDJnjK/jnQd7rIS
        hRbgsD1H4dmpon+CcnfbGWR0D1Q/lqo=
X-Google-Smtp-Source: ABdhPJyn6Q5CGbIpyLIdgV52a4W1WpbYV6WtCqMPiSvrF/ZCVJchsY4jAwa8KhxkSsk+YpiLSVwsVg==
X-Received: by 2002:a05:6402:17a3:: with SMTP id j3mr49344977edy.333.1609317081564;
        Wed, 30 Dec 2020 00:31:21 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id p3sm18869728ejx.0.2020.12.30.00.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 00:31:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH v2 0/4] Resend signed
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201228094211.4917-4-alx.manpages@gmail.com>
 <20201229203747.3199-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2ba7dbcc-514b-3378-8861-34cfc67a363a@gmail.com>
Date:   Wed, 30 Dec 2020 09:31:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201229203747.3199-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/29/20 9:37 PM, Alejandro Colomar wrote:
> I forgot to signed them.

Thanks, Alex. All four patches applied.

Cheers,

Michael

> Jakub Wilk (4):
>   signal.7: tfix
>   cgroups.7: tfix
>   ftime.3: tfix
>   filesystems.5: tfix
> 
>  man3/ftime.3       | 2 +-
>  man5/filesystems.5 | 2 +-
>  man7/cgroups.7     | 2 +-
>  man7/signal.7      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
