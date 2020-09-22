Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D001E274A37
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:38:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726631AbgIVUiA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 16:38:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbgIVUiA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:38:00 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DABDC061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:37:59 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so18505162wrl.12
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pucSo7rj5St9Uzf0P3pelmaSjHxzaz37+LL1FdEL8Lw=;
        b=sefjx5GIH/Yz7dH/oM5lExn9YkCvqGxMlXr2ZYPJ3L11obIGhD309niZDuUZu4FyN7
         aNIPK8y0t/DacnR2ZwF3QHD2U8AjoI98wG/MqEQ4CvTf7qhFEbUFdjYYcQdfGKnnEOXc
         XSMrfASeGVcxx3pTY4QpXsUI7G87UCd01NPBLleORHxdBGioI38hI3zcVmHVy0rNgQBE
         z8iVYU6Ly6/4IcZyd9U0tqrhXGZK5SYiTBmPkUjqh0mJPyiALZL5YgwvQ/5hoFrcsQvw
         g30alKatomT5wGD/5sOltxOsfEYFnwEAqfEB7shWgMLP2I4bm635np2sDodmAe/04W4z
         EUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pucSo7rj5St9Uzf0P3pelmaSjHxzaz37+LL1FdEL8Lw=;
        b=jmrBFSyntdy8Ae6XzGP8JR4MOSKYyx4WYaSHH+aGpQ3J8R/+EygSAslVAWM3vqTLpS
         5RsQNhNG/T0iUSjnc3X5IfZyCrc4aOBhW2/hK+QmBRHbVRK76SRbkpTheDBjmcrNshCe
         b93xLjr2ocYPojpU4WuZth7swl6c1+7YL3/KPflaTSKX2MBTivfwPSJ6D49bJp0rdknl
         1HWsqfryjjN60sBVFddCaVmv1QGx1AfxiFgbeBYg2J7XoWr29UlddPuc6SALzrveEVyC
         3HSGKb8wrl7q+dp2s2fWwtHUNgD/pZpy6LGJCgS4DG9bituLUT+1EOfy8LkgTBVVcwWz
         DW4w==
X-Gm-Message-State: AOAM532TeIZ5FvecNk5JG0VlyqzA8osh7hE3MmDyWgFn0usgpTzshKEV
        mBRqQcFKO6QLLPx/WuGEOCPLseKzm7A=
X-Google-Smtp-Source: ABdhPJwJ8RQ7Z9OPWQfWIVuQXDo/LNTk7IbPO/HHhT8lbkdmHUQ6KCj3GBoW5xRGcws3ZSi8RlL/Jg==
X-Received: by 2002:adf:a3ca:: with SMTP id m10mr5949440wrb.104.1600807078108;
        Tue, 22 Sep 2020 13:37:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id h8sm27763785wrw.68.2020.09.22.13.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 13:37:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
 <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
 <3eccfa66-3711-df48-9beb-bfea87dfffae@gmail.com>
 <7d9f6b7b-8c52-c848-b2aa-f47abe249b6c@gmail.com>
 <a8fcbafb-34a1-aeea-eea7-e9202d8f8426@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f3f2d286-a3e6-d399-8ee8-16fa6f000539@gmail.com>
Date:   Tue, 22 Sep 2020 22:37:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a8fcbafb-34a1-aeea-eea7-e9202d8f8426@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/22/20 10:32 PM, Alejandro Colomar wrote:
> Actually, POSIX already ripped (part of) the description from the C 
> standard:
> 
>  > Represents the floating-point status flags collectively,
>  > including any status the implementation associates with the flags.
> 
> This part is in the C standard (and POSIX also has it).

I think they probably have an agreement for this :-).

>  > A floating-point status flag is a system variable
>  > whose value is set (but never cleared)
>  > when a floating-point exception is raised,
>  > which occurs as a side-effect of
>  > exceptional floating-point arithmetic to provide auxiliary information.
>  > A floating-point control mode is a system variable whose
>  > value may be set by the user to affect
>  > the subsequent behavior of floating-point arithmetic.
> 
> And this is from POSIX only.
> 
> How would you go about it?

Just quote POSIX (no need to mention the C standard
when quoting, I think).

>  > Represents the floating-point status flags collectively,
>  > including any status the implementation associates with the flags.
> POSIX describes a
>  > [s/A//] floating-point status flag [s/is/as] a system variable
>  > whose value is set (but never cleared)
>  > when a floating-point exception is raised,
>  > which occurs as a side-effect of
>  > exceptional floating-point arithmetic to provide auxiliary information.
> According to POSIX,
>  > [s/A/a/] floating-point control mode is a system variable whose
>  > value may be set by the user to affect
>  > the subsequent behavior of floating-point arithmetic.

I think so. 

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
