Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F29F2B7D54
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 13:06:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728097AbgKRMGt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Nov 2020 07:06:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726731AbgKRMGt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Nov 2020 07:06:49 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B309C0613D4
        for <linux-man@vger.kernel.org>; Wed, 18 Nov 2020 04:06:47 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id i19so2380357ejx.9
        for <linux-man@vger.kernel.org>; Wed, 18 Nov 2020 04:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=man7-org.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=k3E0/EM52M+3zGJ3mJoDSMlWNECszYMTgxeF/hYDz+s=;
        b=nr2e2xSgafa1MVnXMgQ8jDnGXjrpF5YxmbqXXIAR1ymTRJXT/mR10IGyezKED0fw3M
         uBxdpnGcJhYhlMru81Cwi5BKheuIsxwwHJ+QcrHKKZeSpKfoajpigs1Ae0LhM+//W5bA
         KlxLswOBnsvl3v3r2wU5Ah87REXnEPzI5rpnE58d28JhwGmBymUmrRYd/vQ/0WokAo49
         fazXQtc6xsy6n4HcLipxfY4qGC2n1Za2oFykykuJDV30qG3wgqOWn0QGjD+J4PsNXVtc
         MSDPOgYm4CsH5TsLTlk0BQunYxWEon9skfuh/+mS5j9349WM4U24L2HAQDGVQHPEZiqi
         BiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k3E0/EM52M+3zGJ3mJoDSMlWNECszYMTgxeF/hYDz+s=;
        b=nqmNuDBGPeG32aMB78RWUuG02dPd2ghNWyeaAix24BEa8JFTLC4tZORV8CtH+IuGs7
         SIZxuMm/nSWgK9nSVAueImkun2zVWnvAigWZ5pXESVV31RRBI9cWKgYBxCoUUkEatKqr
         aWGIbkXzYk1YCvdzunOTPA4/Fn2zsdefsguiWCkU4AKe7Qjz1YrN9Z12OyXskZv+xtfI
         UT1SzE8CbXS+pdFSv1LEm9fDwDTYlQ1NJaqNbh6EfPsrsfcFRD1CEvhdFUMVxr1+tAZF
         PxWDF8qOmPVpunQRH8aNxtC0smc3UI77ZVwlOoniIE8riOleslJbSaMzUUhRsRK8ZxRX
         14GA==
X-Gm-Message-State: AOAM532vnWeBmf8JNJ90vI4TjP/BxFFU6+jLIX0UPaWXjfRInxh5i4QI
        ITuogMFNBKpX18aOLdcudv9w7w==
X-Google-Smtp-Source: ABdhPJyGbf4NlzG26otUJrfiKsanBM9A8CGjKU3Xy0jtYUN4OyPxhfqdpSt934CMi4Ve64bV1lWxPg==
X-Received: by 2002:a17:906:c18c:: with SMTP id g12mr23294435ejz.334.1605701205934;
        Wed, 18 Nov 2020 04:06:45 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.googlemail.com with ESMTPSA id ay5sm5773546edb.40.2020.11.18.04.06.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 04:06:44 -0800 (PST)
Subject: Re: [ TLPI ] bad longjmp example solution redundancy.
To:     Robert Kumanek <robert.kumanek@gmail.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <CAG2PQ_W=_VJD1LTm+i9HBBWCTn0KRu46arUL5n-3b0EuLFQbpg@mail.gmail.com>
From:   Michael Kerrisk <mtk@man7.org>
Message-ID: <040e5559-da37-b909-417d-2e641adac141@man7.org>
Date:   Wed, 18 Nov 2020 13:06:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAG2PQ_W=_VJD1LTm+i9HBBWCTn0KRu46arUL5n-3b0EuLFQbpg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Robert,

On 11/17/20 4:24 PM, Robert Kumanek wrote:
> Hi Michael Kerrisk,
> 
> I have run the solution bad_longjmp.c from tlpi-repo and I found it ends
> with seg_fault. It's good, but next I commented partly source code, i.e.
> definition of recur() and its call in main and then after recompilation and
> running it ends also with seg_fault. So I think it was enough to use the
> example without recur(). Maybe I am wrong and it showed something I missed,
> if yes, than what was intention of recur?
> 
> Best wishes and big respect for your work,

It's been a long time since I wrote that program, and nearly as long
since I last tested it, and my memory is a little hazy.

My suspicion is that things have changed (i.e., the compiler is
generating different code these days), with the result that the second
kind of setjmp() error that was shown by this code no longer happens.

If I recall correctly, when the recur() code path was executed (i.e.,
a command-line argument was supplied to the program), then the
longjmp() took us back to one of the still pristine stack frames
from one of the recur() calls, and the program printed out messages
saying that it was now exiting recur() (again), and *then* crashed.
But, that no longer happens.

So, you're right that the recur() code no longer serves any
purpose, and I think I will just delete it.

Thanks for letting me know about this, and I hope you continue
enjoying the book.

Cheers,

Michael

-- 
Michael Kerrisk, man7.org Training and Consulting
mtk@man7.org, http://man7.org/training/
"The Linux Programming Interface" -- http://man7.org/tlpi/
