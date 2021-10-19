Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33244337DA
	for <lists+linux-man@lfdr.de>; Tue, 19 Oct 2021 15:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233940AbhJSN5f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Oct 2021 09:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231231AbhJSN5e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Oct 2021 09:57:34 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC718C06161C
        for <linux-man@vger.kernel.org>; Tue, 19 Oct 2021 06:55:21 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so3121077wmz.2
        for <linux-man@vger.kernel.org>; Tue, 19 Oct 2021 06:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gy0XRpGqATSFR/ry1KYJ3qZz/4NRKJJKvUG7kvZd9gk=;
        b=TouZGoZrDswXGBE6fJXZDnnvbMfY69I3bnMPra8yZJREZp1WaO3dQ2eyhyhta6ygHM
         HvLUU999+hGwfetYgUcIC0x31byF9Iqckq3cznIxpfQ64JanvQy4es+pzYrbXGiW/Zeh
         YyOKbRaIOL2TOWd/fhHsYU79g07CqPOKEXbuId/r5E4lgk42Zt6f9zFVvPwWZW05YTfQ
         nln3Ax+aXVEeWttK1LjcA8GXCPxzOLP1lOJ/A6yWLNafvOlZC1YfZN5YqGwnptDQjAXf
         Cx15pu6R3qJql4qHVi9sgwhxxeh9k/hfm/3Mi3AUUwQ3x2S7l0jTweok7Vv00Lg0Lndz
         AXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gy0XRpGqATSFR/ry1KYJ3qZz/4NRKJJKvUG7kvZd9gk=;
        b=pcLPBLiuqU1Cz0wdbck4a1Fn/E2wbHd/XjTnkzhw6D9sDiQKwpaYjpHVWgAVsxLByu
         0OJrbnyj8LmLkPgLBTiGyTa8pnF/1bogtdXksGeZnE+x+e7Buaaf/jCto1xfFNgijFVg
         dTX4DEz1xGsMft4kKuliPSxVoqJ0LUAKdWopsTZHS/MqFmX6/6hcq2oMaJSC2bovuD8Z
         KBgTXuCOI0XKRbb9xtMnNlOfrqQZ9RBaK+xBSM+tqmtMLc9st8m1EixuCcIW+i/KIIRB
         U5cQPRUQ4fNFSSFGRFXBw3UbAGT68EdsllBJEAVqmqh/e0TIj/TA9tO2oIMZP/Be942h
         yFzQ==
X-Gm-Message-State: AOAM530k+Vfjphofzm7L+NZmEpVUP6/79StgSan38jXCpiF4Gwivsgex
        B2X1myYTRFF15O7BAtyQ54o=
X-Google-Smtp-Source: ABdhPJxmBx//fAYT3Sr1bNf17igGRpZEXthWv/5lyZn5PZtUCnEXOYjwRs7d+8zhYm0NqLDivizbIg==
X-Received: by 2002:a7b:cbd1:: with SMTP id n17mr6261931wmi.113.1634651720338;
        Tue, 19 Oct 2021 06:55:20 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u14sm10596861wrw.91.2021.10.19.06.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 06:55:20 -0700 (PDT)
Subject: Re: [PATCH v3] filename.7: new manual page
To:     "Thaddeus H. Black" <thb@debian.org>,
        Florian Weimer <fweimer@redhat.com>
References: <YWysyI6/sZtbQBBb@b-tk.org> <YW2hzL5vDfVZIAXY@b-tk.org>
 <87fssxgzt8.fsf@oldenburg.str.redhat.com> <YW6mcn0uMW3FWUu6@b-tk.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <588c7f7f-d9ff-ca0c-df37-ba3242952d12@gmail.com>
Date:   Tue, 19 Oct 2021 15:55:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YW6mcn0uMW3FWUu6@b-tk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Florian!

On 10/19/21 1:05 PM, Thaddeus H. Black wrote:
> On Tue, Oct 19, 2021 at 10:54:11AM +0200, Florian Weimer wrote:
>> Maybe add: “A pathname contains zero or more filenames.”
> 
> Okay.
> 
>> What does this mean?  I think only byte 0x2f is reserved.  The UTF-8
>> comment is misleading.  A historic/overlong encoding of / in multiple
>> UTF-8 bytes is *not* reserved.
> 
> I had not known that UTF-8 had an alternate encoding for any ASCII
> character.  Does it indeed have an alternate encoding?  If so, where
> can I learn more?
> 
> The new filename(7) manual page wishes to be correct but, otherwise,
> would like to inflict upon the reader as little difficult technical
> prose as it can.  The page wants to remain readable.  In this light, can
> you advise me how the page should speak to your point?
> 
>> This conflicts with the presentation of / as a separator in pathnames, I
>> think: The pathname "/usr/" contains two empty filenames.
> 
> I had not thought of that.  Good point.
> 
> Thus, the empty filename is not forbidden but rather is reserved.

Not according to POSIX:

<https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_271>
[
  3.271 Pathname

A string that is used to identify a file. In the context of 
POSIX.1-2017, a pathname may be limited to {PATH_MAX} bytes, including 
the terminating null byte. It has optional beginning <slash> characters, 
followed by zero or more filenames separated by <slash> characters. A 
pathname can optionally contain one or more trailing <slash> characters. 
Multiple successive <slash> characters are considered to be the same as 
one <slash>, except for the case of exactly two leading <slash> characters.

Note:
     If a pathname consists of only bytes corresponding to characters 
from the portable filename character set (see Portable Filename 
Character Set), <slash> characters, and a single terminating <NUL> 
character, the pathname will be usable as a character string in all 
supported locales; otherwise, the pathname might only be a string 
(rather than a character string). Additionally, since the single-byte 
encoding of the <slash> character is required to be the same across all 
locales and to not occur within a multi-byte character, references to a 
<slash> character within a pathname are well-defined even when the 
pathname is not a character string. However, this property does not 
necessarily hold for the remaining characters within the portable 
filename character set.

     Pathname Resolution is defined in detail in Pathname Resolution.

3.272 Pathname Component

See Filename in Filename.
]

[
  3.170 Filename

A sequence of bytes consisting of 1 to {NAME_MAX} bytes used to name a 
file. The bytes composing the name shall not contain the <NUL> or 
<slash> characters. In the context of a pathname, each filename shall be 
followed by a <slash> or a <NUL> character; elsewhere, a filename 
followed by a <NUL> character forms a string (but not necessarily a 
character string). The filenames dot and dot-dot have special meaning. A 
filename is sometimes referred to as a "pathname component". See also 
Pathname.

Note:
     Pathname Resolution is defined in detail in Pathname Resolution .
]

According to the above, there's no optionally-empty always-existing 
initial filename in a pathname.  It's the initial slash that is 
optional, and the first filename is the one that goes after the first 
optional slash.  That's especially true in some systems such as Cygwin, 
which has a special meaning for an initial '//'.

Multiple successive non-initial slashes also don't have empty filenames 
between them, but are a single token, equivalent to a single slash, 
acording to POSIX.

All of the above, AFAIK :)

> 
>>> +No filename may exceed\~255 bytes in length,
>>> +or\~256 bytes after counting the terminating null byte.
>>
>> This is not correct for Linux.  Despite the definition of NAME_MAX,
>> filenames can be longer than 255 bytes.  NTFS and CIFS have a limit of
>> 255 UTF-16 characters, which translates to about 768 bytes in the UTF-8
>> encoding used by Linux.
> 
> I see.
> 
> Your feedback is helpful and appreciated (especially since you are the
> first Fedora-class user to return a review).
> 

Thank you both!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
