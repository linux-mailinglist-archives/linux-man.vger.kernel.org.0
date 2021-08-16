Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B46D3ECECF
	for <lists+linux-man@lfdr.de>; Mon, 16 Aug 2021 08:49:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233562AbhHPGuL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Aug 2021 02:50:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233561AbhHPGuJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 02:50:09 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D47C061764
        for <linux-man@vger.kernel.org>; Sun, 15 Aug 2021 23:49:34 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id a20so19747247plm.0
        for <linux-man@vger.kernel.org>; Sun, 15 Aug 2021 23:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sfTTVMX9/EjEDYoX+gNdMXvZ+Dt0Gb8F8tkQDS9xyic=;
        b=ePeGY+vFiJMWNHZAafVe5Q0mZjn1kNlTGnfCSbxKglkVX+huj9NSRfPTbSKfIpWiKZ
         k2aqxxE/pZVTxcHUGxxE47elgiswhxcScFShQsbL2LZk81+2M1OI3eg68k0A7stQ0s3u
         8yEZMX7b8l3FhMkyxHgeaPEx7CMOzJcc5qdiYmjUv0mM47tvY9RXPGGdRk13yFpd+hJf
         SEp5j980AQBcC+PBeJvd7TrGGEEw+TCXoXfn6XJFvXgwBiXZglELP3cITjgto0pWq9pv
         3BscUPAld28GFXGOqtxQmZtPr5klu7OzsgfC9Z2e64AibZK6nJlKJZOn8Ta3kCn/2E+L
         P0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sfTTVMX9/EjEDYoX+gNdMXvZ+Dt0Gb8F8tkQDS9xyic=;
        b=oWExJMOQ0u7Cu8qXOe7g8o1UNrfpPXzaXUUsrIH8B7rPOK2iYqYFVa1lAFTkd1KNCG
         5FLLH/mnVZIX61eHcpr1ZoNziTgNpuSJuBz1y//fRHK+B6LzH43wRNq/21s1C/LBhwHI
         lKRA43bj+Wlot/cCzxkoCbAFIyq9d1UoRVRwJqPB2mRDBWJ+6ECffV0KzvXXWm9/e3yA
         6l/vgLbocQQzXBs3JoEGzsQnXVABi+bjkCKXDAlLOpavX/sZ5Otp5G/DG+TqEmDKITpN
         /PEzEiWR4eRSpXNzhP3/PazQlRGxZiD5JXDP/lP9KkKEfPZYg49RQIsPXWRLGjjLAW3V
         Rqcg==
X-Gm-Message-State: AOAM530LME+20+wfcCi2BeNp//7KG50UVYK1pgF5ydPNymsaw5pmjtzO
        yE7vF6Xf0yAKjv3bdL8MkzkkaRLlxTo=
X-Google-Smtp-Source: ABdhPJwL8w9LPnWZgdbtMnJf2Srq8hObv875KvvX+xZW4nK6L9gmlnwrkZg2Y/mEndotYvUQGG3R8w==
X-Received: by 2002:a17:90a:c305:: with SMTP id g5mr15525747pjt.79.1629096574077;
        Sun, 15 Aug 2021 23:49:34 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g10sm10056951pfh.120.2021.08.15.23.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Aug 2021 23:49:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Mike Rapoport <rppt@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man2: new page describing memfd_secret() system call
To:     Mike Rapoport <rppt@linux.ibm.com>
References: <20210815064648.300529-1-rppt@kernel.org>
 <097cea8d-70d1-3b9d-f02a-9a9cccae9f2d@gmail.com>
 <YRn1eWZ+1hlk2+Go@linux.ibm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <59bb5863-2051-377a-7f2b-f802e9387881@gmail.com>
Date:   Mon, 16 Aug 2021 08:49:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YRn1eWZ+1hlk2+Go@linux.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 8/16/21 7:19 AM, Mike Rapoport wrote:
> On Mon, Aug 16, 2021 at 02:29:33AM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Mike,
>>
>> Thanks for this update!
>>
>> On 8/15/21 8:46 AM, Mike Rapoport wrote:
>>> From: Mike Rapoport <rppt@linux.ibm.com>
>>>
>>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>>> ---
>>> v3:
>>> * Incorporate Michael's feedback except the extensive NOTES section. 
>>
>> Hmmmm :-|
>>
>>> v2: https://lore.kernel.org/linux-api/20210729082900.1581359-1-rppt@kernel.org
>>> Address Alex's comments:
>>> * update synopsis to match new style for syscalls without a wrapper
>>> * drop note about absence of glibc wrapper
>>> * update formatting
>>>
>>> v1: https://lore.kernel.org/linux-api/20210727124140.1487079-1-rppt@kernel.org
>>>
>>>
>>>
>>>  man2/memfd_secret.2 | 154 ++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 154 insertions(+)
>>>  create mode 100644 man2/memfd_secret.2
>>>
>>> diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
>>> new file mode 100644
>>> index 000000000..188c547bf
>>> --- /dev/null
>>> +++ b/man2/memfd_secret.2
>>> @@ -0,0 +1,154 @@
>>> +.\" Copyright (c) 2021, IBM Corporation.
>>> +.\" Written by Mike Rapoport <rppt@linux.ibm.com>
>>> +.\"
>>> +.\" Based on memfd_create(2) man page
>>> +.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
>>> +.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
>>> +.\"
>>> +.\" %%%LICENSE_START(GPLv2+)
>>> +.\"
>>> +.\" This program is free software; you can redistribute it and/or modify
>>> +.\" it under the terms of the GNU General Public License as published by
>>> +.\" the Free Software Foundation; either version 2 of the License, or
>>> +.\" (at your option) any later version.
>>> +.\"
>>> +.\" This program is distributed in the hope that it will be useful,
>>> +.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> +.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
>>> +.\" GNU General Public License for more details.
>>> +.\"
>>> +.\" You should have received a copy of the GNU General Public
>>> +.\" License along with this manual; if not, see
>>> +.\" <http://www.gnu.org/licenses/>.
>>> +.\" %%%LICENSE_END
>>> +.\"
>>> +.TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
>>> +.SH NAME
>>> +memfd_secret \- create an anonymous RAM-based file
>>> +to access secret memory regions
>>> +.SH SYNOPSIS
>>> +.nf
>>> +.PP
>>> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
>>> +.B #include <unistd.h>
>>> +.PP
>>> +.BI "int syscall(SYS_memfd_secret, unsigned int " flags );
>>> +.fi
>>> +.PP
>>> +.IR Note :
>>> +glibc provides no wrapper for
>>> +.BR memfd_secret (),
>>> +necessitating the use of
>>> +.BR syscall (2).
>>> +.SH DESCRIPTION
>>> +.BR memfd_secret ()
>>> +creates an anonymous file and returns a file descriptor that refers to it.
>>
>> I suggested:
>> s/anonymous/anonymous/ RAM-based/
>>
>> was there a reason not to do that?
>  
> It seems I've just missed this one.
> Would you like me to send v4 or you can update while applying?

I've applied the patch, and added this edit. Thank you for 
writing the page!

>>> +The file provides a way to create and access memory regions
>>> +with stronger protection than usual RAM-based files and
>>> +anonymous memory mappings.
> 
> ...
> 
>>> +.SH SEE ALSO
>>> +.BR fcntl (2),
>>> +.BR ftruncate (2),
>>> +.BR mlock (2),
>>> +.BR mmap (2),
>>> +.BR setrlimit (2)
>> Thanks! The page looks much better, but sill, that NOTES section
>> that I proposed [1] would be really useful, I think. What are
>> the chances that you could put that together?
> 
> I will, hopefully I'll be able to find the time for this in the next few
> weeks.

I'll be back :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
