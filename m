Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 450B42CA5B0
	for <lists+linux-man@lfdr.de>; Tue,  1 Dec 2020 15:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403853AbgLAObd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Dec 2020 09:31:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403848AbgLAObc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Dec 2020 09:31:32 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 890E2C0613D4
        for <linux-man@vger.kernel.org>; Tue,  1 Dec 2020 06:31:13 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id g14so2893399wrm.13
        for <linux-man@vger.kernel.org>; Tue, 01 Dec 2020 06:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=u9o0yDbJImpb4d/X1qyX2ARyzN50Ta7I9kpICsQ9Lzw=;
        b=lGSgeTB45jtCOo7XQpiRuH2HXKTG2hRFdF80nCvbLm9oHME5x3cWmjFmUVg3WdlCC8
         /aJe44o0Z1FBGMmEehepTzPKPxrme9yk4wrSx9CGZwGQIjgCcA96GPcavnKMGfwMLW1b
         0yL5uZKsU28tNSWKjDW7AG0DpMxeJdsWDHbAbmmkvGZC56Zay/S05kgDsApEKl8WDwE1
         AARkVxHl+k4KmePU4QxccsOjsQrGBOEIf2msl/m+aANkiGPE6GdnvqNjm9+68jaH7B3P
         NOVSUihPbYxHFqbWgsOopBPRDnK5rPOHGu/rLK0cca6G67bPNRt2gPiJbPFFbOF2hO+r
         cfkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u9o0yDbJImpb4d/X1qyX2ARyzN50Ta7I9kpICsQ9Lzw=;
        b=SHYZE5+cEo6KrVpY5Vp3uysRdXsOObkYWcXzH88G61dE3vz1pThtRmH9dVpNMoLkyO
         STyxtX8sN5Zq/rwHNIe80wrZgXx4vqc123xdYTuMGf/B8Hmnn1jwCtEHW0VAOMkvAalj
         X4wZ7RpLymJ+jPsZ/IBXTpzeA2OqGlbwqr6pZwkeU1LTmRRA0RoZEPZagS4AcfbX5S/o
         sjdPS88HRyTRNtRtOqJN1NlMteq/CqyBFKQvBo0hzVkUlDAVtBTq92XHT6ZCQpALEcEr
         v0tgmeyND1CMqL3XsOo/uTCS8Jzj9S7C9lrTvQm+yfN7h5ivfj+OT8Btxv0dSXLs72pl
         xZew==
X-Gm-Message-State: AOAM5322VXV+/NPHhMnr+W3Px1WX704IKKz3uaZKKsAA2x9tvzW22j8i
        Bd/4UYZew94pCMFLp9OJ0XPLjjr2wwxvQQ==
X-Google-Smtp-Source: ABdhPJyMVYSc5EOs0ZaDxGeqYkHCvrQt+REv6gfVlMB6R0MaAUTxC1NJs8i/XJu6dLkyv5kqo265yw==
X-Received: by 2002:adf:ed46:: with SMTP id u6mr4153231wro.287.1606833072049;
        Tue, 01 Dec 2020 06:31:12 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t136sm51106wmt.18.2020.12.01.06.31.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 06:31:11 -0800 (PST)
Subject: Re: [PATCH] keyctl.2: tfix
To:     Arusekk <arek_koz@o2.pl>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201201112245.11764-1-arek_koz@o2.pl>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ada4964b-44e6-2089-9f23-cb79b6320d96@gmail.com>
Date:   Tue, 1 Dec 2020 15:31:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201201112245.11764-1-arek_koz@o2.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Arusekk,

On 12/1/20 12:22 PM, Arusekk wrote:
> Fixes: fa76da808eff
> ---

Patch applied.  And thanks for noting the commit!

Thanks,

Alex

>  man2/keyctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 8930fb78b..4fa54bc14 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -33,7 +33,7 @@ keyctl \- manipulate the kernel's key management facility
>  .B #include <sys/types.h>
>  .B #include <keyutils.h>
>  .PP
> -.BI "long keyctl(int " operation ", ...)"
> +.BI "long keyctl(int " operation ", ...);"
>  
>  .B "/* For direct call via syscall(2): */"
>  .B #include <asm/unistd.h>
> 
