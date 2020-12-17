Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B60C32DD51C
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 17:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725468AbgLQQXt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 11:23:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726999AbgLQQXs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 11:23:48 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 616C4C061282
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:23:08 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d13so8930539wrc.13
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i/aKY69r4IbfW6UdJqN3VJiBJT7yBn5/e4HdzWeTRlg=;
        b=XPXFmtgi4YxNCA6ILwh6vJX6GyUEeyz0WSboB2yeoKUdg9prDT8d2c5HB7QgTpHXSI
         vQaSxjoqBGVSCWKsk2h15SjMxhCZefsu5DnsX+/r3R7DkCKqdIU4TJWgzzaCF32dq7O5
         o8kyB+w8RofeWjTSdTWs8dUp262ocB6x21rynIDcbUQQn63GR4dxikxx0xo8gdVCGP1o
         NsgEU6WxKp+6+94C92NlfdHPtPwu7c/SZ1JkYWdkdTs73ZcEVj251GNdTkMytPWv05C/
         4RSMtFToctZGBcR6ng1Q09Mk0uzCXgqXix0lvMigXTACJNtN6Psv9+Ijnif41UmV5bNk
         i3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i/aKY69r4IbfW6UdJqN3VJiBJT7yBn5/e4HdzWeTRlg=;
        b=o2Nm/viMObUGZl+CcmVKPvH3gn1Clk/uHvwDAO4wm72WHwpAuERReQ3sDi69DWUmMA
         GmrcEHZK+zWLCMXFgVYEq8tGCF/L3H5KZpnAs4eSy1jOhZ/tKDZZgMloxDSkaswEqnir
         waXoS5aQ3LofhxO6PqbjE8R3eQaxRMb+NhvGvdMqZC2kejsYSoGGFciJwp+hgqV6mMC7
         61CnV3uaDWf27rO3LiH+60HmEs3xv/JyY8mXstJkX8Htz9kosXQtvXZsZzkiYvRGuEFp
         dg/ex7fMnVf8iaOKMAvi9hIyxMfX6WLALMI4h1Vj8fKDZ0SE+hBx3oE1DFrllEx6oJTD
         Ejbg==
X-Gm-Message-State: AOAM531B6BcISA7vGDqj7x/uHX/eICTqlYm4/788pgQjYe11MFBHjnX7
        SblqbweZ1updZkUXeD32rAw=
X-Google-Smtp-Source: ABdhPJzrTUDch5VJ2JL+9eJsAz6YL7gImud7nI5e5BPtQkOErBGyUVjkKASRQ+AeWRDzPHkoAyDMcw==
X-Received: by 2002:a5d:4cca:: with SMTP id c10mr43860778wrt.176.1608222187171;
        Thu, 17 Dec 2020 08:23:07 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a25sm4048343wmb.25.2020.12.17.08.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 08:23:06 -0800 (PST)
Subject: Re: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
To:     =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
Date:   Thu, 17 Dec 2020 17:23:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

Thanks for the patch!

Could you remove the '-rc4' part from the version?
So that we show the first stable version where it was removed.

Thanks,

Alex


On 12/17/20 4:27 PM, Ahelenia Ziemiańska wrote:
> Relevant Linux commits:
>  * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
>    (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
>    described as "broken" and "obsolete"
>  * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
>    (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
>    "since no one has complained or even noticed it was gone"
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man5/filesystems.5 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 6ec2de9f0..1eda05b22 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -160,6 +160,10 @@ To use
>  you need special programs, which can be found at
>  .UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
>  .UE .
> +.IP
> +The
> +.B ncpfs
> +filesystem was removed from the kernel in 4.17-rc4.
>  .TP
>  .B nfs
>  is the network filesystem used to access disks located on remote computers.
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
