Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D03A2D7E04
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:25:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404802AbgLKSYK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404190AbgLKSXL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:23:11 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03991C0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:22:31 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id a6so8326349wmc.2
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tAqCh5Od6u+QkKkk73z6TPBIyc7dI4kPyq4+MMVWoR0=;
        b=QfXYNgxTNS1eeQDeozudSQ954sBNa9/w92D1fHjHzJCgIBfQ2SrPHasHoTJyEYXwBu
         1AqKTmfaq2NLBZx1zJLfnPMfnYjeXRp6ZQwaKAUt7E4Xx3Oj2PXnw2wWUk7iuS4N42gG
         OacLdJwSMIKw1UEchxWiXIhfNSDPS+6AXz0LVxBaoWhRgXeNCa6IA+jIQBtZW9DoOYlL
         9vvpSxihlJOcuCs0+tyiLb8ARzHa6prrsRVQqNMVUTWgQjDEsw9bT79nZ/rBiP8caBHf
         GYsuLsaT9wuD5mngm1rvZ0oB/OhFW8wbW5Lupt5kSEII30n3cpshm65Qf8M2twNmBvwV
         zY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tAqCh5Od6u+QkKkk73z6TPBIyc7dI4kPyq4+MMVWoR0=;
        b=d3Irc731Zlf8/XDBmiDYkGuze7fwCzmVTGsjZo5gg2HzbKFI0i0dP7EiiOmQuNfjZu
         rPl7qhY+TzSMYxhnmKEM9pv0RGht8PbJ2RgGhtUmXTPCLhATaKycNryQm9TY/C4+HuuH
         fRlPTNQ0jkylmqKw5Xn7N7McWZZkbCWReeT1U1S1arVxhlNlCpES1n4U4t6Q1FeUI/sC
         OoYuaDKaJzLautka1RO0Q3nrRFIqV6zlMri6qAdikndPwQAs77nzSLY0stc8bEI/8NK/
         4x7XzL7Ebr2IZDf6LMNQrQl9RurGG2btYkdxZzxW2DPArq/dlaejGZqaxL3E2x78FKjY
         y/6g==
X-Gm-Message-State: AOAM5333wnsdqR35bMX+EYr+ahSHb1IPAlf9vTOhVc+d60UDm35P09A7
        JrImK3d2WbQbRtd+fZeWKSXrHfBahzI=
X-Google-Smtp-Source: ABdhPJw0eiftuCsBNABQtJ/QJBOzsCwLrvTwgHNtFf+jhgSzkt5tSlBfST7Lrjg3E2eZV/k6YkAYEQ==
X-Received: by 2002:a1c:6484:: with SMTP id y126mr14901116wmb.76.1607710949818;
        Fri, 11 Dec 2020 10:22:29 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z17sm15486910wrh.88.2020.12.11.10.22.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:22:29 -0800 (PST)
Subject: RFC v3: Re: cacheflush.2
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
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
 <de79c8a0-2839-da8e-a4cf-380fff30852d@gmail.com>
Message-ID: <7284157d-bc09-e5c5-b238-87d7444e682a@gmail.com>
Date:   Fri, 11 Dec 2020 19:22:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <de79c8a0-2839-da8e-a4cf-380fff30852d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

Please review this text:

[
NOTES
       Unless  you  need  the finer grained control that this system
       call provides, you probably want  to  use  the  GCC  built-in
       function  __builtin___clear_cache(),  which  provides  a more
       portable interface:

           void __builtin___clear_cache(void *begin, void *end);

       On platforms that don't require  instruction  cache  flushes,
       __builtin___clear_cache() has no effect.

       Note:  On  some  GCC-compatible compilers, such as clang, the
       prototype for this function uses char * instead of void *.
]

Thanks,

Alex

On 12/11/20 7:02 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 12/11/20 9:15 AM, Michael Kerrisk (man-pages) wrote:
>> i Alex,
>>
>> On 12/10/20 9:56 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi all,
>>>
>>> v2:
>>>
>>> [
>>> NOTES
>>>        Unless  you  need  the finer grained control that this system
>>>        call provides, you probably want  to  use  the  GCC  built-in
>>>        function  __builtin___clear_cache(),  which  provides  a more
>>>        portable interface:
>>>
>>>            void __builtin___clear_cache(void *begin, void *end);
>>> ]
>>
>> This seems a reasonable text to me, but I think it would be helpful
>> to say a little more precisely what kind of portability we are
>> talking about here.
> Sure.
> 
>>
>> Greater ortability across Linux architectures? Greater portability
>> across platforms supported by GCC (including non-Linux) platforms?
>> Something else?
> 
> '... which provides a portable interface across platforms supported by
> GCC:' sounds good.
> 
> Maybe GCC devs have something more to add.

> 
> Thanks,
> 
> Alex
> 
>>
>> Thanks,
>>
>> Michael
>>
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
