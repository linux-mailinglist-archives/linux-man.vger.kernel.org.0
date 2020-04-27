Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D10701BADE7
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2020 21:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726371AbgD0TaL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Apr 2020 15:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbgD0TaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Apr 2020 15:30:11 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E21D6C0610D5
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 12:30:10 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id h4so166886wmb.4
        for <linux-man@vger.kernel.org>; Mon, 27 Apr 2020 12:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XSwdYEK6ZZle7PRobBcWh+/fj5cOkCXDyyarOYNRdPo=;
        b=H8SKUwAAZEz0chmvmyA3i3tAXW1vLT/Ti1isnr04uhsCE+vu/91/4YGnblRWDgmjuy
         FXHkepwD/dcnv1eYKcjSxFBJUM6I4/NrR0x4A71IH7JoTn25T1pzg1lwkhml5hJ0++gm
         DwROSxAufFMY9t8NypT3aZZU7PVvm9rvnAsPowCg5QTeW1aO9p0lIC4AacmHDImdsnOP
         iuEaBYkmA2KaHPycxV+/my4mmmLdfJk/6akaGaZ1gQlZb6Gb+0lK0FsAa5uZlN39d0YE
         RCizEWA0KyR01kACnqZ0rJbVb12ypTzyiejB1zZ+NPhZY/VnBlmmJa1YePIPrIyrsvhU
         /b9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XSwdYEK6ZZle7PRobBcWh+/fj5cOkCXDyyarOYNRdPo=;
        b=KxSsDvLCAkKW6NnZ0nuAaEDljFyfT4m/fx6g8bZpVj3EhjN/D6Y0So8k46r2viCXs5
         NtgVRWRNGOWB/rR3VJCKpQuSv5hreX+2fi2j07XENeyqkr4+643iSW49HU6MeBseVWCW
         QdBpCz26jh75ETC32zgOmLtjTFslfNjUckLUUTGIkYBAEjSZ/8/AK8ONBTSdczOtFYR6
         CwVjzRW2eCg/+MUILWG7DxhSPkzaNwz7gLGmlTEHhMND4toF1jUYgaFVpe2Htp9JSwiS
         5ZVwOAi2LkF4Hq//orsSzK3ljn1bKXoG5Yd5CBHunAxUgRfusUmc4WggaM0u+Be/tMOu
         dWYA==
X-Gm-Message-State: AGi0PuZnTfT3Gt+UYuodJCDyiqpLlm3oaLsR0PA2XIMIK8COn9QgP2j5
        fG9oDjPSsTNxaP981U0gDN0hpkd7
X-Google-Smtp-Source: APiQypLBo48pUJpx6d3sgdiVoNTLR82k3SkYYbNNYbX6zxdQC191CBfJ34XXrzoHgKkc6AmDmW61iQ==
X-Received: by 2002:a1c:e408:: with SMTP id b8mr279979wmh.68.1588015809512;
        Mon, 27 Apr 2020 12:30:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s14sm185822wmh.18.2020.04.27.12.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 12:30:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] user_namespaces.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200427133856.4276-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c04ec35b-a334-fa9a-e8ca-69c20dfa71e0@gmail.com>
Date:   Mon, 27 Apr 2020 21:30:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427133856.4276-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/27/20 3:38 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man7/user_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index 98adb078d..0f2c89184 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -156,7 +156,7 @@ using the
>  flag
>  or a call to
>  .BR setns (2)
> -that moves the caller into a another user namespace
> +that moves the caller into another user namespace
>  sets the "securebits" flags
>  (see
>  .BR capabilities (7))

Thanks, Jakub. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
