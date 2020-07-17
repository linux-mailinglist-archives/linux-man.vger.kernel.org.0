Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA95E22365F
	for <lists+linux-man@lfdr.de>; Fri, 17 Jul 2020 09:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726930AbgGQH7t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jul 2020 03:59:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726105AbgGQH7s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jul 2020 03:59:48 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F0DAC061755
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 00:59:48 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id by13so6952014edb.11
        for <linux-man@vger.kernel.org>; Fri, 17 Jul 2020 00:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QfjDOqFvw/zKKy6d/P8jQC7N5sTq4gon7Qtip5uwV9w=;
        b=dl4loOnMPGPgR9318vhNHSH7KWqzRWIHB1ftSmhYPZHHcUsJ6/cskQZtikZ0On8nD6
         KXfaJi5JaLriCAvp4DvhgNj1+zZ7ErwpKfMsZPBdg3/8v/iU7XM+m2kjp9m3q4wpNNFl
         U05ezmfHpKAWigEEH6koE2ZKHfIKfJc6w2DZ4cDvrFB2OOKjBmjpaPvSOZH8XoTYeVDQ
         vve1LCEllN66bhe2D0mU5y1oei4UAnO76j2ErybPoO7cxnGCK7ArCQ97ioftbLf/t2ay
         0Il3uYccjgYxY0SQ39qnXfGxTnypm+tIdhVJsfhLcrfiEhS905/Px0143h9TMHe1zmNg
         xhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QfjDOqFvw/zKKy6d/P8jQC7N5sTq4gon7Qtip5uwV9w=;
        b=fFvgLYa1pMx5hlLRKydkDJkSN+/FAXNSZXlnCLnt8HNHTpOsUx03LYTv16lbPsxuZE
         DH6zWHTKg0r20m/TSFiAGm+LN57Ko6xWX5X4cTSjhqS86ld9HXtosMJX4VPnLjg6zlHq
         ATx5SmxzXVBRhfpVD6JbL3uykG/r/IhoTidSc2FGFadngVd9AlchlMG+ANktb5pPYjfC
         9n6P1v3bGoQMRBFORNMS7xh0pASSycM0Vdv1rLc+4VG1Q5tWKiG5jk3pYEYR4gruNrb1
         DUeHnBevELb7H8B5tlBlW0x4I7jaDdc1vKNofEFGzbYqto0VMyHdVF9uJZ1214tEMfs0
         Hyzg==
X-Gm-Message-State: AOAM533UyvFYCboRadVU0LdQIoCC7XK7RLWL6NSnbf1VfOYl7HoljpQe
        9DhVHAmeKBIQ1q+tCONgzGiT9LhY
X-Google-Smtp-Source: ABdhPJy0fylcg/7at/ysU1vk23sTxYucx06ORwjFSkdFxfPFn1XIR+PToS0+7Ps5t+edDMJKP0VZHA==
X-Received: by 2002:aa7:d341:: with SMTP id m1mr7850122edr.50.1594972786718;
        Fri, 17 Jul 2020 00:59:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id b4sm7482573edx.96.2020.07.17.00.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 00:59:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] cgroup_namespaces.7: wfix
To:     Benjamin Peterson <benjamin@python.org>
References: <20200717042643.1013586-1-benjamin@python.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b3d9ded4-6396-6153-ec64-6263914bdad8@gmail.com>
Date:   Fri, 17 Jul 2020 09:59:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200717042643.1013586-1-benjamin@python.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/17/20 6:26 AM, Benjamin Peterson wrote:
> Signed-off-by: Benjamin Peterson <benjamin@python.org>

Thanks, Benjamin. Patch applied.

Cheers,

Michael

> ---
>  man7/cgroup_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/cgroup_namespaces.7 b/man7/cgroup_namespaces.7
> index 773379aeb..1acb82feb 100644
> --- a/man7/cgroup_namespaces.7
> +++ b/man7/cgroup_namespaces.7
> @@ -235,7 +235,7 @@ In the absence of cgroup namespacing, because the cgroup directory
>  .IR /cg/1
>  is owned (and writable) by UID 9000 and process
>  .I X
> -is also owned by user ID 9000, then process
> +is also owned by user ID 9000, process
>  .I X
>  would be able to modify the contents of cgroups files
>  (i.e., change cgroup settings) not only in
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
