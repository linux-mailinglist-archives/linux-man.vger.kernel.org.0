Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC11B377794
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 18:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbhEIQ3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 12:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbhEIQ3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 12:29:49 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD3EBC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 09:28:44 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id q2so11906563pfh.13
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 09:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PEI8Pf46zejht9lD87H5WDVYiU5XN3USqmEnJ0jgsKQ=;
        b=G6iO1geXIjOCeTWbjrb/2rRNs5sFVnth/iaMQlkMipf4hb/m6BloY3LAi7flsz/q6I
         segdXV5G8AjfbYQhiht163j2fEYtTJjbjZG/iuxhC+MYsvUGrHMaKmIouOdcf1tAsfQD
         YAc4rpzolAsgv+nkBPp43HDichUiGyjr7FGGBqgMVyxMkniJOhPmidPngDQQ2U3G3AXk
         q5u/t8odlLp896uzKm1KdxTPavPW2Y8rbXDNE0Gugze7BwNP76As3SXEFMYPb+ZGYSpB
         IV+CaXLnFEDhVuHqvNLGV6AQOW9XDoKYNSoXTshYiIfHob2ElTQslZEmwFJWHKuBzxEY
         uOUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PEI8Pf46zejht9lD87H5WDVYiU5XN3USqmEnJ0jgsKQ=;
        b=qjh3YLTShxy8LrQ9atTdEveUyAyEEkWtEHSwUCL/zZoZamv/xHxtHRm3WbQuZxuCEX
         Hwgg6SDmTd6oiQBgPu6hDFN3lNT/cDB1rw+R47FVFv1T9UEwLSVnkapkGvtr2SD4FdiD
         BxzQ2Dz/Ep5KlAGUZqqmuqSbxy235eSWbqa/ozveyoox7emSjb+D2YVwcA8wgBUgqAKy
         GDHMihsVeLjXsrI/3I317hv7jwBaiGWEKR43Z+tr4Yuee12LiWgnNorRFUN626RKGLyt
         g+uayIXWaGQe9jHnO4YUL1X46deUpWGdSIUJ2Q0zq0B7OIt9fvdTgWLU3yYgQYj40GIg
         QkTg==
X-Gm-Message-State: AOAM530vf1b5aFaKUK6yLzerYrOJXHVNYedwOjmmteDnrgrMxmzzeBzY
        k50yWMCoCq+IK/OKU+HEbxz64uNwMYM=
X-Google-Smtp-Source: ABdhPJwaunQhIvtfZQMl3bRCao9L8w5U2b25TZCM8q1ZYIpoijBh+jns0ybMypN4QRMa+5o6kIbXDA==
X-Received: by 2002:a63:9d4e:: with SMTP id i75mr20459441pgd.443.1620577724119;
        Sun, 09 May 2021 09:28:44 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id h1sm8952815pfo.200.2021.05.09.09.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 09:28:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [patch] shm_overview.7: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
References: <CALhU9tnH9QU-3oU3rhiPnH4TrEMOpQrLbbc-V6kzhdEuXw0Djw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3f6f4fe9-76f6-0ea5-d627-93f8f5df5d10@gmail.com>
Date:   Mon, 10 May 2021 04:28:39 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CALhU9tnH9QU-3oU3rhiPnH4TrEMOpQrLbbc-V6kzhdEuXw0Djw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Akihiro,

On 5/6/21 11:49 PM, Akihiro Motoki wrote:
> diff --git a/man7/shm_overview.7 b/man7/shm_overview.7
> index 9c6ac7923..60e7b71d3 100644
> --- a/man7/shm_overview.7
> +++ b/man7/shm_overview.7
> @@ -92,7 +92,7 @@ to link against the real-time library,
>  .IR librt .
>  .SS Accessing shared memory objects via the filesystem
>  On Linux, shared memory objects are created in a
> -.RI ( tmpfs (5))
> +.RB ( tmpfs (5))
>  virtual filesystem, normally mounted under
>  .IR /dev/shm .
>  Since kernel 2.6.19, Linux supports the use of access control lists (ACLs)

Thank you. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
