Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2C41BAE75
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2020 21:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726233AbgD0TuT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Apr 2020 15:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726699AbgD0TuT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Apr 2020 15:50:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9D08C0610D5
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 12:50:17 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id r26so273784wmh.0
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 12:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ry9aqbciNZoWM6EJGuL+2IgKQX9sM8bewVG72egTByo=;
        b=ZvNcbOAkocVkK1MWcDSqLhKtldIOHkJGkdHi8fuElO4DM4eDFHPyQ0vESqIC8rRGki
         Lcy3BjR4joSpu30yuYjl7fr5C2IMNqtlgDc0HnsFsnN6JBpVoughDzaBsCZWq1BOeAau
         MDyR1+b9pJRoRd87XZpUipkjlR6T79AX8eZ8nhDOiBlZ/nbIKvGELUTvqYHw1hatjaB0
         KudWGiZ3nBo12dAkDKP9JThKUiAzn/fGSvfuPxI86HYclLa+yEfmvI1pA7V4RDRPK7s6
         M1O7ZpSpAXVItqYHkuB+9D53fYJpnAScwVQhima2jdUAacrU5EHCZb5gGavykt3a/zF+
         nv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ry9aqbciNZoWM6EJGuL+2IgKQX9sM8bewVG72egTByo=;
        b=Ef8KCNkI59dz5CdB+HelcXlD8QaO2++95v3VBdk/vR0dM+TiKJufyOwzALcxa0qH3e
         bVGVymrJVk6ES89pvarw5fKNmvLtuAX3dZbaVNedUca9del2ZvZEQJynr2Wce8TrOGzS
         Uh4ksHo7qMf6l6c6OQPqLjYbQAM5j9gJRd4SnhX/tPVSH0MIUaIaltMQsKPaGu1b70jA
         MCbVoSMv5S3k8HgWpBgDSvBDuDno7vDi/fsF3LDVM2sXdxdbmNb/nRuqfhbRvzipCCUm
         Y4NgGw1U62f16BC3aSz78HHwKo0mcNS9UMd5KeHH9IdT6uV7mlW/hTWo/OGhKqccwPie
         GMFg==
X-Gm-Message-State: AGi0Pua+VdieaoUJePhNUbFe/SdHXbTL94/+BTT7FyDUC/IreiyggFOw
        dFvqi7Y5JHw+rSsDDVy2DlPfO5iL
X-Google-Smtp-Source: APiQypIy4/1B3+dpaAXplCS5JdN5nBtGa3h/PYg2vaOJ6WFMceLbg5dP53OsIsq2Lap29qpVxD4bMA==
X-Received: by 2002:a05:600c:2316:: with SMTP id 22mr326346wmo.164.1588017016213;
        Mon, 27 Apr 2020 12:50:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i6sm24207794wrc.82.2020.04.27.12.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 12:50:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Helge Kreutzmann <debian@helgefjell.de>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: random(4): Singular/Plural
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200419064819.GA31654@Debian-50-lenny-64-minimal>
 <32c7d19a-ac60-0250-869a-5b5c707b56e2@gmail.com>
 <20200427141453.irpiezazavf656kz@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <964c4877-cca5-21c6-b036-0d714f87976d@gmail.com>
Date:   Mon, 27 Apr 2020 21:50:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427141453.irpiezazavf656kz@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 4/27/20 4:14 PM, Jakub Wilk wrote:
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-20, 08:12:
>>> vary → varies ?
>>>
>>> "This file gives the size of the entropy pool.  The semantics of this file "
>>> "vary across kernel versions:"
>>
>> "semantics" is considered a plural noun, so "vary" is right.
> 
> I don't think that's correct. Despite the trailing "s", "semantics" is 
> not plural; it's uncountable.
> 
> https://dictionary.cambridge.org/dictionary/english/semantics includes 
> the following examples:
> 
>    The semantics of the language _is_ based on a translation, ...
> 
>    Action semantics _is_ useful for reasoning about language implementations.

So, this to me comes closest to how I use the word:

https://www.ldoceonline.com/dictionary/semantics

[[
1 the study of the meaning of words and phrases
2 formal the meaning of a word or expression

GRAMMAR: Singular or plural verb?

In meaning 1, semantics is followed by a singular verb: 
  Semantics is not the same as syntax.
In meaning 2, semantics can be followed by a singular or plural verb: 
  The semantics of this phrase is/are difficult to pin down.
]]

Obviously there's a bit of variation in what people accept,
but for me, in meaning 2 (which matches the case in the man-page),
I'd always expect a plural.

And then I was about to say: "and it seems the original author
of the text was of the same opinion". But then I checked the
git log...

But do a Google or some such search for "semantics is" vs
"semantics are", and you'll see that the latter is very common.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
