Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6EE431140
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 09:16:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230380AbhJRHSV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 03:18:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230370AbhJRHSV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 03:18:21 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62CE1C06161C
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:16:10 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t2so39516163wrb.8
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=serlJXiYFgrO1HBH31f1QShZbKfYyAYSiqOElTMxA1g=;
        b=WFpSIjKFRCYijE6F2mSjWxKytkQ7eq5GvlC8++5/hyoHXnjCLMjCNRf3NRYBJZZaoR
         Hq1nFphoKAe4GMh6GbFKBUynmf9IoL3dR7Yqq6RVB4kSdnMlDVtZPUa6ylnq4mNmpnUG
         uRvdvvpvO3CLi1JlnLA4pM6j+PHVGmHP80CqCTk59Ooh/yb95H/zj3fQZ5SGjyBoAn2H
         U5DzUneZEuyhdJEPtiOCZOgewc7W+hiJj9ZqSZzRnLFe0M7DUy+kJEOQoo7g38NSNDHf
         pCesXZHyZM59c9niFeFAM0lV6zAESTVBFIv/4lgfpclLqFZVmYIxazK7cTZEif0bor4M
         Z2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=serlJXiYFgrO1HBH31f1QShZbKfYyAYSiqOElTMxA1g=;
        b=mQ0onmXAVG3uuynZ7VDx889iQlRCVVfY3dF76JauLU/CpPz8MrviNIJ3xlbWNpK5wQ
         zQj3LtVjnctKT/3/bJxHS1RShBekZhTwORpWmLENrb9hX8Rd6xG2D7jUmZuCdEzrdI/i
         9x2d7fOvW8TKKA5S+2CNnjBS13k7cucjfAzH5cbCi/cc82HKQZMHYNl+ht3TSFw3InPl
         H/VRB/sbHzP3HvwH1GPfFy4dVGXYbopclEHwm2T4HNmY4WknkDc+AQmdUPM5R6wQmTiW
         fMVnLRkhXt//uY7UZ2Pc2YUcDOK1tzvpfIiKU+8sguwNrVEmMpA08uJ1t3j9XToIeqnw
         Cz3A==
X-Gm-Message-State: AOAM531NsmM0HQ4f1oBK+YQi3gk7B90IDglMyW0EQFOpT6uMk8xzLasF
        bha6AxTb79HWkyGcnBcRjlzIxPcQyoI=
X-Google-Smtp-Source: ABdhPJyPqduJZU295xdnJOvgmENcvfP9HSN3dRigeqT9CdP+286HdmixAwNfuUkHQeiih6uogUZ7lQ==
X-Received: by 2002:adf:ef4d:: with SMTP id c13mr33252343wrp.17.1634541368931;
        Mon, 18 Oct 2021 00:16:08 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z135sm6823959wmc.45.2021.10.18.00.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 00:16:08 -0700 (PDT)
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
 <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
 <20211018055719.i3rjz2brwqsygqrp@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c454d2ed-a097-7a42-5300-e4c9775da421@gmail.com>
Date:   Mon, 18 Oct 2021 09:16:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211018055719.i3rjz2brwqsygqrp@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 10/18/21 7:57 AM, G. Branden Robinson wrote:
> Hi Jeremy,
> 
> At 2021-10-18T13:05:25+0800, Jeremy Kerr wrote:
>>>> +Addressing data is passed in socket system calls through
>>>> +.B struct sockaddr\_mctp
>>>
>>> That escape is unnecessary.  Did you see it in another page perhaps?
>>
>> I thought I'd seen some odd line-breaks at the underscore, but can't
>> replicate that now. Will remove.
> 
> My groff experiments don't reveal _ or \_ as being permissible
> break points[1].  However, the structure tag _could_ break like this:
> 
> sock‐addr_mctp
> 
> In other words (if my UTF-8 gets mangled), after "sock".
> 
> To prevent that, you can prefix the word with the hyphenation control
> escape sequence, "\%".  This escape sequence is extremely portable; it
> dates back to 1970s AT&T troff.

Hmm, this is one of the few points we disagree, it seems :)

As I said previously, I think this uglyfies code too much, for something 
that I think should be default (it is rarer to want break points at 
highlighted words than not wanting them).  But, to try to confirm my 
thoughts, I'll accept using this in the man-pages and see what happens 
(maybe some day, a winter day it shall be, you'll wake up and see a cold 
commit reaping them all :p)

> 
> Further, if you wanted to prevent breaking between the "struct" keyword
> and the structure tag, you could use a nonbreaking adjustable space
> escape sequence, "\~".  While this was a groff innovation (about 30
> years ago), it's been adopted by Heirloom Doctools troff and mandoc(1),
> so it's pretty portable to systems likely to install the Linux
> man-pages.

Ah yes, I should have spotted that one :p

> 
> So we might write
> 
> .B struct\~\%sockaddr_mctp

Okay.

> 
> for instance in running text (that is, in sentences).  (When filling is
> off, as in code examples and the synopses of most pages documenting C
> interfaces, neither of these escape sequences is necessary; unfilled
> lines are neither automatically hyphenated nor adjusted.)
> 
> Just a typographical FYI.  I know these issues sometimes frustrate
> people.
> 
> Regards, > Branden

Thanks!

Alex

> 
> [1] I'm using groff's defaults.  It's possible to change the groff
>      "hyphenation code" of any character, but few do so.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
