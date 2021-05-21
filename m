Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A54F38C560
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 13:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232317AbhEULFp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 07:05:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbhEULFp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 07:05:45 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28745C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:04:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id d11so20630708wrw.8
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1HBik/WC4wcsCcW5K/maEhLuhZ5udt3JJKfoJmxgd5s=;
        b=RsmIKcz3rs7D1UzuQUGdaF6/UULUcIEGD2UbKDbuQP/uNj6M0BlfJLX5FvuiTcU4XF
         xvsnTEI2d7zWplXHRuhlz6n7VVesPi/wJO65/aZy7vPRg2wb72Asvw2a4eJX+OJUgmSA
         MpLbyXm8FgnUqyGdwCXp1ZzzhvpSrvt8P4rUUUvrVwXDoW1EsyO1r0CcbcHq0L+W1qh1
         jOZkgYCzpcADYZ+hBq3rEGzVGsdKe/Ljlm1dJAZghI0lm290kaKtrETHDXiSFRk1C1dD
         MUFm/SUJ6u5bi/NPlVe+4LcwmWyvWQpZMvWXOnATt5RbgBiFO3SBi9KEPNkcb8HpkjZ4
         +NvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1HBik/WC4wcsCcW5K/maEhLuhZ5udt3JJKfoJmxgd5s=;
        b=aDYn29SDmOFpqbjZgA0Gc4HA6wFouU2iT3lC0iSm2AHqRtWnz/s+OPrfYgqaosFR7N
         nsGpFukjkn7MTMA9VVZTiCS48ZxlmAd7VRsInz48tB7JD1/qpgHMN1fd+iZ6RmGvqNN8
         uRQKwjBI+9u1iGI5eQrU5YkxBzHKT1rRtagURMUbKa3qW8X9HAemdoGqEYu2t8tlgUfX
         4qntPEe+Spt/AQXjBRPTW5WtJQps98PyCMmm8cH5h4fP7/3sTf1/F4UkXUZvXswUu4Pl
         5ncMceFMDsH3z0mr6a/QEG0xqVO7d1UmbSxm+ZKuY0ya80PhbArXPjdHGapazPHJLngJ
         CiEg==
X-Gm-Message-State: AOAM533ksOWz3bBzS1v4SaCzw0oUhjwfhOuwZiTmuvoZSAs4Xjg1URj9
        0lmm+cajpqbM9YXo/18al7k=
X-Google-Smtp-Source: ABdhPJxQptiV0T9kDdnZusGhfZEQNwFVzVkpT3NjPJzhuxu+xDANOidiHV5Z2raGGQA/6NZUqlDJUg==
X-Received: by 2002:adf:fa52:: with SMTP id y18mr8918595wrr.355.1621595059769;
        Fri, 21 May 2021 04:04:19 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.120.224])
        by smtp.gmail.com with ESMTPSA id q13sm1761367wrw.56.2021.05.21.04.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 04:04:19 -0700 (PDT)
Subject: Re:
To:     Radisson97@gmx.de
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
Date:   Fri, 21 May 2021 13:04:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 5/19/21 11:08 PM, Radisson97@gmx.de wrote:
>  From 765db7b7714514780b4e613c6d09d2ff454b1ef8 Mon Sep 17 00:00:00 2001
> From: Harms <wharms@bfs.de>
> Date: Wed, 19 May 2021 22:25:08 +0200
> Subject: [PATCH] gamma.3:Add reentrant functions gamma_r
> 
> Add three variants of gamma_r and explain
> the use of the second argument sig
> 
> Signed-off-by: Harms <wharms@bfs.de>

I just read the manual page about gamma, and those functions/macros are 
deprecated (use either lgamma or tgamma instead).  As far as I can read, 
those alternative functions have all the functionality one can need, so 
I guess there's zero reasons to use gamma at all, which is a misleading 
alias for lgamma.  I think I won't patch that page at all.

The glibc source code itself has a comment saying that gamma macros are 
obsolete:

[
#if defined __USE_MISC || (defined __USE_XOPEN && !defined  __USE_XOPEN2K)
# if !__MATH_DECLARING_FLOATN
/* Obsolete alias for `lgamma'.  */
__MATHCALL (gamma,, (_Mdouble_));
# endif
#endif
]

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
