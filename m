Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E306193B4E
	for <lists+linux-man@lfdr.de>; Thu, 26 Mar 2020 09:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbgCZIue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Mar 2020 04:50:34 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37043 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgCZIue (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Mar 2020 04:50:34 -0400
Received: by mail-wr1-f65.google.com with SMTP id w10so6703149wrm.4
        for <linux-man@vger.kernel.org>; Thu, 26 Mar 2020 01:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hNFJPEecOyxADQe2ZUu6A+QrQ0DDqoDHNoX2eZTHc3M=;
        b=B5azZA+MxL0xfo5lxtJ58SRYiy5ARGEA7ZweHL2MGBSpUzhGGUEMWtDJ/g68m8Mm3e
         vFLcwpWSuDTCWhBRuIuI5vj2FA11kM7lnRvU3Ir9M8NakjMzYVMJJDSHRiQuyzKrlRZD
         LemgfjnL7gk79CDBN2KWY6hUne9Zi9s7/itgZbpdZF6aNBda1mKADead9BpA4Jn3WGyZ
         0tQpOadKr07sr9mGbisBO6x7y3sgmoTZz6qZJUwjFwqR2p1HMk67W4GPgkA5wUxG5erc
         42ECsDmQCC1wuekP/yA7RJFS0msGe7oNbmHHauxbdQ/KKfTj7MMYUxnuZISTiCFfIVxs
         RbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hNFJPEecOyxADQe2ZUu6A+QrQ0DDqoDHNoX2eZTHc3M=;
        b=ttipQEn5UwLfKdn7ifwBrsI3YXbyiKLC7qOm/qHtFsNGHp6DWjgZ354gnABqg4Fk9i
         UDAEq73VVDRtjSicX0mwWrX/26WJK1QwnUmiadYhAedW6gEbSD2lAkdUqWgbvbM8Kh8v
         ipATASzNcSSDdwTsW87caoWN/T5DM55NdQFIg/G3Ip2NyJzkNXz4GaycBeochnM4ELYy
         RQZngOgwRhWkGiio3hgpT2GXK4usaz3e/+eefe/sjy2d1qKZV2SgAJbYCcNyZeFz1wet
         Twy+nh+4HKvSZFsQkGHoQYVyfm1kxqVzIX1lDz+3kw7FHwUOzlA3ZfXHy4M5U5lv4QQT
         wQ3Q==
X-Gm-Message-State: ANhLgQ2voT3iNMYePk2s5kVe7EPyTmjLsPjPz5FP+CLjgVK8ucMGczhe
        ol48Y4uc+NCDhsdfD+j3EY0=
X-Google-Smtp-Source: ADFU+vvrBm5q+9gfRb1zXm1l3z1gksYIMblY4ERtlj8IjNJecCMioJgVzgBcf32H9LHEOzBHViGEbg==
X-Received: by 2002:a5d:51cf:: with SMTP id n15mr7581380wrv.195.1585212631573;
        Thu, 26 Mar 2020 01:50:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id w3sm2584821wrn.31.2020.03.26.01.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:50:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH] futex.2: wfix
To:     =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@collabora.com>
References: <20200316204757.19543-1-andrealmeid@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <90236f09-c328-cb90-00c8-b5cb19cb633a@gmail.com>
Date:   Thu, 26 Mar 2020 09:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200316204757.19543-1-andrealmeid@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/16/20 9:47 PM, André Almeida wrote:
> The sixth argument of futex is uaddr2, instead of uaddr.

Thanks, André. Patch applied.

Cheers,

Michael

> Signed-off-by: André Almeida <andrealmeid@collabora.com>
> ---
>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 54dc8e590..141ebaa45 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1775,7 +1775,7 @@ futex(int *uaddr, int futex_op, int val,
>        const struct timespec *timeout, int *uaddr2, int val3)
>  {
>      return syscall(SYS_futex, uaddr, futex_op, val,
> -                   timeout, uaddr, val3);
> +                   timeout, uaddr2, val3);
>  }
>  
>  /* Acquire the futex pointed to by \(aqfutexp\(aq: wait for its value to
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
