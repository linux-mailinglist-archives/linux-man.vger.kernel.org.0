Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61E38462FC
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2019 17:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726319AbfFNPgC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jun 2019 11:36:02 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35241 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbfFNPgB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Jun 2019 11:36:01 -0400
Received: by mail-wr1-f67.google.com with SMTP id m3so3025784wrv.2
        for <linux-man@vger.kernel.org>; Fri, 14 Jun 2019 08:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k/fbgsfncR29wNRvNjKp9aqkT6/E6DzuVuL2rWRJm94=;
        b=WX5wiIUZQ3u1fLr9xPjfUmO3shRC4Q3ZdjNlADiAWVbbDB12SB2qOcuEHUTpby/49N
         IKSoDgHYNWDVKWq4RtOmbOY4radcyu/B52FseHpN/gX2SvqlL9d7B8tqK6sn5YCnry7E
         Ef9bwnXVtCZAlwejONBKFmh70SZrBDJcIVmrg/6QN7GBil62gQCYZ6uwzoxfzj8P1SLK
         /pIIH+b6/d0T2+wfRDvI1DwnpoNHwjuGLGVrwHuOJNT4dnsZvXjhYi/CS7rd7kqn+jns
         oStTCvTofjX1ydgpI9BKB6Lsp8L+Squ5EJ/MFljGPBcS/epEiIst9nOARhsuZdNvlxN0
         bzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k/fbgsfncR29wNRvNjKp9aqkT6/E6DzuVuL2rWRJm94=;
        b=G5dVLgNuDdMH6xXoSsaf1ZfApQi7TaxxelMsd+4NttRUFxWNKLuQjmYzLgL3fzHk/l
         bpetisdFJ6j/sucmYTMbRZJGsXC50P4BDGR3G/7953jreOMuNAtS2yJUZ4DKTYOaNYWT
         nuIL/U8k7CY9MLv1cKtSCQfsWXbWkyt4ctYnYz8gAJAs/fIVO0YvrazIzKEitihLJDbR
         PY8ypei6XDxSsQM0UY7Uy+ClApcCCM/Z8lNYjZv7tjbWQf2yNer8PyLJ/J2j08kiHMZy
         yGsnaOorCKdc1O5zS1fw57GYyna+e1239F2kj3r5ck6jAcHGLcVk/kVXtJSS+6O0EwV6
         kStA==
X-Gm-Message-State: APjAAAVwzWu2HRvDN4Dx6glS4dOnkqKl2RYd2rFfBQjXHB8aUSCzFLBp
        si80t6GJ+L6zq4rAgyTOFYxkk1q3CdA=
X-Google-Smtp-Source: APXvYqxtEArYqpb4UPhvkNtsdAwCChXh4z9K2SrjHdzUm5USPMf9a0YfK1wvkkb7Y/sOx0KwFkFuYw==
X-Received: by 2002:adf:ef48:: with SMTP id c8mr43692969wrp.352.1560526559574;
        Fri, 14 Jun 2019 08:35:59 -0700 (PDT)
Received: from [192.168.43.179] (x527179a7.dyn.telefonica.de. [82.113.121.167])
        by smtp.gmail.com with ESMTPSA id l17sm5492473wrq.37.2019.06.14.08.35.58
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 08:35:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mprotect.2: pkey_mprotect acts like mprotect if pkey is
 set to -1, not 0.
To:     Mark Wielaard <mark@klomp.org>
References: <1559171319-13742-1-git-send-email-mark@klomp.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e0aa33c6-813a-86a1-bdfd-405ff018b970@gmail.com>
Date:   Fri, 14 Jun 2019 17:35:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559171319-13742-1-git-send-email-mark@klomp.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mark,

On 5/30/19 1:08 AM, Mark Wielaard wrote:
> The mprotect.2 NOTES say:
> 
>    On systems that do not support protection keys in hardware,
>    pkey_mprotect() may still be used, but pkey must be set to 0.  When
>    called this way, the operation of pkey_mprotect() is equivalent to
>    mprotect().
> 
> But this is not what the glibc manual says:
> 
>    It is also possible to call pkey_mprotect with a key value of -1,
>    in which case it will behave in the same way as mprotect.
> 
> Which is correct. Both the glibc implementation and the kernel check
> whether pkey is -1. 0 is not a valid pkey when memory protection keys
> are not supported in hardware.
> 
> Signed-off-by: Mark Wielaard <mark@klomp.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>   man2/mprotect.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mprotect.2 b/man2/mprotect.2
> index 4d29f66..866ac77 100644
> --- a/man2/mprotect.2
> +++ b/man2/mprotect.2
> @@ -278,7 +278,7 @@ On systems that do not support protection keys in hardware,
>   .BR pkey_mprotect ()
>   may still be used, but
>   .IR pkey
> -must be set to 0.
> +must be set to -1.
>   When called this way, the operation of
>   .BR pkey_mprotect ()
>   is equivalent to
> 
