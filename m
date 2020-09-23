Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFF992758C1
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 15:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726581AbgIWNbt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 09:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgIWNbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 09:31:49 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF91C0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:31:49 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id q13so27739154ejo.9
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jl/+HulIrZJrYyBKrfV3nLFwDfM5d7MIEndb888LmH8=;
        b=pTBQU9/h5uVaQHfqRFDSJuyI8naY+f+srBlW1dcJsxobMN/p6G1jZsqht/QFLAfQM4
         yUpX+nG75tzsJiwbdyVkZqdwi2lfgf98SMfba1ZCwdBIan6o7+wzJ7BGoFqJV0Hrt5vQ
         0v0Lamw6VY3xOSBkZs3+wxsnIeKpEJUGfyiDslHzqGXXr7xyiiuRt27iMGmKHT9HP40c
         LF7PtBYi9janvMFORetNq7ZqdpeHevVqSyACXaiIXQOQpNWWayfTLwHOPXQnyuwA7QrR
         uQHgVnO/8/rwPeL22Fr1J9H5AHWqyHu8Fxl2vDyRVhk/BReb8/hcVpuWsPE3D6PB42iS
         QzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jl/+HulIrZJrYyBKrfV3nLFwDfM5d7MIEndb888LmH8=;
        b=K6N1KuT0ymM4t2vjUYKd0BAkRoeYDNVyyYiNJjDTjhl0N23lnch6UklZ4vqhORbuE0
         gF8MB5yVHFobvPzIGOopEbGTso1t0OHarhsZduLHwPz+scE5Gha2dr9i1fCwcUrfU/dQ
         p2KupxznGsctoQ/k3N4HneAtlZSHMm3mzM2oC64AAJXyKur3gvT0RN8ywDOC8vVV1Bpn
         JhAL9ETd3F6V6aK5vOUeYzVSqlZsKKFqD9+n4T8cPQ9YhOY68iXzRwCW5vojJ9+pyMLz
         R0JsuvqjIoizrEMtf78sxP0u2rPinGBry1CypZmDk1ZO07lEcYj+lRo4aVeB/ud5Q0c4
         H9yg==
X-Gm-Message-State: AOAM530w0LwvtCGAuKZDkD4EBPooyJb0fCseb4NE6GasCwXghaJs+ZBs
        BV6hLbiTPUjvxJ+1amt6Fw7JR28uVOk=
X-Google-Smtp-Source: ABdhPJz7ds7maZmouZ2VdO/QGfefUNTmk/hkGoE5hXmhek/VFV3oG3UJ4i0mF+rSpUYSdIYcB2cfGA==
X-Received: by 2002:a17:906:a207:: with SMTP id r7mr10433618ejy.32.1600867907631;
        Wed, 23 Sep 2020 06:31:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q12sm14799995edj.19.2020.09.23.06.31.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 06:31:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] fexcept_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
 <20200923131706.21393-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <195f7a19-1a2f-5d96-036c-f4e58d365d31@gmail.com>
Date:   Wed, 23 Sep 2020 15:31:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200923131706.21393-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/23/20 3:17 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man3/fexcept_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/fexcept_t.3
> 
> diff --git a/man3/fexcept_t.3 b/man3/fexcept_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/fexcept_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
