Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68F451A652A
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 12:28:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728108AbgDMK22 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 06:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727833AbgDMK21 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 06:28:27 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D636AC0A3BDC
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 03:28:26 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id i10so9610654wrv.10
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 03:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YG7VGdu29eAMeFYO4p6jXwqkgGyDeDEWHIiwFZVOAqs=;
        b=lFgbb9KuoVGBjbSsOf7WDKeSvOZ7f2gLTpfRk+Fbv2Q2UxCFvlWbxsRioIhOAKa/No
         G0kkU4i4vv3dLFeCPVQ9rxom5sf9NoY8gyytWTaOgvQ6G+AQf6Cel9tA11FwhbPlSb5g
         2IN1kRXgmNCh6LxQF3zbTm2C34qX7wxavSgOQpEg/5lZhfijiYArC6IneMDZWBg78Yco
         oUU/k+O7v6G0unKlELLfYPkd9vYiVbO0eTVzwMRKQ5uviTpSjgVEbp4HiIgW+tpXOyMW
         CPAtr1cu/YMCramENQOLWRLouIvduxP4xvPHQZhwMLD4OrS+A4y+5wNp7hQk4aLy8McE
         iMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YG7VGdu29eAMeFYO4p6jXwqkgGyDeDEWHIiwFZVOAqs=;
        b=DEHLmbVixUsi8JXK46IA2yInSywr+jaIQK0uH2CaSzHGfS9g9Jk4TtaZDs8htYtJcu
         UCLNWEQ3TiXZpTR9ZITBzbHo14L4yBdfW9FJX5ZA0USnQYVL6gxLIpxv1hf8Dzp3OJ5D
         wSx0kG/5viy2Uw3X2J3b5R728gqBLLb1G1wc6da5SQ7dyuBCo3yxPZivN8ho5GNt9GCo
         +eM+Agw0f2QBcF8sb/Pc/dIApKGxi2ypDlcjFYSE6wyhDf/LxM2/Ud2XjByVRIOnoOdY
         pzAcUuYT/RVZ2CDgFo7ANSkGR8XLMAo+y4QOOEzH9K9oemxlFGkdWX0RiwdCeV6aIqAi
         WUuw==
X-Gm-Message-State: AGi0PuaLfdh0KgQnh5h3yMboyNdUS18S7mmS9YvtgRN6iaRgzAEfIpoA
        MEl6OsQM0Q3iPPb7ZtKFzsZJkxBu5Ok=
X-Google-Smtp-Source: APiQypJ7ghoNLW9UXAARxwcBvqjt+nMtBPlgJA076FB/ZjRaF8YNvy4gG1fxatPI1+sjOFK3wW+viw==
X-Received: by 2002:adf:fd49:: with SMTP id h9mr18107325wrs.107.1586773705469;
        Mon, 13 Apr 2020 03:28:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q10sm10184470wrv.95.2020.04.13.03.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 03:28:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] open.2: Document fs.protected_fifos and
 fs.protected_regular
To:     "Joseph C. Sible" <josephcsible@gmail.com>
References: <CABpewhH=F8OV_RNOhuH6HAPnMj7eUMJ_+qD6F+HZgvP0D+OhGQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dba61b45-5648-b8c5-0929-59fc714e2938@gmail.com>
Date:   Mon, 13 Apr 2020 12:28:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CABpewhH=F8OV_RNOhuH6HAPnMj7eUMJ_+qD6F+HZgvP0D+OhGQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Joseph,

On 9/29/19 5:01 AM, Joseph C. Sible wrote:
> The sysctls fs.protected_fifos and fs.protected_regular can cause
> open(2) to fail with EACCES (see Documentation/sysctl/fs.txt for
> details.)
> 
> Signed-off-by: Joseph C. Sible <josephcsible@gmail.com>
> ---
>  man2/open.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index b0f485b..9ee42b2 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -958,6 +958,16 @@ is not allowed.
>  (See also
>  .BR path_resolution (7).)
>  .TP
> +.B EACCES
> +.\" commit 30aba6656f61ed44cba445a3c0d38b296fa9e8f5
> +Where
> +.B O_CREAT
> +is specified, the fs.protected_fifos or fs.protected_regular sysctl is
> +enabled, the file already exists and is a FIFO or regular file, the
> +owner of the file is neither the current user nor the owner of the
> +containing directory, and the containing directory is both world- or
> +group-writable and sticky.
> +.TP
>  .B EDQUOT
>  Where
>  .B O_CREAT
> --

Thanks! Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
