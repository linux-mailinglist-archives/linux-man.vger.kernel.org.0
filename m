Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFFD827FE82
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731670AbgJALfi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:35:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALfi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:35:38 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A96A1C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:35:37 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so2538805wmi.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FM9x8r3VztSmKQ7WH/bq10F7BfkjHoYtKD0icd8VEtI=;
        b=fMtcYPOMhxS7iXtlZYRPU+CqzsSpM7C6Xougz9m8AW6ElDR0J0sKp2WkQ3t1/RfRFi
         TUUEITp+S2KcbVt1cSu1t6kb6RYXIQ7G9HRAtPwxQQ4zbWpDqNfxA9B2ZIaOLl59pu6f
         m8EuWIAfWFUIIfn36foNf2D972N14cGV837v/RwRhm0Apkc7vXuLSU0MoWqy+6LyxIrl
         /OlpDsNl6OX/SQMsDQbeYF2kY8HQeE4E5dYx6g9+pZ4rXo9FCkhIrTDJ/NTsd+rrXr4w
         IxPFbrlwjYaURJEaHflrSfCjmI9WWSK7N0pxbMVyt8H8lRshdDXB0qlx4+XcI0C9Z5GI
         lXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FM9x8r3VztSmKQ7WH/bq10F7BfkjHoYtKD0icd8VEtI=;
        b=JmntZpvqkUT87UnwgXY2AdwPCFAy059mpSIG0ZIb16dIZYD83Ax2oYdZEqqSUV5dxw
         wA50zFOp8qUTScP4UvbpMRdZrkaRnuSJut5ujae3W4b+05B0rjFqhi4EKRbCA5xfHDHv
         BmU1Q9kkM54DurYwZ2KxiIRDXBg8WAPzVyarnocJ30/0zk66YCoqZ996Hsnfp7FEfZr1
         b0uhxP3aR4TVj1XtVPF5fJnINzdRlNXD5TquS/yXVD20Q9az6LMAUwYtSmXfTH0LGfzo
         NSz7Zh4jTcC1+1x1+vyWl7ylqln7MjPwNL/aT0VtiwB6puTinxcYyZDyF1ZLQX11VbV/
         R/nA==
X-Gm-Message-State: AOAM533LORPYVel5fkxS+Cs/bE4TA+pihC+EaynihhT7ZTQ6Jf1zyrRi
        ZwdsYZXFlsdlwGaP5Oep14s=
X-Google-Smtp-Source: ABdhPJyyft/Rh7RQh3hcjxw5MVzNG5Q+yWbw+j9rkeeOosqct/oAnZ8bi0F0u5vEnAzNcPtX2Lz8GQ==
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr7947710wmt.22.1601552136421;
        Thu, 01 Oct 2020 04:35:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q13sm8424617wra.93.2020.10.01.04.35.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:35:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 16/16] uintptr_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-17-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a6edbc8c-3c46-97bf-6288-9ee3f56f9614@gmail.com>
Date:   Thu, 1 Oct 2020 13:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-17-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Applied.

On 10/1/20 12:16 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/uintptr_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/uintptr_t.3
> 
> diff --git a/man3/uintptr_t.3 b/man3/uintptr_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/uintptr_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
