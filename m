Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C399A2CAF2F
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 22:54:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729351AbgLAVyQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 16:54:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgLAVyP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 16:54:15 -0500
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E38CC0613CF
        for <linux-man@vger.kernel.org>; Tue,  1 Dec 2020 13:53:35 -0800 (PST)
Received: by mail-ed1-x543.google.com with SMTP id ck29so5731290edb.8
        for <linux-man@vger.kernel.org>; Tue, 01 Dec 2020 13:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pfp5u74Js/gnCDGM3G7hNAObVf1zB1M5O6Y6cVTFl78=;
        b=aEHrqjFZFJLs00LLsC+hnF4m3DblS81Tv5vV88ip0WPJit1KTXj8oUSSnnankI3gVH
         Bndty0RC8OdqfrVObD4YYuWzDlwDIH61z6CV1TzREzWQkMfLYIoLXyNAN3nWqwbqG7yc
         Xxpr6GvQnJg1Tyyt037t7fWXlIDJPil+jd3nFCkGYtko1Nh9+fzq0KsY7lhiNPYtRJ+9
         5VTmCSX9+CkWMlcOTG+myUlGIyMYWFsRGafzGpb+c2e6zxXJhRyshzT3XH3+aMIUm5AD
         MiYXCONU1hLHVWJdeSgo8tmfxyfhrXO14FF8HtWa07uTZEEWiRpztn4VHa+O778reLyU
         RtOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pfp5u74Js/gnCDGM3G7hNAObVf1zB1M5O6Y6cVTFl78=;
        b=X3DXOBkVTrPuRBkvnDM8Nufp+sa8QQTPtd/2UmebRs2vDlVEDKhDQQ7GHGc8L95AFi
         7lrpc3nezYhoDA5BBJNX06S7bl3pIjh3xIAToa8EX8vfI4VxuYd9ynj81baX1NG7hi1f
         ws79wHJiuejZuEjT+fVhstxNRrmshES+tqtg1MJp87eNMMqVnMT0prRYFnTJ7w0npKs8
         mloK6hUIXngepPC4XY1f+UOXhzbJjTaRTjwicb/DaWwP7JnbbIWPwZgoH6+qMNYVGtD+
         wqSDwjrDJyvkKR/L2PlNu9i09YaPalPSGFg110p3m6wBmWaEGSp1D+JFjNzaPzkACjzN
         pvYg==
X-Gm-Message-State: AOAM532Q5XJ23MB3VvgvaJ8ce3wCHBvWiRcsY2oXmmZfpm6uL79V1jxz
        XeMnsDGm7dNQV+QCicLCmNEGy2G1xbWPQw==
X-Google-Smtp-Source: ABdhPJyXIfMhN1rH/LyMtP5yZlw84arLwkPZci0uYuC48wqACR45R2iVha4K52QWpOSWpM3OaTCuZg==
X-Received: by 2002:a05:6402:31a5:: with SMTP id dj5mr5184143edb.110.1606859614192;
        Tue, 01 Dec 2020 13:53:34 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id n15sm439997eje.112.2020.12.01.13.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:53:33 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Arusekk <arek_koz@o2.pl>,
        linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] keyctl.2: tfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201201144024.7556-1-alx.manpages@gmail.com>
 <7f2fab76-b144-0b1a-6568-4d2d9959c47f@gmail.com>
 <39d20193-ff0a-0362-2b44-77f7c2da4978@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ae5cc46c-490f-0779-d881-2aae85f4a959@gmail.com>
Date:   Tue, 1 Dec 2020 22:53:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <39d20193-ff0a-0362-2b44-77f7c2da4978@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/1/20 10:33 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 12/1/20 8:48 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 12/1/20 3:40 PM, Alejandro Colomar wrote:
>>> From: Arusekk <arek_koz@o2.pl>
>>>
>>> Fixes: fa76da808eff
>>>
>>> Signed-off-by: Arusekk <arek_koz@o2.pl>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>
>> Arusekk sent this patch twice. I applied the first version in my local tree,
>> but this version of the patch has a better commit message, so I dropped the 
>> old patch and applied this version instead.
> 
> Are you sure?
> I only see one patch from him.

I see now that the other patch was sent to me off-list...

> If you're seeing it on lore,
> you're probably seeing it repeated because it
> shows similar emails on the same thread even if unrelated
> (which I agree, causes some unnecessary confusion).
> 
> The only patch I see from Arusekk is:
> Message-Id: <20201201112245.11764-1-arek_koz@o2.pl>
> which has this same commit msg, but without the signature, which I added.
> 
> BTW, thanks for reviewing the other thread!

Sorry that I missed reviewing it earlier....

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
