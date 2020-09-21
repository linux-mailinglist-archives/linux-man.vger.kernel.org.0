Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC3BF273222
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 20:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727321AbgIUSog (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 14:44:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726973AbgIUSog (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 14:44:36 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAB31C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:44:35 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x23so488536wmi.3
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BCDuVEywxfwCeUsunyycx/8GQm/tEklW6n/elAMRw5c=;
        b=KXBmY5Y1kfqX05vArkWYRq+L/QzA+IT5ucIoOv0sDajUjvysOyrlHWGPYDFcEP5BCX
         WVKXm/Yek8CS8LxzjzvZBkZWF5VfnZeKjtlelHETG7/2Ez5DevjdtkHOImjj2hraGqM6
         hyQJNVwWweuo3bIBNaRUF+bpSwFYW2lt1FQSR97v8IZyPz+XFtXVUZv0ZTFBS8c5JG5s
         pgBVQ3jms7Ed0RFpgvN2HcF3s+zcuwZ4h38AVXTSvtDFW7Wf000y9vXZZEV7PZ4luQdZ
         fF4V5fmGAIoj2bKlz6g2xEdM4UN7yTNFcd4A5S9Cw8HiDwcrCWzU/LPNe4Hp7ftnvu5+
         W4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BCDuVEywxfwCeUsunyycx/8GQm/tEklW6n/elAMRw5c=;
        b=rZIiDVoBfDD9v/p3pwUnTb0FB7gouC1h9UgYmvl2nZhww/i8Oyxngc3/F6jSykv5zr
         LCuBOUj98M65VOMieFkq+zlESMvinZSP3uhl6knyHWw2+Hp91xjTD30LqJuE1UUAC9qJ
         6woRhUCBymsuH+k19ef9lo+Xm53q2xA00jjaq7+FoUEUKHa4UryvVxvMU9v/uvj/tkNP
         pImR4PKyFNAVvojD0ywytgz59sLtWLSyKRAkq6O42eLgwpuODxzP5RiHO/ehDLzAOapn
         +uSBBfC5rAVoCKGwhNMWSpxymC28JhADJ1k7S0QEb+SBVa2iTBtgt8Eo46n9eFV3MdoU
         f08A==
X-Gm-Message-State: AOAM532AtAxDkcYe4uygWMs1OQtovqF5Fi264vvCWqfrUwmZ0/YwHzC1
        UaEf7FjhZ4TEfMDTwtwrLDfIBbML1q4=
X-Google-Smtp-Source: ABdhPJxhipijp4YzV5PefAqraF14RpoJHgJ5gj0uhZRkpDANcW3Tt3+vZgi91kN4ar4zTPlZLDxHUQ==
X-Received: by 2002:a7b:c215:: with SMTP id x21mr694856wmi.138.1600713874316;
        Mon, 21 Sep 2020 11:44:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g14sm22968359wrv.25.2020.09.21.11.44.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:44:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] fenv_t.3: New link to new documented type in
 system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
 <20200921152516.85879-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <70740f28-edf3-ed69-f2c2-aa239f2f4565@gmail.com>
Date:   Mon, 21 Sep 2020 20:44:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921152516.85879-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/21/20 5:25 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Thanks, Alex! Patch applied.

Cheers,

Michael



> ---
>  man3/fenv_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/fenv_t.3
> 
> diff --git a/man3/fenv_t.3 b/man3/fenv_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/fenv_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
