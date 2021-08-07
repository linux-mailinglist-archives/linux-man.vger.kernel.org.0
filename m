Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E290B3E371D
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGVhq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGVhq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:37:46 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83308C0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:37:28 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso23501180pjf.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lj1b+hK3v3hyEwEwFRvMrBIa4iuYMyoDU9L6TEjmjJI=;
        b=BWxe4rv3fZHBrmU3mE2S23dHnhIbei71YL3Qh/zaiv+arzf8Hd9/Ci7D7X7CN9GLmg
         q/DhzeWE7v3Kff6o4UzJ1VtOi+PXUzRwuca+eAaH+eATFzXIRnXlQg+PqtovaJziMiWx
         1A3oIL6+zfB9/FJyLvh9fP8yJX2ndZgs9Rj6BoEqHZpplsQp5oiWAiarKuWKqtnl8iAn
         ZS9VaCBhOeAcHOwM7D4ABHzLCPQpST3UPY2yQtYSaiMPacEqYMm/v79wkdawE7vVZsFr
         c0oyTnedQfIai0pGn07uHkyYev7eYD2MP+ZJd1/qeT7xKgDNJCRYYqRh6YL8kJTHgyKZ
         0cbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lj1b+hK3v3hyEwEwFRvMrBIa4iuYMyoDU9L6TEjmjJI=;
        b=t6SZI11Hi4p5FQuWSIp99J0u2h5aVDriHPRm8K+0eCl8xd2IFsBphcHP11z1sDaHtO
         lVMxWdbRqEk84hmAqsWXhKAy0VIQhMI5fnAEyReedAqUpvQcL8MkUA/RyeHrm9RDPqIL
         9dKbHeA0BlElo4D3oxQebPTm3yxSTbovGCJBpHVWPZff69d95/yvZAqvzTPxYXKVOPie
         XRESAlW4y5w4VM5gDlQbOovtCRPGgoZfknwlAU+pQ5h/o/6ILJcjZOhf+n4e60eOxoan
         aggmNMfxb7MShC4D4nzg8OnPHpVq9buFK26/rnPUwcUGCV/yaoKPBc4l+b++1V6c9Nrn
         TjEA==
X-Gm-Message-State: AOAM532o3GwU0/48gGLaXDhpR8u2n2QzpTXq65Sc+R0sfz2nOqrP5CDh
        4OaDv3BcHhkGzjlYreuMKj/modoG4ro=
X-Google-Smtp-Source: ABdhPJz9uH1nr/bX4bbmp0ceBUsPTHIRWPsT1Yv6ZqyR5FBrOxHHHkYKPy5xNL/5l+3RAEGYZAWI1Q==
X-Received: by 2002:a17:902:8f87:b029:12c:dda2:39bf with SMTP id z7-20020a1709028f87b029012cdda239bfmr14197692plo.59.1628372247754;
        Sat, 07 Aug 2021 14:37:27 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id z124sm17082910pgb.6.2021.08.07.14.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:37:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 09/32] path_resolution.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3b2223c4-5b60-c4e0-e0c1-7b2ddeae1fff@gmail.com>
Date:   Sat, 7 Aug 2021 23:37:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Štěpán,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Štěpán Němec <stepnem@gmail.com>
> 
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man7/path_resolution.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
> index 0901ed7c8..f24837ef9 100644
> --- a/man7/path_resolution.7
> +++ b/man7/path_resolution.7
> @@ -63,7 +63,7 @@ argument).
>  The current working directory is inherited from the parent, and can
>  be changed by use of the
>  .BR chdir (2)
> -system call.)
> +system call.
>  .PP
>  Pathnames starting with a \(aq/\(aq character are called absolute pathnames.
>  Pathnames not starting with a \(aq/\(aq are called relative pathnames.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
