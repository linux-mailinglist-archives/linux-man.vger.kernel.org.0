Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD0B9280455
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732213AbgJAQzI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQzI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:55:08 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27440C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:55:08 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id j136so2589396wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6thW6uIzKo0AKUx3z1dt90fnAdUCuGiPlcRQ/kj9HnY=;
        b=rebj3f3AW67QJeOWEtUX9RtfI0VlOpeM7wzL14FFUmiUbt2QR4NSbV+Q3ZiYp7Xr3Q
         KoFT2KMbqOLiKx4Uq6qJT2tegAsfod11DOnwtiAGfslzlckXhHz0r9Z+9Khm+jqgAjMp
         UMCUOQTQ9JYFawI2uGsNpBzA3OICD8y4eNhQnsu0wg6KWonR0xkrjsWE9LYzfu3IxY5q
         aUFMP5UfoFfRAxl3xrvv0L/CaEOwRkQTBCN8yaBtfAXaBSXtl/qVFVvg3U8YbWHwTOo7
         Km81tJyIIW7KKtT0aqHFoN+wUhLy6A0fvyIS+fqVDZngngHRfeXAqEEAzXTI9Lc8yPe+
         gocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6thW6uIzKo0AKUx3z1dt90fnAdUCuGiPlcRQ/kj9HnY=;
        b=H0JZSZb+k2ZHCdxiIwQe8nIBdkQ40xn9pvFKAlXgQYjkdP4XWUonVtkISSfvXdK+gz
         9CWRoYdKJiz6Q4AnEW0r9AoFlUUTadCVjSfh4WauA/C+6j1de1pie8aUxls/1p7BmdmO
         c5fFjpKdBm4REIQtQ4sJ+Q1mQd19DiX1q66D7aQMEA/kIrJfaFmGURm6B0KXH4qw8A6M
         /nbU66FvMrnjM13CpafdTmc6RnMuEh5f+vr1R8B0oYWdj7fxFG29SdGFN2D8n+wxxUSe
         J4KVPG/AQKQ2T3IN9oU/AlSM+KGoOuVCqtExdeHieyoX6fr1Cc8tocXp4xf/6yg8p/Ni
         FAfQ==
X-Gm-Message-State: AOAM531kPbpsskxHHXC6LTk5QiSgnPC8Xm3JdesrFtST+OPFYEJ75uBh
        C+MBbKNUC86NC9QoALUGqkw=
X-Google-Smtp-Source: ABdhPJynBwL8B/dPnbv/POOgme/EYgQ8xb2q9YNIKii1u4FdsmU899H5MSVGe6Nc3+BzGOiOrDfrNg==
X-Received: by 2002:a05:600c:215:: with SMTP id 21mr921762wmi.105.1601571306836;
        Thu, 01 Oct 2020 09:55:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n2sm858530wma.29.2020.10.01.09.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 09:55:06 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com>
Date:   Thu, 1 Oct 2020 18:55:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-01 18:38, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
>> +According to the C language standard,
>> +a pointer to any object type may be converted to a pointer to
>> +.I void
>> +and back.
>> +POSIX further requires that any pointer,
>> +including pointers to functions,
>> +may be converted to a pointer to
>> +.I void
>> +and back.
> I know you are correct about POSIX, but which part of the
> standard did you find this information in? The only
> reference that I find in POSIX is the dlsym() spec. Is it
> covered also somewhere else in the standrd?
> 
> Thanks,
> 
> Michael
> 

Hi Michael,

I've bean searching, and dlsym is the only one:

________

user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "pointer to a 
function"
functions/regfree.html:530:&quot;undefined&quot; means that the action 
by the application is an error, of similar severity to passing a bad 
pointer to a function.</p>
functions/dlsym.html:138:<p>Note that conversion from a <b>void *</b> 
pointer to a function pointer as in:</p>
functions/regcomp.html:530:&quot;undefined&quot; means that the action 
by the application is an error, of similar severity to passing a bad 
pointer to a function.</p>
functions/regexec.html:530:&quot;undefined&quot; means that the action 
by the application is an error, of similar severity to passing a bad 
pointer to a function.</p>
functions/V2_chap02.html:3039:<p>There are three types of action that 
can be associated with a signal: SIG_DFL, SIG_IGN, or a pointer to a 
function. Initially,
functions/regerror.html:530:&quot;undefined&quot; means that the action 
by the application is an error, of similar severity to passing a bad 
pointer to a function.</p>
user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "function pointer"
basedefs/glob.h.html:165:"../functions/glob.html"><i>glob</i>()</a> 
prototype definition by removing the <b>restrict</b> qualifier from the 
function pointer
xrat/V4_xsh_chap02.html:114:when the application requires it; for 
example, if its address is to be stored in a function pointer variable.</p>
functions/dlsym.html:138:<p>Note that conversion from a <b>void *</b> 
pointer to a function pointer as in:</p>
user@debian:~/Desktop/src/Standards/susv4-2018$ grep -rn "pointer to 
function"
functions/dlsym.html:73:converted from type pointer to function to type 
pointer to <b>void</b>; otherwise, <i>dlsym</i>() shall return the 
address of the
user@debian:~/Desktop/src/Standards/susv4-2018$

 From those, the only one that documents this is functions/dlsym.
The rest is noise.

The most explicit paragraph in dlsym is the following:

[[
Note that conversion from a void * pointer to a function pointer as in:

fptr = (int (*)(int))dlsym(handle, "my_function");

is not defined by the ISO C standard.
This standard requires this conversion to work correctly
on conforming implementations.
]]
