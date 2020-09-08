Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5283D260A01
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 07:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728474AbgIHF0i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 01:26:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725903AbgIHF0h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 01:26:37 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2459C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 22:26:36 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c15so17618556wrs.11
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 22:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0oEJz0pIZN0zCgUVuFyQrkzNuSroFGTKDhDs7OFIwCY=;
        b=UcNKMRdFXlyNVxsU6skYI1f6u74PVvHtHE+Ui18AkOESHsQG3OTeBpdMQ1iQ+ONFdN
         +S9uituqo83IOSjsFN8YaHyODN8ipcv6Wb1S7QCz3/U4oMv3sM3qWrNifStuSkI/19bQ
         WoQy37qUs3Sb+POIXdAF/v70PoT2gzHsSCiPa/gRuh+zYgfdTUNI2VqCIg/WdcnmETSt
         0qky0ea88y1U6hir+wigNStNbm15Rs1/vjYIj1q94G+d/bCcLyuLJiplfxbCL0oNiR7R
         KAdSk3AluYw6wsafcS109LrS0YmszLTkPRSoUlL0TzYE7alh4xx+Q4cirtfDV4Dv184s
         i6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0oEJz0pIZN0zCgUVuFyQrkzNuSroFGTKDhDs7OFIwCY=;
        b=hRxVMdZtk+SKt5frIHUsEb62Izvjt7U6Hu2X1nstsE3+KLceL7kCnUskBt/SnLG7iJ
         HdVQ17ElsarXobOX3J227rwAXeH1xljfBNvuZeQXtYcQBEYESGrFWWFAPEWXQrajtH73
         PpYUT8mceVdP7fDxlMYKpy7n0mGuUzfK7zsOfkHv3T6gjPa9Y5mnfIOl1tsPP2bdgfv2
         WdrMMP1tKZv9dL63NpPTgBIQ8z75uAfvodfSGiQ5vMHlIfzscLKW2d36Uz31A/o/T+rh
         UgVrPKbxjHzWIsm/q4nVkyPOTPz/HrrdQy6iZhDX5fYVLfPP3eVbeWFnxGEmAV0gkd/A
         UzGg==
X-Gm-Message-State: AOAM530KohG/Q9QI5F2k4UTQlVcw9DSWSbaBsLqqA7C87/aSvWzYnxTi
        z2OETm6KaRVKI9YVbSfsAb66hNdpQws=
X-Google-Smtp-Source: ABdhPJxeWA4GcRzyol0d3FXkiDhC9jXgSckPnThQMmLgyr3Mh41/V/Nlml/rsS5dQiveuYPUvAHEbw==
X-Received: by 2002:adf:ef02:: with SMTP id e2mr24350907wro.126.1599542795074;
        Mon, 07 Sep 2020 22:26:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id 5sm30209999wmz.22.2020.09.07.22.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 22:26:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] bsearch.3: Declare variables with different types in
 different lines
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907212742.5980-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0a63bbd8-2b84-8024-1896-1d6014e0f2f4@gmail.com>
Date:   Tue, 8 Sep 2020 07:26:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907212742.5980-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/7/20 11:27 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/bsearch.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Thanks, Alex. Patch applied.

Cheers,

Michael

> diff --git a/man3/bsearch.3 b/man3/bsearch.3
> index 9d4f76da5..c429e4ac1 100644
> --- a/man3/bsearch.3
> +++ b/man3/bsearch.3
> @@ -124,7 +124,9 @@ main(int argc, char **argv)
>  {
>      qsort(months, nr_of_months, sizeof(months[0]), compmi);
>      for (int i = 1; i < argc; i++) {
> -        struct mi key, *res;
> +        struct mi key;
> +        struct mi *res;
> +
>          key.name = argv[i];
>          res = bsearch(&key, months, nr_of_months,
>                        sizeof(months[0]), compmi);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
