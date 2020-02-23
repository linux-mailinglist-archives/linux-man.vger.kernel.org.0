Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C4C1169A2B
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:09:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgBWVJe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:09:34 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:44860 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWVJd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:09:33 -0500
Received: by mail-wr1-f66.google.com with SMTP id m16so8006791wrx.11
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k10r0fdyx15yeTgECvoFTJyqQO40KHRAHg3PT/SmLfE=;
        b=i3DK8nrcVgcFGOzwXai1W0X//LqXT1wul/pxGkLKYbh6AoKko35Xi67A5WbBAkqovM
         BqKZJhNhP6F5IU2EREZK7P9mpzkt9AiXiaiY2D2PZbTaN9wktGcs/4QgIgXscwx7AXaC
         9Gu+S6dgD0O1HvxUNG6Zjztq2wG2uln8jdcaVVZZ/cZM+eXHpzOjCezoVlBB4DOt4LXg
         CUe5qTJ/XcmQECkiErOigqn8emI8bZ88B8FXRZLT/u9ZXxaOE6l1EYfoCtuWyZbGV6kN
         /jUt4GY1cDuZoE5EM9WNN8r5eTI8P8S6gNBvQ0PlbVuKsZEQ3B8n9c9MmkibHJP5D7mI
         XkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k10r0fdyx15yeTgECvoFTJyqQO40KHRAHg3PT/SmLfE=;
        b=itgI6/RkUL8laYdoALO+6qOzye8S9hGvEBCe2ZW9UqngDpvqHtzZ6ijlT67yJsCZ43
         WeEdYH20TB+i1tpElmEhthLCBX76Xqu9PxvVcvlRzESs3EY1l8buRUoRYfiliQ+qrwu0
         7bt6CEPzjSj/O2bOKRH5Ayr2u7am0PcSrVGDOj6E2sCU5YII57peeMtKcHUuQUD0u+e2
         cOvfOiuwfy3P5816jEGQBuOuCN5ieNhq+KZ2RdARCg0MsBXg3Qh+bhAeeQaUqcQvmmN/
         te0+dRKmeHpCoBP6XpHRzXnI8qVeLElhdjKwKdI3L5/k1bYlaBegXZlMy9ihsxQl6odj
         vwHQ==
X-Gm-Message-State: APjAAAUf54nIwn1lk2eKxKflb2lhZlBYP1YJihjj+VdtW5+Y5G+njFWX
        TvwzkGvTCg5a0oaX7ByFFvI=
X-Google-Smtp-Source: APXvYqx9fVRbWFYbCL81omWxCYD9H766FnmEro39B5QyQXE29w/AWmN6BaroBqfjZww5vA2StDs5xA==
X-Received: by 2002:a05:6000:118d:: with SMTP id g13mr59636372wrx.141.1582492172337;
        Sun, 23 Feb 2020 13:09:32 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id e8sm9089526wru.7.2020.02.23.13.09.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:09:31 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH][RFC] clock_getres.2: Document that consecutive calls for
 CLOCK_MONOTONIC may return same values
To:     Helge Deller <deller@gmx.de>
References: <20200220172441.GA12717@ls3530.fritz.box>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0837faa7-a8ec-12ff-e96d-8dfea3e60c50@gmail.com>
Date:   Sun, 23 Feb 2020 22:09:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220172441.GA12717@ls3530.fritz.box>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On 2/20/20 6:24 PM, Helge Deller wrote:
> Consecutive calls to clock_gettime(CLOCK_MONOTONIC) are guaranteed to
> return MONOTONIC values, which means that they either return the *SAME*
> time value like the last call, or a later (higher) time value.
> 
> Due to high resolution counters like TSC on x86 most people see that the
> values returned increase, but on other less common platforms it's less
> likely that consecutive calls return newer values, and instead users may
> unexpectely get back the SAME time value.
> 
> I think it makes sense to document that people should not expect to see
> "always-growing" time values. For example in Debian I've seen in quite
> some source packages where return values of consecutive calls are
> compared against each other and then the package build fails if they are
> equal (e.g.  ruby-hitimes, ...).
> 
> The patch below is just for RFC. I'm open for any better wording!
> 
> Signed-off-by: Helge Deller <deller@gmx.de>
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 646fa37c0..89e9f6a30 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -151,6 +151,10 @@ but is affected by the incremental adjustments performed by
>  .BR adjtime (3)
>  and NTP.
>  This clock does not count time that the system is suspended.
> +All
> +.B CLOCK_MONOTONIC
> +variants guarantee that the time returned by consecutive calls will not go
> +backwards, but they may return the identical (not-increased) time value.
>  .TP
>  .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
>  .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3

Thanks. I applied your patch, and then tweaked slightly, so
tha the change looks as below.

Cheers,

Michael

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 646fa37c0..3fb0ac61c 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -151,6 +151,11 @@ but is affected by the incremental adjustments performed by
 .BR adjtime (3)
 and NTP.
 This clock does not count time that the system is suspended.
+All
+.B CLOCK_MONOTONIC
+variants guarantee that the time returned by consecutive calls will not go
+backwards, but successive calls may\(emdepending on the architecture\(emreturn
+identical (not-increased) time values.
 .TP
 .BR CLOCK_MONOTONIC_COARSE " (since Linux 2.6.32; Linux-specific)"
 .\" Added in commit da15cfdae03351c689736f8d142618592e3cebc3



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
