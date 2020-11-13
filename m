Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 786612B18C9
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:11:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgKMKLM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:11:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgKMKLL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:11:11 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889F2C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:11:11 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id c17so9103453wrc.11
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DVxNPW2BWDLA9GwJMGmYN2eCHswB5YBDPXYkivaln9A=;
        b=XALkSI8Afiumw/EhNMj6D8r8QMzz2lrjSfODbvSDddE/tQ3ZmIc4BzG/LRSSw0ZZ8k
         ggEPdXgC34g+ZueP0W9NyoR5+BKGoQHCkEx6MvdzVHJfe6cFvUXmecm+cgeD5GSOrwWW
         0o9vdXIdb6DhUM3oUm0i9DTcPgLECVsaYbYoPQSw1KbfhXGdxu6qtR04eIw4fXjgaGN2
         H5gQuFMwOc51YQUnopXj3ege8LhamDDGKwETvtOmF6HSm4dQypQfF3PI9kyhNeNRIiGz
         RZWb3vVk6l/gnmFBFUA6xVGbeMSDLsbv1zJZ1D+xSMR+svKihZcgvBAempNHklNr99jB
         0XyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DVxNPW2BWDLA9GwJMGmYN2eCHswB5YBDPXYkivaln9A=;
        b=nE11bHZ2/qQRClEgvly8fSMbYeAV+d83Ewce45NP6O81tG+G7U1To0g8+7BkbNTKku
         8lUV9KsBS2RXuNsq0zxInQ2D8KBIx+YSDj2WGA0BJFYPxqTPC06vG74Wv8c2zdRAIyFf
         zk4uv3uCmtCSLn1oxFLyLLQ99rAVrpBAib1C/YOwD+R2AsiyVRDEt7kt8DRP/TxlLI9F
         2OFTbQR55b2MmYMmwLZFltqX2NZVMJ5paiVGRt/z8VvI2TDkcI7NsvpwAllkp7i2uanA
         zH+aokOKJspi8SL7qXCo+fSrmSWWrij5agaonqrBFPiMMrdqytmx2QPXNT6lkDx+QtWG
         bY+g==
X-Gm-Message-State: AOAM530sx3BwnMm6roB9q+2vO8d5aG29qzvuicACcxg+UWQ0ph7Zzo29
        hlBYaHQOi4RlinfiFlHRZp5g/20cAEU=
X-Google-Smtp-Source: ABdhPJx9hrfkJ7g+C1gyiHXTyAi9ngtUwxdsElm8lQuXqQjkybnYhlE/c4k7rsNvS9TdqgxgKUJsZg==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr2394682wrq.401.1605262270053;
        Fri, 13 Nov 2020 02:11:10 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id d134sm9489001wmd.8.2020.11.13.02.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:11:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Format inline code
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
 <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
 <20201113082759.vqeufvucqg3agdhh@localhost.localdomain>
 <0323a942-1d12-9378-bdc0-8690adc1aaee@gmail.com>
 <20201113094755.bg6pl7g2s5h2w4mu@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a79fc055-c7ab-1793-04eb-eb4f678e5035@gmail.com>
Date:   Fri, 13 Nov 2020 11:11:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201113094755.bg6pl7g2s5h2w4mu@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/13/20 10:47 AM, G. Branden Robinson wrote:
> At 2020-11-13T10:00:20+0100, Michael Kerrisk (man-pages) wrote:
>> But in the "-branden" version I see
>>
>> [[
>> .RS 6n
>> ]]
> 
> Yes.
> 
>> If I understand correctly, then that number is calculated based on the
>> ".IP * 2" that precedes it.
> 
> Yes.
> 
>> That doesn't seem good (since, maybe at some point, one might want to
>> change the .IP yo say ".IP  1) 3", and then one has to fix the .RS
>> lines. Am I missing something?
> 
> No.  This is why I don't have a solution for you yet.  The problem
> facing us is to set a code display (.EX/.EE) with the the following
> constraints.
> 
> A. It must be indented from its context by a predictable amount
>    irrespective of that context being an indented paragraph (.IP).
> B. Indented paragraphs must be free to use custom indentation amounts.
> C. The quantity of macro calls must be minimal.  (Probably 2: one to
>    commence the indenation and one to cancel it.)
> D. We want to use standard man(7) macros, not raw *roff requests.
> E. The solution should be portable to non-groff interpreters, ruling out
>    computation of indentation using internal variables specific to
>    groff's man(7) implementation to figure out the current indentation
>    amount.
> 
> So far I've only been able to come up with solutions if any one of (A),
> (B), or (C) is relaxed.
> 
> Please correct me if I've overstated of any of these constraints, or
> omitted one.

That seems a fair summary. I might add the following *preferences*
for a solution as well:

(f) Solution can be applied consistently throughout the corpus.
(g) Don't inject too much unneeded white space in the rendered
    output. (e.g. .TP/.RS/.RE forces a newline which may not 
    be desirable in all cases.

Our current solution relaxes constraint D (i.e., we use ".in").

It certainly looks like there's no way to solve the problem
without relaxing one of the constraint.

Thanks, as ever, for your input Branden.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
