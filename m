Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6698726661F
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 19:21:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbgIKRVp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 13:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726334AbgIKRVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 13:21:42 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A801C061573;
        Fri, 11 Sep 2020 10:21:41 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so5491088wmb.4;
        Fri, 11 Sep 2020 10:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZYLCyBjQyp32UvioZI9dI62las+ZertDitrmjLRi8jA=;
        b=a/NUs0Hlds3VDFvbye2i83Z9agD+LQlNFO6UQb9r68CTYKMrbYwyiJIl8w35wrXaGy
         58mo1WSmd3KFDpUFyw1orKMmEbn35VoayJ0lS/HLfK8J0rcga5m+18HYXjcH3eTu+l6v
         GTszyps9TSlP8cChQLoWw4O3qcHA/1BTvYrnCjWSwCUI5BmDik3FRz9pb6AgOwD+uZuu
         0/j+7KXKqQ1liHnXV6QIaSf7yGo1LONLH0Hgr8/+bcW4kn4moA/nbtEcdPHeD7fu/7E6
         ts+F7vAjs+Q+kV6HgUy4OT62XySiYxRhbo1yFR3EsGcLi740Lrm6B/IkbHzDfNRr+gOT
         AbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZYLCyBjQyp32UvioZI9dI62las+ZertDitrmjLRi8jA=;
        b=EuRrgts0OpnM10H6fenjXuhKXK396NBCiUj8kvU3Fzs7dxC6gxU8ZAM0onxvmvkZlo
         B9km33xBI2njyX58BwFrFE6S6XW+j2HCStGyxmn3IbPLV3ODo4FeXOr0QDwe0AdFNebd
         aRXTwsItY5JpgkziE5R7jo6OZIcexWDy+kd1AtRgNTAT6eTAVGgdsd/F1nyrsllTu3gK
         2KU4tljcdDkItYSuqA6379oYzLGnUG+DA+GYPuNobUyMxVZeYLkw3Sv5+vaDWzHMNWJB
         iiRkLGQDw4U1Vylz5vz3KYVKIP/BlLsegn7vCN92UfyCYCcN+JTsn/s8mMuSLFht+y/w
         b3mA==
X-Gm-Message-State: AOAM530w3zXM/W0/pn1rKj50vCF/R6RErn9ieehHt2E5aELkd2LihN4V
        x4F3qffBgd6161AKUSnSo5g7TlBxF5A=
X-Google-Smtp-Source: ABdhPJwQbaGezs0jxLxJaRpOyvd3HRTnRUJancJPZMXY0zqXjMEneaHkPqDMZIPVtMaWvFfgsNyK6w==
X-Received: by 2002:a05:600c:2182:: with SMTP id e2mr3277127wme.102.1599844899832;
        Fri, 11 Sep 2020 10:21:39 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g2sm5919503wmg.32.2020.09.11.10.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 10:21:39 -0700 (PDT)
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
Message-ID: <f8d22f30-a03d-34c6-1736-0a73a7a6cdc8@gmail.com>
Date:   Fri, 11 Sep 2020 19:21:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-11 17:28, Alejandro Colomar wrote:
> Hi Stefan,
> 
> On 2020-09-11 16:35, Stefan Puiu wrote:
>  > Hi,
>  >
>  > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
>  > <colomar.6.4.3@gmail.com> wrote:
>  >>
>  >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>  >> ---
>  >>   man3/getgrent_r.3 | 2 +-
>  >>   1 file changed, 1 insertion(+), 1 deletion(-)
>  >>
>  >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
>  >> index 81d81a851..76deec370 100644
>  >> --- a/man3/getgrent_r.3
>  >> +++ b/man3/getgrent_r.3
>  >> @@ -186,7 +186,7 @@ main(void)
>  >>
>  >>       setgrent();
>  >>       while (1) {
>  >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
>  >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>  >
>  > I'm worried that less attentive people might copy/paste parts of this
>  > in their code, where maybe buf is just a pointer, and expect it to
>  > work. Maybe leaving BUFLEN here is useful as a reminder that they need
>  > to change something to adapt the code?
>  >
>  > Just my 2 cents,
>  > Stefan.
>  >
> That's a very good point.
> 
> So we have 3 options and I will propose now a 4th one.  Let's see all
> of them and see which one is better for the man pages.
> 
> 1.-    Use the macro everywhere.
> 
> pros:
> - It is still valid when the buffer is a pointer and not an array.
> cons:
> - Hardcodes the initializer.  If the array is later initialized with a
>    different value, it may produce a silent bug, or a compilation break.
> 
> 2.-    Use sizeof() everywhere, and the macro for the initializer.
> 
> pros:
> - It is valid as long as the buffer is an array.
> cons:
> - If the code gets into a function, and the buffer is then a pointer,
>    it will definitively produce a silent bug.
> 
> 3.-    Use sizeof() everywhere, and a magic number for the initializer.
> 
> The same as 2.
> 
> 4.-    Use ARRAY_BYTES() macro
> 
> pros:
> - It is always safe and when code changes, it may break compilation, but
>    never a silent bug.
> cons:
> - Add a few lines of code.  Maybe too much complexity for an example.
>    But I'd say that it is the only safe option, and in real code it
>    should probably be used more, so maybe it's good to show a good 
> practice.
> 
> 
> Here's my definition for ARRAY_BYTES(), which is makes use of
> must_be_array() similar to the kernel ARRAY_SIZE():
> 
> 4.1-
> 
> #define is_same_type(a, b)                    \
>      __builtin_types_compatible_p(__typeof__(a), __typeof__(b))
> #define is_array(a)            (!is_same_type((a), &(a)[0]))
> #define must_be__(e, ...)    (                \
>      0 * (int)sizeof(                    \
>          struct {                    \
>              _Static_assert((e)  __VA_OPT__(,)  __VA_ARGS__); \
>              char ISO_C_forbids_a_struct_with_no_members__; \
>          }                        \
>      )                            \
> )
> #define must_be_array__(a)    must_be__(is_array(a), "Not an array!")
> #define ARRAY_BYTES(arr)    (sizeof(arr) + must_be_array__(arr))
> 
> 
> The macro makes use of quite a few GNU extensions, though, which might
> be too much to ask.
> 
> Actually, I was also going to propose this macro for the kernel itself,
> to make it a bit safer.
> 
> There's a much simpler version of ARRAY_BYTES(), which requires the
> macro to be defined in a header that is not a system header (to avoid
> silencing warnings), and also requires a recent version of the compiler
> to show a warning:
> 
> 4.2-
> 
> #define ARRAY_SIZE(arr)        (sizeof(arr) / sizeof((arr)[0])
> #define ARRAY_BYTES(arr)    (sizeof((arr)[0]) * ARRAY_SIZE(arr))
> 
> 
> What do you all think about the 5 different options?  I don't know which
> one is better.

I'd say 4.2 is the best one for the man pages.  Just 2 one-line macro 
definitions, very good safety, and pretty clear code.

Your thoughts?
