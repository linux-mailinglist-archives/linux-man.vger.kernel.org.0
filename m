Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCF672FA5C7
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 17:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406081AbhARQN7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 11:13:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405829AbhARQAp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 11:00:45 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D89E1C061793
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:59:25 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id s11so10843957edd.5
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P/cetP3TCMNfuM/VBZJSLfkxwVm0N+qKc+2Bjirze18=;
        b=KmX8Ju+h485AKzA5Q+qtLHbShIWbDr61R50h15nFMrKn1YoLbAAKJGci/MokCLHRdi
         lzQkbPUZ6MQE3UK2uiz8M0om/qVMhmhRrPKBYm7PRNAP3Hxd0UhowS8c8RkoVsa5s8Q+
         rrfFFja2v6EK8CxsdnEpC2DD/JqNz0mf2zj7MZ4P06zLeJYzYdwoDd4/8JE+FBgS9n/d
         PAvpl2mAriBXX48gwA0FwNKtC69+Jrgpapo3lorWyy8zzzhZkjwAoQYbeSdZgHn86eYn
         QDh67SnKQIoeRm1PQ3w3fBysy/OiN8lbaaUaKuIT5BioMsmpftY8fQ0xZKXknhbi7v1p
         a1Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P/cetP3TCMNfuM/VBZJSLfkxwVm0N+qKc+2Bjirze18=;
        b=ICuU37ljI5PP1Rz3fK39vsqdFws5ozUW/UUPdKSgVrigAfT8xvnesrBksFZjWMwB3U
         HmjZVtGYp+pRT41evEJ6kLI6KVvC/Kdpi0+fJpQlOLyjQaWXsguZWpyfhJ3TfC/TMGdw
         NLuMuNgeU5fCMq2Db6fju7Jjt8D+Kj9Wk+n9Uo0rOSYeJpSZSyUSasJ8UxSfPb/GECA0
         Zz4OwLfRDJG3twl/T1d/V1kKyLknXDMdJv8CYK55SkV5xkCBvajPgf4QnpHBiP1lMlrl
         PsgCcwWZu02Ku/38pq+/JEWloSyrAUoFW5G/NMH7cMylJqJimsG+VAkCTZurAIqcEMYK
         Hxcw==
X-Gm-Message-State: AOAM533mQ4RHXyI8meTSZnYkSulu+HLAoGTW2uJTpzhbo39RBa8fRYoL
        R3/KZQAyCCe/2NUxDmf3ttWQJPDxjDc=
X-Google-Smtp-Source: ABdhPJwb+W18EW+yncOLf3q7LAx0yW29AbHQS4gF30JkgOXYYOQcp/fXRZkW/eg8O7aj8tA/0YZuMg==
X-Received: by 2002:a05:6402:1a56:: with SMTP id bf22mr117437edb.284.1610985564451;
        Mon, 18 Jan 2021 07:59:24 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id z13sm1786475edc.73.2021.01.18.07.59.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:59:23 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] cacheflush.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210118090811.6495-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <42d8808c-6f8e-8f16-1e1c-2829c09f9987@gmail.com>
Date:   Mon, 18 Jan 2021 16:59:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210118090811.6495-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 1/18/21 10:08 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.

Thanks,

Michael


> ---
>  man2/cacheflush.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/cacheflush.2 b/man2/cacheflush.2
> index 12be4c94a..44fc064a8 100644
> --- a/man2/cacheflush.2
> +++ b/man2/cacheflush.2
> @@ -27,7 +27,7 @@
>  cacheflush \- flush contents of instruction and/or data cache
>  .SH SYNOPSIS
>  .nf
> -.B #inlcude <sys/cachectl.h>
> +.B #include <sys/cachectl.h>
>  .PP
>  .BI "int cacheflush(void *" addr ", int "nbytes ", int "cache );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
