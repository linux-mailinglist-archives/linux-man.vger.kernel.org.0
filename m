Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4937E1939D3
	for <lists+linux-man@lfdr.de>; Thu, 26 Mar 2020 08:50:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726422AbgCZHuE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 03:50:04 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40395 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726138AbgCZHuE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Mar 2020 03:50:04 -0400
Received: by mail-wm1-f67.google.com with SMTP id a81so5852624wmf.5
        for <linux-man@vger.kernel.org>; Thu, 26 Mar 2020 00:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N96KxS5ezF8gLhcy1G6mUH2UwSipYG957DB5LoMgTrM=;
        b=TaIJj6P4vL0cZyIS7mbppDDfU13lWGAy1TVnF1rDRr+dic+y/re+Wjti2HhM/NcCAh
         0/ipg5EyxAqwLfI12TTdwgGlxnElDAGwR9WIo/h19EDLH7FRfWHHn350YuHYk5p4BCj7
         xlUcybg9n4id+ip4C20A8iJlwD057JJlu6al4sMMWh/8dv/f/3v3k+P4M6SeSOzmae6+
         fCNyB0cX008x0YMr35RupuJjesnCf0L2gUywAyAosUEajWaccydxWreeWYe00aNNgcbG
         0nKahoKT+gQArLKYus+1CW0aAeYiXnfzPrUs1fVObvrbYbNomZipXgWeTrghqp4C3G0O
         EylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N96KxS5ezF8gLhcy1G6mUH2UwSipYG957DB5LoMgTrM=;
        b=Apx+KFEP38ZXc/Nvsu8fgnfwQ1CxClVfAPdH6GzmVg6mJhwaBqqVXhIpnINCcyfCmr
         rTxJsrS7diSI34150K+5qWpcusSpc0HrI0lnqM5XADU/ydCu78KDc+Ot0D8oB5JNibh1
         ghw0xINN/PS32Ud6zwZKW3kysMI+lN1upmHuzV7O++UTUHYVNLPStHkVS1M21hofi/Gj
         ZFiLCihQ7QKdBrSjIFl9VpTg5fNZ5EEAo6GdWC86f9of7L91kFvL3XGmqL5vo903M4qt
         R2EplXBwp+cZbKMwhB4pWCFGBUGxES8kUlzXZbkPDpf6IHYrTfHsg9z5OsNQlmPeZViy
         8SFA==
X-Gm-Message-State: ANhLgQ0CLmkiOkT6Lv6RcFFStwpizLQAUG5xrYgAXTunYcsDgmeajkGI
        68aMML+sFvmkWzytVAkumFBWYsEQ
X-Google-Smtp-Source: ADFU+vsLdEipGo06nAQ33y4YXUxn7Iycz8UV0BM4bEqlHZ3VI8gShDcwEKWfM+lwpDHfTzrsMYgBEQ==
X-Received: by 2002:a05:600c:581:: with SMTP id o1mr1790155wmd.111.1585209003019;
        Thu, 26 Mar 2020 00:50:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id r3sm2400412wrm.35.2020.03.26.00.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:50:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] units.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200323085750.5833-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <11352bde-8d81-c295-998c-53254dd56f19@gmail.com>
Date:   Thu, 26 Mar 2020 08:50:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200323085750.5833-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/23/20 9:57 AM, Jakub Wilk wrote:
> Escape hyphens.

Thanks, Jakub. Patch applied.

Cheers,

Michael

> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man7/units.7 | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/man7/units.7 b/man7/units.7
> index 3df0f28c8..e2191a310 100644
> --- a/man7/units.7
> +++ b/man7/units.7
> @@ -35,16 +35,16 @@ Below the standard prefixes.
>  .TS
>  l l l.
>  Prefix	Name	Value
> -y	yocto	10^-24 = 0.000000000000000000000001
> -z	zepto	10^-21 = 0.000000000000000000001
> -a	atto	10^-18 = 0.000000000000000001
> -f	femto	10^-15 = 0.000000000000001
> -p	pico	10^-12 = 0.000000000001
> -n	nano	10^-9  = 0.000000001
> -\(mc	micro	10^-6  = 0.000001
> -m	milli	10^-3  = 0.001
> -c	centi	10^-2  = 0.01
> -d	deci	10^-1  = 0.1
> +y	yocto	10^\-24 = 0.000000000000000000000001
> +z	zepto	10^\-21 = 0.000000000000000000001
> +a	atto	10^\-18 = 0.000000000000000001
> +f	femto	10^\-15 = 0.000000000000001
> +p	pico	10^\-12 = 0.000000000001
> +n	nano	10^\-9  = 0.000000001
> +\(mc	micro	10^\-6  = 0.000001
> +m	milli	10^\-3  = 0.001
> +c	centi	10^\-2  = 0.01
> +d	deci	10^\-1  = 0.1
>  da	deka	10^ 1  = 10
>  h	hecto	10^ 2  = 100
>  k	kilo	10^ 3  = 1000
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
