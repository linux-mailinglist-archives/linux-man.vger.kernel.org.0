Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F55B3E371E
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:38:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGViw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:38:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGViw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:38:52 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 862C6C0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:38:33 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id q2so12014472plr.11
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=twFzRo2YWM/xy99ZspK5rKx4cpwNn5kcYxA+YRUcRAU=;
        b=NZFNXPmMkylIYwHf3/m84ZeZ/DyPlIUon8I/reCvLCsa/CPGKSrjYmHB9Jm/kDC7Jt
         x+WYT8xHbxz6FbsNgGubaHxWke4tMj54E8416pM87mj6VvyFgH5O/NS0kzpTf/dTzurF
         h2Gh4ogZuFLjCl7e3iuZmVcehPiN3u4JUN4FsqsuuNbxYQB1hmVV28Dz/sjxjoYShyHp
         on9EQSmKyO8WFz/QxGq3CSzdCSb9uHWHw0zo0n4B9z67pHaHeASMEvONvGKO9G+2UcMK
         P+QakiUBTGFn8fL+dcPmiPqYKXjjNWQByYAjEwf1u5OEEJ3KKphQl4AfwN/iMIII6LW9
         0EZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=twFzRo2YWM/xy99ZspK5rKx4cpwNn5kcYxA+YRUcRAU=;
        b=EwKkno41Anwd8wLa3zCb6ErrK3Oy5IswQZ7JOAmjlef3Fpb/XETcqJaKCzwL1K4BNy
         dtHDM0uv9Q1kw3BT0JZVfsfrOwwmzFqDlBdDNsRL8+p41l7Qux/J4ExHAeP5+xV2HdDF
         hNtiyhrl57AmBcHa41CW0KVPEFz7o59/RtiNwj5xZ03vlk6DHq4hdm4QIuDCFTy2sEzH
         /9r/o7rGzP4eEtl5zbAqe8ebeltAiKq2dec4yOjMm0hrPLZrN0u2Mq81Njr1LOu8HL92
         UedRbPQ3DZK4/fWjYMphpcI7F2G6mD2QLZ+XY35EqBcdY48uxHVbmU4KwCWQYrIFik0B
         FUKA==
X-Gm-Message-State: AOAM532gJsMt7Qc7DOFRcp7etshdT2SZOzB2NYSRdoiqeEPZpJQyq459
        NsLeXtcFOpAe9XTqInaYodBHHsRgWjk=
X-Google-Smtp-Source: ABdhPJwWy8rccJWUN+sDuKZbx6HUxAJKb7PDiu5N4Ae39T2kfIT85vZmxozpHessjhdymAYx4UBcFQ==
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr17104739pfd.72.1628372312888;
        Sat, 07 Aug 2021 14:38:32 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id z33sm16724913pga.20.2021.08.07.14.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:38:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kurt Kanzenbach <kurt@linutronix.de>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 10/32] futex.2: Document FUTEX_LOCK_PI2
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-11-alx.manpages@gmail.com>
 <a0938003-285f-5f2e-3591-4e1923b3be6b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6b7dc3c0-28f7-26e0-d06b-f7c13709881a@gmail.com>
Date:   Sat, 7 Aug 2021 23:38:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a0938003-285f-5f2e-3591-4e1923b3be6b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/29/21 12:18 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> From: Kurt Kanzenbach <kurt@linutronix.de>
>>
>> FUTEX_LOCK_PI2 is a new futex operation which was recently introduced into the
>> Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has support for
>> selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
>> FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
>> CLOCK_REALTIME.
>>
>> This new operation addresses an inconsistency in the futex interface:
>> FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contrast to
>> all the other PI operations.
>>
>> Document the FUTEX_LOCK_PI2 command.
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> 
> Please drop this one.  I just found a small typo, and will add a 
> Reviewed-by line received today.
Dropped.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
