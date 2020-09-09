Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A983C262B4A
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 11:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725948AbgIIJGm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 05:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725917AbgIIJGj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 05:06:39 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 695B7C061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 02:06:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so2037220wrl.12
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 02:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+sj2J1jf9LZ4VhoOvxisg1v4GrvFA+z/MR0SVJLG/pI=;
        b=oxwS7YfQEiWJa2wd/6pJHlPcCmQzR/fxQFoQ/E8tRuQCIwHZ5LG29V0fC6rjAlJ6R0
         he6DiUgdP+H/K5tOuyWg9bpYUKUzoPBmnCgpCSUPu7m2dTNNEN8PLfrx3nwc4+RmZVrt
         ePwio6KSZlsicfJksXogGoPkZV3EczPTdXbVOFKaq4FecfrADY9an88aDxMPpZ39PajY
         GGcxQiNHGclkjzMrEJZ4zV+ncPM2Evl4V/rLuC3bBL0sLHxqeGZUr21lQFCu4EaE2qeF
         WS5hI0qSc3qtzfqwIOXor9DlKVjBDGF/hhkBHwdyvzwYmf/WWpigebBRRrNW3MZ5K9wn
         EvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+sj2J1jf9LZ4VhoOvxisg1v4GrvFA+z/MR0SVJLG/pI=;
        b=VYjd2weR1/yHMVQ0aPrHfPoMFW237wSgexUQZj1kkfZG5TR1l0/hO5nqy4kdfMn5ke
         XIsVMIajeIxAA/4xyLKDbjhnOFgvtCzgv5apBP/uA9Z1EMJnM+5TWN4bl0aQ/1XebhYM
         7eDmDV4Jmmbh8558EZZRnvhOy37YHXQSjdlklwlG2xzu4tKU7i6jB9M9idFH+HA2HO2X
         T6VXOdMkiXrEPlNI3Zfrg3hkMRIgYQoBsuvqY3ZF2qtwvUVPWAjDjZBW/jsABvEAaNvy
         7mmX/ACScOVC9ueOMBWvwXnCa2tK4Br16DhG+TWhR0Un82Sn1eWtdpUt5CqlKfCkW5tl
         xn4g==
X-Gm-Message-State: AOAM531DQy2a0MhJ5rF19frT6hlZrJ09Rd/Sm9J7TOr9duUuV0P/i4L+
        Gh0DarOdOZoU2NdIYh6LvkQ=
X-Google-Smtp-Source: ABdhPJwWwBcK6PltLTDlOVRvPncYGnmK+dDHb0Vkv6F/4VXmo4A5cWNWuLCo2CmCYwOAcO68cUEovg==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr2881549wru.374.1599642398070;
        Wed, 09 Sep 2020 02:06:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id y1sm3282254wru.87.2020.09.09.02.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 02:06:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v2 1/3] loop.4: Document LO_FLAGS_DIRECT_IO flag
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>, linux-man@vger.kernel.org
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4ee43f80-cbcf-285a-d431-95824eb42dd6@gmail.com>
Date:   Wed, 9 Sep 2020 11:06:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/6/20 11:48 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man4/loop.4 | 4 ++++
>  1 file changed, 4 insertions(+)

Thanks, Yang Xu. Patch applied.

Cheers,

Michael

> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index a3c59310d..1f8a31ac7 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -130,6 +130,10 @@ The loopback device will autodestruct on last close.
>  .BR LO_FLAGS_PARTSCAN " (since Linux 3.2)"
>  .\" commit e03c8dd14915fabc101aa495828d58598dc5af98
>  Allow automatic partition scanning.
> +.TP
> +.BR LO_FLAGS_DIRECT_IO " (since Linux 4.10)"
> +.\" commit 2e5ab5f379f96a6207c45be40c357ebb1beb8ef3
> +Use direct io mode to access backing file.
>  .RE
>  .TP
>  .B LOOP_GET_STATUS
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
