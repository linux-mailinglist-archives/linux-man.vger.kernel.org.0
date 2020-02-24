Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D859716A244
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2020 10:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726838AbgBXJ2s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Feb 2020 04:28:48 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:45849 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726628AbgBXJ2s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Feb 2020 04:28:48 -0500
Received: by mail-wr1-f67.google.com with SMTP id g3so9444344wrs.12
        for <linux-man@vger.kernel.org>; Mon, 24 Feb 2020 01:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dtiqCG7FWTzFSSWhkPeCzVDjx38vdkMysQAKsD+UBoQ=;
        b=vhIDhdszAjvPRVLbOwcT9X10ICyvFDdauRe78Ct39k3szilJ8Ya9i/EJ0wRaTuS/Hz
         rZsWDAdCWJb1jEqyxoDy/jg//7SkqAoGnR7cOGpsFMhOQiXxOiiTDgS2BOQQwU/eXJaI
         a5/48jS/usnofQ2HdmTgfsTcHbT3lOxqewc90Nc7y/MIimSVxVj3CMyt5huCS0IOplWY
         MXktjt6Al3IqJE/F88xcZiq8+6YxMSnzM0GkD1/nhRmS+sBK19XZV4gi2AIgUNXGYzHR
         cht7sZSeoQdQavoEx/epk/thOk6tAFeiM2wM40sB1TKGMmuCWIYXSoRAcI5x/+MfRkCG
         0UKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dtiqCG7FWTzFSSWhkPeCzVDjx38vdkMysQAKsD+UBoQ=;
        b=q33Ic9w+KYGhRZrDizCEeXFo5UCt5Zrxkg+V6pA8X91qc+IxMNL+pwsQnnadBp2u4I
         waRYkXODm4L7GWMgbf1Bh1E09EufT5wY7tqmYWaKHgMsoyjXbm7yf6LKhY4HX6hHq8ih
         k4y/lQE+MGulAE+pJ7Qvwepftmxj+I1paZ2V6koUFcu4zuLeYPcJVoZu0oS3ysak6vAi
         SYKbgGUcjFVx0XWSmcZdvWY5o9aNXKw/WaGlqlqQBXaMVU9jo8+ZJ/DdMKwq0OmUiN/X
         kuu2idqC/7gU28yvVmknFUdxNta2qo/PkLoO/TFnj8yWTzPpNed2PSaE++3gz9jNCH22
         3v7g==
X-Gm-Message-State: APjAAAUV0F76H66D0dTZkCowS+bps/iKPZ5/xvhR2k8/eqDhFjsFy15J
        rNd7VOGx8FK6gL27nhBLIUo29HLb
X-Google-Smtp-Source: APXvYqyFNjwvjV/pX4tu08TIIePm4dS1UIeHy88H0265s445ZgAnkTP5F2ou7Plg6r4+/YFarnnufw==
X-Received: by 2002:a5d:6802:: with SMTP id w2mr64799586wru.353.1582536525963;
        Mon, 24 Feb 2020 01:28:45 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id j66sm17958418wmb.21.2020.02.24.01.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 01:28:45 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: tfix
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20200224090026.GA32691@asgard.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e40037de-98f4-a4aa-2c21-125893ddbf39@gmail.com>
Date:   Mon, 24 Feb 2020 10:28:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200224090026.GA32691@asgard.redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/24/20 10:00 AM, Eugene Syromyatnikov wrote:
> Fixes: 13e5f960f353 "strftime.3: Minor tweaks to Eugene Syromyatnikov's patch"
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/strftime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index 7e2ea8b..c6ed25a 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -406,7 +406,7 @@ The year as a decimal number without a century (range 00 to 99).
>  (The
>  .B %Ey
>  conversion specification corresponds to the year since the beginning of the era
> -denoted the by
> +denoted by the
>  .B %EC
>  conversion specification.)
>  (Calculated from

Thanks. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
