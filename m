Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD88320A73
	for <lists+linux-man@lfdr.de>; Sun, 21 Feb 2021 14:12:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbhBUNLv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Feb 2021 08:11:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229844AbhBUNLu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Feb 2021 08:11:50 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25B4FC061574
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 05:11:08 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id k13so4879971pfh.13
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 05:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=et1k1fDGJmHkmztxfZse1CgKsJQpfMWTNzwwaHEOs/s=;
        b=BqCuaZbEhOSwd6Ao49JXuisd0k+h+6zF835SsDYVPK7Sbsx7ElJgyKckwCPKfwrKPI
         0flA9hp4uxXpRPo91NAZf6ymJUW4OjwORipXKL9UG04USjp2kmo7A1C8R2A5PJyVc1mB
         Po6KPRduvOWuAmUnMCtqLNXhkAhAaDQNc+g+o8tXCWJxyRc66y26hY42bx2+cECgbRcK
         fTHCvX+affVjYkB15iaqz1YuDygOOslff3Gs7XY9JSHnBP4L1ffZbCI8cPmhWd455mSb
         NE2LNZjfZmG/6B3ICuwcHZHTCJEZAsbycaKNkVCAN76LpPiy0pJZ9akImXoBuab4Sgy4
         uvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=et1k1fDGJmHkmztxfZse1CgKsJQpfMWTNzwwaHEOs/s=;
        b=I5eVMSzQ/ovbPpRvTwBNMmGmprrrLSICrV0/XEbJgdYe7QRrV0mbCB4Q1G6q2z2Kue
         wnKDBzUZz2BF/Nqr/ZaQp8J0GrtC00cEkd6onuNjTEeBCb3TRE4pDcLaR1zASgAfV9Dy
         CigH6srPlhi9Zj+CtcxV7v4BAJXZCgr1yetsKI1qTWoxiSFx9dZAWnBFucxqbU1rL5LW
         KOWL9+uzbH3NILxcLRh4uMI3jAN2l3+o3ZTe7Ahk8tPtkiGpFio4zGOPzZ8/1lgVlKUG
         RVxFqhaZ2zJFtpWorFJSoSX0Fbmvv7f9yQli0FRseIL+VuKK/wI9S0DK5Cs/8i8E+vui
         cINA==
X-Gm-Message-State: AOAM5321LyiZ/VGdFjScwTgFfHFAQl72wIXXmT/+QB+xzLRz6q63f9Fb
        9yJuzFr28E0A24zVTsoOhx8Cr9inGZqvtA==
X-Google-Smtp-Source: ABdhPJzLD98QQCAjdkB9n/mdcdQ07vRqMzat9jwRBZvAOkfpNTyS0Q6k5RWuKKBTgY3JSM63vmkiNA==
X-Received: by 2002:aa7:8110:0:b029:1d6:241b:d83e with SMTP id b16-20020aa781100000b02901d6241bd83emr17992658pfi.23.1613913067182;
        Sun, 21 Feb 2021 05:11:07 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id s184sm16246395pfc.106.2021.02.21.05.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Feb 2021 05:11:06 -0800 (PST)
Subject: Re: [PATCH v2] man2/openat2.2: add RESOLVE_CACHED
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <358adcb0-0270-c0aa-b3cc-967cb133fed8@kernel.dk>
 <176b27df-d7e1-7023-b999-fe24aa344585@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <07866154-0875-5ce2-bcd9-0b052f9d767d@kernel.dk>
Date:   Sun, 21 Feb 2021 06:11:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <176b27df-d7e1-7023-b999-fe24aa344585@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/21/21 2:04 AM, Michael Kerrisk (man-pages) wrote:
> Hello Jens
> 
> Thanks for the revised patch. Just some minor comments below.

Thanks, all look good to me. I'll send out v3.

-- 
Jens Axboe

