Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1740D2980D6
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 09:45:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414572AbgJYIpd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 04:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728175AbgJYIpc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 04:45:32 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D983C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 01:45:31 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k21so3664838wmi.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 01:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=n6vWWqrl0CW+HfbDnVSO7dE1zD22hevKIQuhHDQ0r0U=;
        b=XTN8VVOgflNCQrqNjqeFSweSjvukbg/pcvHDEOrzF/ipX4tjFOaXq+bT/aWYlkx6c4
         JuEdrWYWqzOozVQ/sl1S9oU7n9xX/8bZibJfkTKsUfxMa3n/VbTH3svd5GbFRxTpN1w0
         VGsQHawkSbOfRfoTM1oIIXz5drCenrILutJZf4eP9uicBW85umyn66/UQaR579gJU1xJ
         DH1gkMJvcimwFQBXPvUbbzLTaXjSKOtE0FBhu/LdOHVh/DA+ETPXDB6/ttaSzsrwI5Py
         OtJFNoKPCrpI0ZXBtLd+fMcRQw97U41zznBqpCnhIGweueFb5NoN5vFRCWx/U4XHQBaG
         D1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n6vWWqrl0CW+HfbDnVSO7dE1zD22hevKIQuhHDQ0r0U=;
        b=CHBDpsPzBiNxQNYbUyfWE/N2Th3iXtUyHS2FQs/+BsIfqMzzJ+xZHYu4l1IbXO1HaI
         fOpvOXHE5xTqRNZ1ADGEqjKqXFhNqOEMnqSVixjziVd7LMvWatngT6GHnu3bxNkgt4hX
         zgXkhvCVU5NtjXt3xkypFQxd1reDQb1toEbKgpK3hIAm+jL1KobcIPYhYAQC1TrPdrTg
         esAuXPSpyGKNZiBVWexHxNd6wMH+AJk4gEtGPXaRzPhHJcw8y+345IwzT5IZrM7sstvN
         8dXpZkg44FesLj3SXe7xa4ezCAtNjbavUSPbM9D3RbmfoJ8Y+6NB5x7D9qaHCDSjXlNr
         x0rA==
X-Gm-Message-State: AOAM532DWhpKnKxZdo9wRpldQa69FnnB5vKlPuo8jaGyo2yV2H3m4Dnz
        seNp/lgNcl6P9vLQ2Df/swJ+Qymaz5I=
X-Google-Smtp-Source: ABdhPJzID1voPmHboMBp1AEOowtugjGr/5fsEGGZZNz3jW1hfcBVwPRiTq6ApxGoMr6d+OAiDdaHUg==
X-Received: by 2002:a1c:98d2:: with SMTP id a201mr10303453wme.166.1603615529895;
        Sun, 25 Oct 2020 01:45:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id f139sm15619428wme.47.2020.10.25.01.45.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 01:45:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] circleq.3: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201024221458.6075-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cf7d0412-f9d7-c1c2-3df6-d535044a87ed@gmail.com>
Date:   Sun, 25 Oct 2020 09:45:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201024221458.6075-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 12:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/circleq.3 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man3/circleq.3 b/man3/circleq.3
> index 33215be77..54df3fa20 100644
> --- a/man3/circleq.3
> +++ b/man3/circleq.3
> @@ -96,6 +96,7 @@ CIRCLEQ_REMOVE
>  .BI "CIRCLEQ_ENTRY *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
>  .PP
>  .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
> +.fi
>  .SH DESCRIPTION
>  These macros define and operate on doubly-linked circular queues.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
