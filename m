Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 183923E3771
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:47:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGWrU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:47:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWrT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:47:19 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFD83C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:47:00 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id mt6so22136700pjb.1
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SsRNUgA0kXbQ9gcbQOPaNsm8l7Gct+4uvggICWRKqoE=;
        b=JOUF4KBtfnS+EcPQFaHOXQmVABw1mz3gAHaeDD+oEOjw/B6LZz35c+SXWS5ObHRuk/
         n6X/s2eH9xMw/4PKRBd2aUQqOMnu4BSnqk6vXLmi3z8b+UTPaQ1Vd9xuUj2AeF/n9sgM
         Jxhov0g6DG+drxxHM6ddQ1bWSG9LQ05NGIVhWRAelhwflpsjauG9DZFMm1TZjFUTrwh5
         Kb2B3m3Gq8+XIu+ARItesIByn1eEFsYjun89eewjaj9NdqqlZZBmr5DJm8muBzCMyZsl
         eQqeRNazJp7ckLwxWxxmpOTKEArsqKi3RPkTa4q9MqE+L+/QVChPeu26pE9Hg4N2F9/s
         9hZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SsRNUgA0kXbQ9gcbQOPaNsm8l7Gct+4uvggICWRKqoE=;
        b=qv4+R6W38aY6s9Cvhnd4XtvhrdM7yPzTv8d/3B3x/VfKi6LLe2SDKOesBgcqOsasDq
         yZYR7IWc9j1U76aIUU4H34Rl5P2vjpRn+cxjoHMMaLLl/lyLZYXvHKNliVNc/2VkNb8P
         NIQIh7Pr6NGCDc61xg/mUueII8TjJQFDkIlsYOxnil1WPlxw780awmmvheDq4DPxcV2H
         2KiAbgl1baOVvqxIUwMbONyUw3l/LiyqBkdLFMsiU9GcqQhSvgo5nltkxQTJqkLTwiNa
         TS98gByWOGT/qGis4CzYeXXJqF5MipOX9zYtwPfPORtt8n4CZaxTGalPRY6JfbVlWnAC
         N5JQ==
X-Gm-Message-State: AOAM5337EplRz98FEp5MJqPA60o8KB2cle4TAEGMSdXyJXYQpjDE68EA
        hD1ljVVepJJrjiXVmEehSxK8UT1C5+g=
X-Google-Smtp-Source: ABdhPJysp8uhxtXWKZB4VOWLu7plSq8nldCxzw7CK6Hqe/m134kcvCaFmVFRu7OsN1xEMHVBV6xAGQ==
X-Received: by 2002:a05:6a00:a88:b029:31a:c2ef:d347 with SMTP id b8-20020a056a000a88b029031ac2efd347mr17798305pfl.20.1628376419840;
        Sat, 07 Aug 2021 15:46:59 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id x25sm14953463pfq.28.2021.08.07.15.46.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:46:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 19/32] ascii.7: add vertical rule to separate the two
 columns
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-20-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a0d5399-9f15-da01-279f-c9a37a1e1a5b@gmail.com>
Date:   Sun, 8 Aug 2021 00:46:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-20-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello наб and Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: наб <nabijaczleweli@nabijaczleweli.xyz>
> 
> I regularly get mildly lost in this table (and, indeed, didn't realise
> it had two columns the first few times I used it to look at something
> from the left column) ‒ separating the two columns improves clarity,
> and makes which soup of numbers belongs to which character
> much more obvious
> 
> Other encodings don't need this as they don't use double-columnated
> tables
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/ascii.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/ascii.7 b/man7/ascii.7
> index f1c0c8d74..053b13809 100644
> --- a/man7/ascii.7
> +++ b/man7/ascii.7
> @@ -48,7 +48,7 @@ C program \f(CW\(aq\eX\(aq\fP escapes are noted.
>  .ft CW
>  \}
>  .TS
> -l l l l l l l l.
> +l l l l | l l l l.
>  Oct	Dec	Hex	Char	Oct	Dec	Hex	Char
>  _
>  000	0	00	NUL \(aq\e0\(aq (null character)	100	64	40	@
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
