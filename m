Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 046863E37F8
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:22:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbhHHCWx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:22:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCWx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:22:53 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78511C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:22:34 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d17so12553682plr.12
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=u8QmCXrj3GbGFpSq7ueLgeyCdeEOI2RF92JzCT+0z5Y=;
        b=E+/OMmLA/ilYSeW/xjHqoZ424+264UdrBfxhUu5L9J0lNNQNTmw+W3VOyDll6RDpkn
         LFrxw3HWbKis1JPAmLdgX1hpYP4jQXXasXeTO2ewme2P31+kQlsZYvXhyow8Hor9jaXB
         fAGzn6vIvq0rqoQDyFtrpQYhBoDyaCVSlGe+h9J0pyPScsWAn1SlFQ2A6L/JOZYpgaee
         9EnW1d8M//AI2uSElw9z4HxjLSg4/2cUlK4Wr3E/xOEGmsxRSKQLUy3HfPkBmTWurNX8
         5EevtiYT36WGEli5HJ5+NQeVzTfLKZjLY2ynx9HEmkixK1V/jFyKqsFS4JwdAUyQ8CJW
         p6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u8QmCXrj3GbGFpSq7ueLgeyCdeEOI2RF92JzCT+0z5Y=;
        b=Xa4A/cRxETba1QuEo1pwNEhLYHRFzRXch27RcWqIv+1Inkt0rLk3k1NLPTIvRcbFRE
         LS6f1WYd38eFcpxkes22HlbstJIz4gA5scXkQhYrr30ulpzxECMn0NPGBsSgQSH+iTeY
         lLHGT34LVELHlBaGcF+qYzWpr+TgMrP7tZs46whi1ha29sZ5xG2d2p9ajxi/BwaubKyW
         5b50cdljaBIOCK+wqlWmO4j3UHJwOEPFTlO4RbcOp03srEmwgaT3rLYme/HwymH8dgK7
         WMSQ1beziBJwggdnUFg7SVAqlNrDwwNzahuBgp2V6YuLTNQf3WE4HKSDU+0+C9tybVWy
         JAUg==
X-Gm-Message-State: AOAM532cL+2gyUuSxOfxg3lhR76/ZNvXin7+QNl3KKMQlwIh3BUZP6EW
        kM5qQ5WNawJNauuTWcTd7Nk=
X-Google-Smtp-Source: ABdhPJyTVM1aKCMIfrjQddF6Iq2a+PkxE6bvyxRIdl89LQLHb7+eGJOYO6XNxlRoB6mJ+VCFH6jluA==
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr17836370pfd.72.1628389353914;
        Sat, 07 Aug 2021 19:22:33 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y23sm16730472pgf.38.2021.08.07.19.22.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:22:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: [PATCH 04/32] vdso.7: Add y2038 compliant gettime for ppc/32
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <90325d9f-ca47-cecb-c883-4e097bd63213@gmail.com>
Date:   Sun, 8 Aug 2021 04:22:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Christophe Leroy via Bugzilla:
> 
> [
> https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)
> 
> In ppc32 functions section, the Y2038 compliant function
> __kernel_clock_gettime64() is missing.
> 
> It was added by commit d0e3fc69d00d
> ("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
> ]
> 
> .../linux$ git describe d0e3fc69d00d
> v5.10-rc2-76-gd0e3fc69d00d
> 
> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied. But see the follow-up mail.

Thanks,

Michael

> ---
>  man7/vdso.7 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man7/vdso.7 b/man7/vdso.7
> index 1d527c38e..5fb22ab5e 100644
> --- a/man7/vdso.7
> +++ b/man7/vdso.7
> @@ -371,6 +371,7 @@ symbol	version
>  _
>  __kernel_clock_getres	LINUX_2.6.15
>  __kernel_clock_gettime	LINUX_2.6.15
> +__kernel_clock_gettime64	LINUX_5.10
>  __kernel_datapage_offset	LINUX_2.6.15
>  __kernel_get_syscall_map	LINUX_2.6.15
>  __kernel_get_tbfreq	LINUX_2.6.15
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
