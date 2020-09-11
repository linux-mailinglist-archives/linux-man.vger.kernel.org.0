Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1C8265B29
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:08:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgIKIIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725838AbgIKIIc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:08:32 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B702C061756;
        Fri, 11 Sep 2020 01:08:30 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so10520070wrm.9;
        Fri, 11 Sep 2020 01:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=s3NbMTOumyl+6eyS9PrceN8AWSkDKTQT8h3qOtC2ULA=;
        b=spcFpZsOnUNLRquvJMeGL3k4PbtXGBU/MgQ+wZBuJ2iKe3DJFrCreFxJKFHMHb3RZ6
         mPiFTg2b0En5DqJGkjwtJAQ0nO8ruIhuSpg2c5P6gXGTHpmKa/h4hDUTQTs9q8zJws8t
         yfGmqBemxQj7JZBf2hX0YrZOrFAlEOiVp62eGzbGmcQVP4jjILreezr++D6Ef8wUJDyj
         81yeS/wDJnAfJQN/81/yIaUrbezdFrIjhId9ck8uE0iJykZBPKaaeK0dLxORAPgseJaV
         3HboL17CCCodxXiPRifjhiYA8LdJ/X0T2gWdx27Y+PCpoaXwiAwfKI8VBnzPXdskrmRn
         bwmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s3NbMTOumyl+6eyS9PrceN8AWSkDKTQT8h3qOtC2ULA=;
        b=EgqJgY1oQqsUANKqd7p9Z/NAmAEobqXfB1ZjySNEkHf73Cq/k9BsjMwVhzKiGFzT18
         Brs0DPr29InWnfaWqFHVNI3mzN3tpCoMM7nh7BQQBMOeUs3jDuWdtotlRrN1Vz61oEtM
         gD1IF/8kzOGdHkPBYfyNXnYgwnXSjbcIVLaH8WouG54+EMYHlBRljk5Q9OmsLW30h+gC
         bNDqEgy4M5cN0V6uMP1P8/Ojw4wfb0m28Aj84T7k2iaMzo2hAaaf7symvjqTGG8i7fFK
         LZPsnLMMiYYZQ95dDcbthgtxnVP7vIMD/KEy9vBP7kHWqwDIMz4u+dbcL+ZEak8jzuIZ
         szRw==
X-Gm-Message-State: AOAM532J9U3xJzBwq07+iEVwKizAA/JPwrNJX4yMdqzLShr2b3VnDTpW
        NcjPF8ZyftuU2TTbeQmowCF4QnnDD/w=
X-Google-Smtp-Source: ABdhPJw9AZRpNeqTwSk+56G+YRQKg6gZE6gXKLKfASKJ1/T4H6OaRYPh2zTruG2DD6XqvlwizOFV+w==
X-Received: by 2002:adf:ec82:: with SMTP id z2mr799913wrn.214.1599811708686;
        Fri, 11 Sep 2020 01:08:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m10sm2743618wmi.9.2020.09.11.01.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:08:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/24] core.5: Use adequate type
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-19-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7147904f-f135-5abd-c8b5-ff2cc4f0de0a@gmail.com>
Date:   Fri, 11 Sep 2020 10:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-19-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> 'nread' is of type 'ssize_t'
> 'tot' adds up different values contained in 'nread',
> so it should also be 'ssize_t', and not 'int' (which possibly overflows).
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael

> ---
>  man5/core.5 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/core.5 b/man5/core.5
> index a87ebbaf4..45c9de845 100644
> --- a/man5/core.5
> +++ b/man5/core.5
> @@ -654,8 +654,7 @@ Total bytes in core dump: 282624
>  int
>  main(int argc, char *argv[])
>  {
> -    int tot;
> -    ssize_t nread;
> +    ssize_t nread, tot;
>      char buf[BUF_SIZE];
>      FILE *fp;
>      char cwd[PATH_MAX];
> @@ -684,7 +683,7 @@ main(int argc, char *argv[])
>      tot = 0;
>      while ((nread = read(STDIN_FILENO, buf, BUF_SIZE)) > 0)
>          tot += nread;
> -    fprintf(fp, "Total bytes in core dump: %d\en", tot);
> +    fprintf(fp, "Total bytes in core dump: %zd\en", tot);
>  
>      fclose(fp);
>      exit(EXIT_SUCCESS);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
