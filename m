Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE4E32195A
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 14:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231207AbhBVNsy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 08:48:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231202AbhBVNqd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 08:46:33 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDDC2C06174A
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 05:45:53 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id a132so13643016wmc.0
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 05:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YbYmurv4nH+whGEq6jgOZgZa0LTSSoxNp/fBZO1Qbus=;
        b=DPOkN9WEkR/f0od5mrQAW7e5XSVvSOSRm22VYa9QmiJ/CpZswIBHHFRbB9+Ur4D0jP
         7CfWd0W2APzhazEiLpD7+yaI+s5zQlYQH58tvmOn8DCORu8sWk0IC6YrytfDyWW+uUNx
         QnAnzEK7l31mUr2fQwNwRSQC+B7ncpiIFg6saPztfCi2Dbc5evnTQBPJwK1aO7GsqfUx
         bfVRnpdC8SfzFsGPFvQJPyU8FZV4Nyk1yu8ASdifIWCDhbRwzpiTThBqX8Mz3FuHrKFZ
         rGwsg3wP3J7aotcC/SntqNEegwaCQzhDOM+pfXnnh9GGt8wkWYKuZnRMq3sTisCMSHiO
         KxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YbYmurv4nH+whGEq6jgOZgZa0LTSSoxNp/fBZO1Qbus=;
        b=TIOsKuLfTGf7q/HD5qndzAXCB7J1+T2H5MoOJUh5+e7NNbAPt5b29uPua9q3KMhPOz
         LRMpaIFtETDmyZG9BvmCwktb/JgNn7POF/J9n+CkjCX4ygVs7WU1Y9U76rRt+Briygb/
         ppwA4kebcXZFmMYZSnmdk9u+C/aFQ9RUBNLFPPpB+UP5CD21488f2AnGpYIgquYyUcW8
         h7RxaVjWITduA3vQmqQc2XTn0kL39Bt/eThG3/9DoA1HZJTzRf0Me2nT08PmIeu1E3/w
         qUeRbRepRfet8FIxmZT1iN5zZnuKEOh2PNGB8kizfiAIA0QFb23t19o3v8meR7w+Ckjq
         0fTA==
X-Gm-Message-State: AOAM532vcKBQvbS5kBZ06ZjCEOE5HTrKvkWNy0b+vqfvlSm9ghaHA7oi
        u8TOYMBsQjc8+z+/du6raMa05RVsIsk3vA==
X-Google-Smtp-Source: ABdhPJy8Ut/RSrNy4eg6/oe1d2KfpF769DRWrS5x9o9sZMAcoXoJHVkawBGcoHhmM9mhmi9I5HW6Jg==
X-Received: by 2002:a1c:1b4d:: with SMTP id b74mr4864505wmb.31.1614001552652;
        Mon, 22 Feb 2021 05:45:52 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w13sm27587355wrt.49.2021.02.22.05.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 05:45:52 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] scripts/bash_aliases: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210222075642.6416-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <81c2198e-a2ee-825f-a555-37d7c6291404@gmail.com>
Date:   Mon, 22 Feb 2021 14:45:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210222075642.6416-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 2/22/21 8:56 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, for spotting this.  Applied!

Thanks,

Alex

> ---
>   scripts/bash_aliases | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index c0c8bc33e..a14c65cd4 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -128,7 +128,7 @@ function man_lsfunc()
>   	|uniq;
>   }
>   
> -#  pdfman()  reanders a manual page in PDF
> +#  pdfman()  renders a manual page in PDF
>   # Usage example:  .../man-pages$ pdfman man2/membarrier.2;
>   
>   function pdfman()
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
