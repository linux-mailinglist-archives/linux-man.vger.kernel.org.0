Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5520E2E85D6
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 23:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727402AbhAAWdZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 17:33:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727147AbhAAWdZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 17:33:25 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB77DC0613C1
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 14:32:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c133so10096578wme.4
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 14:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=utcSAL0GxisPAbD4BfywnBTuNy0DuFCEjIpNHGGF2fY=;
        b=ej1mp3ybpmuZujWh2sT2JN6l9vd939rpiAWUvW4y79FniXU3SB7/QOHUzps9DIra4J
         f5VRy5ZYgEC0nho/DGx9e6tKaOIgIAxXfRt6s0SLqk6vQBiNnvEX/PG/yEoQ2eI3gUCS
         K3faRlAxJ8BcmqFnzsgZUQZisqaNPJg+ypEGH7qpmWjaj6+ba1Ta9sHpFir4JcSgjl1l
         zSvC80EicsVkDsIFBxwIgzryMy3NGKWE/bGOai6Sv4KNv2dT5Chqg6ImEQ7Lkh5W5mFy
         QtIe3xjuIEM1ZuVCCPKcXdaH/P2FY4/a1zDtWjpWPrMcLybzI1wvcOXupO82BEg0ysVk
         z2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=utcSAL0GxisPAbD4BfywnBTuNy0DuFCEjIpNHGGF2fY=;
        b=D1HrR7+ETnc/8TApg12ZkBAXO9UCDhaKxYiXl4NWJh1lfjZe3FjYF7MRtRcTe99XnH
         BmAvt1MhjVQenrn1wX7UIJAAooESkJU9dCBVbNcW1QDZG/IWT7VMZeSG5BqWavN4kfpH
         H6+w3YXlplEbUZe3NkYbJ70LfH0mYZMCigaMm/6uoZVJyqO50xsfC59LcoQlVcQ+IvSU
         LPVaY6UhPVn7flilStAq0W0v4ksgSB2Unvt4uzV+Uv7IeSuQhS0guekrqTnqaEu8fp6e
         /ykMQUlpC+nM+hcAY69Qzg/nqbppygQu1CgSPwkjetNI7aMvwnFyb/XHRn+D1eDvWI0L
         RSAw==
X-Gm-Message-State: AOAM531jxH6ZHRMxFBu9vPaP/UCCLkgSln89Dv56KKI+ybLw0FgAfeaI
        Xk5abqFsTuNPWhco4pS51HoMO3plH3s=
X-Google-Smtp-Source: ABdhPJxDVwmuu/uZynRKMhbloX1eM4+8ubwqUGHCFok2qYpNYQCkaS8MJc6aYlcYcRyk/lsasKbIUQ==
X-Received: by 2002:a7b:c930:: with SMTP id h16mr17232299wml.175.1609540363786;
        Fri, 01 Jan 2021 14:32:43 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id p15sm72687440wrt.15.2021.01.01.14.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 14:32:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/2] off64_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201231191457.672921-1-alx.manpages@gmail.com>
 <20201231191457.672921-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <364d5fc4-c2ed-98b4-2632-24326c0cee86@gmail.com>
Date:   Fri, 1 Jan 2021 23:32:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201231191457.672921-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/31/20 8:14 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael
> ---
>  man3/off64_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/off64_t.3
> 
> diff --git a/man3/off64_t.3 b/man3/off64_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/off64_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
