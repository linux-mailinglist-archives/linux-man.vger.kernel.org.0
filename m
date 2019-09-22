Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 60FF0BABC1
	for <lists+linux-man@lfdr.de>; Sun, 22 Sep 2019 23:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392317AbfIVVBV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Sep 2019 17:01:21 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36094 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391959AbfIVVBV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Sep 2019 17:01:21 -0400
Received: by mail-wm1-f65.google.com with SMTP id m18so7110771wmc.1
        for <linux-man@vger.kernel.org>; Sun, 22 Sep 2019 14:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1JXJ3foEx/zeeAxOf2uHJ0FwExHcG+OPPzxCcSaMkZc=;
        b=TOTmEEHZxE042ZU+Omivk+Pb6lo9q/+IgGvE0AFwTxS72mwQA1z4HAidIQg2mWg/Ff
         +XSkyKpkrBRNkXoRW5IO9hK2qzQcAWz5fXuEO7AR1iagDFM3mTXiNFWb60epnFf4370Y
         vIV5t97TplDZKyZh092B7JCUkMeXJmVgvp/zn/RoF441lW1cnXmeBH5qp1Jkv8UJBCeV
         fHnYcl2ZLDV6/32VKxg4Rc5sIJw0w3yph9DZ0xBbO8Oe3FDJFBSFspIxJNsxYfDmiJbg
         Iq5D++TxLSmeGfa8jP+qMV6BFw4zbcykd+t11Yn0i3YrUatMLG1/lFpoTEgOSsVx1fcf
         H46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1JXJ3foEx/zeeAxOf2uHJ0FwExHcG+OPPzxCcSaMkZc=;
        b=f9i1KtDmFlP43LaK6/VgWAUWq41joKvu3f6p5jG8sOgLBUxF5SU+OCXppirjz5LQ7o
         bMRSVfbu1DwdskbrqVjnVNpTTsleAOTXRyAzX8hldbSsuW1RJfyCLMyRs4GGDtbE0lUW
         GejqZXRYBj4fxru8MwXils9bluxZ0h6NKjcIV0ZDRPENqY+7nxMM450nOJYqvwKHKmUp
         4Y3HcQDeYjWoeJUhmOXg3sYtii5YoAuPteRxM9XtojaHRW3D/4H4c7lRN7fJirL2Uc3+
         WWwL5RxreaxyWTCaPzx2Kox4KhAjkW8vl6s6yPFawzp0JOLmUrSdRVHY0cLyJBB30Omy
         3kZQ==
X-Gm-Message-State: APjAAAXZNeLK3nvDOVyCozFF1hkofZraPuJkN2r0/WQ/iwe3A4H+y6R1
        pFfkGBbc5vZFi0M55vfceRNsfM5C
X-Google-Smtp-Source: APXvYqyLtQ0VHBulaubPVGRlRUspHXnia9nyejt5OHkHv22y4+F+iKnqPYsD20PjzugF5T10EVLTnw==
X-Received: by 2002:a1c:49d4:: with SMTP id w203mr10600873wma.132.1569186079348;
        Sun, 22 Sep 2019 14:01:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:243d:bf01:c49e:ef23:e680:96b1? ([2001:a61:243d:bf01:c49e:ef23:e680:96b1])
        by smtp.gmail.com with ESMTPSA id r12sm7254793wrq.88.2019.09.22.14.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Sep 2019 14:01:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Man page pre & post operators error
To:     rstanley@rsiny.com
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
Date:   Sun, 22 Sep 2019 23:01:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rick,

On 9/20/19 4:19 PM, Rick Stanley wrote:
> Greetings!
> 
> In the man pages, both in Linux and online in multiple sites, the pre
> and post operators are listed as equal precedence.  Two different web
> sites list them on different levels:
> 
> http://man7.org/linux/man-pages/man7/precedence.7.html
> 	Level 1
> 
> https://linux.die.net/man/7/operator
> 	Level 2
> 
> Linux `man operator` list them on the second level, with right to left
> associativity:
> 
>        Operator                            Associativity
>        () [] -> .                          left to right
>        ! ~ ++ -- + - (type) * & sizeof     right to left
>        ...
> 
> Section "A.2.1 Expressions" of both the C99 & C11 C Draft Standards,
> list them on different levels:
> 
> 	postfix ++ & -- on level 1, with left to right associativity
> 
> 	prefix ++ & -- on level 2, with right to left associativity

So, Harbison & Steele also seems to agree here. Things changed since
K&R! I've fixed the page:

       Operator                            Associativity   Notes
       () [] -> . ++ --                    left to right   [1]
       ! ~ ++ -- + - (type) * & sizeof     right to left   [2]
       [...]

       The following notes provide further information to the  above  ta‐
       ble:

       [1] The ++ and -- operators at this precedence level are the post‐
           fix flavors of the operators.
       [2] The ++ and -- operators at this precedence level are the  pre‐
           fix flavors of the operators.

> Please review this and all the operator precedence and associativity in
> the current man page "man operator" against the official C99 & C11
> Standards documents, plus the current working draft for the next
> version of the Standard.

You are free to do so. But please don't demand that someone else
does so, even if you say "please".

Thank you for the bug report!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
