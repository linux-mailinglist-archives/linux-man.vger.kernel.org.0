Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA74435DB1
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 11:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbhJUJPv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 05:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbhJUJPu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 05:15:50 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D56C06161C
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:13:35 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d3so710474wrh.8
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=mp9ymojJAQaQwGitvk1ZqBDkyoytVsPwKXzi5I0jYQc=;
        b=GPHp5fcxTm3MeJ7w1nM9PXYoO5Xv3XFr5MSBgrdyGPZ5eT9Z2PzQRGDe6/Iw5hNpYd
         rVI1eSZr7Yo+2rBJ1LETJzNkRYHvnOHP2oRx1GA9SsLBSgkHXBbF/dL6hH8Dj4NTG0gu
         6qXiqviAXXLZLfhQWZwkK8cB9eDkfsG0f1YPZ544dxFD+jaLNGgso8QJHy52+b7r3yFU
         0xaKmhVAXmsBYCXtlhxStYpaVB1s6uHPP/UHWFkQ/29r24Deu+aX6Vb31rEKt6/Df1sl
         yPRUDl1q2QNrEVS1QXn8ObFz9FQpkUil+JQnCexr3KCzd17217T81lB9kKws87F5diu9
         R7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mp9ymojJAQaQwGitvk1ZqBDkyoytVsPwKXzi5I0jYQc=;
        b=SyQMcMI9yARmCWXW4zknaXgOAJYGYtKgEX+wDTMf0AnvJSjPwpeLMEU9oIuET2mvhj
         nCVCkQExP8mh6I+hm8t9Vag3DbOGk66ckBJm/Y4/JT3UVUrRx/weo1uW2vrAANtFa5+x
         +oYXXf9OHUBX1PfZa/NNAolksUB+OIOABnlTqj/wOrXky3+gZv67ldaAZVSgS1fIPe6B
         wxMd0m4urvrgrWSuJ0Vg8TYVutSvqUF8IkBXgbl0YtVL2c0uyyPp8UoeQPBw7d7DkYIU
         O5WH+IICFAea0tuJLHXwxkPIK6Wun7geLSNsgSb+LRBF4u43tzPQjK7m/Wo5YmCkkDn5
         4o9w==
X-Gm-Message-State: AOAM532sSuPoyhU10x/razED5wv8/woglgw+1WCC+T8uMgUczcZBCSzY
        WCfaNbGYPct2gy3LJsyqvscGuvM+EFE=
X-Google-Smtp-Source: ABdhPJz3L19pZ617Yno8PBFLnuOwJcUsg9WRrofVPv6M6ptHQo0P4cOBvNDJaSn/8rdvd40JQlbwVA==
X-Received: by 2002:a5d:508b:: with SMTP id a11mr5940468wrt.417.1634807613687;
        Thu, 21 Oct 2021 02:13:33 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u10sm5029885wrs.5.2021.10.21.02.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:13:33 -0700 (PDT)
Subject: Re: [PATCH 1/2] ctime.3: Use VLA notation for [as]ctime_r() buffer
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
        linux-man <linux-man@vger.kernel.org>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211021092746.78bc82f8@inria.fr>
 <20c1e58b-ba2b-f9df-ab1f-f80725414cf5@gmail.com>
Message-ID: <94f01ce5-fd40-492a-a338-a3dbc651322b@gmail.com>
Date:   Thu, 21 Oct 2021 11:13:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20c1e58b-ba2b-f9df-ab1f-f80725414cf5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Just forwarding a conversation to the list

On 10/21/21 10:17 AM, Alejandro Colomar (man-pages) wrote:
> Hello Jens,
> 
> On 10/21/21 9:27 AM, Jₑₙₛ Gustedt wrote:
>> Hello Alejandro,
>>
>> On Wed, 20 Oct 2021 22:22:40 +0200, Alejandro Colomar wrote:
>>
>>> As N2417 (part of C2x) suggests.  This syntax is very informative,
>>> and also, if used by library implementers, can improve static
>>> analysis.
>>>
>>> Since it is backwards compatible with pointer syntax, we can do this.
>>
>> I understand the intent, but these `_r` interfaces finally went into
>> the standard without array notation. AFAIR one of the arguments was
>> that the headers should be usable from C++.
> 
> Hmm, I understand.  If I may digress, that C/C++ incompatibility has 
> been the only real pain in reusing my C headers in C++; so much that I 
> have separate .h and .hxx header files for the same functions. 
> Eventhough C++ with VLAs would be a bad idea, parameter VLAs are not 
> really VLAs (in the sense of the same stack problems that alloca() has), 
> but syntactic sugar for pointers.  Would it be too much to ask to get 
> C++ accept that C feature?  Has it been discussed and is there any 
> consensus that it should not be done?  Or is it worth proposing to the 
> C++ comitee?
> 
> 
>>
>> So I am not sure if it is consensus to have the documentation have a
>> different form of the interfaces than the standard(s). I don't know if
>> you'd also add the attributes that glibc uses to the `printf`
>> interfaces, for example. >
>> I am not saying that you shouldn't, in the contrary it is probably a
>> good idea to list all those semantic restrictions in the documented
>> interface for which me have syntax. I just want to make sure that
>> adding such semantic hints to the documentation is consensus and
>> sufficiently well discussed.
> 
> We recently (a few months ago) added 'noreturn' and 'restrict' to the 
> man-pages prototypes.
> 
> My opinion is that we should only add a specific syntax if it adds very 
> useful information that cannot easily be read from the rest of the 
> prototype.
> 
> noreturn and restrict are examples of that, and I think [static 26] in 
> the case of these _r functions also are.  Or also [[gnu::nonnull]], 
> which BTW, as N2417 shows implicitly by the use of [static 1], which as 
> I said in patch 2/2 is confusing, I would like to suggest for the 
> standard to take it as [[nonnull]], probably for C3X I guess.
> 
> However, some attributes are not that useful.  I think 
> [[gnu::fornat(printf, 3, 4)]] wouldn't add much valuable information to 
> snprintf that isn't already readable from the prototype.  It is an 
> attribute only useful for the compiler/static analyzer, but not very 
> much for the human (compared to the noise it adds).
> 
> What I fear when adding these things is adding too much noise to the 
> SYNOPSIS.
> 
> Ideally, the standard and the man-pages would have the same prototypes. 
>   However, since the standard is not (and cannot be) perfect, when it 
> has some limitations that it cannot overcome which we can, I'll be happy 
> to differ from it.  nonnull IMO is very useful in the SYNOPSIS, so I'd 
> like to have it (and I'd also like the standard to have it, but that's 
> likely to take a decade, if it happens at all).  Also, the man-pages 
> already use array notation in some specific cases (see pipe(2)), and 
> they are mostly targeted at C programmers, so I think we can safely 
> assume that a C++ reader will know the limitation of its language, and 
> be able to translate C to C++ easily.  If any glibc programmer has any 
> concerns regarding that, this is the moment for giving a different 
> opinion :).
> 
> Thanks for your feedback!
> 
> Alex
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
