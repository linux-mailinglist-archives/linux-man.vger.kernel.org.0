Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DF8C2D7D8E
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729593AbgLKSDW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:03:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729143AbgLKSDF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:03:05 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E24FDC0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:02:22 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 3so9415233wmg.4
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ty+T6a9ooC0cShXvsT6L3/lIetMXFkaLJpCkL5/Dvpo=;
        b=aZRnC9BcjHgG40VaG6RGM8MJ47j6bx4NgOOJYXpGtfNfzSBVpHxtv7StQFFkQflcj0
         Mze56FBcyyPW0WEOpURq+SsrE01KKOTIMlyG34XXITZax4uGx9oQT+2QabFSpcrigOe3
         4R3pfSi1i5bprM+ylAwzkEbpYDfVVKygdMZ6SCsOKEj8tgK2lzW29Lrb/m9NC0CBT2/A
         3YuHmuqWgrmhIBwQubVGggBZbIUTvWJe3TvVPjGLrZ8PNmpdr5DwtUZNtEAOTlAEkE9T
         /fzrvDqBhXR0viM68QZDs26KaecbFhKkpLi93oRBNM3TyIqxftbxgZqJ4QAZurUbT6jm
         mJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ty+T6a9ooC0cShXvsT6L3/lIetMXFkaLJpCkL5/Dvpo=;
        b=aCi3RnFyezmRmyvnJMY5zycDXHOCNmpVTOefIQv5+6Rln5lDZTbazogaNgVIvk2oO1
         XF3yxuNVOJ8TEfOpsPJGWvU76W9GEhz2Nlb8i2d+eztPzuDdc+rw9PEeGCfHwyDgsOPA
         pOO5/h7vrjCsJnI+vzIz6LbzfqSULu5jzbNsfLPfH1MuYOgHKFI4aYi/SSUwkNS1wqhS
         fdkS/K8iIqVjOrLzQpnPNDoHl7m4/D63zjGYHEbS6u/OdeZ/u9ydjsBZzaD3fHh8yfCO
         4p4T+RYR6bYpkHiEb7KWsruYKYgjbR25USbl5JNhARoWRdd9rnL+OvXHnTw527KW6XBU
         l/LA==
X-Gm-Message-State: AOAM531H6bxBbjpA3IMWDUEixxt+9pPcVFfeeS+/s1X4RGeufcYF+fX0
        78ps2pOJgsmV55PbvLLnmwcL9n4+UXI=
X-Google-Smtp-Source: ABdhPJzDIIx9E3DaaIgV0/wvbIeaQ/7B1enmuUZWdTbGA3hrYNfofgYc5PU5L+/kbgtHApuA/3zUoQ==
X-Received: by 2002:a1c:3b46:: with SMTP id i67mr14274060wma.108.1607709741551;
        Fri, 11 Dec 2020 10:02:21 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a13sm16463520wrt.96.2020.12.11.10.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:02:20 -0800 (PST)
Subject: Re: RFC v2: Re: cacheflush.2
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Dave Martin <Dave.Martin@arm.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <20201210181726.GT6882@arm.com> <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
 <f1f335e3-2459-3cfd-11c0-b105e7a5b734@gmail.com>
 <e9d397d4-9eb4-bd49-0001-36fb45d0778a@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <de79c8a0-2839-da8e-a4cf-380fff30852d@gmail.com>
Date:   Fri, 11 Dec 2020 19:02:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <e9d397d4-9eb4-bd49-0001-36fb45d0778a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 12/11/20 9:15 AM, Michael Kerrisk (man-pages) wrote:
> i Alex,
> 
> On 12/10/20 9:56 PM, Alejandro Colomar (man-pages) wrote:
>> Hi all,
>>
>> v2:
>>
>> [
>> NOTES
>>        Unless  you  need  the finer grained control that this system
>>        call provides, you probably want  to  use  the  GCC  built-in
>>        function  __builtin___clear_cache(),  which  provides  a more
>>        portable interface:
>>
>>            void __builtin___clear_cache(void *begin, void *end);
>> ]
> 
> This seems a reasonable text to me, but I think it would be helpful
> to say a little more precisely what kind of portability we are
> talking about here.
Sure.

> 
> Greater ortability across Linux architectures? Greater portability
> across platforms supported by GCC (including non-Linux) platforms?
> Something else?

'... which provides a portable interface across platforms supported by
GCC:' sounds good.

Maybe GCC devs have something more to add.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
