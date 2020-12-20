Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45F0F2DF5B4
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 15:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727251AbgLTOo0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 09:44:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726970AbgLTOo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 09:44:26 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D923FC0613CF
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:43:43 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d26so8079054wrb.12
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cA6xfm6OGZ3F65PlGM+JNVg0Mu8+QmgpLROcW3ivhiY=;
        b=pZgouI8SDfnYq3Eb1TyGIGMgU3uu6mTpK44bPotSjL8nLzccvdVV+RyBDC8UOlCyJ6
         k0/tpiC05Ab1bc+/Ryn3Z4YQXFw4qfYJhGb86O1J7p1h2YwPlqJShaWKdvgDw+bk9III
         HcQBTm0zYU2zRVdQfK1PfetrYfevzZAzp2iHHK5Ez31jBiEN1qMnfVQelDSR5Nd9csLH
         NI8VPaXrdpom7FmgXqdJ2A1u++hqsRbITPzArJjnMx8N703fuUj6guuiWeC/HFQ+Dv1P
         JHlWk14v+LgR6/5lIRIzG2864Urm5xmVupQLbmb0ecz+2FQlMdzKjxlZNgZSxUyI8TRp
         FAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cA6xfm6OGZ3F65PlGM+JNVg0Mu8+QmgpLROcW3ivhiY=;
        b=ebhq2bxA7ZCEj/MMHL0l2DfoalofbysCNwWEHo8+9cNZ1HoB5uM+JrTLTnFg5jvVTs
         SCzdoiRbuMk4Wuhft+lreie/kDrWyyFVb/ThADn+eZRzCrYkW5FUm1IXlCtabXSIJxYV
         JVdTJqYt1USKHIpfH/wE/8gA9f6CUKdpnVuHlYcIQD5Z2i8xd/5+dtdOkLwDQb1UNPVC
         yd207DzEDxoULRd9UmRcsBFYygyyHbuvMTpitzT1BJK7v4iONbfCwj72zRehnyUejxpy
         dU8x5CA73TJG6JzXQx8sfGOrMtco7erc5Ypv+fgVf+0pUoG1V7jsFxjgFO/bZ9mvu/gu
         rRMg==
X-Gm-Message-State: AOAM530CRBd+m6abc8qzGR3B3WjRGDkA+yqmw7UcoGkgwvDKZEdkY205
        maw+1a+tRp0t3e+L7i6JREp5Yw0kAnKYPg==
X-Google-Smtp-Source: ABdhPJyAoDrNOH6+v+Ur8mOvkHuEPhNoJQyULvRDkpHvR4t0agzpJ8PWQwDQroZO0bNpa7CtZAp61A==
X-Received: by 2002:adf:decb:: with SMTP id i11mr14181953wrn.26.1608475422183;
        Sun, 20 Dec 2020 06:43:42 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id h13sm22418036wrm.28.2020.12.20.06.43.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 06:43:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: Re: [PATCH 1/3] filesystems.5: fix link to user space tooling for
 ncpfs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201218153036.25244-1-alx.manpages@gmail.com>
 <20201218153036.25244-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e1eca57-f597-c482-6382-28fec58df598@gmail.com>
Date:   Sun, 20 Dec 2020 15:43:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201218153036.25244-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Ahelenia,

On 12/18/20 4:30 PM, Alejandro Colomar wrote:
> From: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> 
> Corresponds to Linux commit 1b83df308f69a5a3cc59be03bd7fb23e4bcebd8e
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael

> ---
>  man5/filesystems.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index b44dba184..6ec2de9f0 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -158,7 +158,7 @@ Novell NetWare.
>  To use
>  .BR ncpfs ,
>  you need special programs, which can be found at
> -.UR ftp://linux01.gwdg.de\:/pub\:/ncpfs
> +.UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
>  .UE .
>  .TP
>  .B nfs
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
