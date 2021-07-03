Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5134B3BAA0A
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhGCSqH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:46:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCSqG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:46:06 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E0BAC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:43:31 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id a13so16653626wrf.10
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/Mu6MYKMV7jjeVskT34tWSg+IIKQv6QydfCwvqni3RI=;
        b=Trxk01geSIxnOv/TjEkh7YbMfaeZ3PQyEBPE7TXwr7Xru8HKCKMfnsMkC3yuohRBax
         14tcP7HviDFV4mmAPhuxgiPlGn+Sb0Vo6A8xaSr5Ng5cdm6D3TFtliN2W0pBAbYFr12x
         HZAKuTymG5iC3o/5EBRTyifZBHrCdF86ecXRtGWIsG/DVjXakMuMmXWm1RkMs8HhoXWc
         RDsPoHnWfNdLmZZpoV9WlNDSQ7h4z5AAHyL6/BFELvfa8H+XZcVBeVihzeuS/CdpOXdt
         PNRXMqnc+x1ndvh5cqtAaytXOPYAwJ7RKG85VZ4nWCFL1PgXljC7DCloy0qvtuKZxpJ8
         PCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/Mu6MYKMV7jjeVskT34tWSg+IIKQv6QydfCwvqni3RI=;
        b=VHzVZS2UZONOuRsWkbdrX0UTUCi5Q8qouN4B7nWPEd5nzXcGNoQPE+BHxQcDD3oafb
         aQG5ayI//ipjret3Efbe9jK1MbtyQxIFLUohBzgRNgj2tREbFESeXhRwtAY+pOkW6t9H
         VsQ64KROskqqnosBBB3rVs2eU7PtzN/aaKaBytJxIc2JCcJY3sxIvOBsVaJUarNUY46y
         MPuly+25g1ryBjOFvYyNjZSwQDYnkuuBNveqcvTuD4R0Q2Xo9ezvPkoradrXexHZR6tG
         3LdySmLGbH4csGMPCf2F9Azy0MIsuY6F9uIiAd80XG7cdqhGuF0P+g+dKpCNM8yjIfSD
         3LCg==
X-Gm-Message-State: AOAM530nT7wb3FbriKYUS5GtFvjbrD6pv3zYq39vNoVkY9wozHrb+BG4
        +XHW3pFWX9evX69FFoduiDPY7IQ7Ni4=
X-Google-Smtp-Source: ABdhPJzzeOm51wITW2uoTJoAD5O+LBx6qjt9rHGtxAGd7cXeiRVISkxCI0n1BFTZW2VfUcRaydyF7A==
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr6638150wru.266.1625337810228;
        Sat, 03 Jul 2021 11:43:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f9sm7443089wrm.48.2021.07.03.11.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:43:29 -0700 (PDT)
Subject: Re: [PATCH] path_resolution.7: tfix
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
References: <20210624194202.713112-1-stepnem@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8f85a597-6fb0-66ab-c2a3-855e68713b71@gmail.com>
Date:   Sat, 3 Jul 2021 20:43:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624194202.713112-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 6/24/21 9:42 PM, Štěpán Němec wrote:
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Patch applied.

Thanks,

Alex

> ---
>  man7/path_resolution.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
> index 0901ed7c8a98..f24837ef9ce5 100644
> --- a/man7/path_resolution.7
> +++ b/man7/path_resolution.7
> @@ -63,7 +63,7 @@ argument).
>  The current working directory is inherited from the parent, and can
>  be changed by use of the
>  .BR chdir (2)
> -system call.)
> +system call.
>  .PP
>  Pathnames starting with a \(aq/\(aq character are called absolute pathnames.
>  Pathnames not starting with a \(aq/\(aq are called relative pathnames.
> 
> base-commit: 33248cfe50ebb8762208e7ef3264676dad71b016
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
