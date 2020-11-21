Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D681C2BC243
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 22:26:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728574AbgKUVZ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 16:25:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728402AbgKUVZ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 16:25:59 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63741C0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:25:57 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id s8so14509997wrw.10
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 13:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=p5J/oYAa9ieOwyyKoysDd92zfPTpNkvrZ5McD/t59As=;
        b=jxPL8c2+ArTvfJ/mxHOqDEmQ023ALUk7s3Ha6nL4weRjGJdiuI9vVzrx0aWEsiacfw
         NL47xHzXwDr2vZRN9AJkf+M4rPIErm+NnL1Ssm4Wq2HmvFsPus2z9+C+9kGiqUVP/Zex
         Z2UQlm1i59OLbdNQdI3/TmHIuCxKqSdNBQOuh/lj/NiFzxzjTT9mJiH3PlJPcB0qyiEf
         P7swJxujai5Fgc6yDC1vG/uktzRXce5WV/Oanak8d3dSWQjoXDucT4LOVKYhE376MxZI
         TXl0LEIrdPSbcUnnxQ9+I4h4IVZMSwxBcxzsG4HtvTyE9cBzIxZDem5W4tsN38N8ztny
         cg2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=p5J/oYAa9ieOwyyKoysDd92zfPTpNkvrZ5McD/t59As=;
        b=q9uWImT49Jesgbs2AEksMl4gTdx5S9t3WFe/T0E6nxnHq4AyNb84BBUwStlMW64fM5
         /QWbKX7yUqj94/eb3/9L4sRrx6exkazUj6fsgtDTkEjQsHSbKPPCuj+TY2RzlStRz0ko
         pLSCUhr5sZr361lhZegRHNfPvy0ooyr10jCANOGQ0ANOucWuCztkoGMiKyFvoFkAqsY3
         x6yEyjdE/xY2uns3qiyD22eDQ0ottvYMHNQdC417WmZcwmh9aCYEp3SbyR3aNIHJpQEY
         tQGgExNDjaPua8yLsaqdwCoDz25L+PN/TAX1hujjTvuUlWjOF2MUc/XJb8AnI9ox55q+
         n0pQ==
X-Gm-Message-State: AOAM532VPbMd+lxgdjyZQpqirViTDzlKOIhTRGJ6zagMWIiUcduKDU5R
        oVpCeBfqBmMvt5H0/7L6as9EhwMRtLyXRA==
X-Google-Smtp-Source: ABdhPJyF65ORPdlvCl/G/2E18IejgPdILOm7VxLy64+3YL2XZ2eaehaRyO5UaJNFNxRTNfBU+yUJlg==
X-Received: by 2002:adf:eeca:: with SMTP id a10mr21879866wrp.186.1605993955959;
        Sat, 21 Nov 2020 13:25:55 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id s4sm10115642wro.10.2020.11.21.13.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 13:25:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] futex.2: tfix
To:     Jing Peng <pj.hades@gmail.com>
References: <CAL+Ps4T=fhfb-tBKKBz5vUXPVKB6nWM+E32dxyTMMBzZqXZByw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <afa70208-e919-644c-2dfc-cda9946187a6@gmail.com>
Date:   Sat, 21 Nov 2020 22:25:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAL+Ps4T=fhfb-tBKKBz5vUXPVKB6nWM+E32dxyTMMBzZqXZByw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/21/20 10:08 PM, Jing Peng wrote:
> In the comment of the example program, the peer blocks on fwait()
> rather than fpost().
> 
> Signed-off-by: Jing Peng <pj.hades@gmail.com>

Thanks, Jing Peng! Patch applied.

Cheers,

Michael

> ---
>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 76c89f16c..5e006784f 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1809,7 +1809,7 @@ fwait(uint32_t *futexp)
> 
>  /* Release the futex pointed to by \(aqfutexp\(aq: if the futex currently
>     has the value 0, set its value to 1 and the wake any futex waiters,
> -   so that if the peer is blocked in fpost(), it can proceed. */
> +   so that if the peer is blocked in fwait(), it can proceed. */
> 
>  static void
>  fpost(uint32_t *futexp)
> --
> 2.29.1
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
