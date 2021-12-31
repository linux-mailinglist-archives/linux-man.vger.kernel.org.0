Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7F0F4823CA
	for <lists+linux-man@lfdr.de>; Fri, 31 Dec 2021 12:41:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhLaLle (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Dec 2021 06:41:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbhLaLle (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Dec 2021 06:41:34 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A1E9C061574
        for <linux-man@vger.kernel.org>; Fri, 31 Dec 2021 03:41:34 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id j18so55590784wrd.2
        for <linux-man@vger.kernel.org>; Fri, 31 Dec 2021 03:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AEhTQxlOUkozDY07KYZVftke3gdulsdCh98+rkgxtpY=;
        b=pi8liA1EIn/aBokjwUegM/pS+lTAjceIPnSK3/7pclByU9gtFL7CceCkfywDPyA/rE
         5vQZtH6wxkppClWjZZg1saquvhLBaYtCv4Pwv1D78ySb+jGpxNBEWdIGZdl/0s2MhDct
         tWZhwhXpBc6fKgDHfUBBib3ODgxpLyar4wjJIxK3UGAhYLq7b1bacHy1mC3rfLedbynY
         kEc0eRv7jRPaiiCR5Xm2zjXpB0ZiAyTjndLxjpMrgtHLdnCAugjhzO5mqttMIqn4gbSP
         WRRD+TfFzOaha6hvZiWovmh84qOIxFqVEo5+OpPk+EtgboZ5irtu3E/11k6q7jUjFn/P
         MMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AEhTQxlOUkozDY07KYZVftke3gdulsdCh98+rkgxtpY=;
        b=sJyemxmfya2WpGDug9QnTgBJ+YR3PnafcLrjO9eIBb5V+DxzuI9xns1BTyXbpr1UY3
         d4Bd1cDPk+oaVWgb+BU3RRwHTRIvKlFN+f74yF2TpqeTWlQpdyWZEFFt+IBxtrGxFqro
         S5CKCueEjPhHRdrxZtmEgImCvF7OGC5zr47RttLojsa9rKdyhF2OuaVkdH1mWf/YCFHM
         dMgqAYgoO0D0o8xm0gKKu71+j285fZwBhNJUjzyZs/HErKfCCyljbiVLFlN5b8Y/iK0u
         vy/68bRoKN+USM1wZVzYXplbKC1iwOtMpA0BNIbQJsdEXdZAfmTtivKOax4kCTUkSRA3
         FlzQ==
X-Gm-Message-State: AOAM531t/oET8bTYJ/eHHGWR5jynxxhuUgn7u1hae8JTHVRfjHsswH7x
        Syp6j/zpBLGX+Batpft0org=
X-Google-Smtp-Source: ABdhPJyIydtANkMNq4l0QY20bzZ6sP0C6CoCy+kW9VOhq6JEofaIXZPGGE17waESDSVt1eVthVzWnw==
X-Received: by 2002:a5d:4810:: with SMTP id l16mr28727577wrq.672.1640950892132;
        Fri, 31 Dec 2021 03:41:32 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t12sm30423382wrs.72.2021.12.31.03.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Dec 2021 03:41:31 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <df4308b3-2971-3694-c1d3-9393e4c91105@gmail.com>
Date:   Fri, 31 Dec 2021 12:41:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] ioctl_tty.2: Update the section number of ldattach
Content-Language: en-US
To:     Masatake YAMATO <yamato@redhat.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20211231083607.2491246-1-yamato@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211231083607.2491246-1-yamato@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Masatake,

On 12/31/21 09:36, Masatake YAMATO wrote:
> The man page for ldattach was added to util-linux(-ng?)
> as a part of the section 8, not the section 1.
> 
>      commit 1e8d11c459ae93a4d8d7976a8530ae5198206a26
>      Author: Tilman Schmidt <tilman@imap.cc>
>      Date:   Mon Mar 10 14:20:26 2008 +0100
> 
> 	ldattach: new command
> 
> 	Add an ldattach(8) utility program similar to the one in OpenBSD.
> 
> 	Signed-off-by: Tilman Schmidt <tilman@imap.cc>
> 
> Signed-off-by: Masatake YAMATO <yamato@redhat.com>

I applied the patch to my tree.

Thanks,

Alex

> ---
>   man2/ioctl_tty.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 186011ee7..c54eb1a19 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -756,7 +756,7 @@ main(void)
>   }
>   .EE
>   .SH SEE ALSO
> -.BR ldattach (1),
> +.BR ldattach (8),
>   .BR ioctl (2),
>   .BR ioctl_console (2),
>   .BR termios (3),

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
