Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57A3626BEBF
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 10:03:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbgIPIDc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 04:03:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726556AbgIPIDZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 04:03:25 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99217C061788
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 01:03:16 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id k15so5840501wrn.10
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 01:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nVaT4qjtLZra14U3HhP/gMuOnCbAfFFzyhvbiUF6YvA=;
        b=ml9Cnm3Sk9dyVwXmKoOi4sDVSY5Gk7tNThQIAa1Aflv3awZ+9ZW1EtT8HtqIzd9JsM
         TIghC01T1YH4B8s01PPqHbkEIt5kqufTSo8Y7GmT9XmuiuNd4CAgiVxKqHV5v2wwx+7V
         xuYEnpnH/2z5ywcpDPKr17iqjchFuM711MzdX8I0mQt6kGvkxa/u0unKFkI2uBVp/bKb
         Qhe73IfnGQC5Xw4q6tYBh9z+JrTL8xxS4L38DKqNBZw8G/oHL8qDboAly239werdnzIg
         /y9tn+v89NqT5JrAEjESxpqQxOwnaRYqofQwbYPSGpN8WuCo6nNFV9BxfhVBBfE/8iSf
         Jjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nVaT4qjtLZra14U3HhP/gMuOnCbAfFFzyhvbiUF6YvA=;
        b=UUPOJ0xeECHQHGm48CbOw2Aoenplm++nDuT4qAoUw/jHuAsq/8HcGkpEDvmC1ITrmF
         ujRdVEhNlOJfQ2aFH32hnbeu+yKoQJR/6Ouyp8bqXTCnBzrH/MyhO3qEg64GzdtU/i1b
         zvNqEAa4h/LL78rIyJytBvUa3BksFDKkwQvAVliJN90prnxXYocfCCsYq9EY30bwfmly
         XpYQZK+H+Nf5I1KOmN7dwfuZZlPMEGmrp7qy/Spdm7R8dTiogYjDVx6kDhhczEKfIvI9
         Hn+LXgCNkZJVGrugV6vXadCOJuSW4DbbQnyGoqbEQGGLhjLXXAhlnQfNhO2fqmP11mSd
         Ov4Q==
X-Gm-Message-State: AOAM531VpP4j0p7vg4nS48+PsJ8HQGK4Y9xzM2rlJHvernK0vERMB+82
        4nG0fS348KDNFVtbaphuAbQ=
X-Google-Smtp-Source: ABdhPJxX02gmHqpsorNKvi41CWZL2Vdn0yIcO/Z4iL4Gg9u3uuRi9xU7Vyc9FDulypweBt1ATY9Htw==
X-Received: by 2002:adf:cf0b:: with SMTP id o11mr24149345wrj.94.1600243395221;
        Wed, 16 Sep 2020 01:03:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g8sm3785325wmd.12.2020.09.16.01.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:03:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        fweimer@redhat.com, linux-man@vger.kernel.org, jwilk@jwilk.net,
        libbsd@lists.freedesktop.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>
Subject: Re: [RFC v4] system_data_types.7: Document sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec & timeval
To:     Thorsten Glaser <tg@mirbsd.org>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915133306.35033-1-colomar.6.4.3@gmail.com>
 <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
 <Pine.BSM.4.64L.2009160057420.11260@herc.mirbsd.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <79018b23-d4d3-4524-d49a-9cf18b9008aa@gmail.com>
Date:   Wed, 16 Sep 2020 10:03:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <Pine.BSM.4.64L.2009160057420.11260@herc.mirbsd.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += AEB]

On 9/16/20 2:59 AM, Thorsten Glaser wrote:
> Michael Kerrisk (man-pages) dixit:
> 
>>> +.\" %%%LICENSE_START(VERBATIM)
>>> +.\" Permission is granted to make and distribute verbatim copies of this
>>> +.\" manual provided the copyright notice and this permission notice are
>>> +.\" preserved on all copies.
>>> +.\"
>>> +.\" Permission is granted to copy and distribute modified versions of this
>>> +.\" manual under the conditions for verbatim copying, provided that the
>>> +.\" entire resulting derived work is distributed under the terms of a
>>> +.\" permission notice identical to this one.
>>> +.\"
>>> +.\" Since the Linux kernel and libraries are constantly changing, this
>>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>>> +.\" responsibility for errors or omissions, or for damages resulting from
>>> +.\" the use of the information contained herein.  The author(s) may not
>>> +.\" have taken the same level of care in the production of this manual,
>>> +.\" which is licensed free of charge, as they might when working
>>> +.\" professionally.
>>> +.\"
>>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>>> +.\" the source, must acknowledge the copyright and authors of this work.
>>> +.\" %%%LICENSE_END
> 
> I severely object.

And as someone with no history of involvement with the man-pages project
(at least as far as I am aware), and seemingly little awareness of the 
history or practices of the project, we should listen to you because...?

To be clear: I ask that provocative question because the strident,
demanding tone of your mail rubs me the wrong way. Please take it
somewhere else than this list.

> This licence doesn’t even have an SPDX identifier, nor is it
> OSI certified.

True, though OSI is in the business of certifying software
licenses, not documentation licenses. That said, I'd have
no problem with someone attempting OSI certification of the
license or doing the mechanics of obtaining an SPDX identifier
for it.

> Please use a standard Open Source licence, *especially* as you
> are introducing new material here.

The "verbatim" license has been the most widely used license in
manual pages, almost since the inception of the project 27 years
ago. (Currently more than half of the pages carry this license.)

I don't know the origin of the license (perhaps AEB does),
but as far as I'm concerned, it is a satisfactory license for 
its purpose. And since on the one hand it is, and has been, the
most widely used license and, on the other hand, I am interested
to avoid license proliferation, it's my preferred choice for new
pages. But, as you note, there are other choices:

> Before submitting this eMail, I found
> https://www.kernel.org/doc/man-pages/licenses.html
> and if that is indeed the applicable document, please use BSD.

(Obviously) I have no objection to this license, but currently
about 5% of pages in the project use some flavor of BSD license,
and then mainly because they were lifted straight from a BSD.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
