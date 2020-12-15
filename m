Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EB22DB3C9
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 19:34:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729389AbgLOScC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 13:32:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731270AbgLOSbz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 13:31:55 -0500
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E84BFC06179C;
        Tue, 15 Dec 2020 10:31:14 -0800 (PST)
Received: by mail-il1-x131.google.com with SMTP id c18so20126551iln.10;
        Tue, 15 Dec 2020 10:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=80RJxbQMOWLHkkl6CJsCFQ4rANpuWFNmSrNeM4HB1fw=;
        b=bUtBr5cevI/l5LV/ZBfKYF58sEpIKiCy5T/1v1WcpEEMew3TURVj8wyftPOGgvYC6F
         5mZ19VPq3sKyJ53SLCOK/qB4Iaz+4n7C+X4dMte61gPa7cBJlZTW9Jrk+tBDsCwqvtGF
         de/5Siy9GXFZ8HU4iR1AdMK2lqPz1PnUmeEB8REl/15gEs4TavqfPYyGV2o0SYqRERVl
         p3WCC0Bxp8deuomUmGq4bYQlDjgCqKcRWSdHEyEPlmdZif23PGhWLrByKj2DkWJLZfrR
         T2owm6rfMPAmSrbLN+PdcREDRYMC/9TM6gXqrUyV8cTrCaGNppK/5HNx2sWZbE2YETen
         tAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=80RJxbQMOWLHkkl6CJsCFQ4rANpuWFNmSrNeM4HB1fw=;
        b=AZ01SJhD0v080Dp/Jk5Vvh5zKB+/M1f+fidirpLzkutkeTP7cJqiSRs+/jibrSc2be
         lRcWQYRiM3BjyXdyHSDfGgPGB4Y1shjuowLmICAWZXFE2Gd6Z3tCTrkLuq57GSFgOS3y
         ug8UNljGRO7tO0P9wDM4MqfGC3h1NSaCmyCmSNzZvVoZke3DbPeweX2QABRee40S1s11
         /2iz6TX2HwrrtHjiZ4uwib0CN9k+ejHoZSh9r+ywuBogNzng6Vq2yNhZCqN940yTvJIF
         mPEdVkXkCgkM1ZAKZnzxOruQZz/JUXQ/1InGFQmi0M+gjZ2uq4abOfROnMUX1cPV2br1
         04KQ==
X-Gm-Message-State: AOAM5333uujsh7835/2mkDAvYkvkHICRsZboqthZsxmkyIAI9UL1C78e
        OpgxB0Y5kkrtkYfGUFZRdynHmEmBVCMeUA==
X-Google-Smtp-Source: ABdhPJxrofK2XBG/kg3g0F9pgVWJr3e/4K4JeQr7liyPb6XpNRd6E5COwXCToYHGlFjjxWuOaFUD/Q==
X-Received: by 2002:a05:6e02:10c2:: with SMTP id s2mr42658951ilj.290.1608057074053;
        Tue, 15 Dec 2020 10:31:14 -0800 (PST)
Received: from [192.168.1.124] (d53-64-28-168.nap.wideopenwest.com. [64.53.168.28])
        by smtp.gmail.com with ESMTPSA id l16sm11317094ioj.52.2020.12.15.10.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 10:31:13 -0800 (PST)
Sender: Ted Estes <check.switch.26@gmail.com>
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
From:   Ted Estes <ted@softwarecrafters.com>
Message-ID: <b416e106-c11d-1471-de3d-fb9d5b1b6747@softwarecrafters.com>
Date:   Tue, 15 Dec 2020 12:31:11 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Per my research on the topic, the error is in the manual page.  The 
behavior of ptrace(2) was intentionally changed to prohibit attaching to 
a thread in the same group.  Apparently, there were a number of 
ill-behaved edge cases.

I found this email thread on the subject: 
https://lkml.org/lkml/2006/8/31/241

Thank you.
--Ted Estes

On 12/15/2020 11:01 AM, Alejandro Colomar (man-pages) wrote:
> Hi,
>
> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>
> [[
> Under "Ptrace access mode checking", the documentation states:
>    "1. If the calling thread and the target thread are in the same thread
> group, access is always allowed."
>
> This is incorrect. A thread may never attach to another in the same group.
>
> Reference, ptrace_attach()
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/ptrace.c?h=v5.9.14#n380
> ]]
>
> I just wanted to make sure that it is a bug in the manual page, and not
> in the implementation.
>
>
> Thanks,
>
> Alex
>

