Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 041933E50BD
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:48:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237260AbhHJBsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232781AbhHJBsk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:48:40 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5BDC0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:48:19 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id j3so18817689plx.4
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BXCf9bMEQUHfvi3uWGYe+7uBMlDoAaFWp5GyKGwB8d4=;
        b=UJhdDGrxBDrCo5slMgXAuKyCS+IyZbNRDa4gYuX8+1/Dw1/37WM3SqGhIu+Zr/Ay5C
         +Vy6YGe8cWsb0qh0Kn6FHRCGFjlFFP2nKwEcdeUhmeLNJvjeFNyZ5nTjo5ORxzV53Bld
         /5bb5dPOFx25TvFYMIuTmBHIeQznTVS7tuNWc2o5B683V3SFNRbYOJeHVtj4gyh7NMPq
         T+G4IUyDmAjmGYgw8yVrIH7xCciVSXXAV1uK6K/hH9L5T+uNjipmleSc5+XSzgL7oLqW
         TE4udjosR+N4JOk4w66DY0B36hMHjQU2VELmOzAifw5qq2yUhJoDwmvFKE9rtc7HBbYJ
         xiBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BXCf9bMEQUHfvi3uWGYe+7uBMlDoAaFWp5GyKGwB8d4=;
        b=fv2RpuL3nD0Xs8cICxh8gQ5LQVPqpHc2+yIQrKN+fcgFX4yZidf2NKee21OiDkse3Y
         xQ7KfZqEmk6aze/5Frtpl+ugvYwA6XQgz9FZOo43n3giJQOFaYL6SbNjrzHI/+dz6csr
         ZMN5ePTX+7P0LIChBytiuVK+AOTKE/r5coxnRs/I2gyr6dIA76qWLNaFCLC5xPLTt0M7
         gMda6N9Xn/0i4ARTlJJHDU3LiTp7VDki8IJ1vyvjSnLEcGtd+uiZIrG28kZb1jLkjtpO
         1+kcugbHrE6FdOo2wvJ4+TgCIFGf3XxM/Bv+d34X/s0IyxLXJCGmIxGJVPjH6A2i7UhM
         dDrg==
X-Gm-Message-State: AOAM532v5PFIUFPW7kJd6pt0+u/7SZYJ9HflGQ4uLbEmloubbTy6DspA
        0h1HPt+0lkAI+L/OLBzByRAQIdsPz5U=
X-Google-Smtp-Source: ABdhPJyStGeiTDiY31t6XZsZsVbRxLUgbXGGWi/KFfkN8hQgXrLFFExOlen36vofm7l8jKsSSUbRSQ==
X-Received: by 2002:aa7:8752:0:b029:3bd:82f0:3bf9 with SMTP id g18-20020aa787520000b02903bd82f03bf9mr26704605pfo.75.1628560098508;
        Mon, 09 Aug 2021 18:48:18 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y7sm20539395pfi.204.2021.08.09.18.48.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:48:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Helge Kreutzmann <debian@helgefjell.de>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: open.2
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210725170822.GA16643@Debian-50-lenny-64-minimal>
 <CAKgNAkgCSD_pwAf0-A2ywdZ1n0zCVc2DWLxegsE7_xCobXA06g@mail.gmail.com>
 <20210726062309.yjcnbfxlx76q3bca@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0e5d0b18-86c4-fbc4-aac0-439664c17828@gmail.com>
Date:   Tue, 10 Aug 2021 03:48:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210726062309.yjcnbfxlx76q3bca@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/26/21 8:23 AM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-26, 01:11:
>> On Sun, 25 Jul 2021 at 19:08, Helge Kreutzmann <debian@helgefjell.de> wrote:
>>> Man page: open.2
>>> Issue: same was → same ways
>> This bug report appears to be obsolete. I can't find this error in the 
>> page.
> 
> It was fixed last year:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=313fb52719469abd

Thanks for checking, Jakub.

Cheers,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
