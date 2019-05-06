Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A2EA154C8
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 22:05:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbfEFUFc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 16:05:32 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:34676 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726124AbfEFUFc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 16:05:32 -0400
Received: by mail-vs1-f68.google.com with SMTP id b23so8948614vso.1
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 13:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F/9TtUDLqKa5kMECaonV9WoVAvZCBLgR50z0e8NNErQ=;
        b=qA7gI5GIOrKR2rfs9ANjEoqkrBan1Gp/kkgs2r3onLEk0Yphh8FEKc48pjZqkM24Bo
         8mU344crswjw0M80zDUnjAsyl5F3q4pQepVSdnjc7Bhk4xRVcg1ESf5VaYWaZJrh1uVZ
         dnIofK4x0Yi6KJovHXrXORbCoUycduIh+O6RNzZ3DsNbdW23BORc6AcZNiam4UVBulcU
         goVdxRvpIku+3LYkfFIjOWd4kSeysk55a6/f3/tTdl8t4hLpF4b+AS7o0cYWrJQGfuGB
         rLtq9gWfhVA8AOKSyXLpcqefOqGUjdjpHCQZeshq2yOpweTaSqE1LxX2iGNJSvdtxatI
         q2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F/9TtUDLqKa5kMECaonV9WoVAvZCBLgR50z0e8NNErQ=;
        b=iUXS58ENx7suepyVvidMb6j3RhLsSq/FTapLwKGWycsosgXwNNavWXVNYSN+hdkSBm
         eHIapbRxpimxemQBydnca5lB82aSnoNUgDY0s9/2lVGoMIrC0ZjGTYRc4SLYOSXm8Fqc
         ZWcQRFpyXndQoKHMKrW8TW1ZTKkjvqxhVL+aXfdj66v7gOtJCnSdsfvvGyqFv1SHhwJF
         Hw1GCIx0P0mYQq6JX/G1GeIANVOBoev4kon7AoLOak6OqRrryaTYZW31SyE/2Y158hLo
         LkANBf0SLoZ0j71ICVzKHDJvzkqksYhA+t72yxXtwF97k17AdWqURzsFY74qlEola7a3
         1hqA==
X-Gm-Message-State: APjAAAVqY/rg2BaP81k8lafPbKO5aFhU9wadBFKJ6+xaKzoZe4bPhWEY
        WosQ4CkV2SSparjogaPZ8EAuDZas
X-Google-Smtp-Source: APXvYqwg/bvtQ67N79kHf8VVep6DAWwfYoE92+6y07VDYR+Sk2c8tCgKIHNwfEz1aeRJyOtxCTq4IA==
X-Received: by 2002:a67:ce91:: with SMTP id c17mr6865037vse.33.1557173131009;
        Mon, 06 May 2019 13:05:31 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id m189sm3323106vke.4.2019.05.06.13.05.29
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2019 13:05:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] console_codes.4: Document that \e[1;n] and \e[2;n]
 support 16 colors
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190309145503.4193-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35fa2670-677f-5e4f-fec1-0f22f692c2c1@gmail.com>
Date:   Mon, 6 May 2019 15:05:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190309145503.4193-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/9/19 9:55 AM, Jakub Wilk wrote:
> Source: setterm_command() in drivers/tty/vt/vt.c

Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man4/console_codes.4 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 35f52fc64..99895952b 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -361,7 +361,7 @@ The following sequences are neither ECMA-48 nor native VT102.
>   They are native to the Linux console driver.
>   Colors are in SGR parameters:
>   0 = black, 1 = red, 2 = green, 3 = brown, 4 = blue, 5 = magenta, 6 =
> -cyan, 7 = white.
> +cyan, 7 = white; 8\(en15 = bright versions of 0\(en7.
>   .TS
>   l l.
>   ESC [ 1 ; \fIn\fP ]	Set color \fIn\fP as the underline color
> 
