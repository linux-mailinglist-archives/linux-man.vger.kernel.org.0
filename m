Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05BAA26597B
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 08:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725747AbgIKGmu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 02:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgIKGmo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 02:42:44 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 840AEC061756;
        Thu, 10 Sep 2020 23:42:43 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a9so3683489wmm.2;
        Thu, 10 Sep 2020 23:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8Xyc04Vgj/hv3AHWBVH4uLhZj6jcJwnOq6HymrZh4tc=;
        b=Oe/1HoVVIyGw2g3WsSDmu2cduKacP6dKV+Zuu5WSwiakySHm5mgDY55Pm6vpbhzgPq
         OqV+BGLtMw8DrhCLTQV3m8z7Boslc6E54FBhJpRH15Ys1ciYCdZ700wkLL1ATuP2rE89
         X6fCydUUw7uH+h77XtudB4Nlk/ggXTwMdSWnNZTv99P64CGbgXe6ciKgyvINg6Ack6ui
         tNz+a+s6Jb6Kq7X4iNNkL5aDcpSY9dkh8Upc3ih82S42nnQH4GXrrnK4SrTpWVakP/Zb
         a9Ms9LKQBiOO+pbhomhz3qMcYZ6iYA4jlJbhtByw1nLQ+MA9u0/ECsVserbiDnKl+bHj
         k6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8Xyc04Vgj/hv3AHWBVH4uLhZj6jcJwnOq6HymrZh4tc=;
        b=LItwbfWfIAcgYI5p+OQV1S5mUtG/N3OA1eWUPthRUkF89JY4MzudyyKqVSJFGVEIRH
         KkE5VNrJ7+OxIWzmdph7rZVi2k6MwmGLbhDtxeJnoZu04DIvlNL3GHmvQUsf81nA+IGy
         urm4MniWdfeKg2+lGRVDv8HROKp2E/6YA6cLl5HFh+NGoQFMKuD1o3N1DbkwaqPxxhOd
         JTIGLLqtJuob++HyQXMHRC0Ve0X/D/o6Ir4jYYxpdmRBLykbaJDIeOmL1qXIzjooth0a
         FB/ggXJDRFKpvYywzJwH7XhWg1ZM1cwUYAZNL2KaNui2WknRKw4VHwqvnN+wfDkqbnH6
         kqag==
X-Gm-Message-State: AOAM533k/DqxmjShxOjDhprYwzY3I3UwrMIJynMBKZkudoOkX+TSmPid
        ymdshV3agAyHx7sd7+arapRcaLBqVeQ=
X-Google-Smtp-Source: ABdhPJzCGodQrodIhKwPZhQg4wqDD9QhtFS8txF+yRXDbeOYtuT1Ead9GWm+q+LFUvhcSDWFwF9ebg==
X-Received: by 2002:a1c:23c8:: with SMTP id j191mr635972wmj.64.1599806561861;
        Thu, 10 Sep 2020 23:42:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v17sm2750285wrc.23.2020.09.10.23.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:42:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 20/24] loop.4: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-21-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7eafe927-91ca-49e2-4db7-334f438fd4ea@gmail.com>
Date:   Fri, 11 Sep 2020 08:42:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-21-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael


> ---
>  man4/loop.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index 73b23871d..1b5d05666 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -227,7 +227,7 @@ in
>  .IR loop_config.info.lo_flags ;
>  and
>  .IP *
> -Explicitly request read-only mode by setting
> +explicitly request read-only mode by setting
>  .BR LO_FLAGS_READ_ONLY
>  in
>  .IR loop_config.info.lo_flags .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
