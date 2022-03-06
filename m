Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626B54CEC66
	for <lists+linux-man@lfdr.de>; Sun,  6 Mar 2022 18:09:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232578AbiCFRKE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Mar 2022 12:10:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbiCFRKE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Mar 2022 12:10:04 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15CE966CA0
        for <linux-man@vger.kernel.org>; Sun,  6 Mar 2022 09:09:11 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id x15so19860380wru.13
        for <linux-man@vger.kernel.org>; Sun, 06 Mar 2022 09:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5cgmhjtrqqavDuRPv9S2L29UW3a9Kofdd9O4iUPuPUs=;
        b=iINmnq7OpGt9IwpP4RcR4RVmDeuXfJTMq+VtNC/gsnQTJTeZooM7THteruh7ivlUSY
         9uh1lCtWXdGtoR+Z4jbgjPLwCu4AKOjMYQ53p0zI6PpaRJLh0OPdpZCzHtXbQig3BxPr
         5K8Tn9IVJjen3NBebcMBImVvbTUGZFRcnFy91L4lGjz6Y8aga1gzv64xGfv8jRBb6FPY
         HzsRudB/oBhxOF1W1QYWrofqcASIzRlmBPHRCXTFfJXN6OoY4g5166E7V8l6QgU0q/3B
         kytHWiNWmaple+MFsPa6u32DMNeJncxG3gyVPoBvAgXyCZMxi6Ru76wXybm1JWyJnwvB
         oWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5cgmhjtrqqavDuRPv9S2L29UW3a9Kofdd9O4iUPuPUs=;
        b=tnpwRg3Gzb/3gKvOt/9M2dI+2kR1uY8dWYy1mbBkFiS6nfG06TTgzQ6Yy3mHaZjjjK
         p31vPktwIHVZldMlY7nqgvzEDUEuDiJdvTxLYbIzxZTNzHuYL21wqM5G020SnJX9gjWZ
         //5R0R9s7u8jnw6tpCfII7c/ecpHnK8fuyY0JkJsTReRX+7DrCUZ7DG/a9avDI35LRqc
         e+uZ3G7kEwfN7AVCUoLVjAeeQ4n3p0DgBcY7BEAqQVdjcvaxh5grv6WpyV/WAKirPMd8
         K7ccuof0xWFr966nqBP/xsu/tE1YuFxi51paukv4KWkTdmNe+v5qwojAf9jysTJN7FDB
         dYFA==
X-Gm-Message-State: AOAM5315tn7FjZ0Oq3KxS2HxwaYNvXpZuYhru7TSM67IvLH7jJjQi5lS
        G7WYZp7A+3dOhFToIXRistI=
X-Google-Smtp-Source: ABdhPJwexmCmcaBEmgm9qIKR7mwATVtgFEumilH3IICejPV5XIbNKtM8FO2sj121AlPzQaYx87jBJQ==
X-Received: by 2002:a5d:5689:0:b0:1f0:c78e:6690 with SMTP id f9-20020a5d5689000000b001f0c78e6690mr5607340wrv.616.1646586549482;
        Sun, 06 Mar 2022 09:09:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j20-20020a5d6e54000000b001f0642807cfsm12321328wrz.117.2022.03.06.09.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Mar 2022 09:09:09 -0800 (PST)
Message-ID: <ceab916d-a7d9-f0cd-5694-66b617dceacd@gmail.com>
Date:   Sun, 6 Mar 2022 18:09:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] fix trailing , with SEE ALSO
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211022174653.18277-1-vapier@gentoo.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211022174653.18277-1-vapier@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 10/22/21 19:46, Mike Frysinger wrote:
> Signed-off-by: Mike Frysinger <vapier@gentoo.org>

Patch applied.  Thanks for the ping.
May I ask you to please CC me in future patches?

Cheers,

Alex

> ---
>  man2/syscalls.2 | 2 +-
>  man3/encrypt.3  | 2 +-
>  man3/strtol.3   | 2 +-
>  man4/hpsa.4     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 800873b559bb..e80e20f524f7 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -1181,7 +1181,7 @@ returns a pair of GID and effective GID via registers
>  is used for configuring the Host Address Extension register on
>  low-cost Alphas in order to access address space beyond first 27 bits.
>  .SH SEE ALSO
> -.BR ausyscall (1)
> +.BR ausyscall (1),
>  .BR intro (2),
>  .BR syscall (2),
>  .BR unimplemented (2),
> diff --git a/man3/encrypt.3 b/man3/encrypt.3
> index b4be7f3e0a56..e4e22f286718 100644
> --- a/man3/encrypt.3
> +++ b/man3/encrypt.3
> @@ -221,5 +221,5 @@ main(void)
>  .SH SEE ALSO
>  .BR cbc_crypt (3),
>  .BR crypt (3),
> -.BR ecb_crypt (3),
> +.BR ecb_crypt (3)
>  .\" .BR fcrypt (3)
> diff --git a/man3/strtol.3 b/man3/strtol.3
> index f1470c68131d..eca92dbbefec 100644
> --- a/man3/strtol.3
> +++ b/man3/strtol.3
> @@ -305,4 +305,4 @@ main(int argc, char *argv[])
>  .BR atol (3),
>  .BR strtod (3),
>  .BR strtoimax (3),
> -.BR strtoul (3),
> +.BR strtoul (3)
> diff --git a/man4/hpsa.4 b/man4/hpsa.4
> index 286f078a70a8..ab8ba1c6f0a7 100644
> --- a/man4/hpsa.4
> +++ b/man4/hpsa.4
> @@ -222,7 +222,7 @@ for some examples.
>  .BR st (4),
>  .BR cciss_vol_status (8),
>  .BR hpacucli (8),
> -.BR hpacuxe (8),
> +.BR hpacuxe (8)
>  .PP
>  .UR http://cciss.sf.net
>  .UE ,

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
