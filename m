Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D374F2986B6
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 07:05:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1770230AbgJZGFo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 02:05:44 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:38548 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390433AbgJZGFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 02:05:43 -0400
Received: by mail-wm1-f65.google.com with SMTP id l15so11245381wmi.3
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 23:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EAjr/TdrqLCoCDQI1Ny9/xpaO5boLEucQG+ALjmtqDo=;
        b=kUA/NsGYHzH+mJQDOeRZHTsD5YPZPzLWT9JIO4IhCVuZB0Ss+NSWOeZ2UkxiBQOkaZ
         2e+vapJiSUmeXNQ2AdFEAmvb/YsMktBKIHWVfqT7+GpaYP1aTxTKS3zLJfaM0LaDwzrM
         dJ7uvPhVa0zIfjDdpBU1duHCc/P3qDHejZyIFruHfUbOO70tdawHxykddoJG3VgUt2pK
         fbrpnbVGIz2MPtPkwRbw28R0XTd0GGzO3mfHekaaz9uQ2QX2Q2EjixVpf6R7bNkdEHgY
         Gy+kI3+38EhENdfxBNy1/87mm5WFoABLt264oEz9yh4iCOTs0XIe21wCn23oRb6cSM2O
         /rPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EAjr/TdrqLCoCDQI1Ny9/xpaO5boLEucQG+ALjmtqDo=;
        b=hg41ZbpszX65oSdk93MN+cq3b7NrIZKGe7vyZsXI9UkZvcevcfEWn4ABEKMeuyHspG
         Y/wNPMGm5DCz3XfB4vtTpVC0xmkY5hvSH29Vu6g9nx2D9asykvRUJ6r0VpQ07uNWRWhj
         gN7LrDnrgCAPoTDobXnevSjUsh/Tn8WOf694KZBBz1N6NmJsdtKNnm5D8h3404fT2pzB
         PKZ56urAIcowAbTjZhq8MHWNzP/cdXeI7F4XXvFd4mBmj3PzfBQXvMBGlAWZCX+xEOho
         YCvVRgiXKMDAhKtYufH6ezdO02oqZ6Kql9WfwvJ/GdupDRfK0QQmWq7Kcgozia5ofM/X
         dDYg==
X-Gm-Message-State: AOAM533YPdlU1Ba56l0wozka1q06R1F44MNrFwvlLkS4hrThfqgDX0WU
        tK6JeF3XdNyj/+vUyeNoP/aYoxuKkLY=
X-Google-Smtp-Source: ABdhPJwBKwqO3YJn9OS8GD+zMleSP+Doo1GezEe2rjQ02mOJI+mA+rRchYq+khoTispNPONiDinKug==
X-Received: by 2002:a1c:7d54:: with SMTP id y81mr13734217wmc.114.1603692342003;
        Sun, 25 Oct 2020 23:05:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id x81sm19702331wmb.11.2020.10.25.23.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 23:05:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] stailq.3: SEE ALSO: Add insque(3), queue(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201025220825.10124-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <118ff091-4804-9c6e-08cc-8f62c20c53a6@gmail.com>
Date:   Mon, 26 Oct 2020 07:05:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025220825.10124-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 11:08 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/stailq.3 | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/man3/stailq.3 b/man3/stailq.3
> index b937e0958..7686048c2 100644
> --- a/man3/stailq.3
> +++ b/man3/stailq.3
> @@ -391,3 +391,5 @@ main(void)
>  }
>  .EE
>  .SH SEE ALSO
> +.BR insque (3),
> +.BR queue (7)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
