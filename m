Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B556122C529
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 14:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726488AbgGXMaI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 08:30:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726366AbgGXMaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 08:30:08 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9FCC0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 05:30:08 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id lx13so9803691ejb.4
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 05:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZJnomJn/KP31v20JsyQ+zlbCwc+Q5N+EqEOqMmEWCXk=;
        b=FShYVNqNUF9g+i5LBBi9V2p/KfNn0ORrmad1GY5tk1nwd5O47e4pbsKlvVgh7p/+JM
         od9gjxs6zooIOLtf4rrN/v5gRdGe0YRkp9EItteyL/oI1jv6FzvMjXZ3424YkUK/5lGs
         IzuhWD1aw15MBFdiFsPgvu3tuw6msqgjErI9wE/Cr+ny10GKvyxQh4qGHTdSJec8qnNc
         XR9hsrV8wN2ScK7Qm6T2ozvkGpQ9vyl+VOP9FpDuXu1fKlKig8SI079NgYOq3q0zHN+e
         Yq9TGVITRnRP1KeIm8J2uydEVUwKcsSYyRYifHUo6VjyxGpPCtSD9yr5UTip9l7SLHs5
         Y1Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZJnomJn/KP31v20JsyQ+zlbCwc+Q5N+EqEOqMmEWCXk=;
        b=FDyXcXAwE3hUZKgfoC2afgH9vdl+3wqc9dLqBDkQUsSlhyqxd1O4mbHewJ5mWbsvZE
         4/9W/c/F8msw6Y/tWQ+5ygKBqVvqWUcITySFxYlJmQzOciXFfs4ok8EwOQnpjb+zMYdx
         x9kQgRMPVyS6iHzl+awX3q3x4AqpeW+lax75Iv1LgoBqAbN9iUy6oyFHksOmEJedxJZ9
         PrH2Lg7hRB0NEWbrNmvS2NcktNZR3Jxw2CWI4oNyXMYfsRd0Uxm1THf02397/C0piOgZ
         zG+eHxEMthtlug6F4WjQ4/c0UrQgS4EAA7x2cLv3JsMR3orqtmFPQblp/rkJSVBPRkF8
         xraw==
X-Gm-Message-State: AOAM5325xz5fQhs9EFURx9cdyN5ZxNJu5ic7Cm+6gD1Yc5ISPvbrLtKZ
        xmYH84+i2VGZo4oRtL4O4BDF+4eC
X-Google-Smtp-Source: ABdhPJxeHEWbuzo8nAf5LRdZ2coSgleS8l3OqQAdJaR/BUdo/MJBghSv/2R4U1Kp97Fqn+K96UHkhA==
X-Received: by 2002:a17:906:fa9a:: with SMTP id lt26mr8632009ejb.502.1595593806571;
        Fri, 24 Jul 2020 05:30:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id h8sm630457edv.28.2020.07.24.05.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 05:30:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] drop spurious t comment header
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20200724121555.e4l2okob3x3fzk5z@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <beb87fab-b925-fb57-541f-fe5c77ce5cbe@gmail.com>
Date:   Fri, 24 Jul 2020 14:30:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200724121555.e4l2okob3x3fzk5z@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden, Mike,

On 7/24/20 2:15 PM, G. Branden Robinson wrote:
> At 2020-07-24T12:13:33+0200, Michael Kerrisk (man-pages) wrote:
>> On Fri, 24 Jul 2020 at 02:03, G. Branden Robinson
>> <g.branden.robinson@gmail.com> wrote:
>>> it is a hint to the man
>>> program to preprocess the man page text through tbl.
>>
>> Yes, that's my understanding. But I believe that these days it's no
>> longer needed(?). tbl(1) just gets used as needed, regardless of the
>> presence of the 't' comment, right?
> 
> [A few "strace -f -e execve"s later...]
> 
> Hmm, for the man-db man(1) in Debian bullseye (testing), at least, this
> is true!  And checking its own man page, it looks like it was true as
> far back as April 2001 (the horizon of its Git history).
> 
> I guess there are so many man pages that embed tables without including
> the hint that the man-db maintainers decided not to leave the comment to
> chance.  

That would be my guess.

> The only other man-like program I know if in anything like wide
> use on Linux systems is mandoc, which does all its own parsing and
> doesn't depend on a *roff at all.
> 
> Retaining an accurate comment would be a kindness to other man
> implementations I'm not aware of and to weirdos like me who run groff
> directly because we develop it (though admittedly, even for us, there is
> the crutch of grog(1)).  But I'll grant--these populations may be small.

Yes, and in any case, the man-pages pages are already widely omitting
this comment.

>> See my comments above. For 15 years or at least, I've not paid any
>> attention to adding the 't' comments when I added tables to pages, and
>> I do recall anyone reporting ill effects. So, I'm inclined to apply
>> Mike's patch, but will hold off a moment, in case there's other
>> feedback.
> 
> Sounds fair.

Branden, thanks for your detailed analysis.

Mike, I've applied the patch, but completely rewrote the commit
message, as below.

Cheers,

Michael

==

Various pages: Drop t comment header
  
Historically, a comment of the following form at the top of a
manual page was used to indicate too man(1) that the use of tbl(1)
was required in order to process tables:

    '\" t

However, at least as far back as 2001 (according to Branden),
man-db's man(1) automatically uses tbl(1) as needed, rendering
this comment unnecessary. And indeed many existing pages in
man-pages that have tables don't have this comment at the top of
the file.  So, drop the comment from those files where it is
present.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
