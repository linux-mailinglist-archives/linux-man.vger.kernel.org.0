Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 038D129640A
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 19:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2901004AbgJVRtH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 13:49:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2900997AbgJVRtH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 13:49:07 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C735DC0613CE
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 10:49:06 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d3so3310515wma.4
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 10:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B/91hchIoQ1P7nsRVTDuIwharRqCEaJ4uJgKCHr0uCE=;
        b=Ev9iJoaKKAgE5vC/Mm3kVsmzEy1gHUB5h2GMoglOfN/yyuFuY0YU2LC5eVwld1pDOV
         HpBQ/hu172r5T2gsV6GvmMew64cRuaorFZ0zyG1JFNmxxSkJSXOHDT4rlAOIHjaljqqX
         eV2L9cVPQ1v08MacOcvJQCmhUp5wV5GbjLf8H0zhT8KE61rFpeUdvT7MdbBnyRqkNZiE
         q03dYFG/6OzZd3zlUUXxkUM1x0yHQl3l4i0+QFNf3eomcvlextaKZBupk1YddgyJja/t
         ZQXtRgsltHefH/ht3EdRjRpXJuEv4gR9bFpBL5DuiyRAePqXPZ+bZ95PQiXGm10tme2V
         d2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B/91hchIoQ1P7nsRVTDuIwharRqCEaJ4uJgKCHr0uCE=;
        b=CLCnF7MB37bUeBx72HuKxfC5eXT9YrxSQgL85rb0tPz6CI6qYVlf9XayWq84qJkNt0
         ZpOYquIGEb8mljltWE1U3KkX5NEFOEq3oXTyO9KBGKKsuDNaV04CdpOtAKIsFLdHUmCd
         ZuixwEHWzTXJT28eYS8YIhTKxOQqi4xL7FOBNRsGsjeBejytzyQUhSq4FTxqCtJQLYFm
         yB5n5A1Q3IRNr+EHD0qJ7VuhtHWpRsquqtBhYrsrMRrNj4S3qpL0f1uSP3kFI9qFBmnj
         Dwp63dTUAPZNMvsyd5pg/q2mNAze8LTHCbdIHG/KFI2lD9vgTnEHmd58/aLnFG3Yg+f1
         vPag==
X-Gm-Message-State: AOAM533rzfNLYzDtKliOVhY1yxpVBgGyQkgx3jDKssMDqGg7DYQiMR9t
        sHN4x2ghVeZAvDEOs1yoiyDHEX+IH1M=
X-Google-Smtp-Source: ABdhPJx3jHy3unCZaNSUUN3Q8RKK6t4jYvhyn3caxSIA/osfeN5e1FA7290gomYu5wZYIpqnGzXzuA==
X-Received: by 2002:a1c:c28a:: with SMTP id s132mr3861445wmf.13.1603388945299;
        Thu, 22 Oct 2020 10:49:05 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id z6sm4591073wmi.28.2020.10.22.10.49.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:49:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] list.3: Sort alphabetically
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201022154039.30048-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8f58aac2-fd8a-d877-0ead-57fb55c0da72@gmail.com>
Date:   Thu, 22 Oct 2020 19:49:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201022154039.30048-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/22/20 5:40 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. patch applied.

Cheers,

Michael

> ---
>  man3/list.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/list.3 b/man3/list.3
> index 0cbccfe00..ea1c76b4d 100644
> --- a/man3/list.3
> +++ b/man3/list.3
> @@ -63,9 +63,9 @@ LIST_REMOVE
>  .\".PP
>  .\".BI "LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
>  .\".PP
> -.\".BI "LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
> -.\".PP
>  .\".BI "LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
> +.\".PP
> +.\".BI "LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
>  .PP
>  .B LIST_HEAD(HEADNAME, TYPE);
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
