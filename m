Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCF3B2EAA4D
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 13:01:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727394AbhAEMBm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 07:01:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726074AbhAEMBl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 07:01:41 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD63C061574
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 04:01:00 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id b2so30824281edm.3
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 04:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=35BohdTCxQM0EB+e4PXVBWVHIk8OQOTHeTtfS1kiD+c=;
        b=XykMMZb7lDgLNkO2w1AzpLU3cN/RT/NTWf+HVQicI/VzwwnV6woikG2qa6pTtYOD4h
         yz7QUtt1Su1tdB6zehZzNI/+t3rNAa2dNOxk3LWNZtnWWlMV55JrRYt90aDrMlBLU4ru
         jvceNnT99lcsuHKtVHnlB2smllBQdmFpK2yL1vukulOTjtNTfbKt8G81777CjQy2Qfo6
         6pk4qmRW6cr31eFR0SbmttAdWzRBBF8CZYzmi+kMGc+jqDpLSZnbmCpU8Vvv/UaJb/Uz
         /V31GmX57qV5hxjk1+6bmRVMfBhivtAg6lI5O6HjJOM+WYCZwbV8rogohl/lwpTYRPzv
         YIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=35BohdTCxQM0EB+e4PXVBWVHIk8OQOTHeTtfS1kiD+c=;
        b=eMpnvbfI+PCdkO/nbo7uoXWlRN/3NbMb0SQLPFWAH9/MfpZt2Fr24OEP9hcyaIyD0W
         hE9TGyRF9ygM2SJQXZQAtz621R7qpV9LQqf2z8PmxIzWCKzQ3UstxAzytzxHB3jyIMIA
         FL1fFjE63EnncoxqC0Y2x6Y2Niz35nOf3eknIQig37g7NPOBwRHrNerbeYq8J3VdOgyo
         wcLMGUOwyzJteCtL4K84vl0WywKoNQ1G7UfLGJlDKPaGSwHO354xhhhcIfC9RO65dA5w
         jAIITDCrosMPS7s2mcWLm6Wm2b+tQwMUQDTzhX2yCO91j3nsWe6/pk1pUbR+sCNMWn2N
         P5qg==
X-Gm-Message-State: AOAM530i57nk8/Tc7ogS9bv8taFnJlPDsQ+dVBnIK3JEOUdjo8AE5gfm
        YTHxPckuXfPrkFCqL9L4a+lh2WVcG6k=
X-Google-Smtp-Source: ABdhPJxl2awfuQAvUju1oBLJ/JVORaVo95EmSC2OC0J6YZlpUroaQ3qCp9jMYbopRx7srzs/Fq4yMQ==
X-Received: by 2002:aa7:d6d8:: with SMTP id x24mr76894939edr.105.1609848059067;
        Tue, 05 Jan 2021 04:00:59 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id t15sm25120027ejx.88.2021.01.05.04.00.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 04:00:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve
 readability, especially in SYNOPSIS
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210104224515.140403-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ae31daa2-a44b-2e79-1a70-a95428b7e231@gmail.com>
Date:   Tue, 5 Jan 2021 13:00:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210104224515.140403-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 1/4/21 11:45 PM, Alejandro Colomar wrote:
> - Group macros by kinds.

Looks good.

> - Align so that it's easiest to distinguish differences>   between related macros.

The problem with this is that it doesn't render well in PDF [1],
I think. The spaces render small in PDF, and the alignment looks
random. Better to use the same indent for all continuations.
Could you amend and resend please.

> - Fix minor typos.

Okay.

> - Remove redundant text ('The macro xxx() ...')>   The first paragraph already says that these are macros.

Okay.

> - Fit lines into 78 columns.

Okay.

> I noticed a bug which should be fixed next:
> CIRCLEQ_LOOP_*() return a 'struct TYPE *'.

Okay.

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> Here's my attempt of making queue.3 pages more readable.
> I think it's quite nicer now.

Agreed.

> But please, review it, because I may have introduced a few bugs
> while moving the text around.

At aa quick glance, it looks okay to me.

> Also, if you feel something could be nicer, please tell me.
> 
> BTW, it's been the first time I use Vim for something not trivial,
> and I quite liked it.
> I think I'll stop using Gedit for a while :-)

Good choice :-).

[...]

Cheers,

Michael

[1]
Usage: pdfman <man-page.n>

function pdfman {
    man -Tps -l $1 > /tmp/$(basename $1).$$.ps
    ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
    evince $1.pdf
}

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
