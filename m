Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6F3535397E
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 21:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbhDDTbJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 15:31:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230119AbhDDTbI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 15:31:08 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89677C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 12:31:01 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id l4so14207163ejc.10
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 12:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KqqDXN4KNmR51iwb3q4/ScDCOWiW9wSY19WqUqkCTFs=;
        b=VCbhe1o1Q4Tmnhok4GntTYDAbTunilrHr7SArZtq6UlYMvPh/WzXe6E4V+txp7gWVq
         3bDXHY3dhMzq98K+iGXZmSnsERCZrjr+LX+DYNYz93rm8MRag+EHfwrK6sxtMuPKETcG
         8wQKh7JHNU9JjAfvXO5wxTTeMRE5YFFSki3njt2c8auA6cPf+6mRDj21sxDAEV5zHSvK
         t5bK4/EgCz/6rGPvLdIzbfzy1agXq10VnWsYy03EWOCylXldWMBAG+siNRU3kxjiLypQ
         rWmhHvbObGaxGOMwv7YzUeziJwlj82lwUy4FsLHg4qLIPdZYTPpyRJeska6BN922Eo1z
         DfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KqqDXN4KNmR51iwb3q4/ScDCOWiW9wSY19WqUqkCTFs=;
        b=ncdxBQh4ksB+c311llIvPXML4QwsMAkHKCQOgIDbTWOPjFWoUmVsQyVnHPGGIe9wUO
         j9a9C5z9JQGUaS0O07L1lIkagIMoNYQQNqMmxBNwM16GoDOx62RPgYhXSiceYAT/b3gM
         4TgNoT2mqgDkIplDkCUE08y1P/5CrpFll5p0av67QMj4Dv/e6b8uWIUquoMgX6Y9C9ct
         XXpFQkMg0pcqdw9dex9tn2QmtYx4dPZoQgGBw5KN9rYlV2WsSUr50DGAxgIxw3dmv/B/
         GDJ6m7N0lI+x1ljY3nV4pocS2DU5sIOQXEbDSvBe5D9Bw+YnXEG/e66yuLIjq53WrqOW
         Kzzg==
X-Gm-Message-State: AOAM530Zb6HMfwvQyqfziXH8staEJqrR9HWNFBLG3KGlCX/dI3Zp1AoF
        u+XkYsXd2HyqWienng+qv9/XnX9dCiI=
X-Google-Smtp-Source: ABdhPJyyALxIQMUfsIzFobYdL+VgX966nKy6DgubK3+kkd8ouXfdrak5kgrQIPjM5G+GDwRFkVtStw==
X-Received: by 2002:a17:906:acb:: with SMTP id z11mr25093817ejf.193.1617564658925;
        Sun, 04 Apr 2021 12:30:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id e8sm9143050edq.77.2021.04.04.12.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 12:30:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Josh Triplett <josh@joshtriplett.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] Remove obsolete admonishment of the GZIP environment
 variable
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0bab19ae-4ec1-2ee6-c99a-28d78ae9fe73@gmail.com>
Date:   Sun, 4 Apr 2021 21:30:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> From: Josh Triplett <josh@joshtriplett.org>
> 
> gzip deprecated the GZIP environment variable long ago.
> 
> Signed-off-by: Josh Triplett <josh@joshtriplett.org>
> [ alx: srcfix ]
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/environ.7 | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/man7/environ.7 b/man7/environ.7
> index ee8ca97f6..d618ac749 100644
> --- a/man7/environ.7
> +++ b/man7/environ.7
> @@ -339,16 +339,11 @@ etc.).
>  However, in some traditional uses such an environment variable
>  gives options for the program instead of a pathname.
>  Thus, one has
> -.BR MORE ,
> -.BR LESS ,
> +.B MORE
>  and
> -.BR GZIP .
> +.BR LESS .
>  Such usage is considered mistaken, and to be avoided in new
>  programs.
> -The authors of
> -.I gzip
> -should consider renaming their option to
> -.BR GZIP_OPT .
>  .SH SEE ALSO
>  .BR bash (1),
>  .BR csh (1),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
