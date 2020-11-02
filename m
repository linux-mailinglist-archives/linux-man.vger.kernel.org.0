Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCD152A2578
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 08:43:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727965AbgKBHny (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 02:43:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726819AbgKBHny (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 02:43:54 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453F5C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 23:43:52 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id w14so13318346wrs.9
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 23:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OWYNdPPdSAViMwbuJAyRUY0h/SgHVeceGYLvctuUATU=;
        b=fCPj1aznW8f2wieQvqm6UYNHqoxm04jE0rfOsunwPEeulLPnyeWn+KOJnL7Li40wOM
         eYJGsGgA0U2QfyMTaNYnyRjaBgwcl1MUXA2zci0n5py45kren+aDhXvLv+N38C2tVB3s
         eLbOfcN4XyqGmJMfIDXrPT9f659vvxtMuNW9+LZrf3RPoAEpry3ruVQqRWkxBHtAYdTz
         4+HEXaE0SspKEmBP1NMSjip0toLPqQpt/biUSEpTvD9A5YQzV+XeiSMUiSIX5w1z+LmS
         88j+VWHbvtLMCOwZwiuxqg/wmsWN0NuOnohJrCaui6N9xciKdLJyXVr05BNCDV3C4BQ6
         LdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OWYNdPPdSAViMwbuJAyRUY0h/SgHVeceGYLvctuUATU=;
        b=Xqf9k8TlA49Y4iu1DA2AvgW/GspJ9jYPSVdHk1+s9rpMtOGcOPmD++Zm0GGFDW+SWN
         ldlpEZr+DX4tpKIh4Y/97JhPLvbB1ZyLdfgpeO0FWh6eiA0BTwHyyu/FwyI0ZBpHcyxE
         8M3X560uQVqymADTVkQ3pfvSTIu+6T8XET3ebYLf1NMPG4jaE0OBFJenuFcdTETrT5cD
         jxIWCfRTBoltcChbuDMPaPPrOgrhVqUz3Ujm/mp/58du4DrkrONaF0WD9jDAwQ3Yoc2u
         EkdZubVwb7PmGedxlc3WdBixefnxTNQkRCxiF02cIdyydQAvuwQS4mEk+ilXjP93GgHd
         ocFA==
X-Gm-Message-State: AOAM532+lGndWk/qgNKU3gx/z1TPaUkTLNXd8UEoJ1VJ72eXgE9kxsha
        HabG/d0CGfTKWSbjR4Uzu3VofWdTNhynag==
X-Google-Smtp-Source: ABdhPJw57lwXspqUf8efGFGtkd66Awnor2Jifxr2S+O9ga7HMkRjh/bLAc/+s86LemzFGPJfqzNd4g==
X-Received: by 2002:adf:e8cf:: with SMTP id k15mr18396124wrn.262.1604303030750;
        Sun, 01 Nov 2020 23:43:50 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id 130sm15328883wmd.18.2020.11.01.23.43.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:43:50 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] feature_test_macros.7: tfix
To:     "John A. Leuenhagen" <john@zlima12.com>
References: <20201102040951.7xkhsyaosgynozqm@Zulu-1>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a1bbe6ad-2f64-dd3b-aac8-e19dc8d1ffed@gmail.com>
Date:   Mon, 2 Nov 2020 08:43:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201102040951.7xkhsyaosgynozqm@Zulu-1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/2/20 5:11 AM, John A. Leuenhagen wrote:
> Signed-off-by: John A. Leuenhagen <john@zlima12.com>
> ---
>  man7/feature_test_macros.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
> index 2d7bcacfc..350e47c76 100644
> --- a/man7/feature_test_macros.7
> +++ b/man7/feature_test_macros.7
> @@ -50,7 +50,7 @@ itself includes
>  .EX
>  #include <abc.h>
>  #define _GNU_SOURCE
> -#include <xys.h>
> +#include <xyz.h>
>  .EE
>  .in
>  .PP
> 

Hey John,

It's just an example. I mean, I really might have meant 
<xys.h>... maybe... perhaps...

Sigh! Okay. Patch applied. Thanks!

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
