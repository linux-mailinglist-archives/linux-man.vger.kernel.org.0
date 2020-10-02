Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 937B4281AF3
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 20:38:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726813AbgJBSiv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 14:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726215AbgJBSiv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 14:38:51 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A27ACC0613D0;
        Fri,  2 Oct 2020 11:38:50 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y15so2730962wmi.0;
        Fri, 02 Oct 2020 11:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O7CTmsGhL7MIZaaII1HOO9sBm+Xkxu1dusidNhe5HHA=;
        b=brm67+Ss0ORnAULu1Iq/DWbMgvD4zjSpY+KDQQ5H6eNnkF0diBTGG7KHAk4h++pfqL
         jk6FM327eSqoic8cWZwf7BO0IB+kV1G+dqG3YKQvmOhY6bqbEiC1tQcKgr0og/FHG7V4
         Lh7ZJuhHqiyVzrEv8g7S1e11YmfsxsbaPVfdl8nyJaXoMMFeIwxmIkt0KFdKvri9Ff/P
         2Qb3gNhjDOY0vmAdNGL20XBJvpTShzCtxXwJ4Yme/bK0eD6dVBq9eRqktWekN4bm68lS
         H28DwVY5MjWZO8jtQXaXabOkkgVL9E+B2iqA/S5bWO1xWYTNFRZI4J7Bndu8JJ/Nb37x
         R1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O7CTmsGhL7MIZaaII1HOO9sBm+Xkxu1dusidNhe5HHA=;
        b=B/1tONa8GeDtyI+X6RpNceVgLiezuFs4HCRWeYjqkfa48LBvfyufW+nSJspKQFVUja
         GBx4t1nu8yXZ+ISdkRCMy+BHAbnGYP76Qin8D1562SaxSuU/SEkBOn2yxGjflX2XEcvv
         uga8FzKsCsRnvzj/2TmeX3jqLZFPN+U5Hn7CjBlDJktwXTsxrqJUODhj+nxVT14HoFtR
         kOr42ZJNGmjPPJHPu35TBlHPrbUHaDRMlJCD1GggA3jp4+MzakUAQy+kwxaq7CRna2ut
         YoYtWIRFf578hqgfmZOEtZeyC7roTmgsRCdgyHvsfx4uJBmK1vRRbsxfALYMKVN/Hneo
         Arow==
X-Gm-Message-State: AOAM530Hx//sl4VIdcVeAaAjivLKNs3NDCJT5GZjL5ByI93f7GSP4WyR
        4S+GsR+8OhIz4tJjLy4wzAY=
X-Google-Smtp-Source: ABdhPJwvSOdohluwOml1gsvvgfnRtlznCLuSPR8fOJf/IQmMY3vWAe+kyFQZpFBglxYN3TrGfhfHFQ==
X-Received: by 2002:a05:600c:414a:: with SMTP id h10mr4441100wmm.79.1601663929238;
        Fri, 02 Oct 2020 11:38:49 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id m3sm2607608wrs.83.2020.10.02.11.38.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 11:38:48 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
Date:   Fri, 2 Oct 2020 20:38:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-02 18:53, Paul Eggert wrote:
 > On 10/2/20 8:14 AM, Alejandro Colomar wrote:
 >
 >> +.I void *
 >
 > GNU style is a space between "void" and "*", so this should be '.I
 > "void\ *"', both here and elsewhere. The backslash prevents a line break.

.I void *

renders with a space in between.
I'll show you the rendered version at the end of this email.

 >
 >> +Conversions from and to any other pointer type are done implicitly,
 >> +not requiring casts at all.
 >> +Note that this feature prevents any kind of type checking:
 >> +the programmer should be careful not to cast a
 >
 > Change "cast" to "convert", since the point is that no cast is needed.

Ok.

 >
 >> +.PP
 >> +The conversion specifier for
 >> +.I void *
 >> +for the
 >> +.BR printf (3)
 >> +and the
 >> +.BR scanf (3)
 >> +families of functions is
 >> +.BR p ;
 >> +resulting commonly in
 >> +.B %p
 >> +for printing
 >> +.I void *
 >> +values.
 >
 > %p works with any object pointer type (or in POSIX, any pointer type),
 > not just  void *.
In theory, no (if otherwise, I'd like to know why):

[[
p
     The argument shall be a pointer to void. The value of the pointer 
is converted to a sequence of printable characters, in an 
implementation-defined manner.
]] POSIX.1-2008

However, it's unlikely to cause any problems, I must admit.

 >
 > Should also mention "void const *", "void volatile *", etc.

I already answered to this:
https://lore.kernel.org/linux-man/CAH6eHdQhh46TjVc72meWFTWCi7iouAod0iC1zLRga+c-36G+ig@mail.gmail.com/T/#m6f657e988558a556cb70f7c056ef7a24e73dbe4a

 > Plus it
 > really should talk about plain "void", saying that it's a placeholder as
 > a return value for functions, for casting away values, and as a keyword
 > in C11 for functions with no parameters (though this is being changed in
 > the next C version!). I sent comments about most of this stuff already.

'void' is a completely different type from 'void *'.

This patch is for 'void *'.

If 'void' is documented,
it'll be in a different entry (although in the same page),
and therefore, that'll be for a different patch.

Thanks,

Alex

__________________

void *
       According  to  the  C language standard, a pointer to any object
       type may be converted to a pointer to void and back.  POSIX fur-
       ther requires that any pointer, including pointers to functions,
       may be converted to a pointer to void and back.

       Conversions from and to any other pointer type are done  implic-
       itly,  not  requiring casts at all.  Note that this feature pre-
       vents any kind of type checking: the programmer should be  care-
       ful not to cast a void * value to a type incompatible to that of
       the underlying data, because that would result in undefined  be-
       havior.

       This  type  is useful in function parameters and return value to
       allow passing values of any type.  The function will usually use
       some  mechanism to know of which type the underlying data passed
       to the function really is.

       A value of this type can't be dereferenced, as it would  give  a
       value  of  type  void  which is not possible.  Likewise, pointer
       arithmetic is not possible with this type.  However, in  GNU  C,
       poitner  arithmetic  is allowed as an extension to the standard;
       this is done by treating the size of a void or of a function  as
       1.  A consequence of this is that sizeof is also allowed on void
       and on function types, and returns 1.

       The conversion specifier for void * for the  printf(3)  and  the
       scanf(3)  families  of  functions is p; resulting commonly in %p
       for printing void * values.

       Versions: The POSIX requirement about compatibility between void
       * and function pointers was added in POSIX.1-2008 Technical Cor-
       rigendum 1 (2013).

       Conforming to: C99 and later; POSIX.1-2001 and later.

       See also: malloc(3), memcmp(3), memcpy(3), memset(3)

       See also the intptr_t and uintptr_t types in this page.
