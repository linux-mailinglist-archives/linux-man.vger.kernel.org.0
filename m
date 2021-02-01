Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD97430A73E
	for <lists+linux-man@lfdr.de>; Mon,  1 Feb 2021 13:08:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231187AbhBAMIe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Feb 2021 07:08:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbhBAMH6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Feb 2021 07:07:58 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 896C7C061573
        for <linux-man@vger.kernel.org>; Mon,  1 Feb 2021 04:07:17 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d16so16260819wro.11
        for <linux-man@vger.kernel.org>; Mon, 01 Feb 2021 04:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PqJekxb3SB5ppq1pwQ54iGFrnVvb+fNAGJuMzTFUlsY=;
        b=CObs+/0zTRshywUuhBUCL9k5G7ZMEI6huANdMdAiWtOF4jhxr0w0TgARKGcV/xOFyK
         r7wbW3l10zEyFq/N+tTD6LjNcntOjbWJZhKAmLrrkEIc8wey3y28aKUld7dEyNZlnA5o
         xEQVoCZBLb1jcQREY80WLcftMKvRLHxk3cCKynbUVjOyrLg75OsE0pn9996AVHlcEsq7
         h0mr435TZjsSWnfRTXV17XPKvzmk2JwC7ySOjrwv3h/ABTDDj6N/YhQe2R3i3rpSiH29
         DrVQ7t6q0cUVcn6KlCttLfmxue6ehtcjJSqXFZ/t9tqU5esa7OQol7cwCaSYhCskGwFt
         V6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PqJekxb3SB5ppq1pwQ54iGFrnVvb+fNAGJuMzTFUlsY=;
        b=N66rWEAA4dQseLup6QvHH8Bn5vimGEHRaxFPfw68ZtsFLLu+OKtG3WKF+3C8cKwDum
         CKOrw4hZ1ggmCqcJDc9rGoB1hzte0j48jsNe/CEmhRsHqXCQQxEhPzrh7WRJz1bh/Jxr
         TYSc0YNIiwd8zvz/C3M/KZaYDuWv1qRmi8S+EyY10pHEZIDyqeI38l6mfe5is/HIlnI3
         0eCGB/6kwS3dFhXF/j/pLqztzXGPbBLTBNI3RTloEY3/Z+1VX1NKlp1OALZ8pQOdJtha
         VSnYdi9vVhcHVLZeJQrryG5OEz1Mw3MLJvhYKn7VB9TbR/FLd0n9rSQUonAmlyumt4lw
         g3XA==
X-Gm-Message-State: AOAM531KPN3M/ZZFGdN2T+rSBEOwZguaCZNaJtmnJe2ccwf16oZZDMqe
        DZA1JeIW1X4VdNvBFkx2Ytc=
X-Google-Smtp-Source: ABdhPJwlx7cMrcmOx6KuLR0kimhO+jZGaJXkfWhxHHh6YUt7paB3hwhU9utdEHeq25eSOjhYKKgDDA==
X-Received: by 2002:adf:b64f:: with SMTP id i15mr17239683wre.279.1612181236262;
        Mon, 01 Feb 2021 04:07:16 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id t205sm21250908wmt.28.2021.02.01.04.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 04:07:15 -0800 (PST)
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Subject: Re: [patch] malloc_trim.3: Remove mentioning of free call
To:     Dmitry Vorobev <dvorobev@cloudflare.com>, linux-man@vger.kernel.org
References: <CAB6khqWO_meFaNn+cTtaKBDg8Zus-o6HD49Bo3KChk-5GkdFng@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <88db2116-aa6c-4576-a511-49d1db7d2477@gmail.com>
Date:   Mon, 1 Feb 2021 13:07:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAB6khqWO_meFaNn+cTtaKBDg8Zus-o6HD49Bo3KChk-5GkdFng@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dmitry,

On 2/1/21 11:42 AM, Dmitry Vorobev wrote:
> 'malloc_trim' was and is never called from the 'free' function. see
> related bug in glibc tracker:
> https://sourceware.org/bugzilla/show_bug.cgi?id=2531. or '__int_free'
> function. Only the top part of the heap is trimmed after some calls to
> 'free', which is different from 'malloc_trim' which also releases
> memory in between chunks from all the arenas/heaps.

Thanks. I wrote that sentence, but looking back, I must
have been confused.

I've applied your patch.

Cheers,

Michael

> diff --git a/man3/malloc_trim.3 b/man3/malloc_trim.3
> index 3c4cf5e8b..84e73fd70 100644
> --- a/man3/malloc_trim.3
> +++ b/man3/malloc_trim.3
> @@ -80,15 +80,6 @@ T} Thread safety MT-Safe
>  .SH CONFORMING TO
>  This function is a GNU extension.
>  .SH NOTES
> -This function is automatically called by
> -.BR free (3)
> -in certain circumstances; see the discussion of
> -.B M_TOP_PAD
> -and
> -.B M_TRIM_THRESHOLD
> -in
> -.BR mallopt (3).
> -.PP
>  Only the main heap (using
>  .BR sbrk (2))
>  honors the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
