Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC423169A40
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:26:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgBWV0s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:26:48 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38083 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWV0r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:26:47 -0500
Received: by mail-wr1-f65.google.com with SMTP id e8so8065521wrm.5
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1l5hdnDL7rd95+k+spwCMDmvCuL1ilBK8uOJeDAqfns=;
        b=b9z0tC24LU6TvSW24iRI41d/uZhOMdvBtmyuu1K9+z+0fCOi2hcF34l73+1OCHnDrc
         KKgRbn7MCn4JGlYg4eCauR5Dpa3l8Z6y0pECwbW46jcIZ4R0KW2Qbh0LZzN2kQ0Mp8p5
         GOPlSp7Nk5YTFEXzYKLA8C6Lp9Tf8ET67FBFGBhG2MVVB2AlXd1lkTc4Ioom9yijdKxs
         To/buUEHd/aTN36SmMTsc2tkn3mDcxeD2/B/F5+4shCrW44GXuNPRPrDHbPLdsibiCgO
         ymUytk0ytOC1SwGmskwebAFsOKBo0dfUne3jYJtyCITrFaN2VS/ubctZhk87eOgY3/m+
         Ck2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1l5hdnDL7rd95+k+spwCMDmvCuL1ilBK8uOJeDAqfns=;
        b=qpu8iOJb1opgRKEDrNKw2VJZg5QqRi+8lUX14bAHIYe06DnXj2DUe3PaT7hWwoyhZk
         c+O/4azHfGRx8IZEWynYyivdmjJG/wDNX1afbObhKaSNNcjuQYnKeCEb3DQ54Sv1BxSl
         M/gKckliC9t9g/wU9+KKfJh3AP8sLkEqpJsxsr7VRUxCPdfaVWve4PLCyK4RpCNp+bd1
         Z15C36iZjz2pPfAG5cZ+HDHulPdnGSYbQbDmcjS4+4Uemy54xLHtEE8C7Jd2JcVMZ1nL
         2qaZlIPa46MFRqBvbIvFZ6WAd55YvqpRIZ33V49doHxrF9826eHYR5ErcKg40dK8IyVK
         5LCw==
X-Gm-Message-State: APjAAAXyUUEg2Apayhf+4U6RkKgn6dez5bofhe7zj1ehbDqDrkoxC2vF
        MGfvcjl7dXnMFeg639XH32HKWhyD
X-Google-Smtp-Source: APXvYqxJct8pN7UNLK6LuRG48pmySvns6ACfQm+A+oefOFBEF2m/412NqRipSMzUzvQOsjOYtDZgmw==
X-Received: by 2002:a5d:484d:: with SMTP id n13mr61244215wrs.420.1582493202738;
        Sun, 23 Feb 2020 13:26:42 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id j15sm15605957wrp.9.2020.02.23.13.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:26:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: ffix
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <b7ec330b0328781791b4d85962cebfd674fd652b.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <779913c7-0376-36ac-1b94-694deca66469@gmail.com>
Date:   Sun, 23 Feb 2020 22:26:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <b7ec330b0328781791b4d85962cebfd674fd652b.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eugene,

On 2/14/20 4:28 PM, Eugene Syromyatnikov wrote:
> * man3/strftime.3 (%s): Format "mktime" with .B and not .I.
> 
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/strftime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index d6e6e34..62b77bf 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -255,7 +255,7 @@ below.
>  .B %s
>  The number of seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC). (TZ)
>  (Calculated from
> -.IR mktime(tm) .)
> +.BR mktime ( \fItm\fR ).)

The usual convention here is .IR. .BR is used for page
cross-references (e.g., ".BR mktime (3)"). (But, that said,
it would not surprise me if there were some inconsistencies
in existing pages.)

Thanks,

Michael

>  .TP
>  .B %S
>  The second as a decimal number (range 00 to 60).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
