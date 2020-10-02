Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B94F281B4D
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 21:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726215AbgJBTBh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 15:01:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725991AbgJBTBg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 15:01:36 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FAFAC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 12:01:36 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k10so2895813wru.6
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 12:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=r+fzPKCBU2bObjLgaHHSz8nWQ1qfzAC2vRidNLoubsw=;
        b=g7pU521o6T+3EgFx3SMPbg+N7OqVjf4IaUO3hZGXAyJtWtpyUxItpQY1UMa3uDIGR0
         hgMXvLhkRL/cj/TC8K5DfqkA8KoyuNdHdj7RW8v2wxlypqZS5jRNMBhrfc9PVbPTGRXi
         BXRW8/OchUoUgTL6Q1boAEpSLA/EGwKCwc+h6P0snuXOnddLZ4bt47uf/4JZV1ZQY/9h
         eO4qLE0puhoWwihk74bbMdAUQRRW/zR17RRzeoPdTGdvyirFUE37BJk0Mvc+JfmVvO/A
         ELQhMo/H3xjPldFyhrgZJGUKxklS+5J2mNkS3IWoRZZhirK0uDMJCw6773yx3A7Kfzx0
         yzgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r+fzPKCBU2bObjLgaHHSz8nWQ1qfzAC2vRidNLoubsw=;
        b=s7WZtn2cFislKck5JjbcZPdbyQ5Iu+TsK6/EIygqSWmv43/XxESTJavhOuXChOBPoD
         HonuVcjE1LPgfNhT8I7k+hXh3JKw6SrBmABphDR+W8RI+jpqmohX8qU0HuGKVezsZ+oo
         ycny1z0S9q5tYL07nFZ99EHWgruaY35LOrfjR8X0LoWdsV14yAw9NG3l2gXtjjiuk+QB
         n3p7qITMXcXOMFdTIOgf/ZrsT+zufT9X+0I70lZH4Xw3IJSpe7eqiPujPsvR/tLxMMno
         46rPzuU7XPTQdnAjz7pacm23GwmxrMANq1xPZd9rBNvTypRSDQmqTsWboxU5oXw2n4VU
         SlBg==
X-Gm-Message-State: AOAM530mC/gOz30QLZ+J5QLjRa3c8X4FsT7XE7HuUDGKGfwen/nrD1R+
        BQLpOUB0B8TLvyDKK3CWhmk=
X-Google-Smtp-Source: ABdhPJy3aHH5/0pVxjE7G0Vh9WtNCl650PNLK77B3BBJ8q4Iy7zcn8XNqypEQUvNktO0oYtpINNKpw==
X-Received: by 2002:a5d:4a4a:: with SMTP id v10mr4541567wrs.72.1601665295223;
        Fri, 02 Oct 2020 12:01:35 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y6sm2672896wrt.80.2020.10.02.12.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 12:01:34 -0700 (PDT)
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Florian Weimer <fweimer@redhat.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        mtk.manpages@gmail.com
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
 <20201001163443.106933-2-colomar.6.4.3@gmail.com>
 <87eemg97ew.fsf@oldenburg2.str.redhat.com>
 <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
Date:   Fri, 2 Oct 2020 21:01:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-02 19:52, Paul Eggert wrote:
> Why describe __int128_t in these man pages at all? __int128_t is not a 
> property of either the kernel or of glibc, so it's out of scope.

Well, as I see it, [unsigned] __int128 is as good as [u]int64_t.
They are part of the C interface in Linux.
As a programmer I never cared if it was
Glibc providing me the type with a typedef,
or GCC providing me the type with its magic.

If you propose not to document the stdint types either,
I can see your position, but I'll disagree.



A few personal lines:

I just want to use it, and to do that,
I need a reference manual where to look for how to use it.
And belive me that unsigned __int128 has been very useful to me.

I think having this page with most of the types,
in a centralized manner, is exactly
what I would have needed in the past.
I have had trouble finding where ssize_t was defined.
I could have looked at the POSIX manual,
and I would have easily found that it is defined in <sys/types.h>,
but I didn't even know that it was a POSIX thing
(and I can tell that I'm not the only one who didn't know this :),
so I didn't even know where to search for it.

When I wanted to use unsigned __128, kind of the same thing,
where do you search for the documentation of something
that you don't even know who specified it?

When that happens, the first thing for me is to 'man something'.
If that doesn't give me any useful info, then duckduckgo something.

In the internet there's much info,
but also much of it is incomplete or incorrect,
so if I have the man, I trust the man over anything else
(except for the standard documents, of course).

But the standards documents usually provide the information
in a reverse fashion:
If you know where to look at, you'll find it.
But if you only know its name, it'll be hard to find where it is.

The man provides documentation with the name of what you want to
know about.  Simple and easy.

And man is faster than the internet :)


Regards,

Alex.
