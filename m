Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BCA42F89F1
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 01:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726264AbhAPAaX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Jan 2021 19:30:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726058AbhAPAaW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Jan 2021 19:30:22 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22ADEC061757
        for <linux-man@vger.kernel.org>; Fri, 15 Jan 2021 16:29:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u14so4839929wmq.4
        for <linux-man@vger.kernel.org>; Fri, 15 Jan 2021 16:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=VGkKxI1OGovVYmiYwpZHttD6M8paRWO7ikB99ieS6nw=;
        b=IwNNm9tM0Wr43NVvNv5OWh1ceekPz2QQoL4Y1UWOld+u3e1ObXRo/AIjClZA+cizNn
         QvoeuLHRqKh6RvubwFjIQUtqg1S9XqL0arV4s45FbR5NBmB6LLy2i+alknRJiLUdmnkP
         igHGqdsVH5JXAQY0K3xkcfwnqIdmhEL7nucU0mV664NdkPPK6qkvnQPExwARrMvow9np
         VrLF0Tk6lQDk0G1foJEcQizVN/+CzH1dIsbvHbzBKSNvYRnut1dt0aw4fIJjI6DHpRJ5
         r43mgrwdoiUvci7OP5G+rjw9G+AlfIIF4R2glg+jX7fQomaJbvilMGX4dj16DgCxwgKD
         SQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VGkKxI1OGovVYmiYwpZHttD6M8paRWO7ikB99ieS6nw=;
        b=BvLE/tPiR8gFMu6L70M6GxKP5qhH7llJrwa40ANqHrbptGQ2EB7u8jNynorf/fMreR
         jlwYQf+lDc/StPtSaLUs+O7nYwprV2ejEMy+4hnPGAe4oj4fKcUWsCf7fNMWDCCSzeKK
         vi8HmF+ZKMNs2OA6uD032emZGajDlcII7qj/udViBQBUvgMl3HG2zPCLDhvqHb9+l1BM
         RG1bo0Lduw2gPMXQGMUPHfnUrN4r4U/C1CkWZqGNBUvsUrQNiQy7sqdd9daEF8aJCAMo
         Fej0qo53zKqNrBhzlNin01BBink0WYOGSZAjdb616K7AZjug97/oonSi7qC5dmGqep6G
         aqhA==
X-Gm-Message-State: AOAM533Hr52fvV43WDdV11gqt3pdxU3nSanRqrjCnpyBHHZ2hNCmaOF7
        GuJ9Jg8B+KgN9e6vmhZN8QI=
X-Google-Smtp-Source: ABdhPJyBrDhMD7uKExFkunGp0CsJKWK67L+ZjQFLW7snvm4Y4p7YAF7uKkhtHQA1Up1F1EMBL4eD9Q==
X-Received: by 2002:a7b:c8cd:: with SMTP id f13mr10555185wml.56.1610756980966;
        Fri, 15 Jan 2021 16:29:40 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b7sm15753554wru.33.2021.01.15.16.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 16:29:40 -0800 (PST)
Subject: Re: [PATCH] rtnetlink.7: Remove IPv4 from description
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210113092212.14562-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0a2a91a0-f0c3-a50a-09c9-c3c8f7841955@gmail.com>
Date:   Sat, 16 Jan 2021 01:29:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210113092212.14562-1-pali@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/13/21 10:22 AM, Pali Rohár wrote:
> rtnetlink is not used only for IPv4
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Hi Pali,

Thanks for all the patches!
Patch applied.

Cheers,

Alex

> ---
>  man7/rtnetlink.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
> index cd6809320..aec005ff9 100644
> --- a/man7/rtnetlink.7
> +++ b/man7/rtnetlink.7
> @@ -13,7 +13,7 @@
>  .\"
>  .TH RTNETLINK  7 2020-06-09 "Linux" "Linux Programmer's Manual"
>  .SH NAME
> -rtnetlink \- Linux IPv4 routing socket
> +rtnetlink \- Linux routing socket
>  .SH SYNOPSIS
>  .nf
>  .B #include <asm/types.h>
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
