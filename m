Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8CE2D7156
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 09:16:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388352AbgLKIP5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 03:15:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392021AbgLKIPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 03:15:50 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3F7BC0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 00:15:10 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id x16so11140055ejj.7
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 00:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V26ahxm2juVDynrStUQ+yooZj2Cf1OFuOoslTzoEyBQ=;
        b=d2ggdbtGejGBFBGZwwXe4SHZXKhHmxtOSUS4U4wH5Qx/bPP6odIfasliE3MXAc3s0Z
         dK9EjA4yzQELNqqryjiKoO2zLdSG/vu5qciET7ueKxYEg/rO60zx/upHGR2O3z9DeQI8
         JhO+i7zwSbyGKKAPt6Ejjql3HRWJP41Oe7C1xIJ+wifZ2/jnhc3hpyi4C9tVpRI8z+YH
         mVGUG/36KV2ReG13O7/RFSR1BLhNkWcapX6WombWqhKPT8OyPlNMcQn3yJVc3FgqbZim
         l8Q7E1PyXZ4wgf1mXqe/88y7bwAw+gHIPyh0XGew8Fbv9c7uYrntj8u81bdxLsxlnfHg
         erFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V26ahxm2juVDynrStUQ+yooZj2Cf1OFuOoslTzoEyBQ=;
        b=BqR66eyq5EI6t8f+MhpW2E6ogwAPkYNlFpaHFup8bAzVrwlMo+en6iLlEZd3tKDT1f
         O5l/PoXHLKZE4cBD8iU9a7TXhuUDe6/FctjWirVy7eSNJXbTrUq9kSwdNAT9USNitSgx
         1+whtSSjF41joCofHS7YvwoJ/7NAU48Trxf0Qd+KCqPnaOmzzVn8UXmdXAgthvKNHD8z
         NJ4i55OcXxvwO3WqJVVDwQYz6pQQSVi2ByXDouVhvsJz3GravTatssTWUL8sBocUK/gF
         5lNCMPvUgLJgmeOaYwBDEgMgv24STqpF/+4GkZtcYlc8iaScF9DX+ClmE79bGGr5a6Ev
         8X3w==
X-Gm-Message-State: AOAM532i+1/VOssRKJv623p45rxHIZbxPeVAZ29S6ljvcJCi1J1SRpNP
        t/8FDlLKXHLiidKUszsd1qY=
X-Google-Smtp-Source: ABdhPJzrELP6wKH0xNSHm/HCBfOyzQOSSEs4YHIJajOY2M1XaWOB82SCYEqUqfFrUxe+5G3I78J/TA==
X-Received: by 2002:a17:906:dc1:: with SMTP id p1mr10078613eji.9.1607674507786;
        Fri, 11 Dec 2020 00:15:07 -0800 (PST)
Received: from ?IPv6:2001:a61:25cc:8301:40d9:de28:875c:ad0d? ([2001:a61:25cc:8301:40d9:de28:875c:ad0d])
        by smtp.gmail.com with ESMTPSA id m13sm7325532edi.87.2020.12.11.00.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 00:15:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org
Subject: Re: RFC v2: Re: cacheflush.2
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Dave Martin <Dave.Martin@arm.com>
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <20201210181726.GT6882@arm.com> <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
 <f1f335e3-2459-3cfd-11c0-b105e7a5b734@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9d397d4-9eb4-bd49-0001-36fb45d0778a@gmail.com>
Date:   Fri, 11 Dec 2020 09:15:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <f1f335e3-2459-3cfd-11c0-b105e7a5b734@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

i Alex,

On 12/10/20 9:56 PM, Alejandro Colomar (man-pages) wrote:
> Hi all,
> 
> v2:
> 
> [
> NOTES
>        Unless  you  need  the finer grained control that this system
>        call provides, you probably want  to  use  the  GCC  built-in
>        function  __builtin___clear_cache(),  which  provides  a more
>        portable interface:
> 
>            void __builtin___clear_cache(void *begin, void *end);
> ]

This seems a reasonable text to me, but I think it would be helpful
to say a little more precisely what kind of portability we are
talking about here.

Greater ortability across Linux architectures? Greater portability
across platforms supported by GCC (including non-Linux) platforms?
Something else?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
