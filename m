Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D45E627073A
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726187AbgIRUmo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:42:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726154AbgIRUmn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:42:43 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 883F5C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:42:43 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so6805420wmb.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WW8jstDtXwCY1JclYsUVZvww8oKyzDOk7BQw6boMgNI=;
        b=LLlHij3thsh1A5piYDeVG5NoYHxNk41j8MPArOiQ9yFG4uaYcCRqMfQjzg9TMQDfPj
         UwloYxt6KwsCsjQcGOVhL0aGZLwH5000G7SvdSl6QZap5ugWzbCkSzFuRp+BvcGhPyYH
         dGP0iFgJoxVW1jVDTDu03BfOgzFsbOXNBtDDjsXaJL0cVSi1iYJiJg/5s7N3CaNEsjKL
         5cOHGlT8hTYcOcrtUJ4G8LXLAi2KzUzFKRjcDJnRlkmKVYGxF2msLat7VIOw3GpOCYnT
         VqvRzFOu+scvJZUK+Wrqvd+saxmE7UmOdOOrwzyY94jrHvwbL99ayMSw+iKvqBbwJVAV
         6Kew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WW8jstDtXwCY1JclYsUVZvww8oKyzDOk7BQw6boMgNI=;
        b=IE4st+IxvmZWz8P/y3mdlamYZu8Z11qXAiqpDqz/P/e0ZOKCg+rwFOWE1nXZ/1WbnQ
         Kn/47dHx89iDbwRdm7KlFSrVCB0+Bi0gDXONW65iKBYK6GdHQPp3W7LTqVv63EWvLBRA
         SzmxI/M6Hm74nLYJ98GmzZHmpwow5lkGZUQckT3aX7e1fJD4NyyaOUlvu/0mO4P5Z2AR
         sdPQ6tIbeRkKJUHdxLvuuWO9K5kkPJcybAAfgD3eZ+WWEpAnYCpg4KZk4f0j685ao7e9
         C/hCATSyUlWp/Zhb6nzILel+wwERT3NbN3y0myzzSp+hTETItIVme4Y1soh9RM8Pvewl
         bpAw==
X-Gm-Message-State: AOAM5311Y46tHsPtAH4xgCNb2/537OkQFANcbW7rDneAcfe7hYRNFvlV
        Ff2iQ8kOj4Vl909+C8Dv3NI=
X-Google-Smtp-Source: ABdhPJxOjApJwwKBYEm799J/UX/CP3itWKbHPFRkjhFZ5dUgNE+a5Ydygw/iwjiAkSXbywPquOhJUg==
X-Received: by 2002:a1c:81c9:: with SMTP id c192mr16642429wmd.2.1600461762273;
        Fri, 18 Sep 2020 13:42:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 76sm7583677wma.42.2020.09.18.13.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:42:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/3] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
 <20200918132943.55424-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ce2a8059-dbb2-1ed3-c8c6-847c68649819@gmail.com>
Date:   Fri, 18 Sep 2020 22:42:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918132943.55424-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 3:29 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 16dcb7d66..2ccbfe817 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -65,7 +65,7 @@ system_data_types \- overview of system data types
>  .I ptrdiff_t
>  .IP
>  Include:
> -.I <stddef.h>.
> +.IR <stddef.h> .
>  .IP
>  Used for a count of elements, and array indices.
>  It is the result of subtracting two pointers.
> @@ -85,7 +85,7 @@ types in this page.
>  .I regoff_t
>  .IP
>  Include:
> -.I <regex.h>.
> +.IR <regex.h> .
>  .IP
>  According to POSIX, it shall be a signed integer type
>  capable of storing the largest value that can be stored in either a
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
