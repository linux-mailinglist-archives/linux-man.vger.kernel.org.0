Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0B931C2E1
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:13:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbhBOUNa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:13:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbhBOUN1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:13:27 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D3A0C061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:12:47 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id v1so10452875wrd.6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cwW1+fusPclWxkbUmiWKRWWTWTiCQEoQhDQ87IVcORU=;
        b=dwBK1jClRrP2PgQmWSzQeqR4tgbqLKT5TttskIdnpve8HuywVJXi2kG0soDRwSxWSN
         xvLN471Uo/Kj4PpqeaTuXRbROx6IrUmNGLMl6K9krlrcN48dOjbIuKzbfKGzLE9wPzMK
         YIa3pbkumU3MaBdsBM6WBZZUBWFUHntYScrU+2bJmUjewNLQXmCXLwap08EeiUIJAA4i
         IrzI4IT5tG0RggGCRxKIJMLKiL97gStnzX3LM9LRLY+45HEuC7u7QOM7nvAlaZLTLSbt
         70l6z/+I7IJSwJ+9QZ4kcMixa+D/DgUyLQRjektyXHeqro+OnPcVDYDloYWjgeXgc3gu
         hdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cwW1+fusPclWxkbUmiWKRWWTWTiCQEoQhDQ87IVcORU=;
        b=frKEIM4pD0ITtiqotwI1eIWotpHlt1+AZEM7cfYCdrNpJY+cWaOjh5a9FXhWyXiRw4
         KA8QUMtbjGCmBh37E2oHyTVaccyEHPeBUi3Tb3peu8ms917h9NKo5y59OFh97G172261
         CCh9+bkyMaDD+nC9twtalSosMURk7AEKr/4+t/CuN4JQurrFe27YgRu07CRpRjiOWBVP
         PxNCoA2S3Re3wN4qbKB+OcMoxVWoNTqxJXSUS0bkzf++JMUFWiZuDJz2y/+2Oy4PRvN1
         rTb/SPAVEzc8LD15xjrNB0+fv2G7KQCUwGe8GO+59/A2DIT759DpRfP34vQApT+0b+ZB
         UcDg==
X-Gm-Message-State: AOAM531/7KQHoApcfsBGgCqh+kb/lTpU0qdO8IXbPZrgg5tKOjntD17+
        qjjJCrIZhl10Gq/oSabkNVvlaogGBBzjJg==
X-Google-Smtp-Source: ABdhPJwsgNZ9BNUP0cNIbLKhzzYsMYi+lM68JMy1KFXEno9KpOhFw9vOgWSj7YturYqh0HQIW8Y6OQ==
X-Received: by 2002:adf:82ad:: with SMTP id 42mr19870841wrc.116.1613419965897;
        Mon, 15 Feb 2021 12:12:45 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id f5sm491758wmf.15.2021.02.15.12.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:12:45 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pciconfig_read.2: SYNOPSIS: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-12-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f8b208a9-b698-d0d3-f4d0-45f042b9fdc5@gmail.com>
Date:   Mon, 15 Feb 2021 21:12:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-12-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> Use the glibc prototypes instead of the kernel ones.
> Exception: use 'int' instead of 'enum'.
> 
> ......
> 
> .../glibc$ grep_glibc_prototype pciconfig_read
> sysdeps/unix/sysv/linux/alpha/sys/io.h:72:
> extern int pciconfig_read (unsigned long int __bus,
> 			   unsigned long int __dfn,
> 			   unsigned long int __off,
> 			   unsigned long int __len,
> 			   unsigned char *__buf) __THROW;
> sysdeps/unix/sysv/linux/ia64/sys/io.h:57:
> extern int pciconfig_read (unsigned long int __bus, unsigned long int __dfn,
> 			   unsigned long int __off, unsigned long int __len,
> 			   unsigned char *__buf);
> .../glibc$ grep_glibc_prototype pciconfig_write
> sysdeps/unix/sysv/linux/alpha/sys/io.h:78:
> extern int pciconfig_write (unsigned long int __bus,
> 			    unsigned long int __dfn,
> 			    unsigned long int __off,
> 			    unsigned long int __len,
> 			    unsigned char *__buf) __THROW;
> sysdeps/unix/sysv/linux/ia64/sys/io.h:61:
> extern int pciconfig_write (unsigned long int __bus, unsigned long int __dfn,
> 			    unsigned long int __off, unsigned long int __len,
> 			    unsigned char *__buf);
> .../glibc$ grep_glibc_prototype pciconfig_iobase
> sysdeps/unix/sysv/linux/alpha/sys/io.h:66:
> extern long pciconfig_iobase(enum __pciconfig_iobase_which __which,
> 			     unsigned long int __bus,
> 			     unsigned long int __dfn)
>      __THROW __attribute__ ((const));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/pciconfig_read.2 | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/pciconfig_read.2 b/man2/pciconfig_read.2
> index cec6f58e9..c379e2d3b 100644
> --- a/man2/pciconfig_read.2
> +++ b/man2/pciconfig_read.2
> @@ -13,11 +13,13 @@ pciconfig_read, pciconfig_write, pciconfig_iobase \- pci device information hand
>  .B #include <pci.h>
>  .PP
>  .BI "int pciconfig_read(unsigned long " bus ", unsigned long " dfn ,
> -.BI "          unsigned long " off ", unsigned long " len ", void *" buf );
> +.BI "                   unsigned long " off ", unsigned long " len ,
> +.BI "                   unsigned char *" buf );
>  .BI "int pciconfig_write(unsigned long " bus ", unsigned long " dfn ,
> -.BI "          unsigned long " off ", unsigned long " len ", void *" buf );
> -.BI "int pciconfig_iobase(long " which ", unsigned long " bus ,
> -.BI "          unsigned long " devfn );
> +.BI "                   unsigned long " off ", unsigned long " len ,
> +.BI "                   unsgined char *" buf );
> +.BI "int pciconfig_iobase(int " which ", unsigned long " bus ,
> +.BI "                   unsigned long " devfn );
>  .fi
>  .SH DESCRIPTION
>  Most of the interaction with PCI devices is already handled by the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
