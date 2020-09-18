Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 219CC2707DB
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:10:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726154AbgIRVKN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:10:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRVKN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:10:13 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4F84C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:10:12 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q9so6535413wmj.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7FDmSDkWw/RvOPtMOC3lMHzlJiQSY2ZG0s0oAZtCOog=;
        b=qd+WDEU7ohgszxuYgMV1b9GsUK0stwhzM94pHMXdZeqvmOM7PBGKAE7vq0JGKIiyt3
         4LdPxZMjTnRRDQH/A5+YsnxpCbV6CXUS6KBxb5PSZE6seEtriEDqnGo+bl8iW3hTUjOa
         Zs583JURznjxFRcEntoMtM7A2wL3HvakcfhhbvTPZhFYZYykdzFT/MMc2s7H39WrwVxb
         Fl+9nDuL6oXXOOUAu1fJUd9vEjj33QEeWE8SYtLEUZsH7FgWT5m+T5x/pLQcZxg+iCE4
         NYZO9xD5+iab7cKj42sLqDdUm6E6wAXKLww3e+bgrOq+/PNhMG5np5YfpmXJa3lJfq1v
         jVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7FDmSDkWw/RvOPtMOC3lMHzlJiQSY2ZG0s0oAZtCOog=;
        b=eqA57Lhee4alX8M+d8+cs4BLpDSmwBDIm7Depk1HawsS7pE7BLzLsuqU8WnvnQKlmO
         MEw1IkH1dINLTcKUMogd27GuBkyzpX1YU138AGUy/F3t37fw79B8khaPhCO92YQVIddx
         kYEI9v5FTgP8WxhnsKk4VmtuHp2s3Rpo3FkGzgKysAx1X7avhmCvpLg9/zyITEMLH8rF
         vwQZRlAD5GwHbk8wbQ+eEI+jWUvDzor4P8glOWYvIjWJ/aUBlisYT3qg9BNU7Pw+GxH6
         PyJmKcyhukjLMuhY/vwUMff0jV5BWFeCbAPZWbEwSzvXS+z2277r0UHSKptMpvdUIERL
         Blpw==
X-Gm-Message-State: AOAM533H1jAYYazk8Od9JkBqIJcnbazgvAMa4PhgMnnKnJiQwacdRWNR
        eWg0LNEMGj1aePdnITRwoM4=
X-Google-Smtp-Source: ABdhPJzu2vIMonvpdWUxBO1yvJCL0mHsNS4FEde05WOrFcFLmzG6sX0Ns5g4TApLHfCfuYVsO8u1RA==
X-Received: by 2002:a7b:c015:: with SMTP id c21mr17551673wmb.87.1600463411660;
        Fri, 18 Sep 2020 14:10:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t4sm7427501wrr.26.2020.09.18.14.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:10:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 4/9] sigevent.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8cea2a6b-bbe1-3289-a0c2-3baa75ec757a@gmail.com>
Date:   Fri, 18 Sep 2020 23:10:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/sigevent.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/sigevent.3

I think that I won't apply this, since it will hide sigevent(7).
Okay?

Thanks,

Michael


> 
> diff --git a/man3/sigevent.3 b/man3/sigevent.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/sigevent.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
