Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7A2632622D
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 12:53:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbhBZLxf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 06:53:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbhBZLxd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 06:53:33 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61C7EC061786;
        Fri, 26 Feb 2021 03:52:53 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id w7so7201213wmb.5;
        Fri, 26 Feb 2021 03:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NuBVfX255qpiXY+NtMUSxqbUxAFE9mom/YBJSTCC9hE=;
        b=LnpJP5aU2oEr0vdBo6tihdbXydtoCRpxVK0C4gAai13hHeEw7kfL7oqvttIX+vFzSM
         Gi/kCW32/uCVf+s2oNWXrceBs997dRjIxfZBGrVpuOAPh6/UvaIRDXStv5435hYS2Y8o
         dRbZ0+6OBsFtnUTKfjPZzANAnzS3yMiKKWqIHKPS12+UEbp8i7+Wi7DAilYnVKuza4eb
         O/GFzl3vk/Fqnd2aKCiOBCE6IiOn8dxOq2Ax4vfej/XLSuQaFwGbWcZBUEI6fvF3A//v
         fM8jyGFLWrHnp9PjwjomqRobXsj2yGK88lzAFv4XiqiSiQnlcwBavxDItQ0EqU+8qlZt
         K6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NuBVfX255qpiXY+NtMUSxqbUxAFE9mom/YBJSTCC9hE=;
        b=sHpb4aF1YcEcWyq8Xsnn4+N7L/lJ+vJrellWlBoTa693Ct2TJLppEa38FSdfYCvcwD
         iiph7lzT05ndvi7zj6Qss2ADbVg731s4+Mk5pd2PJ637t/MBBBM60PH+aJUhh2R7EmR3
         nVMXtto7St/Naio1qolsYz6tgxtiHiNj10miG9k69k5U0oSj6GElIKC3O3RUZBt2Fbhi
         X2MXt1zP0hiEITbHexD85ZQ7fGFOQmDn/IRddCDMR57H/9Mt50cxHRxl/Inw7SjUdlID
         jjsk7qgcQgheXgTwcXAyjsKBTGKdJfOiD3kQxCiIZOO7l+WLOhYar5b9LbH4vRgvQbUQ
         CgQA==
X-Gm-Message-State: AOAM533f4mTpdV9JTNPythy4CYzJi/Q1M0PVNcTVwJMKzegOJEBPS1RX
        Wwwnlko+xla1YPjy+X1GdTqKabbs1jVgRw==
X-Google-Smtp-Source: ABdhPJx8qHuzpGfQk0t2uqF8fDSJvNKOspYW5KLD0cfOCnzoSUDJE6HJ2UKPQwH+eex/WeIUry5+sQ==
X-Received: by 2002:a05:600c:2291:: with SMTP id 17mr2568678wmf.169.1614340372239;
        Fri, 26 Feb 2021 03:52:52 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s2sm13214774wrt.33.2021.02.26.03.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 03:52:51 -0800 (PST)
Subject: Re: [RFC v2] execve.2: SYNOPSIS: Document both glibc wrapper and
 kernel sycalls
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Florian Weimer <fweimer@redhat.com>,
        linux-kernel@vger.kernel.org
References: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
 <20210218151341.51095-1-alx.manpages@gmail.com>
 <db155b69-e58c-32c2-6fc7-89b8329fbf2c@gmail.com>
 <ca34c574-72f1-f174-1de4-e2c1b7600640@gmail.com>
Message-ID: <50102170-ead4-fa2e-2855-26f06543f95d@gmail.com>
Date:   Fri, 26 Feb 2021 12:52:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <ca34c574-72f1-f174-1de4-e2c1b7600640@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,


Okay, after a few days of thinking, I'm not sure about what to do in 
some cases.

But I think we agree to use syscall(SYS_ ...) for syscalls with no 
wrapper (such as membarrier(2)).

Is that right?

I think it may be better to separate this into 2 sets of changes.

1)  Document syscalls without wrappers as syscall(SYS_ ...).
     We could already start with this.
     (Actually, after I finish fixing the prototypes in man3.)
     This change will be fast, because there aren't many of these.

2)  Do the rest, I don't know yet how.  We'll see.


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
