Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 993CE2991E3
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 17:08:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1784999AbgJZQI0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 12:08:26 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:41717 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1784998AbgJZQIZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 12:08:25 -0400
Received: by mail-wr1-f42.google.com with SMTP id s9so13234068wro.8
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sv8mpk8x167aC/tx4ry2AwoJzYEmhQKHsmEbkDf41WM=;
        b=J5HVfYfmfHjwDxePGpgTU7GWWGwoh3cTtdYvZRXkCO3XpaFzJ1uOl7bPzr1FBa52pu
         6Z5v+OyhJmHhaQq1n+cDoq2o8C6sPC6hXKZ4MLV4jMOhGMzzPz0IcBD9FzQCqumonlKT
         y1mAFde2sW0NtCT+6WRwqvDQX82Gv3kEYtAngx9co3UxU73kh38RVm426exRmr664pxK
         wg1irAc+yRNZVpSBzLhofM65QEm9cAyQY3TDFCHMcEXVTKGwkJV2OUtc8fE1GDQaspJG
         32lxb4flQYuPv8bprRGuo8IpQ5tGyaVGEIScVqul9CbRlO/iEuGQTBzri4W2Ri07V6Fg
         9VKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sv8mpk8x167aC/tx4ry2AwoJzYEmhQKHsmEbkDf41WM=;
        b=YZ3yarOdWTuwBfM5vq7xgJafGmkt3K/GZfgR20i2ga9Velg1Tsh0AGEL+zrXzQdBtR
         MtyNgGDH1P/thsMD1KbAOLnSq7vX3W5tJqEe2AXW6uPqw3S6WgSs6lyAWwDJ6MpBcMGX
         tM7hIgCCzjRbH6o7MgynSuCF//d324h/IA8B5hY3FvDftn4+atcplV5gRgWFyIiNF8gy
         XwrDanihaC4Z97thlXYbdSiVa5ms09I11XBzTfjdkdOnDcfhFFN2U3XRIQIlwrfrANhm
         o2xlrBqE/rUScEMQk2UzQHI7deAybLbg230pG8sf8+Dz15sCo3fcrTwR41LzsDphid3v
         Ldlg==
X-Gm-Message-State: AOAM531r+39SCyaZeGKgKjHgcAzPmEmvaZn7amlqh8scVNsLrIpP79bf
        hoxg49sDM3XPi2HfH5ewbdmiZxYggz8=
X-Google-Smtp-Source: ABdhPJzBaEgGddFzLd/cB7jeW+gNF1zyg3PTMU2SgVBuJGyMjmp40z3Ympip2/0KH9IUjI2jB+beeA==
X-Received: by 2002:adf:e881:: with SMTP id d1mr18678594wrm.395.1603728503403;
        Mon, 26 Oct 2020 09:08:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id a15sm25535944wrp.90.2020.10.26.09.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 09:08:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: argz_create
To:     Jonny Grant <jg@jguk.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
Date:   Mon, 26 Oct 2020 17:08:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 10/26/20 3:18 PM, Jonny Grant wrote:
> Hello
> 
> https://man7.org/linux/man-pages/man3/argz_create.3.html
> 
> BUGS         top
>        Argz vectors without a terminating null byte may lead to Segmentation
>        Faults.
> 
> Doesn't feel like this is a BUG to me. Is there a better section to
> add this? Almost all string handling functions may cause SEGV if
> passed a string without a null byte. Or even being passed a NULL ptr
> like strlen(NULL)..  I expect some of these may crash if passed
> NULL.

Take a look at this paragraph:

       An argz vector is a pointer to a character buffer together with  a
       length.  The intended interpretation of the character buffer is an
       array of strings, where the strings are separated  by  null  bytes
       ('\0').   If  the  length  is nonzero, the last byte of the buffer
       must be a null byte.

These functions have a surprising interface. The 'char **argz'
are pointers to pointers to character buffers that have the form:

    ...\0....\0...\0

That is, the buffers are not strings, but a series of strings laid end
to end. The text you referring to is trying to say that there better
be a '\0' t the end of the buffer... I'm not sure how necessary the
sentence is, but this is not like a typical string handling function.
(Probably 

> May I ask if there is a way to link error_t to the definition, should
> be in errno.h

I don't quite understand what you are suggesting. Can you elaborate.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
