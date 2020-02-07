Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C474155AC7
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:35:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726897AbgBGPfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:35:30 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34385 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgBGPfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:35:30 -0500
Received: by mail-wr1-f66.google.com with SMTP id t2so3219338wrr.1
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=95RoHmBOZNwPnFYxLA9asg4OrVb0oEaE3pOnQu/Try8=;
        b=EwOSjxL9KSh50uDvGVzwE7qk3Zlkqju95i9ajYUIGSRNY4q6Bw7k0LYV4qE8mlIw08
         9wFvtdTzDCqry66va4zBZj2OxYYbsCLWLMGiC41K2E59z0vKNQYQ8GJYhmn2HtpZ1NO9
         fu14Jfl1q1IHdPIhD84uoM38YgWCGDv9Vd7y/ggF0fR0mYaVSNEbcA77LZLYsEGHRx5+
         yuac/BbbMnWJvjw7iI+vFswkDtm1rqaktK3deDxWweU06yI90CqL7Dnjmom6zB5BRa1b
         S2BqyZD1aPxBBJaq92NnfWskez23M5zpDTe2MtcBVl2QqvjeFwPHdr1omFfLXBSlA8Ju
         PHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=95RoHmBOZNwPnFYxLA9asg4OrVb0oEaE3pOnQu/Try8=;
        b=WpHq4HzH+heWhp36ffU4F7gM1/Wo+q0tr6RetzTRn34vuSPmJI/v4h0n/seVv6jEc+
         NBvkNp3eQIvR7Q5+YfQKmGWSYWdXsqYxYbvbNTS8dkksIsBo/TOlEHKDG7PruMmEv5cx
         KjCuM0vZmMB91VRMUjg0J9YjxRuKE21Z614czHOIFrBZk4CF2AhIVIuu8C7OOxB769mb
         deOHUv84nKunHw8vVb0la5Uah8jzLy5GH8GKmH/Ycz50GDEMpaRL/kwinI+CHlWsyzh8
         Na84J8zXPA3XYHlxMkWtaQny8sojXRQQJV10ss8xK+wBnlGFV68u72P/rowMUN5WIlTu
         zgYg==
X-Gm-Message-State: APjAAAXFwtrHC9pV4dSR07dlx0SxuXfPF6hKOp7eyNgV3ycy39LkpHqr
        Sr++SYUi53TkpsAakeWLvqo=
X-Google-Smtp-Source: APXvYqw5wxQ7C1Z42SugaLyWSraWOdUi5RpEjfn8ru128p3o6pxNB8Uc/0bPXYlR6Wnq/kD4oc5AcQ==
X-Received: by 2002:adf:df0e:: with SMTP id y14mr5090727wrl.377.1581089728633;
        Fri, 07 Feb 2020 07:35:28 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id k13sm3794244wrx.59.2020.02.07.07.35.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:35:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 3/3] console_codes.4: \e[90m to 97, 100 to 107
To:     Adam Borowski <kilobyte@angband.pl>, linux-man@vger.kernel.org
References: <20190308194059.9560-1-kilobyte@angband.pl>
 <20190308194059.9560-3-kilobyte@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f1e4b517-7c25-5c8e-d7ab-7d2cbb778d2c@gmail.com>
Date:   Fri, 7 Feb 2020 16:35:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20190308194059.9560-3-kilobyte@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

On 3/8/19 8:40 PM, Adam Borowski wrote:
> Supported since fadb4244 (4.9), 100..107 are supposed to be bright but
> this does not yet work (unmerged patches to do so exist).

Thanks. Patch applied.

I will send some further comments to this patch series in another
mail shortly, since I think we should document should still
document the historical behavior.

Cheers,

Michael

> Signed-off-by: Adam Borowski <kilobyte@angband.pl>
> ---
>  man4/console_codes.4 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 4283efe45..b77441ac3 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -283,6 +283,8 @@ T}
>  47	set white background
>  48	256/24-bit background color follows, shoehorned into 8 basic colors
>  49	set default background color
> +90..97	set foreground to bright versions of 30..37
> +100.107	set background, same as 40..47 (bright not supported)
>  .TE
>  .PP
>  Commands 38 and 48 require further arguments:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
