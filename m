Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E97E427B04D
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 16:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726461AbgI1Ovm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 10:51:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726460AbgI1Ovl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 10:51:41 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44203C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 07:51:41 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a9so1466120wmm.2
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 07:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xO67P31SiFpAjaEFj6KzNiP3I8rXIMv/IEdqg/GSCJc=;
        b=oZTkjFdGCEj2booGhX+OzXS9iGk83ZXIF0NuEmpWM558/GY0/bTzew2zdnqKFOHNtq
         NsUkN0tCxXfD06+LP0M4MPV8ZZUwdu9wIh+KpXv1eC5NKm0rdLUCKo/QxmZYfF1g1acD
         F4pkCZin0ELk6jkbQOXMyKCC9QSJamdGoK7JUBm6c1eVOvXvPzfK8bSo8mRGkfxUyN73
         xk7LAcNCiiAIwbAWkaRx0ESbgi9WGIbx2+BRYbk2f8ZVRAxg/yOa4QX1+qe6YW+yQ0Yo
         SxtiRJnfdKsHk10auv3vhnoS4hsPbgydSBp1Uo7caDeq7wmntcKB6zAEiM0stdEyWRva
         7ciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xO67P31SiFpAjaEFj6KzNiP3I8rXIMv/IEdqg/GSCJc=;
        b=JpgxsrXLYqZK1G0K9sZHKVVbuSdwXe86/CGvGLazXLpcE02V6f0smW+22VzBGJ+NNX
         y27lIBoF17AUAsz/s8dzgqwvNMBdmC+e+Hb18U02f7L4VIGsBvAki3BkqtJXipVmAFWY
         6euJUDO2jzJEm//NV5bu+tM0W/h1xUza6ynYaCV2/Dp3EMACpmBp1aqcYpWNKRyYuztc
         w9kV1PCh0xCAivWjzZt9amko1fCZWVL2oLKxM/MO3vMnY3AkfOHFsyefOqW88n/Ro1Fs
         UFiQwGQTjM/ezsQHs5aRStPrUHrMTsbQhFoxhKoGzP2U9wdy7VirAyfIlosaejCTST19
         zyAQ==
X-Gm-Message-State: AOAM533duYmvSrPKnIS2BQwyXD4dokM4XCsDR8pCaYWLbarhNochzkus
        ojFPyO757Ze+xvI8Vo5ubow=
X-Google-Smtp-Source: ABdhPJx5GMpPznCsYp0zG+NmtpC3lJYZnlAMiQSphRnQGp/Vtbg54174SSTCvW7wgV6HdRWp5py4pA==
X-Received: by 2002:a1c:7c1a:: with SMTP id x26mr2123289wmc.112.1601304699944;
        Mon, 28 Sep 2020 07:51:39 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z15sm1812253wrv.94.2020.09.28.07.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 07:51:39 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     Dave Martin <Dave.Martin@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
 <20200928134122.GG6642@arm.com>
 <8ce3d63c-445f-827b-a49a-914e8dd622d4@gmail.com>
 <20200928135506.2wsf3cwvkkbreqa3@localhost.localdomain>
 <20200928141524.GH6642@arm.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
Date:   Mon, 28 Sep 2020 16:51:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928141524.GH6642@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave!

On 2020-09-28 16:15, Dave Martin wrote:
> On Mon, Sep 28, 2020 at 11:55:08PM +1000, G. Branden Robinson wrote:
>> Hi, Alex!
>>
>> At 2020-09-28T15:48:14+0200, Alejandro Colomar wrote:
>>>> Where does this arbitrary-looking list of headers come from?
>>>
>>> There are two parts:  left to the ';', and right to the ';'.
>>>
>>> Left: The canonical C standard header, and the canonical POSIX header,
>>> in alphabetical order.
>>>
>>> Right: All other headers that shall define the header, according to
>>> either the C or the POSIX standards, in alphabetical order.
> 
> To clarify, does POSIX _guarantee_ that all of those headers define this
> type?  (I admit I'm too lazy to search through the POSIX standard for an
> answer to this).

Yes, POSIX does guarantee that all those headers define the type.

> 
> If not, this list would serve only to legitimise bad habits and it may
> be better to leave it out.
> 
> 
>> That's not a bad scheme but it is not inferable from the current man
>> page text; I almost commented on the inconsistency in one of my earlier
>> messages but deemed it out of scope.  Please document it, perhaps in an
>> introductory paragraph at the top of the Description section.
> 
> Ack, I think it would be better to state this explicity rather than
> having some terse syntax that people need to understand.

Would you like to propose something?

> 
> 
> IIUC, a program intended to be fully portable between C implementations
> must include <stddef.h>, not rely on one of the others.

Yes, in principle, programmers should use the first header in the list.
However, we listed all of them for completeness.  We only listed headers 
that guarantee to define the type, thogh, either by C or POSIX:


.\" Layout:
.\"	A list of type names (the struct/union keyword will be omitted).
.\"	Each entry will have the following parts:
.\"		* Include
.\"			The headers will be in the following order:
.\"			1) The main header that shall define the type
.\"			   according to the C Standard,
.\"			   and
.\"			   the main header that shall define the type
.\"			   according to POSIX,
.\"			   in alphabetical order.
.\"			;
.\"			2) All other headers that shall define the type
.\"			   as described in the previous header(s)
.\"			   according to the C Standard or POSIX,
.\"			   in alphabetical order.
.\"			*) All headers that define the type
.\"			   *if* the type is not defined by C nor POSIX,
.\"			   in alphabetical order.
.\"
.\"		* Definition (no "Definition" header)
.\"			Only struct/union types will have definition;
.\"			typedefs will remain opaque.
.\"
.\"		* Description (no "Description" header)
.\"			A few lines describing the type.
.\"
.\"		* Conforming to
.\"			Format: CXY and later; POSIX.1-XXXX and later.
.\"			Forget about pre-C99 C standards (i.e., C89/C90)
.\"
.\"		* Notes (optional)
.\"
.\"		* See also

> 
> (In practice it seems reasonable to include any header that is specified
> to declare types or function prototypes that themselves require a
> definition of size_t, but this is awkward to describe, and not explicit
> in the standard.)
> 
> [...]
> 
> Cheers
> ---Dave
> 

Cheers,

Alex
