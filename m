Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E92A225E8D4
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:41:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728103AbgIEPlu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:41:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728248AbgIEPlm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:41:42 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB3B4C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:41:38 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a17so10335014wrn.6
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EfbH4JaEcufN4t/n3jw6gbVAzzH7pAiqHTKV8tUvdSk=;
        b=G+sSnpwlMUljA0pdwAZ0TsC5ue/GMJr+J5xpDgvVwP4znQ7Fu1l3FlFl+etQx1X4Mz
         S8UDk86bsPVZqRNt+ind+kT57MeSlFJZ1N6TlxazxIhXW5VUUF0dFmDLavJ6kdagEBym
         nu7ymqZV7Ukkn3WVImxRuJhG5dZfuNhDjsuedpOvbRDlemtuHKaZ4N3dGQr+imnAI2Tm
         IVpV/Q1wedYDQdUuesJOWXYrM5YXUzpGTYmGXvntARv85Eg5zdNKgCPS57zXXc5eB+cP
         ogjYwkmQdPthrVgBFAcP6ir6b3bkWAm9ZnMLqFk0vyqS/FU6mefLSzSJXDDgx9XQ4Ul6
         d+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EfbH4JaEcufN4t/n3jw6gbVAzzH7pAiqHTKV8tUvdSk=;
        b=RMPKIPy6ab7ltBO3SXRATEv8c/JtStDzy8Ocjn78BMmTrOwvehA5XN95S8cWvsm1MF
         lOOjB8Pn19wSWWeUkDFMT8OIH6Hlab7MQ1wQbkE+7IVOf8R+US1WcEp2MkFvNAHZom/D
         wA40XsPTTufIjJXSQgwOwG1VY4pRAj6tblGM3YkCV1fuVNau/ZfZ9D3GvfKpX8qSx3nE
         7U4CQdDuMvVJ9UpPrnBpo4GPoLqiKHv+7Hw+JUmhcPld3gANY81sh8cEzYnuBlhnwmRu
         M4jWpKxt9JrdMdS9d69DPIEOQBzM0c0lTIKOAJLMOR+upEMB2Ds0X9vprqsKRUANq0no
         fg1A==
X-Gm-Message-State: AOAM532OQ43beN8XTyPfLiCqLR5JIFU8qdnxyZZOx835PfBb9udToxJ5
        tjETxYfZ1WK2r4XfTaM1MAJNydWosT8=
X-Google-Smtp-Source: ABdhPJxHnBZv5H1R+wjjrViCPVLdQA0fhRMZYjq4F9nMtROj7Pl+iZ7ahGHTTUxfTxDBh9yxg1USZg==
X-Received: by 2002:adf:fec7:: with SMTP id q7mr12661254wrs.293.1599320497210;
        Sat, 05 Sep 2020 08:41:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id r129sm17957661wmr.40.2020.09.05.08.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:41:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch.3: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905110048.180771-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dfe5be40-7b8f-fd3c-8cf8-b6c77857164a@gmail.com>
Date:   Sat, 5 Sep 2020 17:41:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905110048.180771-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 1:00 PM, Alejandro Colomar wrote:
> Casting `int *` to `const void *` is already done implicitly.
> Not only that, but the explicit cast to `void *` was slightly
> misleading.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/tsearch.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 65fcadc52..05d0b2170 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -329,7 +329,7 @@ main(void)
>      for (i = 0; i < 12; i++) {
>          ptr = xmalloc(sizeof(*ptr));
>          *ptr = rand() & 0xff;
> -        val = tsearch((void *) ptr, &root, compare);
> +        val = tsearch(ptr, &root, compare);
>          if (val == NULL)
>              exit(EXIT_FAILURE);
>          else if (*val != ptr)

Thanks, Alex. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
