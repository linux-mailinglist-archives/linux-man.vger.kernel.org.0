Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC4E529A510
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 07:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731315AbgJ0G5l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 02:57:41 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36550 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730586AbgJ0G5l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 02:57:41 -0400
Received: by mail-wr1-f68.google.com with SMTP id x7so607946wrl.3
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 23:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6k/ExVFCI7s3lRqeKgNu0iQPj708+blb0p9v0MSoUdQ=;
        b=Od/lsgBi5xOC5jQJ5YnSYp4QPeD9vzLUHT0ghKARwTfuqKDpr9x8ankapRJpA0LrXI
         BywbOPDahOuHemAUbLnfV8ijTW2sVLwF7tYecVLmXV15/TnjO6QTdQYhMC1A8CJ4ty9e
         1f3w0ZJ8bRjkyJsQYfUiNfn0wHpWCQtYkDX7xDQwwIlY8pySsPfsaepISKdPQCAiKRKT
         n+Jpyjq3bNMCRfXsszsAR3kSaYEguGa+anc6au5JiwgApv5ACspNskr8d73PfXxsxqye
         6AG6DiUcFlnNOkTaTrdTxuN984pKywLS72ZQTSUoQFotlEOuhAzjwmSSsiV3r/1tHSav
         girQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6k/ExVFCI7s3lRqeKgNu0iQPj708+blb0p9v0MSoUdQ=;
        b=g2crx0hAPRqwC9BDZtr+IXygoMm+CR3BpLMI+JHpeAAixMPSTbotC8mPhfQHmItNK+
         BoRBXNfWfOlxoupvl4M0H4QZbK9uazYJZinLS/sFcqGm5J75TtaJM+naNoq7OF+HAl2C
         ddMk1zSZnVy+bATcKNdimGcIYHDCCZxA9fijthUFkeouvjtrlVewxzANr1W8E8vQVS/L
         5cLQS4prORxru1yOIMP9eMnM978mVwkiT9la/73+Z+a9Kq1OTiOd7DmAZX3rvVQsMdD+
         0Rr6YR9+/lDT/dBhNFDNMLvyzbBWYi64qHSl1bqNr/ClVXW0szidcmmW/u2QyLA1w4CI
         /sSA==
X-Gm-Message-State: AOAM5321gVlVnNqbsfS4HFp9JdLO640R6w6X1qmqMxjWjVmIG7QJZJEV
        l7+Q+VkT+9c1XCzG3MmbJMo=
X-Google-Smtp-Source: ABdhPJzeJxrrE9TFdYZh4chyv3xDTbzvIPNWW1Dww3WbngF9/pMid/+WP3OzFoG6dN4sba/3jgthGw==
X-Received: by 2002:adf:e8c7:: with SMTP id k7mr953489wrn.102.1603781859314;
        Mon, 26 Oct 2020 23:57:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id x81sm755717wmb.11.2020.10.26.23.57.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 23:57:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'dev_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94992ce5-e872-a67c-f75a-9c636b50aea7@gmail.com>
Date:   Tue, 27 Oct 2020 07:57:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/26/20 11:50 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 7eba87cde..c82d9d2f3 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -111,6 +111,27 @@ See also:
>  .BR timer_create (2),
>  .BR clock_getcpuclockid (3)
>  .RE

Applied. Thanks!

Cheers,

Michael

> +.\"------------------------------------- dev_t ------------------------/
> +.TP
> +.I dev_t
> +.RS
> +Include:
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sys/stat.h> .
> +.PP
> +Used for device IDs.
> +According to POSIX,
> +it shall be an integer type.
> +.PP
> +Conforming to:
> +POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR mknod (2),
> +.BR ustat (2),
> +.BR makedev (3)
> +.RE
>  .\"------------------------------------- div_t ------------------------/
>  .TP
>  .I div_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
