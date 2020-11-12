Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 703922B03F2
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 12:33:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728151AbgKLLdQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 06:33:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728157AbgKLLc4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 06:32:56 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99482C0617A6
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 03:32:56 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id h62so5187536wme.3
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 03:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fgYZbbt1Kc93dBZApVxIev4jElFlKxX9jvwi3ceGKLI=;
        b=syZhvLr5SvZ0PYNky3bao9OnG+VZd14dIUIQyAJJmjLcoiyBUpRVV+aBuASh6ARpc6
         2/oAM9vX01IyJzcmlw+1UVN42t6VS3Z3QvXPgod2WWNJWAx4t7BTxdPbAReZ4UFEwgAQ
         Krfv8dEc2hcyqziDWKt2b0AynqS81463d2Z0fDc4mluEg/Z0/iVFMF6zjsGaNeQhEifB
         1avRhf6ZzTD9SC8atguEHGf4o3JP6MA8JBHrue3e8f46faacu/gSUEPkRR9M4sp3rqek
         M5goKvCpL9T/CnnrsD4VfeqjoS/aNMROJEQilBIML+3X4AAbqudPgVhNrIlYW90qDvr2
         e/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fgYZbbt1Kc93dBZApVxIev4jElFlKxX9jvwi3ceGKLI=;
        b=QEO+xx4HfBXEDnLgXvxeCOkseEfE3JRxsDfPGCBXmuzAh79TmiJyR9+stJHXC4gNkM
         /jTipvhEdXpnTIpCZ3YBaS3AoYknQ+u9qh7dMFVwCbuxwTBCOxfHHCLVwz/YbOs3b4T1
         wCND8orhzVrUHF57fX0ZEUjnD5GumQGsZCwnNUC4diwVwMzcne+2bZyCaF8nVpme/Cqf
         QFDJQB7hhOy0f85uZKUSaO7HZCm5zyQYz2A0f2btsb+3XunsCMI6dQpuZaDc5ECd+XOX
         Ilht6ezit6JDl1DUf4PUUxYQ9lllYpHugDTdnIWZtNdI0AhV9ZxsFeJA2GVBiejo0BFa
         BYYg==
X-Gm-Message-State: AOAM532WdAhDUv3lJaNq+f5V0AG4gsJYmkcTGm8ufJb30GFf461Aa9eM
        u7WOXKzgvQWxH7+cCu0Phw0b/iKVWSbj3g==
X-Google-Smtp-Source: ABdhPJwxZVrxxrJt9TwDwt3OjhmfGhXphAcJ0VDvuSjbixP41zfpwFXvgaoG26S5BX8e0etMWkcSPA==
X-Received: by 2002:a1c:490b:: with SMTP id w11mr9180148wma.101.1605180775095;
        Thu, 12 Nov 2020 03:32:55 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l24sm6169636wmi.7.2020.11.12.03.32.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 03:32:54 -0800 (PST)
Subject: Re: Format inline code
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <8a1a4d89-6294-2ceb-4f29-13660dd7b068@gmail.com>
Date:   Thu, 12 Nov 2020 12:32:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 11/8/20 1:22 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
[...]
> 
> Yeah, I've wondered about a conversion to .rst, but so far I'm not
> sure, and also I presume it will take a lot of work.

Interesting

[...]
> 
> So, I am a little bit hesitant about "fix-as-we-go". Possibly, this
> means some pages will never be changed. If we were to make the change,
> my preference would be to do all pages at once. But I am not fixed on
> that idea. Some grepping[1] suggests that the number of pages that
> would need to be changed is around 100. Perhaps fix-as-we-go would be
> feasible...
> 
> I'm still thinking about this one.

I mean: while there are many patches,
we could fix-as-we-go,
and when there are not many patches,
we could grep and fix pages that still use a mix of styles.

BTW, I'm fixing perf_event_open.2, and in the first 1400 lines
there have only been around 20 net additions due to .RS/.RE,
so it's not like a lot of extra markup
(around 1% or 2% extra lines).

Cheers,

Alex
