Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 430C527076C
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:50:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbgIRUuD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUuC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:50:02 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B859C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:50:02 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id w5so6868526wrp.8
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CpkyUaaXifC/mVVbETUBf7/lEE7Q9Z+Ha6SLU01mQfs=;
        b=e9HwP5iQpuX4nVW67atQPY6UX7h5Gwrn97mgjbkdr7j5cKR5Hd2PBKwX3/YVMTdPP7
         eb+DbmxIA/hixW8SSCl/TyqRjj4tgKc0vIFrJbFGHEKDmM5Nw9FswqZ4OoLik9lUVgH2
         tSp/nYyampCCrc/lszH+rdpl9Oj5XXH2IF2ScGqmv094y55bONzUDwZK/FXqKRavFPOz
         njinsvqujYuJodTtsCmdUQscEb49rM3LTM6P99vBVy1jucS7OBv/X5gi0CKlh68nzfXO
         H3HpbdkLjoaIoTVKSlQShZUgPYV2pm8XDxkwC2fn4IggCi9cwLTW9/w1t1TokxzkzR3D
         c+/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CpkyUaaXifC/mVVbETUBf7/lEE7Q9Z+Ha6SLU01mQfs=;
        b=IUiXfYSzX+W/zeDFpPrdmR2C9K0w1puRQRml9Pq1CBNEKhTD2hu22dNqYWPNo6n9TT
         8aDiSbPro918pNp2AspALIfvCp8TRosDrMxBY5pVazW2tPfT37Lz26ONWSxDFA0ANPFL
         Az2aEppq6stuL1Ld6UxJ61CA40dXBLF99si9hjyg0gH36bhFWIRx/zqPgjhzAtO5+jlC
         JKivlhYxGPNhUNTAQew7dScQTSLZhQPW00kQ/57rAz1ED/3vGyQTiysAE23AofXCYCkr
         hLpXoN0bde4zDujIpmBf1X/eMghkF1lguYsRFuZXU2ApQRPmPSNKK1Rn204EXCLDAG2+
         382A==
X-Gm-Message-State: AOAM5303fBNThSuUrmfj24dBGfZQqxkDxmZSuco8NYXB/HcPDoCmp1Mi
        Dyug6Kjr9fFm5npTloSrVnI=
X-Google-Smtp-Source: ABdhPJyUXGRX+TsI9xyuQ9HQac9V4YXkunpjV2qCksEwQslD7pxWwEnAsRF+zmgby2qbZFeKUwgpnA==
X-Received: by 2002:a5d:4151:: with SMTP id c17mr42474757wrq.302.1600462201109;
        Fri, 18 Sep 2020 13:50:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k6sm6482076wmf.30.2020.09.18.13.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:50:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/9] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1e3ce30a-cb3e-5034-4668-a7456bb95c39@gmail.com>
Date:   Fri, 18 Sep 2020 22:49:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918170442.94920-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 7:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Thanks, Alex. Patch applied.

Cheers,

Michael


> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index eb4718491..5352f3ef2 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -232,9 +232,9 @@ Notes:
>  .IR <iconv.h> ,
>  .IR <mqueue.h> ,
>  .IR <pwd.h> ,
> -.IR <signal.h>
> +.I <signal.h>
>  and
> -.IR <sys/socket.h>
> +.I <sys/socket.h>
>  define
>  .I size_t
>  since POSIX.1-2008.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
