Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C012F2FF535
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 20:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727152AbhAUT4E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 14:56:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727064AbhAUTzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 14:55:40 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D12C061756
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 11:54:52 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m4so2927909wrx.9
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 11:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mAhxF3C+7Ssi1GrkaO6d1YIoANqjfMbZEKpoBfyOtIc=;
        b=ZjKqa0TPSnAuPmgNTDcdJCmPW7ringcYbqf/PEL4LLupz2mtjoAvoHKKOdk9h6s4sn
         yBwXB7x7FvU/NcLF1OpOoT6T6h1TAvZi6oz4g7K2Qxb03pi6PJWttJq2uxBXeTkHZzzv
         KUHRR5qPmY/4IDv0SM89tKn1K+6e/glC3JvzEAczEJcRmQhxqXY/BP1r91vAFfSvbzdE
         tmXMeZOYu6/ZJfKi/xb45z1JF6hl9ZvWbscKIupNGAD/6eBZDOJHDt3CoFwLTtVbCxqg
         vvJj0ZexDTy4rY86LrD17Lz4BwBjk5qgr48/HB6GofCs6PGJ39HV8EJPIlbt0C66ZWcx
         OxCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mAhxF3C+7Ssi1GrkaO6d1YIoANqjfMbZEKpoBfyOtIc=;
        b=nqNtMRm1i9Fd6bTeKLDrDuvl6Hi1cdQRAp6sSjb1nPWF4owR8l8UjDwp0Q/asY4Yww
         dInOBDHXnMoq3ic4XzYtgVgETqi73bExgAgmQ1osoiG+OswIZH0cT4ihA0QuyY2M4P1n
         eA8OXuY6WDiGL7X0QCDqrbMSqBR1Z78SE4GAsOLDfhcZr4HmqdEUmLQbsqjK/eNZZ3O5
         Y8MW54b3m4o8zIs7+/blI6p6pFFQZ0m+A2l0fPUfgrocwQY1h32yYlJ6E0fLMJCUdup1
         +56e3DaF5YR6ICb1aLGA1AqbVSU2fBb83m7MUbzH5G2kMQnKJqHz131RiwNx8bQwWyMd
         zpZQ==
X-Gm-Message-State: AOAM53189BpsNWlKRDLkPGSs8IYTZTDBmzc0IkhG9Ax229XRgXFZgjBb
        dt2GT5Q1eW16BWPb8erqAxuSJ6P2sS0=
X-Google-Smtp-Source: ABdhPJxQ1OuWoWI5c6fClfothnQw40PG0GVjaIAQyZm+b7olvR+koKZRgdu/Uz0MIiBm7MMDRA9MPA==
X-Received: by 2002:adf:f58a:: with SMTP id f10mr1114939wro.338.1611258891407;
        Thu, 21 Jan 2021 11:54:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id v22sm8708306wml.2.2021.01.21.11.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 11:54:50 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
Date:   Thu, 21 Jan 2021 20:54:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub and Branden,

On 1/12/21 9:51 PM, Jakub Wilk wrote:
>> On 1/10/21 7:50 AM, G. Branden Robinson wrote:
>>> They use left and right angle bracket special character escapes
>>> (Unicode U+2039 and U+203A)
> 
> I think that's a bug in groff. It should use plain <> for URLs, at least
> for tty output devices.
> 
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-01-10, 15:35:
>> I checked, and yes, it renders some character (the character depends
>> on the terminal: on tty I've seen a diamond, and on the xfce terminal
>> something similar (but slightly different) to a parenthesis).
> 
> Your console font doesn't support U+2039/U+203A and uses diamond as a
> replacement character.
> 
> I have this in /etc/groff/mdoc.local and /etc/groff/mdoc.local as a
> work-around:
> 
> .  if '\V[TERM]'linux' \
> .    tr \[la]<
> .  if '\V[TERM]'linux' \
> .    tr \[ra]>
> 
> (In the long run, I should probably fix the font instead.)
> 

After seeing Branden's answer to Michael (Escaping hyphens),
I've seen groff_char(7), and I found that my tty correctly supports
U+2039 and U+203A.  I clearly see the symbols I would expect: something
quite similar to plain <>, but a bit more obtuse.

In the XFCE terminal, I also see something quite expected: a slightly
smaller version of <>.

But both show me very different characters for .UR/.UE.
tty displays a diamond, and XFCE term displays (a weird version of)
round parentheses.

So... does it mean there's a bug in .UR/.UE?

Thanks,

Alex
