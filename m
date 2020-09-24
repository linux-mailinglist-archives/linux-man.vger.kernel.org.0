Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F66B276F60
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:08:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726672AbgIXLHe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:07:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726444AbgIXLHe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:07:34 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59399C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:07:34 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id j2so2913170eds.9
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=30p9n84Mz28JgxcmXEImj1NWP9xEl8IfLuloeZdYytA=;
        b=URI4xW2bjx9PYZRVWW/mITG+K8kN/5nt9V/uiaveQ8UNcCPJ/p59/9AXD8gXelVioA
         qMEeJgpIwJwPWo5GOlkl0q9HgZhbngphXl8NZ0NIi29rDQecK3LvzgMcbrcm+tOqbuc2
         Ashuwkq4If8yLInEF4HpTsVmn+6XxpeWsWBmrx6UgmrMMUO93uaoL0/CkIqTCRjbSHST
         AAYZTVoRhYN7HLEEsKwIoB9duBLXETuBL/JmG91GPLqJCid4yWmMMTvz9fh2VWfPrgLy
         2TGNklRLqR/7X9J+AcmdeTJ2aJ3NKSGUM75DNwz1CtJRyWhd/7A9fzm6AAg8yBiyfZGf
         ZUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=30p9n84Mz28JgxcmXEImj1NWP9xEl8IfLuloeZdYytA=;
        b=Naa+ZfGMthc06PhZxXMMfgUcroxsM13FNxKc3srgZZlccbDnD4R76GMcN1VtD/KOmb
         kmWdqg5mQN+O9d/YFiKxO8AKG8sGa06FIiq0ZNWJrkwYxMwsf1/kITLfl4WxS7CJFRq9
         lzWafmfJd331dekSxseMe3uTdgKrKwZ7Moa2dAifdTgkn84DZ0rztXp9tDfLBpdjES/b
         fMPez76rIHkJGKOOj6LqUhNpLXyLhFsPtxAd8geMVe2cvKeGbbgV9OapyoV7wb86Chst
         e9KNA5JQ3tlQC/zxLNcklgO9K94qcdW3hGim6KI9V/Ba8GVwY12s8jux8ygFZq2OFnxh
         yfFg==
X-Gm-Message-State: AOAM530ZkCZkajf6SRvNyjOitSCq81Oa1bIoT2N73rY3BOOyBLznJZ+N
        YXj1T3K+KBMH/Usu8cu+rkLIFfqM+y4=
X-Google-Smtp-Source: ABdhPJwezsUTL5/lznxlvfVNO+0Cu7fS7x/7yyhFaeM/vn2awpiPCi4Pr28vi4g4zSJaGSLm4k0D1w==
X-Received: by 2002:a50:f0c1:: with SMTP id a1mr414493edm.5.1600945652814;
        Thu, 24 Sep 2020 04:07:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id bf25sm2175949edb.95.2020.09.24.04.07.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:07:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 6/6] lldiv_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <82d10abc-627f-87d5-98ee-23ba74bce935@gmail.com>
Date:   Thu, 24 Sep 2020 13:07:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924101308.78204-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 12:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/lldiv_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/lldiv_t.3
> 
> diff --git a/man3/lldiv_t.3 b/man3/lldiv_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/lldiv_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


Applied.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
