Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7506F155A7B
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbgBGPRG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:17:06 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:39457 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726674AbgBGPRG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:17:06 -0500
Received: by mail-wr1-f67.google.com with SMTP id y11so3126418wrt.6
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0Nm2Ek8EP9l4ebHwVLMqbzpjns9AqaVVOra67LDgFO8=;
        b=o7beTzjhHP1jP17oAfJtvaLD7iuK2vZC90DK7dOkPEB8KQ75kPNU5iMwK+DxBdyKQq
         o7kzh0gEyMFGnknACJt0BpcjqVuW6VKBNPrv1ewz6X1E12p6KkKZG2urhrryUTPAKk/F
         pG4ll5tV0RAO+8fmbdNsVFAwajYt0leEEw4rkxRdNhFL8Kv46fCEm4547Z3oX0n7TnGs
         dyQ/SCyH7C9mxa8kAgi75/J1Qk9FCd1xrstmTbOFIbZvwOsaAF1iyQ3dpuyGnZD3kUs9
         E/9yoh3hipeJ8orKuv0kVtmvKpJHzyKpkrlY6SG5Sdnx3Paw9nhM9g+dFyZEgcU46bwo
         Vl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0Nm2Ek8EP9l4ebHwVLMqbzpjns9AqaVVOra67LDgFO8=;
        b=Ei8K5YUGexL9lAlWW76EsDhIAgDD/MEiBeLbQgdTMJ+ig/sZaoxQo1KWvuXNfFiVJt
         xDTErvFpRb4BGITe0lBZBgvPs1Aih0prCSYs4kJqYKOxbm8WJwCcIOlqXmlEkmszK4EM
         gmDvNAk6QZDHFzPJyyFRCTIP1Rpx+lASHBoNLjq7ECH7W8yb0n+e38FriaPPYmOhX6m0
         dSzk4NCgY1Yy/bYWNyXq10R1oGMxhUMU3w5WJPtHlgciWwbL8rTGdDsDpFam9sB97vy0
         sBRDWMq+f1ZpEWDdFRYqcDXXX2IpmRAHaBmAWznsKUVy6YwuMmWwcMJ3NUOHk5ZrC7IK
         nMEg==
X-Gm-Message-State: APjAAAXFX/vhZqIlDJlDKPZ0CthS/50puQYV4THiRU5vBTabCPRbKk3n
        NNAE92gGwTAt9Cukn8BU/lAElJkXHYI=
X-Google-Smtp-Source: APXvYqwYzIj0AY+9G+7jWblXy249onB9orz6hO7agLbqjv4teXTV/NdE2QbAVpnw9RMETCT0spvmLQ==
X-Received: by 2002:a05:6000:1251:: with SMTP id j17mr5524979wrx.210.1581088624681;
        Fri, 07 Feb 2020 07:17:04 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id q124sm17825409wme.2.2020.02.07.07.17.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 07:17:04 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] cmsg.3: ffix
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20191217143609.GA23014@brightrain.aerifal.cx>
 <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
 <20191217204751.GI1666@brightrain.aerifal.cx>
 <CAKgNAkhJ3j=v255UPJBeYs4erDOWpinxo0T1dqx_Fdh1MC=7-A@mail.gmail.com>
 <20200205080830.GA3117@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aa82532c-932d-8030-c7aa-d1b35987b931@gmail.com>
Date:   Fri, 7 Feb 2020 16:17:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200205080830.GA3117@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello  Dmitry,

On 2/5/20 9:08 AM, Dmitry V. Levin wrote:
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
> ---
>  man3/cmsg.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/cmsg.3 b/man3/cmsg.3
> index 9dd4c9c10..4ff4691ae 100644
> --- a/man3/cmsg.3
> +++ b/man3/cmsg.3
> @@ -192,7 +192,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
>          cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
>      if (cmsg\->cmsg_level == IPPROTO_IP
>              && cmsg\->cmsg_type == IP_TTL) {
> -	memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
> +        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
>          break;
>      }
>  }

Thanks. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
