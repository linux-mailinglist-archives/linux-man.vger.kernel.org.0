Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF9E82983A7
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 22:19:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418851AbgJYVTe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 17:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418850AbgJYVTd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 17:19:33 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F22C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:19:33 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e2so10658240wme.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tlN9oNOk/U5wKYbLXwSDbTSyBWH70Sgks6hdXJjW2nk=;
        b=DUcOx+BuQzk/EBSfAVsBgxEBoAFnXzjJZ/WxIX5FvQA9WIGs4ny86+MiJsFF0u6OXo
         qtfrTodODyM42RBaeS0qWijGBaPEU/gUdRsBw+czehhebNGV3tyJGj0jbsOiAi63YVZC
         Yv3qkqa6VDrjK9eFL5PgfbqLutpNXQLcGXpSZ+WpYXxVd0K58ALYvCQjaH05JQuXA8DK
         RWGC53GAIGbLQNV7VFMYLUIH/h6wpaHqD6H+x5JPGTGpI951fCcOHzK+YzTKDambW80x
         BDxpFLUI+6EpdtCFohLtNTa+fTCxzHJ3ArjymJ7ndVjfX6y2eUlOU5hYP3iq7QB+Ci5H
         89Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tlN9oNOk/U5wKYbLXwSDbTSyBWH70Sgks6hdXJjW2nk=;
        b=RdQTbVgTdyW6CSccgWabn/IywotTAfMm6/+NYBHteDHfJOt/MXPBJfpqZ5ImPBRMoS
         /JXMDRkpJZdGiUHCXyfM9NEsxL8KbYdRR7pcnQrQg7nBgaIjFZvvnFz/YvFpH4pWUC9+
         zKGsX5MJlGeV2OjueAQoNOWezqbtyD+1bjm2ryMN7U0AL/RrZbCQKDM0BsjUVBvvHd3P
         swqCQ98YKNRTriDPk/JAEmu++ucHf/nv5gRQEtA4rBksz0nnlIvKcopZHBcGeERJEew8
         k9vAQLMO4XaQT5wu3lSWL75UDknhY44afomMuJ05xEyyU/AX9jtoH6QRZ50Y3w1zvN39
         4ZXw==
X-Gm-Message-State: AOAM531wGvJU6BB/Ib4XrS32bnWRGXY46PMOPdSNel05paIFZGSa/AjA
        2v398RYmq/QRIEQ2JxSO3vM=
X-Google-Smtp-Source: ABdhPJyxGMRJ5mQYrQbNhDMFcbk8rA89zGoiHcZMyYUfUR9iLNpTlxT8hwzxmMGDMvPXNPfaF7hnLQ==
X-Received: by 2002:a1c:9a4b:: with SMTP id c72mr12684699wme.157.1603660771650;
        Sun, 25 Oct 2020 14:19:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id c10sm4763799wmb.20.2020.10.25.14.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 14:19:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_Data_types.7: Add 'clockid_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201025210816.8072-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dc59b6bc-b519-2547-004a-9a33364d4a07@gmail.com>
Date:   Sun, 25 Oct 2020 22:19:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025210816.8072-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 10:08 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 28d276c69..49ca2d8e1 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -110,6 +110,29 @@ See also:
>  .BR times (2),
>  .BR clock (3)
>  .RE
> +.\"------------------------------------- clockid_t --------------------/
> +.TP
> +.I clockid_t
> +.RS
> +Include:
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <time.h> .
> +.PP
> +Used for clock ID type in the clock and timer functions.
> +According to POSIX,
> +it shall be defined as an arithmetic type.
> +.PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR clock_adjtime (2),
> +.BR clock_getres (2),
> +.BR clock_nanosleep (2),
> +.BR timer_create (2),
> +.BR clock_getcpuclockid (3)
> +.RE
>  .\"------------------------------------- div_t ------------------------/
>  .TP
>  .I div_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
