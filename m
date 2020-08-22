Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86F4424E666
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 10:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725924AbgHVI0X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 04:26:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725877AbgHVI0X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 04:26:23 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C982FC061573
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 01:26:22 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z18so3916921wrm.12
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 01:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S47yWNKNc+a60Igq2B0IIyjojEezpZQJXEBlgzWe/bM=;
        b=qBcSt/qq6Lz9nTAkMN9wfZ/UMIXVxyHx6Cse8K3dZTnBDXGYqLbNEQA1wuTmdZ9xbn
         o3oPYIQLipRYO0+w/NKAIUun/oTmbIDe8yXBXwFdAuMp7agS1jROAq/XIspJaZpFEIxl
         /HxISqf9lvYuaY1DmaQqoGnzE8fjAux8UkU/A3n7WCUm/4xsNihTzLjT2y7qNBJJNL+n
         wbCgx5s6Hdwnk3FbfXUl5NumxnisW6eVIXVMuCpyVH2nT0nq588cioDv3IBeO1pBjS0G
         GXOIw0MuS+qKfLGZcgLhiNP1SqPFb3E4U3TtTsgt5kx12OxW5hjCQdxVL1ttqMIJ175L
         0aYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S47yWNKNc+a60Igq2B0IIyjojEezpZQJXEBlgzWe/bM=;
        b=BuCAXUhvSkGpCE5ClZtTBzNhYBlOxo4nkBvAEYIuyd+2r3O6Q/Ix2Dp4ByVNaNPHjP
         OEpOTjupdSPInGumF2ucfF5plRK30rGiwKhMdtbpLxlCcPujgCe5h2jvXuSGEijevsiR
         yLp776hxSGsS7xcq0uW420e+m+oHwI2IBkGQE7w+QISwGI2LD83dj5GWF1wBFSgXBmKm
         kGKpgsWhIerU8fJPBg3/P9B1lxYEtokrQjady2Wl4vHuMo5B74qM05P+Dc3XAWgCn/2/
         hwzC+TN0xZyK12WfQbUOECthVusjshkmB8b84WHTaNzhyCOGNVX+DYGQfFQguD6Q+4P8
         WHtA==
X-Gm-Message-State: AOAM532MPyGGHTNICwKDy4bfiusOXM+m0XaSG4stoYAOqF8XKLIoc3OG
        i9TZScUjAukxxp4gFmQDVf8o3bIpCWA7sQ==
X-Google-Smtp-Source: ABdhPJxEP5g7xAjfqMtHo2aAnFFGoflHrGBXAb3QFSLz3Txv1RH/tGF1UB/jJiN2azAaOegjqmi4og==
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr6569757wrv.39.1598084780979;
        Sat, 22 Aug 2020 01:26:20 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id r11sm9478028wrw.78.2020.08.22.01.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 01:26:20 -0700 (PDT)
Subject: Re: [PATCH] bpf-helpers.7: wfix
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com>
Date:   Sat, 22 Aug 2020 10:26:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/19/20 5:18 PM, Thomas Piekarski wrote:
> Removing repeated word "will"
> 
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

Hi Thomas,


This one is a little difficult, because the page is generated
from scripts. (It is pretty much unique in this respect in the
man-pages set.)

Looks like a patch is needed against the kernel source file
include/uapi/linux/bpf.h. Do you want to send a patch for that?[1]

Cheers,

Michael

[1] If yes, CC the people in commit f71c6143c2038df1cb43a4b9c90740d14f77467c
plus lkml I guess.


> ---
>   man7/bpf-helpers.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> index c8b3c7710..10ee24e5d 100644
> --- a/man7/bpf-helpers.7
> +++ b/man7/bpf-helpers.7
> @@ -2338,7 +2338,7 @@ Look for an IPv6 socket.
>   .UNINDENT
>   .sp
>   If the \fInetns\fP is a negative signed 32\-bit integer, then the
> -socket lookup table in the netns associated with the \fIctx\fP will
> +socket lookup table in the netns associated with the \fIctx\fP
>   will be used. For the TC hooks, this is the netns of the device
>   in the skb. For socket hooks, this is the netns of the socket.
>   If \fInetns\fP is any other signed 32\-bit value greater than or
