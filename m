Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10B0E57F51D
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 14:49:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232908AbiGXMtl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 08:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiGXMtl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 08:49:41 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C7F106
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 05:49:39 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v13so4585686wru.12
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 05:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=iP+TN4SMAh0x9dwqmGi0NMJlTTRckM7nxnx+bTPhPJA=;
        b=SLK4YgN1OJQ5fHaVMfJWE511sd6E9S80dvX2FQg6nXsVcqSNxzeQ9cB+z1LE4VSKSh
         dQz08cfPGWnoIOavuiyX8rIdiIlUs+Xmnn8mVtdBjDuL3VaviiaicOhmyTY/hNjwVFM+
         L0O8LATGnAcn6fuUW9sZy0fl6DypdOHPvXrhOPoNV0heEns3OebfOOBHwFzZ5Y4HVGov
         rpTqpelNek8JimXpRUEw8RNkjPVA5AC1YhlONuRvTdiFZBmGa1CBg+9iXrTya6PvM6on
         J51/t1s5iNgzRL6BUuryDSVk/FqsvE58J0SAdCmuLSo7fE0C4Tu/TNh86rUWPv0P14PP
         vLFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iP+TN4SMAh0x9dwqmGi0NMJlTTRckM7nxnx+bTPhPJA=;
        b=zqNmzERCW3Ym0hV2V6ML92R6B9oynuZIwLtWicRyHveylKLEoIiyzJmHHmow7CcpDm
         93DW8P2Fw+qzU1OVymhQXxmyobXfkTDdc8CLZts/Jo9kb0wsybKoHU6njc+yU+hAbp0q
         hRRgMIV+9WT6y8gN/FratBb9HiAAlyhgNMYC0K8lZvnlgphK8bgRxy3T2I1+VMXVw8VN
         vjX+GJkD0R/eR4NxnrGIe5Idc/lIcjfd3Z9fPfc+Y4iS8VJjaenH/BXheBxsoOAVTy3p
         Yh0biZyQc3q0dA8IhpQQDEoPPGwlw3xLszm8v5vd4wE9WZPpiSgVoM4szDVE2/m/Q9t+
         xiyw==
X-Gm-Message-State: AJIora8dRAV7kNjM48e8PqSMPELjHcVGGRPkwYhedTzYI23yEjA7iiDW
        6mJYeUi/KtyqYItDsVyf06+PvyIlSQU=
X-Google-Smtp-Source: AGRyM1uLpLxEDODSkhwunEfDER93P9gzqybNoiIz0QTnO3msYEeBuprdEW/jtGqcor+gNg/I6822AQ==
X-Received: by 2002:adf:ead2:0:b0:21d:8b49:6138 with SMTP id o18-20020adfead2000000b0021d8b496138mr5338470wrn.138.1658666978022;
        Sun, 24 Jul 2022 05:49:38 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p10-20020adff20a000000b0021baf5e590dsm9172136wro.71.2022.07.24.05.49.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jul 2022 05:49:37 -0700 (PDT)
Message-ID: <3659c8c9-74df-a23c-5102-54dc9fb3a8c9@gmail.com>
Date:   Sun, 24 Jul 2022 14:49:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] NULL.3def: Add documentation for NULL
Content-Language: en-US
To:     Ralph Corderoy <ralph@inputplus.co.uk>, linux-man@vger.kernel.org,
        groff@gnu.org
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220723102353.F050322157@orac.inputplus.co.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220723102353.F050322157@orac.inputplus.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ralph!

On 7/23/22 12:23, Ralph Corderoy wrote:
> Hi Alejandro,
> 
>> As hinted in recent mails to groff@ and linux-man@,
>> I'm going to inaugurate a new [sub]section for constants.
> 
> This seems a bad idea.  They're quite at home in section 3.

Others disagree, with the argument that 3 is reserved for functions.
3type is already in use by systems such as Illumos, Solaris and a few 
others, for types.  Mirroring that for constants is a good thing; I think.

> 
>> I think it should contain constants, normally represented by
>> object-like macros in C.  But it should also contain other forms of
>> constants in other languages (e.g., C++'s constexpr variables), so I'm
>> not convinced by the name 3def.
> 
> 3const was seem more in line with how you keep referring to it.

Agreed.  Thanks!

> 
>> I'm (very) tempted to inaugurate section 11 for this
> 
> That's seems a worse idea.  They're far too trivial to deserve their own
> section.
> 
>> The initial page for this section is non other than NULL ;)
> 
> It seems a bit simple to be worthy of its own man page.

Oh, seemingly simple things are sometimes the most complex ones, with 
interesting surprises.  I've documented a few surprises of NULL that not 
many programmers know, and even those that know the details could get 
some help by having such a simple reminder.

I remember very well a recent discussion I had (involving mtk and a few 
others) about NULL, where I was wrong about it and Michael was right 
(and I like to think that I usually know very well those kinds of little 
language-lawyer details).  The discussion would have been resolved 
immediately by just consulting NULL(3const).

> 
>> +.TH NULL 3def 2022-07-22 Linux "Linux Programmer's Manual"
>> +.SH NAME
>> +NULL \- null pointer constant
> 
> It's one of them.  An integer constant expression with the value 0 is
> also a null pointer constant.

Yup; I forgot to document that detail.  Will add for v2.

> 
>> +.SH SYNOPSIS
>> +.nf
>> +.B "#define NULL  ((void *) 0)"
> 
> Does the reader need to know the definition of a macro?

Normally, I'd put a placeholder /* ... */, but in this case, POSIX is 
very clear about the definition of NULL (it doesn't specify the 
enclosing parentheses, but I think it's not a big deal, and glibc has 
them --and I guess most sane implementation also do--).


> Are you intending to do this for all macros and constants?

No.  Most macros will be defined as

#define MACRO  /* ... */

As I already do in int8_t(3type).

> 
>> +A null pointer is one that doesn't point to a valid object.
> 
> ...or function.

Thanks.  I wasn't sure if I should mention that, but I'll do.

> 
>> +When it is necessary to set a pointer variable to a null pointer,
>> +it is not enough to use
>> +.IR "memset(&p, 0, sizeof(p))" ,
>> +since ISO C and POSIX don't guarantee that a bit pattern of all
>> +.BR 0 s
>> +would represent a null pointer.
> 
> ‘p = 0’ would suffice there; it may be better to give the typical case
> where the pointer is part of a struct.

I didn't want to overcomplicate the example, but since that's the case 
where it usually matters, I'll do.

> 
> Also, sizeof is an operator, not a function as the parenthesis and lack
> of space suggest.  ‘memset(&p, 0, sizeof p)’ is clearer.  Perhaps you're
> following some house style.

Ahh, yes, it's house style.  I like the kernel coding style in that 
regard.  Also, ISO C seems to be making the parentheses mandatory for 
new operators (e.g., _Alignas()[1]), so I prefer using parens here.

[1]: 
<https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2731.pdf#subsection.6.7.5>

> 
>> +.SH SEE ALSO
>> +.BR memset (3),
>> +.BR void (3type)
> 
> More importantly, see also stddef.h(0p), as the man page hasn't yet told
> me how to obtain NULL's definition.  Am I to copy the definition into my
> code?

Yup, I forgot to put #include <stddef.h> in the SYNOPSIS; that's already 
fixed in my working copy.  I think it's not necessary to add the header 
to SEE ALSO, having it in the SYNOPSIS.  I also removed memset from SEE 
ALSO, since it's not really a related function, and mentioning the thing 
in BUGS is enough.  So SEE ALSO is only void(3type) now.

> 
> POSIX has a man page per standard header; that seems a good level to
> cover all the little things which each header file is defined to
> provide.

Well, stddef.h(0p) doesn't cover many of the interesting details covered 
by this page, so I guess I showed some of the reasons to have such a 
separate page.  Having stddef.h(0) document all of those details would 
make it unreadable.

>  If you really want to create work, consider a man page which
> tables NULL, EOF, etc., and the header-file man-page to read.
> 

I'm not sure EOF has much relation with NULL to put it in the same page.
But it certainly is one important macro to document next, since it's 
very often misused.

Thanks for your thorough review!

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
