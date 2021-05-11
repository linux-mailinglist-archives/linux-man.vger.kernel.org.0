Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C54BA37AC7D
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 18:54:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231269AbhEKQz3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 12:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbhEKQz2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 12:55:28 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34461C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 09:54:22 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id z18so7527581plg.8
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 09:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LUU06tbQg1/Xwivl3dC13zmIgSDyZNRPu7iIVwwgz6w=;
        b=PFcn3UIdfjpIWm+/os3GU5x9h+WSyItDI/Gy4Zl8ArOCChPY66pXQstX6AuQL7KMEO
         1/4v81YFxBO05KM3jXej9enwTCMg8Q/b7NESTprTjZykLG6r0Tdngso+MBfv/N3yLmQr
         tJ3Tlwvw6SIIzlyuDWko92eRyshVevih2pWBGTIYCv87ApxvWLnOan1auJhToVmvpNdW
         fzH/M/gFlPQ0ufmVoZ3c/o35bt+VTQpDzyq7Z0WrW+caBTWsm/6cL+/uDYKxprr7OBMN
         Ko2dlEtFqG5qx9JhQ8XTlInIhHP9WS5n19kegr/ZM66gN9ea6LkEc6NwkXXK/pI+FuKl
         rn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LUU06tbQg1/Xwivl3dC13zmIgSDyZNRPu7iIVwwgz6w=;
        b=n3UBwVPApyvHukPbVI//hqNzW+wflVsTVDif6zUdNlOJFSpQ6g0vCtg8LkMsihXlMj
         kZ1ixKIiwREQVI85q2WHEvxBUa590uvWn30CW8awm5Ot3+MrmMmB9CDxJBpLfTNjWqBT
         gCLw008tvUL6JQEwinYq7GVCPuAa9WtrFswANE4hG+DeWdKJ/bX/N7vMBpU4vcAqOfKS
         ukhfjH33io7D5m6o/ZI5huiCeZEQotHMc9fcdB12RnnwDHeVgXxpCSz7KpYjSJhDP6kf
         Mt8TvXGhRC9wU9WxmLLNYuWa1paZfFcgdEVg48jPMPoRpchOl2C+Z4nt77aKVyjfvTbU
         slpg==
X-Gm-Message-State: AOAM532WjcGBlgstN/jcDFLAQdO7R59XJVx425cLDDJpIHHHC7OA8P9d
        GTEsZZn5z1s1abnVexOaDoFdCDEpf6Q=
X-Google-Smtp-Source: ABdhPJyAcidPN4v8hB0zgV2Y+k7B0ZkuP6orJ8RByCm6wJFalXMmTNGxS2GSxaFotkJxEDnovRqxHg==
X-Received: by 2002:a17:90b:1bc3:: with SMTP id oa3mr6251043pjb.159.1620752061528;
        Tue, 11 May 2021 09:54:21 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id b23sm14251656pjo.26.2021.05.11.09.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:54:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] README: Update installation path
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210511065259.8556-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <42a50b25-add4-14c4-126f-31ccfb1858aa@gmail.com>
Date:   Wed, 12 May 2021 04:54:17 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210511065259.8556-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/11/21 6:53 PM, Alejandro Colomar wrote:
> The installation path was changed recently (See 'prefix' in the
> Makefile).  I forgot to update the README with those changes.
> Fix it.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Cheers,

Michael

> ---
>  README | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/README b/README
> index da36ce9ce..6598170c0 100644
> --- a/README
> +++ b/README
> @@ -17,9 +17,9 @@ For further information on contributing, see the CONTRIBUTING file.
>  
>  Installing and uninstalling
>  ===========================
> -"make install" will copy these man pages to /usr/share/man/man[1-8].
> +"make install" will copy these man pages to /usr/local/share/man/man[1-8].
>  
> -To install to a path different from /usr, use
> +To install to a path different from /usr/local, use
>  "make install prefix=/install/path".
>  
>  "make remove" or "make uninstall" will remove any man page in this
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
