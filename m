Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B04B81E100C
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 16:01:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390786AbgEYOBD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 10:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388862AbgEYOBB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 10:01:01 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D778C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 07:01:01 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id e10so15105254edq.0
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 07:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8f0TjoKzSVGE5cft6xkbwuwGKljyJ5Sg/QumpxkGAmI=;
        b=qslMms5o/SP2om3rIcKOxt2tsB76kPJhsDXHQQAvd4XueggYEM6HCbw3g2KB+Dleno
         OpbIhgsbUW/nslKFfdQcQGFMJQDrPo2QLUf+0+VFjvQ6EAVShkhnA7IdZtZDTB3d/7KB
         oWKbCFdIaUjfXrjZsU0gFIEzAE7MBf/8G07Yl1LCQF7R/H4PLb2UcM9m+4KDx/nOp/fD
         AQCdpOao/KnnvgBX4Dxym+ErnDRpqrVMqsoWbmIsGoItkECjOXxRouyD7n9oeTwUNzNU
         CcRJBYg0i9FCKIA1gJIdGnoZgd8Vu00IY3wSittHLfU13LW0o3+ZRPai2kkD2wkoi3rT
         PY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8f0TjoKzSVGE5cft6xkbwuwGKljyJ5Sg/QumpxkGAmI=;
        b=iIwa6hTSJqtwUgjwpvDpG5cnRMCA66zrmqBZtdprkFCHY9iBObukP+4mLP+my72ZTT
         XuupI5DFh918SIp2vQplemPVSH2KhxVA1zgzEDNjd+O0ZFPYzxWwgGr2jU3E5fBQkW3p
         UjyJGeeUNXUF/uwNOPhe7sXxG5sisKeqTLaomXIev1WsuO2UnVBl1oQXm6OkTf2h7Zpm
         xc0errsa8gCurN3iWWKgO3r8rtRthQz32piMcAaiP2f3WT6KMk3BvF1/KOqGTQHW18cd
         U0fQKyq8uER1tm2uN/8A7kYl0aCLmMbd+p1EhkK6U22HALSgILItTqGb6GMshTaoWhSt
         tJQw==
X-Gm-Message-State: AOAM5336VesPbXwh+LN2IA4yEcLzYxlnBaMKD8ECHHgkFCeFJplo5pNp
        47iF/XYqC+ESPyO4H3jcKCv6ZqApVEw=
X-Google-Smtp-Source: ABdhPJzcXUO3wKhH88JSQwPzbI68c+zwsXK3H1hKcwMYm9+K6L0sgr6XXIi/DjoSOQOaYD/qcITpNA==
X-Received: by 2002:aa7:dc49:: with SMTP id g9mr14729949edu.62.1590415260165;
        Mon, 25 May 2020 07:01:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id c15sm10825187edm.78.2020.05.25.07.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 07:00:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] printf.3: Prevent signed integer overflow in example
To:     Tobias Stoeckmann <tobias@stoeckmann.org>
References: <20200521121505.dfh473amjvb37rwr@localhost>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fbbf7ab0-35b2-94ab-db53-5bd46bf7aee4@gmail.com>
Date:   Mon, 25 May 2020 16:00:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521121505.dfh473amjvb37rwr@localhost>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Tobias,

On 5/21/20 2:15 PM, Tobias Stoeckmann wrote:
> The function make_message illustrates how to use vsnprintf to determine
> the required amount of memory for a specific format and its arguments.
> 
> If make_message is called with a format which will use exactly INT_MAX
> characters (excluding '\0'), then the size++ calculation will overflow
> the signed integer "size", which is an undefined behaviour in C.
> 
> Since malloc and vsnprintf rightfully take a size_t argument, I decided
> to use a size_t variable for size calculation. Therefore, this patched
> code uses variables of the same data types as expected by function
> arguments.
> 
> Proof of concept (tested on Linux/glibc amd64):
> 
> int main() { make_message("%647s%2147483000s", "", ""); }
> 
> If the code is compiled with address sanitizer (gcc -fsanitize=address)
> you can see the following line, assuming that a signed integer overflow
> simply leads to INT_MIN:
> 
> ==3094==WARNING: AddressSanitizer failed to allocate 0xffffffff80000000 bytes

Thanks for the nicely documented patch. Applied.

Cheers,

Michael

> ---
>  man3/printf.3 | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index 50e136ba6..827d9cbae 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -1132,29 +1132,32 @@ To allocate a sufficiently large string and print into it
>  char *
>  make_message(const char *fmt, ...)
>  {
> -    int size = 0;
> +    int n = 0;
> +    size_t size = 0;
>      char *p = NULL;
>      va_list ap;
>  
>      /* Determine required size */
>  
>      va_start(ap, fmt);
> -    size = vsnprintf(p, size, fmt, ap);
> +    n = vsnprintf(p, size, fmt, ap);
>      va_end(ap);
>  
> -    if (size < 0)
> +    if (n < 0)
>          return NULL;
>  
> -    size++;             /* For '\e0' */
> +    /* One extra byte for '\e0' */
> +
> +    size = (size_t) n + 1;
>      p = malloc(size);
>      if (p == NULL)
>          return NULL;
>  
>      va_start(ap, fmt);
> -    size = vsnprintf(p, size, fmt, ap);
> +    n = vsnprintf(p, size, fmt, ap);
>      va_end(ap);
>  
> -    if (size < 0) {
> +    if (n < 0) {
>          free(p);
>          return NULL;
>      }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
