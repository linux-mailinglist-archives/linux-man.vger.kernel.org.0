Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7FA4263D00
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 08:13:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725981AbgIJGNN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 02:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgIJGNL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 02:13:11 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1613AC061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 23:13:10 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id a17so5310530wrn.6
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 23:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w+AVQbPLkWbAc/trCfIIwuvC2Ud9UOm63ZTzkE2NOXs=;
        b=UujpDZSphJTEKfznpH+s7NjY+vQNzGQVBYbAuK9ddlkuKM0XEkraVFE2J8vZx1z8rJ
         KPTkt+vbzlWF+7wQtk0HjKJXv/cbIGUUK55sFXZ2FqH96tCA/js/H4RFyUbjYwzVtddI
         rggrWEvcgruElCI7Xe3qfHPifrOnjrZTOXQv5k8bOe9JVGxr4I/UhCIhGJX49OtV8Fl6
         yZUo5ShNIATs9ef5zudUvMoI2Y9SSE2OH1Rd4S+82WHkBuNj1IXCStJJWfpjEu54XLyT
         ObegnKb30gB7dbeo3Dx/e6E9pUN/zQBOI/vV1mGKilsDLmQxcaVmUhEjydBlkRBS//OK
         TugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w+AVQbPLkWbAc/trCfIIwuvC2Ud9UOm63ZTzkE2NOXs=;
        b=Vcgykn0SyErFkn+55HHb3StDV96vsNdvwx6VjOo/W2WxfgUMwJRduZzWn6u1y1Lkfj
         dh9tcQ/9IUGpUoTI4xDyfq24OGL6EHB25N0MUbkexiHsKz8PdJgA8esRCbag+fFZaIGl
         vJuhwps0kBvlIlJnW1yV6wBHP1T3bEqWUn6MeHObiFwD8e5NadFUMI1blf6Sj73sZ+aD
         FXts9NqHhjXuS5Ls5XvLtIJcfMBMdP67kVIQNy2r3GImzPAi8ZRkI6VPUM/OBVU1o9cL
         4Mx0fey+lWc4mYx3LjMj9XatwZ/AP6RK0L9lsdvyKtglczInwTMgepOiI2POdaroT1Ou
         HwAg==
X-Gm-Message-State: AOAM532kmvsiGjLC312ZqcV0VHrepAYqRql4xUboOIDXej1ohXx8OTeF
        4+Sxd9Qy/aUSpAQMox6FyTQ=
X-Google-Smtp-Source: ABdhPJwvb5XQeopVP3oBCC+jnEeOzbdcQs7rgivqvVQJ3hPu5Sq8BLa5GUAzq3Kfr3bqK4CPEaUD9g==
X-Received: by 2002:adf:eacb:: with SMTP id o11mr6983408wrn.209.1599718388719;
        Wed, 09 Sep 2020 23:13:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b8sm1949964wmh.48.2020.09.09.23.13.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 23:13:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, wharms@bfs.de
Subject: Re: [PATCH v4] loop.4: add some details about lo_flags
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1599704384-24697-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ec7c91eb-864f-b2aa-0bbc-062ad7f655fe@gmail.com>
Date:   Thu, 10 Sep 2020 08:13:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1599704384-24697-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 4:19 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man4/loop.4 | 7 +++++++
>  1 file changed, 7 insertions(+)

Thanks, Yang Xu. Patch applied.

Cheers,

Michael

> diff --git a/man4/loop.4 b/man4/loop.4
> index fc41668b5..928fa8c2c 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -135,6 +135,13 @@ Allow automatic partition scanning.
>  .\" commit 2e5ab5f379f96a6207c45be40c357ebb1beb8ef3
>  Use direct I/O mode to access the backing file.
>  .RE
> +.IP
> +The only lo_flags that can be modified by using
> +.BR LOOP_SET_STATUS
> +are
> +.BR LO_FLAGS_AUTOCLEAR
> +and
> +.BR LO_FLAGS_PARTSCAN .
>  .TP
>  .B LOOP_GET_STATUS
>  Get the status of the loop device.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
