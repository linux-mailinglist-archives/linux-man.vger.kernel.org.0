Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9A924EF1E
	for <lists+linux-man@lfdr.de>; Sun, 23 Aug 2020 20:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726449AbgHWSDz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Aug 2020 14:03:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgHWSDw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Aug 2020 14:03:52 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E672DC061573
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 11:03:51 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id t14so6196388wmi.3
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 11:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sYFH1G/ShVsd2LN8LTovi2EPmlkOPL9g2CAP40hwCS4=;
        b=jWCxZ01ts4sGibjLpCPpoT80jfIw5Qajj9qktL2M2GA+eBMdiFKao/dgCdlkI1s1/G
         ChoH7YeoFYMSOvgxpEKI1QYx/JxRRmG+FQTtLMJg1eurs1WCet4tQSNA7ZtIuAphAA2+
         WM3uQSK4Hn7Wht26m3DEygQtLM4HXjL0z04EENp5mTovU/WrCj4rt2/YQA9xim+gzrBf
         gCr6zdS8H1yxfkv2QBgNW6/We7BXV730cP3+d+ZC9LMY0IgRlxVlaTwfcsEKs81rC7Q3
         IaP+/m6jXqayFg5lKKglfqho4Pz5AACthWloRDbp6ImKlrfLLztRH0vj3pUapuxxurIi
         QZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sYFH1G/ShVsd2LN8LTovi2EPmlkOPL9g2CAP40hwCS4=;
        b=MPjqhWkqPJlhvxiJ9Gp4lT/nZviGwbW6HuxJZaLcXXK6y7N/JH9nLGvwdcRUS5iwOQ
         xgmrd8HLL9u5xTSjiaiacY3Q/2xknARGUf0VLAo6w6RSVBBo77WFy8zVsL9vIAZqSJLG
         jBrkBwD3yE9f/iGY7zJ1hrQTBnTyH0vFuYpcb3qsgMIiyGFl83QuCjIh0Ru7Y8HZ1aME
         kutKoP72D3ykH5o97JuEwuSmxo/c47ugd0119D2jL+6ycka601wASrzA6Tw0vkht07Ja
         vcB7XCxWrDwaySNdbBvOFQDLL054h1fmTsc5cvU9hXnF/6cUm6gub2ud2E1QYkP243hv
         2RHA==
X-Gm-Message-State: AOAM530i0bJEucTDSMbFq8tAglvdI7Z13TBJlzlOtYim3II+fdc/IKMH
        zIc7/S4op+uLGavgtFF4sdjUIeOG1rk4GQ==
X-Google-Smtp-Source: ABdhPJyNatkYXLgP+YjxqHnPExZENPciWF3wMA9CCt6V8E3CEekOaISlfhRgr+V3wai+g5a/RGmLaA==
X-Received: by 2002:a05:600c:514:: with SMTP id i20mr2310972wmc.102.1598205830258;
        Sun, 23 Aug 2020 11:03:50 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id n12sm19350416wrq.63.2020.08.23.11.03.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 11:03:49 -0700 (PDT)
Subject: Re: [patch] printf.3: Fix description of %a hexfloat output
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <20200807083006.GA2498449@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <58a7e7b8-9359-8bf5-8536-ad55b3354708@gmail.com>
Date:   Sun, 23 Aug 2020 20:03:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200807083006.GA2498449@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan!

On 8/7/20 10:30 AM, Jonathan Wakely wrote:
> The description of hexadecimal floating-point output is missing a
> character describing the exponent. The guarantee of at least one digit
> in the exponent is present in both C99 and POSIX.

Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man3/printf.3 b/man3/printf.3
> index 18000bc70..d3510f7df 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -730,7 +730,7 @@ conversion, the
>   .I double
>   argument is converted to hexadecimal notation (using the letters abcdef)
>   in the style
> -.RB [\-] 0x h \&. hhhh p \(+-;
> +.RB [\-] 0x h \&. hhhh p \(+-d;
>   for
>   .B A
>   conversion the prefix
> @@ -746,6 +746,8 @@ and otherwise is sufficiently large to distinguish values of type
>   .IR double .
>   The digit before the decimal point is unspecified for nonnormalized
>   numbers, and nonzero but otherwise unspecified for normalized numbers.
> +The exponent always contains at least one
> +digit; if the value is zero, the exponent is 0.
>   .TP
>   .B c
>   If no
> 
