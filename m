Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 131903E19CA
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 18:46:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbhHEQqR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 12:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234371AbhHEQqQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Aug 2021 12:46:16 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFFCC061765;
        Thu,  5 Aug 2021 09:46:01 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id a192-20020a1c7fc90000b0290253b32e8796so5876772wmd.0;
        Thu, 05 Aug 2021 09:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mXtlnpS0stCW6p/kWe+1oJUoJ7fR9ZCayNlWr75tAV4=;
        b=jznj5ZkqjdiSqN+qbHIu1n79H6eZY22Hp/RYeIMUmbLlB6r4fgCkNBPeOV7tIUNtyO
         t0hsT7McK22NiVRxG0FJWjESv1zs8Uulv4g+1DUKFZ09M2vxOSdB8jWiCmQGsxSVHGbh
         fRu5TTakO4IPK0XCPUf64SlH3NO6Q62t0daKac09X6EO1VVyq2X2vnYl7xHSR4uSjOrg
         F1tQJJ9fifZg05L0OpGYD148bf0DY8cvPZHU7i6yEK/VNTI0RE+rqAKbrQFL2PDpCrLd
         FMXptTRBJVrDovmzKGx2tq0HEqesJOmzXhRWsacdkdEvh8gVHhsIB5udkAxlAohIJXSS
         NrTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mXtlnpS0stCW6p/kWe+1oJUoJ7fR9ZCayNlWr75tAV4=;
        b=SckSnWu+aXrf80uAkhmN+SCGV1pd47PTNlRyuzsfy/k0Oi6rkVOqqf/jrCuWrp6SaM
         sOUNwazWTeDBd5xptW4gEmnqBnqcUbZrGkn2HlT6YOutRL2ac3nHDVVf5NTuwpcKUGj+
         K86FyrlsE/dXMn3ZkKEF+ezX6r8jDMcCReG3vZEoMXeXMg71fRNgVzG7pR8Mh9v5VIDd
         nHy3C2cO9m1Cbomgw6s9bWcIjRFICKVBEL4nBphEHVJqGNLgQyOoE7zWU00T2N4Xtxej
         MWFlJo/ejstgZ3SDjYuQ+j1d4L4fuf8zVNdVf6fX9K/4u/xaOJfuDgcPFeA/73JrKTrh
         2U7A==
X-Gm-Message-State: AOAM530LvqhJHJI9Qvw3vdOZzuwzBKwn/F9mR4b6LBIYfL1aV3hp+MHm
        VJy0hStmlitsfdYqw3P5IQw=
X-Google-Smtp-Source: ABdhPJwRUyZnSZdFNLbiTC8Spr7QMiK0RrU0MsPAN2d0UCuGdknfP3KD9yMWXP7jgSWLccUb2m73+Q==
X-Received: by 2002:a1c:188:: with SMTP id 130mr5997844wmb.184.1628181959872;
        Thu, 05 Aug 2021 09:45:59 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m64sm7250892wmm.41.2021.08.05.09.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 09:45:59 -0700 (PDT)
Subject: Licensing example programs in man-pages (was [PATCH v3] ioctl_tty.2:
 Add example how to get or set baudrate on the serial port)
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Walter Harms <wharms@bfs.de>, Andres Brouwer <aeb@cwi.nl>
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <20210804220808.cetleob6dldpfnjk@pali> <YQt8g+ECel20fA/g@kroah.com>
 <20210805082243.qciylqnt5g74if7i@pali> <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali> <YQumV3qljhFSau0y@kroah.com>
 <20210805095100.n2qkm3kdiucwt6jd@pali>
 <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com> <YQwOaWqbHFG29wQF@kroah.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4757a0c3-896f-a402-acb1-7e7fcadaa907@gmail.com>
Date:   Thu, 5 Aug 2021 18:45:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YQwOaWqbHFG29wQF@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg,

On 8/5/21 6:14 PM, Greg Kroah-Hartman wrote:
> On Thu, Aug 05, 2021 at 05:28:49PM +0200, Alejandro Colomar (man-pages) wrote:
>> Hi Pali,
>>
>> On 8/5/21 11:51 AM, Pali Rohár wrote:
>>>>>> Also, you forgot a license for this code, that is required if you want
>>>>>> people to use it...
>>>>>
>>>>> Hm... I do not see any license in other manpage examples. Does not apply
>>>>> for it global license defined in ioctl_tty.2 file?
>>>>
>>>> That does not mean you do not need it.
>>
>> I don't know what is the status of the current code examples in terms of
>> licensing.
>>
>> I thought I had seen an SPDX license identifier in one of them some time
>> ago, but now I can't find it.
>>
>> Technically, the pages have a license at the top of each file, which isn't
>> printed on the rendered output (the license text doesn't require so) (see
>> that text below).
>>
>> If you want a different license for your example (let's say you want it BSD
>> for example), I guess you could add an SPDX line at the top of the example
>> for simplicity.
>>
>> But if your code example adheres to the same license as the rest of the
>> page, I guess you don't need to do anything in your patch.
> 
> What is the license of a man page?

Typically, the one I showed in my last email (the "Verbatim" license").
See <https://www.kernel.org/doc/man-pages/licenses.html>.

> 
> What is the license of this page?

.../linux/man-pages$ head -n8 man2/ioctl_tty.2
.\" Copyright 2002 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
.\" and Andries Brouwer <aeb@cwi.nl>.
.\"
.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
.\" Distributed under GPL
.\" %%%LICENSE_END
.\"
.TH IOCTL_TTY 2 2021-03-22 "Linux" "Linux Programmer's Manual"

I'm don't know what GPL_NOVERSION_ONLINE is at all.

CC += Walter, Andries

> 
> And if it is not shown in the code segment itself, that's going to be a
> mess, please make it explicit, otherwise no one can ever use any of the
> code examples for anything.

I'm not against that.  At

However, there's an explicit mention (without any rationale at all, or I 
couldn't find it) in man-pages(7) that the Linux man-pages project 
doesn't use the COPYRIGHT section:

[
DESCRIPTION
        This page describes the conventions that should be employed
        when writing man pages for  the  Linux  man‐pages  project,
        which  documents  the  user‐space API provided by the Linux
        kernel and the GNU C library.  The  project  thus  provides
        most  of the pages in Section 2, many of the pages that ap‐
        pear in Sections 3, 4, and 7, and a few of the  pages  that
        appear  in Sections 1, 5, and 8 of the man pages on a Linux
        system.  The conventions described on this page may also be
        useful for authors writing man pages for other projects.

        [...]

    Sections within a manual page
        The  list  below  shows conventional or suggested sections.
        Most manual pages should include at least  the  highlighted
        sections.   Arrange  a new manual page so that sections are
        placed in the order shown in the list.

        [...]
               COPYRIGHT        [Not used in man‐pages]
] [[man-pages(7)]]

Maybe Michael can provide a rationale for this.

Still, if the code is going to have a different license than the rest of 
the page, it could perfectly have an SPDX comment in the first line of 
the example program.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
