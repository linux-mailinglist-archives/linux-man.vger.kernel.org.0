Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453E02823ED
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:39:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgJCLjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgJCLjM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:39:12 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 577AAC0613D0;
        Sat,  3 Oct 2020 04:39:10 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id j2so4594245eds.9;
        Sat, 03 Oct 2020 04:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UTw9SC4xG6loXYiQpgIO7a9BnRpjOpziIFfpkToaJz4=;
        b=QVW6ThXz97qmXyFNeSVi4zk2cCYB+QVEsy6GppgkSkctxhtEZ9ofDopxXoBdLTjQ3E
         XX+DFRH5Dp828aIrNFhOq29RMtCnEhyJDbdUEqm6O7gCLK1pLkPpK72xbcT7VCL/K+5a
         L5r/inDFW/3DYXuuqh0HvG9OOmZaH+M1ECbjOEVcW3bRHb20nq5cfsg/DjDVGS8Mbsbc
         p3uN9CXyK5IGqWuCjG9pXdbbllFR/8a1MLMkMBO5YNkM0D93l508zObjMeJ6l/KudO2J
         r9DAxYr2F6j37Daa5n/7qjAa2WKG2yXJ2sfF7l3dnhQtZ3hY8Z5lH1F6lIDz29yZZlSQ
         botQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UTw9SC4xG6loXYiQpgIO7a9BnRpjOpziIFfpkToaJz4=;
        b=kskMG63VelFk3nhOGwNDQln1HEOVUl4+D8DQv3PTaFPbnRl1JkDevneT9x9EFnMQ+z
         i37AXCoV4Yn/8SUs2qUZpDJFGaTZOS3XgBTgh8Um4TNzHW42v2/OByxLkpbX1IO5HVtL
         A5vPVTxWszj36HHwysrOYS6o3adRwvceyVZ73IqnCLgm21zBmKfq0jOT7ezoGVgpdhWV
         +fvpw0fuzRR2qhZVJ2FpElWFJx5W2O10EwIPbMv47UJa145kKl2LzV93RE4feDy00A8r
         BWSLhJZD9+JFUwrxwbGgcgzXWULx9Fd2Sl1UsuuVxbnGJPOoVgzgKVM6Ni3DJol7HOJ0
         Vm0Q==
X-Gm-Message-State: AOAM531VI7bMXwyZ+ZGN0d2BCnNZmZa7db5gjM/Bjb46ty62p4n2GrGY
        AiK2/YpqVTK+5B1nLOygK6k=
X-Google-Smtp-Source: ABdhPJz4IGJ4ISYi6auC7O+f73vqDdlpSHUE03FsbQ2189tNDKHW9mgdT3bZ8AICQAd+bomKwE+GfQ==
X-Received: by 2002:a50:cbc7:: with SMTP id l7mr7962966edi.148.1601725149082;
        Sat, 03 Oct 2020 04:39:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g3sm1367436eds.56.2020.10.03.04.39.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:39:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jonathan Wakely <jwakely.gcc@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, David.Laight@ACULAB.COM
Subject: Re: Navigational corrections
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
 <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
 <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
 <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
 <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
 <9c8f90c5-0f34-609f-8001-a61f90e05849@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c8a8fbf-3577-a242-94db-3044b57f6570@gmail.com>
Date:   Sat, 3 Oct 2020 13:39:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <9c8f90c5-0f34-609f-8001-a61f90e05849@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,


>  >
>  > The question of 'void *' is an interesting one. It is something
>  > like a fundamental C type, and not something that comes from POSIX.
>  > But, it does appear in POSIX APIs and often details of using
>  > the type are not well understood. So, as a matter of practicality,
>  > and again since you've done the work, I am inclined to include
>  > this type in the page, just so it can be handily referred to
>  > along with all of the other types.
>  >
>  > Looking ahead (and I hope none of the above disheartens you,
>  > since you've done a lot of great work for this page),
> 
> Actually, not.
> Its good to have you tell me what is good for the man and what's not.
> Otherwise, I wouldn't know.
> I keep a branch with all of the rejected patches,
> just to have an idea of what I should not send you :-)
> 
>  > it would
>  > be good if you could provide a bit of an advance roadmap about
>  > the types that you'd like to add to the page.
> 
> Well, I didn't have a clear roadmap.
> I had some types which I clearly wanted to document,
> and they were ptrdiff_t, and ssize_t,
> which I documented in the first patches,
> and then I was finding related types,
> and also tended to document about types which I knew very well too,
> to have something useful to add to the description.
> 
> I may now start writing about off_t and related types,
> which were the ones that made me want this page.

off_t would be great.

In case you are looking for some other candidates, some others
that I would be interested to see go into the page would be

fd_set
clock_t
clockid_t
and probably dev_t


Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
