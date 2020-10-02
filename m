Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5E9928119D
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387790AbgJBLyI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725964AbgJBLyI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:54:08 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D203C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 04:54:06 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id 13so1393364wmf.0
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 04:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lENRZqPCREonwvx5veevDl3CTPX9Kt98I7Izc9hU0TU=;
        b=hEQ2UEWTTDxt75CFP2nMZYo+gpsxD+wXk3FrF9KhfHoyGOgHdq0MnfVYGryfsjMUXc
         3JrHEBHD9EzY88olSKBCXX9iCHlTL8mtnwG8E6Vg3EIVExifPiij4hT33OVUv8hruP/C
         6pE4HB6ep8PrSFtDx/kHmGpQYxket6batuLVD/mALkiUUg+2n0yfwabgvlZw45rjo1AJ
         2tbh4EYeQl+QtwTsbKsK0qzqHgE2n6N2QfC62+TW9LiLxZtCzd1xSnSWeIHuEFS5qYUR
         1EPw6Lrq8WHMCxyo5uY74xgvzABGQKLQzPv+10VGsI+3mkdwcXeviiEF/q1U+vtJXkjn
         /gQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lENRZqPCREonwvx5veevDl3CTPX9Kt98I7Izc9hU0TU=;
        b=VedTOJ9J1Wr69UJNLjIE+l43aSvH5Eb4Qfh6+jGJlLJNuGZ/Izt1JRe/SPIU4fSWMH
         QXxAsrFiAF1MESa/hCJaYNrOtRJF8yn1shg3Q2j1MHi/IdsQSqd31D7fFkpTS4z8S/re
         2l2M0MLNIYILZXe40cN9pU15AdDF8hW9QOcJJtOq6O9kMp3EyD61j/+TzrR4gzQ3bZwp
         JowRKaOsHdhxkNRi4/Cgb2QQ6N9cseuFxuMDWi9TTbWJPpV2EmiDAjHNCODstlzfd8eh
         d8k8zMxzng3hbRC4UZ13qHFGbJzfCnoixGOFTanK8kxajgKlVXET6RTF9UEMkal6OXJB
         XSHA==
X-Gm-Message-State: AOAM533bsn4DxxOpOzBNwmgt6s5WU3wI6buGC+KiWomlNqVVE+T/BpN4
        7p30F8FZXaGK+AzjiJyHzP8=
X-Google-Smtp-Source: ABdhPJz1oQB62XyEtdRi2ypHw5G96+vGAZWmtw4T8Br4NPirlEwsizYGjwXUDpjNAQpDE64sijyX4A==
X-Received: by 2002:a1c:9a0c:: with SMTP id c12mr2541515wme.85.1601639645085;
        Fri, 02 Oct 2020 04:54:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id j10sm1567926wrn.2.2020.10.02.04.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 04:54:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
 <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <51fd9c8d-9030-775f-8c35-f5e41bab4c0e@gmail.com>
Date:   Fri, 2 Oct 2020 13:54:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 6:55 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-10-01 18:38, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>>> +According to the C language standard,
>>> +a pointer to any object type may be converted to a pointer to
>>> +.I void
>>> +and back.
>>> +POSIX further requires that any pointer,
>>> +including pointers to functions,
>>> +may be converted to a pointer to
>>> +.I void
>>> +and back.
>> I know you are correct about POSIX, but which part of the
>> standard did you find this information in? The only
>> reference that I find in POSIX is the dlsym() spec. Is it
>> covered also somewhere else in the standrd?
>>
>> Thanks,
>>
>> Michael
>>
> 
> Hi Michael,
> 
> I've bean searching, and dlsym is the only one:
> 
> ________
> 
> user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "pointer to a 
> function"
> functions/regfree.html:530:&quot;undefined&quot; means that the action 
> by the application is an error, of similar severity to passing a bad 
> pointer to a function.</p>
> functions/dlsym.html:138:<p>Note that conversion from a <b>void *</b> 
> pointer to a function pointer as in:</p>
> functions/regcomp.html:530:&quot;undefined&quot; means that the action 
> by the application is an error, of similar severity to passing a bad 
> pointer to a function.</p>
> functions/regexec.html:530:&quot;undefined&quot; means that the action 
> by the application is an error, of similar severity to passing a bad 
> pointer to a function.</p>
> functions/V2_chap02.html:3039:<p>There are three types of action that 
> can be associated with a signal: SIG_DFL, SIG_IGN, or a pointer to a 
> function. Initially,
> functions/regerror.html:530:&quot;undefined&quot; means that the action 
> by the application is an error, of similar severity to passing a bad 
> pointer to a function.</p>
> user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "function pointer"
> basedefs/glob.h.html:165:"../functions/glob.html"><i>glob</i>()</a> 
> prototype definition by removing the <b>restrict</b> qualifier from the 
> function pointer
> xrat/V4_xsh_chap02.html:114:when the application requires it; for 
> example, if its address is to be stored in a function pointer variable.</p>
> functions/dlsym.html:138:<p>Note that conversion from a <b>void *</b> 
> pointer to a function pointer as in:</p>
> user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "pointer to 
> function"
> functions/dlsym.html:73:converted from type pointer to function to type 
> pointer to <b>void</b>; otherwise, <i>dlsym</i>() shall return the 
> address of the
> user@debian:~/Desktop/src/Standards/susv4-2018$
> 
>  From those, the only one that documents this is functions/dlsym.
> The rest is noise.
> 
> The most explicit paragraph in dlsym is the following:
> 
> [[
> Note that conversion from a void * pointer to a function pointer as in:
> 
> fptr = (int (*)(int))dlsym(handle, "my_function");
> 
> is not defined by the ISO C standard.
> This standard requires this conversion to work correctly
> on conforming implementations.
> ]]

Okay -- so, one more thing for a revised (squashed) patch.
I think you better say that that POSIX requirements exists 
only since POS0X.1-2008 Technical Corrigendum 1 (2013).

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
