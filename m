Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE7282B0FAA
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 21:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727103AbgKLU4B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 15:56:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726844AbgKLU4A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 15:56:00 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E616C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:56:00 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id l1so7450938wrb.9
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I/B8V6WqGtLOktV3KIDTfS7M16PCpTLKvEYLxRy+xyM=;
        b=MsNaoN9OtR0KH5iMBHTSB7MkozXtdjsD66MYsrkhQ3VRVESgMPAhWPtP3P+VtG3rqh
         XHMuHQnWg6f8gYCloPXdGdCv6HvaV4uzvRW8MB3CudfqNs1NeTcPOdEU7dpcI9ofpa9Q
         qbb7bg/NMSuHY1rkUUwzwDFBEZAcwytJHbF6AEo+YFOR/LY4hK4Vw7hKvgaD6ibLI+Xx
         2IQkUO1/FGd2p0NSv6p1PW2/oZ2Xl79NXSGFk/9iZuAmbhOOJuwRkAtnnjXSsrNEBcat
         bD4l92hkRUo0WXb8SCS69Jb7f/cLgyhDGruFLlfTZyMM3iL7ckBjR9+s9ObuFV8xBHDh
         HYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I/B8V6WqGtLOktV3KIDTfS7M16PCpTLKvEYLxRy+xyM=;
        b=fiSSXT3FTyGdHAXVXk8/bIBnxJlHuLsqF1M/ssz4YyibgH9JK9ydkhP7QCODsqL1uW
         9bkwN1mLa8VsDVsA4xN0CB7ymgYd+tNtG7/iBvy3Q0e3sV5LghNcv0A+P6ti1XS/o93Z
         BzsFVQhR6h8asXWv+5PtNgDGiIZIpaHaGopXdtpj9n7BxOSKB6XNhWl67jKTf2uvo3vg
         6WPUqMY0N8sN5EvLnCsfedAE/3/yGfphw5vHurcDAE2C02u3HrC69oBaxBBouL2eiymq
         YkhGbn2dzox+FGAm3CXNNyO4lqVoxX5rD8pSkVdduJGWB7X8O20ys0CUalBQfVQlxuLk
         r2rw==
X-Gm-Message-State: AOAM533fALS9klmFC23IGxMQ8L2TNfEkLyOTXG2yW7fC7SkwfSNbfHqp
        G5c8arXEUBLbD7Cw3SQvKk7zh93wZuE=
X-Google-Smtp-Source: ABdhPJxndmfuZvlGp5wwcE+ohZccTNE2eOUY2nqknelrxR+l5gRYjAQDorsx2vpRAvnt1Hc06ddWgw==
X-Received: by 2002:adf:9e07:: with SMTP id u7mr1533444wre.47.1605214559035;
        Thu, 12 Nov 2020 12:55:59 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id u5sm7306375wml.13.2020.11.12.12.55.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:55:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: Assign calculated value explicitly to
 'config'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201111153644.40605-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8ab1caab-550a-4c6e-42e8-26291f633632@gmail.com>
Date:   Thu, 12 Nov 2020 21:55:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201111153644.40605-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/11/20 4:36 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/perf_event_open.2 | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 4adeccdde..468589786 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -569,10 +569,13 @@ To calculate the appropriate
>  value use the following equation:
>  .PP
>  .RS 4
> -.nf
> -    (perf_hw_cache_id) | (perf_hw_cache_op_id << 8) |
> -    (perf_hw_cache_op_result_id << 16)
> -.fi
> +.RS 4
> +.EX
> +config = (perf_hw_cache_id) |
> +         (perf_hw_cache_op_id << 8) |
> +         (perf_hw_cache_op_result_id << 16);
> +.EE
> +.RE
>  .PP
>  where
>  .I perf_hw_cache_id
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
