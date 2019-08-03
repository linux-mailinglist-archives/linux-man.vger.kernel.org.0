Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39B868061B
	for <lists+linux-man@lfdr.de>; Sat,  3 Aug 2019 14:00:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389929AbfHCMAC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Aug 2019 08:00:02 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:42815 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389812AbfHCMAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Aug 2019 08:00:02 -0400
Received: by mail-wr1-f67.google.com with SMTP id x1so29921613wrr.9
        for <linux-man@vger.kernel.org>; Sat, 03 Aug 2019 05:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cEIrczSius0GJonSwnudp7oO2YCD8tJdHDX8JUWaLKk=;
        b=qIlTzypuYyVRQThdG6jQlLoOwYVEmYS3z1dMvb2dMD0M/iXpsilE8OlpxeWfm6SwTT
         n5LMcGFRwptaUdQlBpXdlwq5rP1i5klA3kyrwZc9r1tQLjJpDA366R6tKNWzxk0WrApQ
         TN1A/n+7AHk3DV/tuQcDvGcAKOhUgLV7m1yofY3sKbCgwd3bqTG+UHuxua2ZY+/cwzU7
         buPBAYAwVFPRq+2N7BTj8BFLvBtRC25t5+kWz/rf/gGNqfWBx0u9hHfLG8S77yyDDkxn
         skWFksbVQiJVNFV057dEsUTZAOU8WVueAf0W2OTWrGFIWnGNp+JV1dSX0r2l0YZc6k/q
         +bFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cEIrczSius0GJonSwnudp7oO2YCD8tJdHDX8JUWaLKk=;
        b=IMbEiJ74yIoFQhDHFbQpt1XLAvkTk0E/9ftyaL9weOnOUGIGh5T0dtWTb5XLmukeBX
         QrZSMhJQaYBG+W5xdXwcdnT5henBkXtYtCocDmwsaP6Umj5mhxBPSGALJdwk4LDXqc+D
         OAtHQHnU3nit9qugUmovmIS/GB+rfuOWqXg40iyBHkBSMxcXiY3nmfLqqim6MenJaaNc
         6kIYjKDlYbicPY1g0AiJVs3jIwQ0quargWoLoR6qBo/TilXwy77hqemzwKwWFwCdSMVv
         2Jr7vFX705mdstSL/mqxEL9Vf0rqN880ICjcYWcJjdi/yXz28Pwu/CKA69cxawfOSxSZ
         /Buw==
X-Gm-Message-State: APjAAAXqkQPh3RMKuFRtbcDH+NJPS+68jNjz9KxmPYsdycmkZhOus5EX
        5j1riGu1mf31xMK15tmcPwLzKEkN
X-Google-Smtp-Source: APXvYqw9ggdJ5sizyfHC8N42ukFtWx2xfhixkCn8fYLEUx9e8UNQ9i6YmuxNlzdwZmrJeLIN6eY59Q==
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr122681429wrv.39.1564833600074;
        Sat, 03 Aug 2019 05:00:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:3aff:2d01:3e8:cefd:7d80:b611? ([2001:a61:3aff:2d01:3e8:cefd:7d80:b611])
        by smtp.gmail.com with ESMTPSA id m7sm65589174wrx.65.2019.08.03.04.59.58
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Aug 2019 04:59:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190802214656.5468-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ecce1fdf-84a0-4edb-6aa7-608f7495d362@gmail.com>
Date:   Sat, 3 Aug 2019 13:59:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190802214656.5468-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/2/19 11:46 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 5461eb285..dd05db6c6 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2648,12 +2648,12 @@ and
>  .BR signal (7)).
>  .IP *
>  .IR SigBlk ", " SigIgn ", " SigCgt :
> -Masks (expressed in hexadeximal)
> +Masks (expressed in hexadecimal)
>  indicating signals being blocked, ignored, and caught (see
>  .BR signal (7)).
>  .IP *
>  .IR CapInh ", " CapPrm ", " CapEff :
> -Masks (expressed in hexadeximal)
> +Masks (expressed in hexadecimal)
>  of capabilities enabled in inheritable, permitted, and effective sets
>  (see
>  .BR capabilities (7)).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
