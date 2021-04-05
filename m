Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F374535413F
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232822AbhDEKs4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhDEKs4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:48:56 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E15C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:48:50 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id b9so2684665wrs.1
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xebXypqacbGB/pzMnLoLT/nWdz8Abr8gEkV5hc3XPV8=;
        b=CBIgpMr06+Wd1LYd6RDHHrMSMXi4HJy30BXeun8ATt3pE/qoxc+UL1wanPX0O7So8G
         +wuc5VOzvzKK/glgvWQPRE25LpzH3V4uEU6nKiFS7siqj3UMstxtaDk/3KfkgxncwmeC
         5RDFtRpzgb3lLba9B7ICCW+wEspuCDyMaMCBSfBZ9hpKjQ8dDBWspnazwZ5LO0BD4VcW
         iB/z8sF+GVN5hF3WfTivWOKtSiSu5UdgKga0RIpCb15OwGxeSFPUwukXmPe41xG44rvn
         Y+nHtGU0JB2gqEP0ElFD8vp7+fwIBX0VTwUtJ5QPQp9U/CRaGe37OYnQP0SViBd8uOuK
         MTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xebXypqacbGB/pzMnLoLT/nWdz8Abr8gEkV5hc3XPV8=;
        b=C9dB3XLFa3+SthWE8r50epkvV00Z4hS6AK1FWErI6U6haG7XsYvQGamhuBy+LhNxyO
         TMAbMe8iiHdeb13KCMxgTsBr+sffMKlW9gGmYAS5SbMLtegpp7xuvpIuEc0UqLWBilRi
         +1kfiIoRahFz7EvPO/jvULI+YmjlK1LhXNyShVkCt3L4cK2m8W6mCJBfbLbTI1CybsWc
         8DRR4qZ+Ug88gQenTW0niio+tpHT0yM/yhrRh0z1PTBszwbiupDJRnchXW3hmNctlt+y
         zHBJe4jmVvSCCYw33tFy5X7q/rlYLJkKvQPQ3STOtCLFMgSpxyMSY4emOk5vA8D6Wfqp
         aASQ==
X-Gm-Message-State: AOAM533+k+pyPfQn9KQjc92ihtdoDP4jIxRX9Kh6bwxhlEfEnIxuh0FX
        NQhid6y4fldU/O/jmq6M3fU=
X-Google-Smtp-Source: ABdhPJxVl7mhg+xO40DKPIvR+5MMhgQ/mjIj7WfkBChBZf8ltq5xDt8IrDgq9GZEU2Hu/4wSHXw6PA==
X-Received: by 2002:a5d:570c:: with SMTP id a12mr28846357wrv.209.1617619729134;
        Mon, 05 Apr 2021 03:48:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id 61sm16593941wrn.25.2021.04.05.03.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:48:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 12/35] delete_module.2: Add missing include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-13-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d24e37ba-7d75-f6eb-62ca-b5b4c3b7ca63@gmail.com>
Date:   Mon, 5 Apr 2021 12:48:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-13-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/delete_module.2 | 2 ++
>  1 file changed, 2 insertions(+)


Patch applied.

Thanks,

Michael


> 
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index bb0a812a6..174ef04d2 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -27,6 +27,8 @@
>  delete_module \- unload a kernel module
>  .SH SYNOPSIS
>  .nf
> +.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
> +.PP
>  .BI "int delete_module(const char *" name ", unsigned int " flags );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
