Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E74431ACA6
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 16:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbhBMPkO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 10:40:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhBMPkN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 10:40:13 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DFCAC061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:39:31 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id w1so4286151ejf.11
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pO5SCEC2WMVKzv2bvLBddp+6SP4MdZPvuvOWPeAqQ9E=;
        b=ddPWjb4qi65b2mNdE4X1QNSb9GB7i4o6hsfGZi+iv0zIF5yG5hXvTYF0Pf3hyGd3zh
         E8P4wbQRXT/wchG2t788mKdclP2j1dngDq4CUhbMH7pOIV9bRJe8xIp054JiZHmKy+uD
         T0i0qf6VTt6DkQdlV62Qp4aKDtbXDLtWBOVR0P6Q8chVlJ2nf4QqT0eF8TgGKwX2zXgY
         o60wmlyCS2R5LKn4G2NwgsjA0gS0Jp4HB42R5NFpEJge8nG/hDaz4TeUIzj0PFbiJQTm
         0+2opAZqxd+khLtkxL+Rn+hgSu2BvC8ER/33Dxqg9a3SV+ShFqxdmh4F3Lkujjc1Vv/u
         EZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pO5SCEC2WMVKzv2bvLBddp+6SP4MdZPvuvOWPeAqQ9E=;
        b=nBHS67oVoA6eb8S3WIHcCAFYDz/w3wMc90ry5UbgfYJwd4HIy5p4Nx+QdVZwZTVico
         SkQZUUIcgSinjmdxcsrV5n78/l5cq5xyDD43SaobIkRx7N6+IcZZq+8B9ajtsEfdkVvM
         +OOCXWiDKkqrdIdOa0kaF2pqa3D2cLJUAlGGJWHBx6C6R53USy+nJi7f2Zb64rMPL5sZ
         ZnGAioksMZSg89YgQZZePy7qReSbVqMbhwLdW1QChcV1hpuhu9SHK4DSp8E6XevYYH/l
         nItekl1FBM7giyhyBGkHPAZ5RqKw1408WlRdu415Xolla1/M+m8jFwSakJVNLk3yWNmH
         G/kA==
X-Gm-Message-State: AOAM532sJvsNU3TbViT5nvKoUyjkHH0nIgv6wb5lVhynq6OxohKX2XpB
        Qo1HO3YucT8nTVgss5Alqv9B5vYGC5Q7Pg==
X-Google-Smtp-Source: ABdhPJz+mWzqQ+1btNKfTDla8QHTzQF8PBDzprFqeOK1FSQNSfxvTpIlpbEGquFIwnhr7OZqLG291A==
X-Received: by 2002:a17:906:f1d0:: with SMTP id gx16mr246965ejb.383.1613230769848;
        Sat, 13 Feb 2021 07:39:29 -0800 (PST)
Received: from [192.168.178.63] (dynamic-095-118-040-212.95.118.pool.telefonica.de. [95.118.40.212])
        by smtp.gmail.com with ESMTPSA id q14sm7299431edw.52.2021.02.13.07.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 07:39:29 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] move_pages.2: Add notes about missing glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210211174454.48112-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e5f601ac-1dc2-4806-1686-fcaab7fdaf1b@gmail.com>
Date:   Sat, 13 Feb 2021 16:39:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210211174454.48112-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/11/21 6:44 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks Patch applied.

Cheers,

Michael

> ---
>  man2/move_pages.2 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man2/move_pages.2 b/man2/move_pages.2
> index 6ed3fd682..28fa9adac 100644
> --- a/man2/move_pages.2
> +++ b/man2/move_pages.2
> @@ -29,6 +29,9 @@ move_pages \- move individual pages of a process to another node
>  .fi
>  .PP
>  Link with \fI\-lnuma\fP.
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .BR move_pages ()
>  moves the specified
> @@ -218,6 +221,7 @@ first appeared on Linux in version 2.6.18.
>  .SH CONFORMING TO
>  This system call is Linux-specific.
>  .SH NOTES
> +Glibc does not provide a wrapper for this system call.
>  For information on library support, see
>  .BR numa (7).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
