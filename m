Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B09DD2008B7
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 14:28:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731816AbgFSM2e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 08:28:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730934AbgFSM2e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 08:28:34 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30355C06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:28:34 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id o26so7489856edq.0
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+ifTHsyu0yuwQEX/hrF+rdD2nf3T2PZ7+gDfn6F4xxs=;
        b=MvivkirL5gE2mcgdW6XiE7ylRatDXA93W62VAposfml9eTOUYfXI2Go0t1hSa/Ggfc
         rbpkk+9Svq5FW4QVYdcVgWfKy9+uEPMyl+GjvNVTs8/NaqkEm+2xe2cU2Ri9W5k42XWN
         5TYvJMchFuqbDQ52tNa/B1TaXzzDE+SlLUphKN2LGfIEM0kQpASlyBTkykHyzzsRLy4r
         OXBnl8ikxfxfJuFaCUPI99/ID2Uzit/nB2uSWaivqCOzVWFaG7kTA7KjrnxETa2nh5uP
         4qs+qDRatM0yR5yu2NA7A/yZIke+xhnpyHFg4RZ4OkjQkCpVfV/a+mRcxhykhaOpgUh6
         36/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+ifTHsyu0yuwQEX/hrF+rdD2nf3T2PZ7+gDfn6F4xxs=;
        b=eCaLmF3xYZqX5YPr4yEFMMl2xSvMvhG/+8iqgamoCkivnbrSHRPb2rwcHAFG8RFwhW
         gd50yjQQM5NV++aYqcTYdW5+i+VOAtNbfh4mwPdjR4U0pZ0mGk4BPIIsrKE5arLFlVCx
         IoqnMNjAJS7HNwtSya/0OXkn0HDfEoQUIYN5CcdmirRJrFr+GzFk2HlvjNZaFq8iWE6b
         Z3LT3mmnVorekp6yq0RirCXBhucj/b1nzMsNEIdOoh5kXR+QyqAiydkmq7ABza8nKvQN
         ePL3I6FNZnzqmmYb+Bc9T6jMQgSkJd8SY1Hn7s/kjsfdXpjoZv3yjVEyn6lxAB48KnYk
         Ffxg==
X-Gm-Message-State: AOAM533BIgM4TPya/79pFeKTbbd3vlVCX68uqZHUh5mkWFoTjY+hupsx
        796KcQ+C4EIxqwLJBSJF0q6HluPbKiI=
X-Google-Smtp-Source: ABdhPJweGCc77r+ClBmexYlBKRbcDkYRIIvuXRkIoNJGtpRqTSgjO3FvKh3gm0fwnnknI2AkyPCj8A==
X-Received: by 2002:a50:e08c:: with SMTP id f12mr3025330edl.233.1592569712756;
        Fri, 19 Jun 2020 05:28:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id k8sm4452979edn.28.2020.06.19.05.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:28:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
References: <20200616221520.21741-1-arkadiusz@drabczyk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <386d8d68-6cd8-4c85-8c17-85691e841fee@gmail.com>
Date:   Fri, 19 Jun 2020 14:28:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200616221520.21741-1-arkadiusz@drabczyk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Arkadiusz

On 6/17/20 12:15 AM, Arkadiusz Drabczyk wrote:
> Corresponding manpage on FreeBSD already contains that information.
> 
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/fread.3 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/man3/fread.3 b/man3/fread.3
> index 2dd7be9..2dcca9b 100644
> --- a/man3/fread.3
> +++ b/man3/fread.3
> @@ -92,6 +92,9 @@ is 1.
>  If an error occurs, or the end of the file is reached,
>  the return value is a short item count (or zero).
>  .PP
> +The file position indicator for the stream is advanced by the number
> +of bytes successfully read or written.
> +.PP
>  .BR fread ()
>  does not distinguish between end-of-file and error, and callers must use
>  .BR feof (3)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
