Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92475354154
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233075AbhDELDI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhDELDH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:03:07 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CA9BC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:03:01 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so5464551wmi.3
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JAFKMTH0MxDWPWNpxB3FligJ6QOIJ7RnO+l28PHZzuk=;
        b=dm306ufjZlROvznXgHzlu0G+LnoTipYGLzSVL+Hgtrfp9xOyyRIeQLT8YpotG1x66j
         K0OXBim5lczp2tvbC3Z0b5aFUx8wdaLoU38/EjI8KBwd8pshkU2wtdhhGjDI1l/fWy6f
         OoB1k0Iz8mH38PSrYBGZ1TYe9pwEkoOw5OFpHlU0RuHmt1as8Fb9a0PfCtnnvAuiZPI3
         CPV6dyQaY6aYqTShqfJjoW2cVRiFSUkmNIW+a6+DcuUdxTJ6QzWpiuCS5tkrajXut10R
         mGt5w9nIGaRGkhuYqqgQ1FzLwkCoisfaDVJwwQmzz+t16hWbSELSIykeZ1ZIySaa4hh6
         p/vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JAFKMTH0MxDWPWNpxB3FligJ6QOIJ7RnO+l28PHZzuk=;
        b=ja1fq8nBRTbbFbD1u23YpYBMpmUnLpLrWCSod2bdSVND/g+752989hj119eCyJF7Ha
         BxSw0d55ZxENA1lCnL7KUzhjilEKHlRJYD1ne7C+wTi7W9ZEalx5loxoY5cuo7xWwMAf
         BzWvR//H3nR9ANYpjBRADZvVCYEzMuKoGfxLtDD0OUqw9Mrbh9tn8gntUemmBxmNxydJ
         AofSiDOws1pvd3oxSzdHyu8NH5E2hB3UoPnFu0rdwvIqQ58oIHPmNCfYq22gFGhpDX+2
         E+9CS/LBuozbcZzlDv2B803DBhxI6eJhmXJPD+xZ7u1TmvVLFCloLiUaC5B4jcBVbqKU
         oG2A==
X-Gm-Message-State: AOAM533FLb5b/uiYq+lVh2Y3n/7ciaqAL6dWR3eMDGLKHwwyzV2p6bsH
        FJAoCGbEPOzAM5I+9kLT44ngXr0RPxk=
X-Google-Smtp-Source: ABdhPJy/yskE/UcRi3EZmgczQutQluA1/lIa/H9PLgqZXaw97gSOLjpKzbR5vqdPKxKPrbc9bnX6sQ==
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr1380468wmj.183.1617620580352;
        Mon, 05 Apr 2021 04:03:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id b15sm27349617wrx.73.2021.04.05.04.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:02:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 29/35] ioctl_fat.2: Make clear why is each header
 exactly needed.
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-30-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f33b3c26-61ce-67dd-c13a-2cbba03477b6@gmail.com>
Date:   Mon, 5 Apr 2021 13:02:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-30-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Only the one that provides the prototype doesn't need a comment.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ioctl_fat.2 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
> index 30e410280..263738dad 100644
> --- a/man2/ioctl_fat.2
> +++ b/man2/ioctl_fat.2
> @@ -26,6 +26,7 @@
>  ioctl_fat \- manipulating the FAT filesystem
>  .SH SYNOPSIS
>  .nf
> +.RB "         /* Definition of [" V ] FAT_* " and " ATTR_* " constants */"
>  .B #include <linux/msdos_fs.h>
>  .B #include <sys/ioctl.h>
>  .PP

Patch applied. But, I reformatted in a manner more
typical of what I normally write. See my follow-on commit.

Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
