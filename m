Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3152DF57B
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 14:20:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbgLTNT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 08:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726629AbgLTNTz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 08:19:55 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44CC2C0613CF
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 05:19:15 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id v14so7205537wml.1
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 05:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HNhdO5g08tAHZXlBYaS9oZBA0sJyaHt9wZoas//UsLw=;
        b=YLTiEXkoz9Pmh7E3Hzeg2rTjSEfm4rMbKdhh0RX1MTqmq+Jt+Rc/Edb/qdFlXf+8jM
         3j9UCFb1HcXSdUkM7TSvdMoMMdfNROqHV+OMRG/o5pi6eZzz0Y/IAg2qUKnhmSGk+arm
         pYcV4Vku0h3IF4p3qETKCrmrDUrdO8akBQ4b28mRWWe2mkzpLdn8lOhntq8lPMHOoKRS
         JKwf91rI3erhKnDfQEj4jbrGakTBa8CHhjRbCSVhv24HGUDNyHgHeHd67CgS5+MXzDAL
         u+XS4avnBLzOcICZ+tj67CU1SBSzXXDR2+YokdboDz2l4f1tkoSPfZTvZTD4AgUZrSEQ
         GBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HNhdO5g08tAHZXlBYaS9oZBA0sJyaHt9wZoas//UsLw=;
        b=pQVILQ80ULo9ow7+vYwwgZQaz+UHr7MC1rFVx/RaTYtsQFwp1fwVTVo/LMWyw414TB
         W1vlWsjlKFAkMh7Wf/btM3ZBPQaBdO5fpEt4yCiyzEXXCnvjTtbJNTWoIcRszBAsGE2O
         Ms7bfnLs/y/d4u0rEXXTG8Tsd/8v/a6tPrx0jjzK8BZOXCWUSwB5SwJyRdR7Be4Pqf2B
         7cCYPBYsa2EScztypv5/hnKDTLYjeIY3iKPJim0PHM6km6pqZMQJCKQ6oIS71L1k9Czv
         2nszg6mZUIq9dU78czkVjs1hD0YmJsj/rzJVuSZcxGQV3WD0uh+kUKEJCp3vjX3DhlBM
         gAIA==
X-Gm-Message-State: AOAM533sa8M0cPFXEno5q7uHvCurR2cWhV3arzcMiZjIgQnGgdC9Wm2U
        qA8CpJh26IuTuYcMo7VFNccV9e4hyy8=
X-Google-Smtp-Source: ABdhPJwDnT32Vd0+gM9dAhGi8C1lf0ZWSDQWUS8t1t1AlqKPYJrmfQu5kka61heCZ2ruD87f0JyNLQ==
X-Received: by 2002:a05:600c:2057:: with SMTP id p23mr11893910wmg.109.1608470353928;
        Sun, 20 Dec 2020 05:19:13 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm25343826wrb.73.2020.12.20.05.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 05:19:13 -0800 (PST)
Subject: Re: Right margin for code (SYNOPSIS, EXAMPLES, ...)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
References: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
 <CAKgNAkisA-6-GhYugwFLWp4pZLqHSU7T8unpTt5mibcMzApz4w@mail.gmail.com>
 <8d84a00d-cd4d-86b5-9ed0-9357324a824d@gmail.com>
 <20201220085701.5wjihnjalt5bgk4b@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <56d5cd0a-b0ac-b9eb-a528-3d031584cc33@gmail.com>
Date:   Sun, 20 Dec 2020 14:19:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201220085701.5wjihnjalt5bgk4b@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

Thanks :)

I'll use 78 from now on, then.

Cheers,

Alex

On 12/20/20 9:57 AM, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2020-12-12T19:01:30+0100, Alejandro Colomar (man-pages) wrote:
>> On 12/11/20 10:26 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On Fri, 11 Dec 2020 at 22:14, Alejandro Colomar (man-pages)
>>> <alx.manpages@gmail.com> wrote:
>>>>
>>>> Hi Michael,
>>>>
>>>> For code, for example function prototypes in SYNOPSIS, do you have a
>>>> preferred right margin? 80? 72?
>>>
>>> If I understand your question, 80. But what prompts you to ask?
> 
> I researched the question of right margin/line length for a change I
> made to groff earlier this year, and my findings were that you should
> format man pages for 78 columns; this will probably work practically
> everywhere.  Things other than tbl(1) tables will work okay at widths
> even narrow than this.
> 
> Why 78 and not 80?  I couldn't find an authoritative answer, but my
> guess is that 80 was viewed as too risky for terminals that would
> misbehave with respect to wrapping or scrolling when a write was done to
> the last cell on the line or screen.  That gets us down to 79, and
> perhaps a preference for even numbers over odd ones explains 78.
> 
> Quoting my own research:
> 
> "...man-db man(1) has supported the LL register for eighteen years, and
> Brouwer/Lucifredi man(1) for fifteen.  Heirloom Doctools's man macros
> set the line length to 78n on nroff devices unconditionally.  mandoc(1)
> similarly also always formats for 78 columns on terminals.  groff's
> mdoc(7) macros grew support for LL in parallel with man(7) in 2002 and
> never added the \n[.l] introspection at all."[1]
> 
> Regards,
> Branden
> 
> [1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=7770e10fa4d5b903b6923f466154c806c44de35a
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
