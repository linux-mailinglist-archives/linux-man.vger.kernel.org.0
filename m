Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A59C2850C4
	for <lists+linux-man@lfdr.de>; Tue,  6 Oct 2020 19:26:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgJFR0d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Oct 2020 13:26:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725902AbgJFR0b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Oct 2020 13:26:31 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DF5CC061755
        for <linux-man@vger.kernel.org>; Tue,  6 Oct 2020 10:26:31 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id y11so13678804qtn.9
        for <linux-man@vger.kernel.org>; Tue, 06 Oct 2020 10:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v9BdQX7cri2vV0hKu2EbIVzEKgHTTKp00B+IXgRuoRM=;
        b=JB/r5ehMNwvKti6Dph0ByLyya8wP6BBZESfERBPSa1EDduDCEazYm0W153HJ5rhpxu
         plCFWX9eb9x0aMrexKKx1OzO4TpgJhkcdCsp94jylRIuDMHmdsD3G+YvrrHrI5QQtdR7
         xt+oJ6oBXAy6hwrPkYgMTAtknqcccmO0QNh9HPnY/pxrbU5eHonEWFvYOtKFmovQ7AkM
         qd/+Zhyb3NExay0pe/VdxfT7fkKhX3IZDPsLWjYz9UyhhDSsas+9RskvMPUXT1wJkXYt
         Oaal2tCKSBzTEBx6ZaTaGbwZgbIDxXbdvGsgjYZtnGMj2pcb9oBjdgMUYOrGjEAE/E8v
         bO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=v9BdQX7cri2vV0hKu2EbIVzEKgHTTKp00B+IXgRuoRM=;
        b=FddFcpwA3t8lrj0sC5QbRX8cYmkTBxsf/AHO504QfHOVHYGo8KnKlavKcCewQmRQTd
         y1Hy0pL+Hpee4ZXDyhfOhG5CbOJjXygKsx/ysIp4vLREBy/RsOzaZz3jwXNVlEKPnnOc
         dE8hRobDnq9H3X3xFWZAU7JYWv+wkOo/lBMcGmNJFd1H7vMBf2S0KvYFyKdOmfgc+gvw
         SjxQv2elFIcxE1n3+NYbLppc+UZSZfRa6tx2yQyl35HvyC598vJUEnAtm839PX0ybhWu
         2yophR/1gW3ATnkQRkCaQvtJkLinSghi//e3ad+GAG6Eg9Sgiv8SzRNF+9IvV3IP4O3Y
         AbBQ==
X-Gm-Message-State: AOAM532NjCaZG5ctBShvXPG+C9ivKxLyJ9vDMBE68wuIGukR9JgNvHQW
        eDbJ6+BIMOdVWrr++Qgke4LjpQ==
X-Google-Smtp-Source: ABdhPJzNAdWhs+CSoJ6UcSTEPL7w5Mmlrxk3u/+EpZUMyErkd+WR24yZvWffj47FZCvNHcrWVK2YMA==
X-Received: by 2002:ac8:4e55:: with SMTP id e21mr6627962qtw.66.1602005190183;
        Tue, 06 Oct 2020 10:26:30 -0700 (PDT)
Received: from [192.168.1.4] ([177.194.48.209])
        by smtp.googlemail.com with ESMTPSA id s10sm2930792qkg.61.2020.10.06.10.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 10:26:29 -0700 (PDT)
To:     Nate Karstens <nate.karstens@garmin.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        willy@infradead.org
References: <20201006161520.975-1-nate.karstens@garmin.com>
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
Autocrypt: addr=adhemerval.zanella@linaro.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH] system.3: Indicate MT-Unsafe
Message-ID: <6dec3d89-a16e-8be5-6f85-4ff4e51e9136@linaro.org>
Date:   Tue, 6 Oct 2020 14:26:26 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201006161520.975-1-nate.karstens@garmin.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 06/10/2020 13:15, Nate Karstens via Libc-alpha wrote:
> The fact that system(3) does not support pthread_atfork(3) also means
> that it is not thread safe. See the discussion for the proposal of a
> close-on-fork flag in the 2020 April and May timeframe, especially:
> 
> https://lkml.org/lkml/2020/5/15/1067
> 
> Signed-off-by: Nate Karstens <nate.karstens@garmin.com>

Not sure if man pages characterizes file descriptor leak as mt-unsafe, at
least we don't have this concept on glibc manual.  In fact, I think adding
a MT-Unsafe mark to this potentially make any libc call that is not atomic
potentially MT-Unsafe, either when they do not concurrent trigger race
issues regarding memory semantic. At least I think it should add a 'race'
mark to indicate what exactly is MT-unsafe (as for other implementations).

> ---
>  man3/system.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/system.3 b/man3/system.3
> index aef40417a..8730fabd3 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -127,7 +127,7 @@ l l l.
>  Interface	Attribute	Value
>  T{
>  .BR system ()
> -T}	Thread safety	MT-Safe
> +T}	Thread safety	MT-Unsafe
>  .TE
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C89, C99.
> 
