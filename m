Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71E252802AD
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:24:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732499AbgJAPY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732346AbgJAPYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:24:55 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B303C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:24:55 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so6294173wrn.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PovF0HEetQxMdBj9QA4TR7DDTzLsI24+KT1XZXiPsPY=;
        b=O2kF10i55gKVogzrZ4KkBcA6K6PNkhYZieVjhQfkcH9Aowm95cLuY1DrGLX8M/i5Dk
         9n5vWjLAboCymjAqms12Y4xmZOZpCnumrzBxsWViC6d5ED+dx93k3ezMnTsyCzYbjkbR
         TBbpiG0jjVJ1HYjJTzCGGBLksu0Q8+4fPC+zBqwyoOM8pJ0iqn9VCDSluC6JHCyk9Oak
         7Fhg5AWize4Oj/72pM2hnG4+R6TRuo+Vx5lPDSXZTZJi0qOv4kGGGqedfq6QdNj9FgXg
         AXNxLpZ/f85fVVHUixyP942fNDXGPAgNtd8ofDj8M47el1CSMTZuasHpziarQ8tvP1RF
         l4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PovF0HEetQxMdBj9QA4TR7DDTzLsI24+KT1XZXiPsPY=;
        b=Bi56sBEvgHp8BQScxxRCaUl64qlkUXoDB18d5I1yKKT/rsVCEagdHor1UP8yObmT+f
         5S6CUjNAOZDLB62zp89I5PZFpsLgm2PzJjwwHeBLsTbrpRi4zXZOx6cIeLlgTRZq9mZp
         2eATUlfrvJ1b0DVRyqX/gmpvQNzRhE5Z/AG85bHeqNaS4OFfe+BgY96UAts2XV4f/z45
         8RVzD7XNKlYpzG3HE/vz2qnqCz5vEU6leKmyXDEuimJ8uSXHuhHJKoIn+/Kg/SI6foaK
         MzC8P7n8VZnm5cbEhUd+x4BuN0icrfhRpz0BqRiYjPkKbTbEGu0o/BE49FpFD7ZxdMOp
         mKow==
X-Gm-Message-State: AOAM530KqZLJDkKYuCsMukeFcWjtyXQdZmrvH9KW7L6BkPtVwYfxkTrN
        JkcZnQ/QXEgHWzMtHt3BlrM=
X-Google-Smtp-Source: ABdhPJy27ZleoxQjnaIvcU835uOiPs7bBpjZqBdMw92LImxc3O5FUZGzVqxyxpUtlP3yS6E/NiU+Cw==
X-Received: by 2002:a5d:660f:: with SMTP id n15mr10358791wru.103.1601565894320;
        Thu, 01 Oct 2020 08:24:54 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id k5sm449790wmb.19.2020.10.01.08.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:24:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 2/4] int_fast8_t.3, int_fast16_t.3, int_fast32_t.3,
 int_fast64_t.3, int_fastN_t.3: New links to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
 <20201001143203.98803-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6a01f911-b228-e9f1-a806-75823f26aee6@gmail.com>
Date:   Thu, 1 Oct 2020 17:24:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001143203.98803-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Alex. Applied.

On 10/1/20 4:32 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/int_fast16_t.3 | 1 +
>  man3/int_fast32_t.3 | 1 +
>  man3/int_fast64_t.3 | 1 +
>  man3/int_fast8_t.3  | 1 +
>  man3/int_fastN_t.3  | 1 +
>  5 files changed, 5 insertions(+)
>  create mode 100644 man3/int_fast16_t.3
>  create mode 100644 man3/int_fast32_t.3
>  create mode 100644 man3/int_fast64_t.3
>  create mode 100644 man3/int_fast8_t.3
>  create mode 100644 man3/int_fastN_t.3
> 
> diff --git a/man3/int_fast16_t.3 b/man3/int_fast16_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_fast16_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_fast32_t.3 b/man3/int_fast32_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_fast32_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_fast64_t.3 b/man3/int_fast64_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_fast64_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_fast8_t.3 b/man3/int_fast8_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_fast8_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/int_fastN_t.3 b/man3/int_fastN_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/int_fastN_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
