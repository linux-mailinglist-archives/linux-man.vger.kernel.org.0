Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22E6729736A
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 18:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1751449AbgJWQUE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 12:20:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1751447AbgJWQUE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 12:20:04 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 812F8C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:20:03 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id c194so2175014wme.2
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L3V/tq65z094LTRbBm9v2KKg4WbL45QxQbEsKQ/999k=;
        b=GBlWyYpJZAvX1bskcwhqnozFFown0Ysco3Y14UukcuVVaiEPSsIfPNf0aRoG4xsCUr
         e6IBjVqVB3FU7NgZaMCKzJPeoa8pISpZ8VfQ12xg7/qWAfMpMn+kJ9sciP5uCTpH5+Ws
         HMTO9tIcosYqJ3JOTEGJhpmq/EesKyiute4snfQ8zU7DJjPiXBg+fYi9bczrezXRp+XA
         P05FDEeOPNXlOz5l57GTdEEuFdJ0oKZp3a7OC0DNvyvPBc3K901NuPRZA9vK0O0VSy2b
         1+9QYhM5o323DbtoSJQNna4ossqOucioPzXeCets6jM94y4CvW/112RO4VjVyp/FOr6Z
         oDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L3V/tq65z094LTRbBm9v2KKg4WbL45QxQbEsKQ/999k=;
        b=T19kvccWWwqOgUEqCiNby43FZ+mCB6tHfzGHhnzFYGeFdE36i05yTUaAUFvC1Vz/nX
         rOzeOkuxl5AexpreX4c39gfTiAjIdHBrgKi/o0P1kfsQzqLhrL8HhhIiZBjLo0nnwXQ5
         KKUs9LH2Mfqjcn0g3GMiSgjY3IiHMG7L91qx3A476CfJM9hyIFRhP4CbcigfRGyOkt/1
         sIdmInONYjQKKk1gxfUlOxkdPuKG5ldM9O4DpA4z993+rtImgxHHBnCgXadW/jUf/1TR
         VqL9z7hM6HE2kaWRqxHyvHbVQ2b+yO6ROQ++E47XRvoeNnrQJvza+YFwL2fVNWuODtBo
         kZ+Q==
X-Gm-Message-State: AOAM530Sx7pA7mjsbNUSrPGod0Ox1zk5DTzM0KVRtYZ+e1UBmm2gDyIz
        lIoCy4TBjZm6kSVgbJi1TBk=
X-Google-Smtp-Source: ABdhPJw9KHbsp7Gm+6VeSa5Q4SQhVUlTlwBtfqlXIWUyl0bK0n2HWdj/bOEUAI4JXApUZ4ggyZ/jmQ==
X-Received: by 2002:a1c:3882:: with SMTP id f124mr2983940wma.184.1603470002225;
        Fri, 23 Oct 2020 09:20:02 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id a15sm4698755wrp.90.2020.10.23.09.20.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 09:20:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/11] circleq.3: Fork from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c6214c6-23f0-61bd-9408-0afb01b88fa9@gmail.com>
Date:   Fri, 23 Oct 2020 18:19:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/23/20 4:57 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> It's going much faster than I thought :-)
> 
> There's a detail I wasn't sure about:
> 
> There are BSDs that don't have CIRCLEQ macros,
> or at least it isn't documented there (FreeBSD comes to my mind).
> So I'm not sure CIRCLEQ originated at the same time as the others (4.4BSD).
> Maybe you know better.
> That affects patches 07/10 and 08/10.

I don't know, I'm sorry.  But, i think we don't need to worry about it too much.

> Please, apply these patches after "queue.3: Sort alphabetically".

Done. I've applied this whole series. Thanks!

Cheers,

Michael

> Alejandro Colomar (11):
>   circleq.3: New page that will hold the (circleq) content of queue.3
>   circleq.3, queue.3: NAME: Move code from queue-3 to circleq.3
>   circleq.3, queue.3: SYNOPSIS: Move code from queue.3 to circleq.3
>   circleq.3, queue.3: DESCRIPTION: Move circleq specific code from
>     queue.3 to circleq.3
>   circleq.3, queue.3: EXAMPLES: Move circleq example program from
>     queue.3 to circleq.3
>   queue.3: ffix
>   circleq.3: Copy and adapt code from queue.3
>   circleq.3: ffix: Use man markup
>   circleq.3: Add remaining details to complete the page
>   CIRCLEQ_ENTRY.3, CIRCLEQ_HEAD.3, CIRCLEQ_INIT.3,
>     CIRCLEQ_INSERT_AFTER.3, CIRCLEQ_INSERT_BEFORE.3,
>     CIRCLEQ_INSERT_HEAD.3, CIRCLEQ_INSERT_TAIL.3, CIRCLEQ_REMOVE.3: Link
>     to the new circleq(3) page instead of queue(3)
>   queue.3: SEE ALSO: Add circleq(3)
> 
>  man3/CIRCLEQ_ENTRY.3         |   2 +-
>  man3/CIRCLEQ_HEAD.3          |   2 +-
>  man3/CIRCLEQ_INIT.3          |   2 +-
>  man3/CIRCLEQ_INSERT_AFTER.3  |   2 +-
>  man3/CIRCLEQ_INSERT_BEFORE.3 |   2 +-
>  man3/CIRCLEQ_INSERT_HEAD.3   |   2 +-
>  man3/CIRCLEQ_INSERT_TAIL.3   |   2 +-
>  man3/CIRCLEQ_REMOVE.3        |   2 +-
>  man3/circleq.3               | 354 +++++++++++++++++++++++++++++++++++
>  man3/queue.3                 | 234 +----------------------
>  10 files changed, 365 insertions(+), 239 deletions(-)
>  create mode 100644 man3/circleq.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
