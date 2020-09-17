Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2BB826E73F
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 23:16:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726426AbgIQVQS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 17:16:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgIQVQR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 17:16:17 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 679F3C061351
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 14:16:17 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id m6so3533570wrn.0
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 14:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+3rqRK5rdpi0b8U0ru0zyyxcFK1B/8Ay/rbIhsNis7w=;
        b=jEs+9Gcn/AzIGqKg2n+Y7xzqxPxR7ZZ8w2RY4pyzaJyHlfzVF6lXiYWRZlUpmRGaZy
         TgP3BULBetsvvZXmQihRorGWAksJQrKNoCrmJnGv5LK/7cA/TFIf9O1BD12gxdLBSKTc
         Ku3EzZ9AgV8XajfhGkZ1lMvFuZgRDLlflHykCiR4znirrRv2kuYEcBwtkqdPHnoFc0sv
         CJTNKlMF9dPnaoxBERVvPEYHSowMUK1FdOYk6uJPaZ+vflLkazoD4VDdZk1ePQ8WB1LB
         NlY3BJXa+oHcaNqx4ipdE+Q8bvsuSSY+JsWobpaW5TvEJbvOKc3AjL52oh9rqM9VJCld
         8xog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+3rqRK5rdpi0b8U0ru0zyyxcFK1B/8Ay/rbIhsNis7w=;
        b=myVSL0vT0yTtQPvrpw21//zfVXpPDScvp6P4mwzZYde4BcZXu3wn0hX6XgxIlk2Ltl
         vyZneAbxFUomb0ZtRNZORHyMMZ/sUWcOzEmYIpZ1TZrp33JTFrO7z1Sn/XXcLnHBQUvx
         HgZBFaHeZK1J5tyBtjwY/nQeOfUSf7kykr4KrxucnaFmkfbXEqCwO4Iy1lctXHYdrJzi
         cyG7YnMLVIzEBjlVYXvZSe0jWqEy8rmEwI5fosS5wo/2paVp4k8BHQW0RaZs+JquK9ap
         C5bsol477wdC37JS9iLvAQuxutwAZqQdpXJTlDRAR6WdXPPpSjkvwathhw6mV9WI6NxV
         TdhQ==
X-Gm-Message-State: AOAM530GlOxHBCNYwWpTbdV9yXFDANRHbWVfKgFvTOvkbi0Nj34+sW9p
        KziIHOBUDTKCVOa0pZZNbDU=
X-Google-Smtp-Source: ABdhPJxK1EunIQyF2NHf2HDalbF251hfohQb1TRZcFQWoQr7WpcVIQixB8ncX0ZGVMu5lzUIVliEhw==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr35476111wru.191.1600377376102;
        Thu, 17 Sep 2020 14:16:16 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id c10sm1082771wmk.30.2020.09.17.14.16.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 14:16:15 -0700 (PDT)
Subject: Re: [PATCH v7 0/8] Document system data types
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200917104305.12270-1-colomar.6.4.3@gmail.com>
 <a4840762-ecdf-121d-198b-537125cad603@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <14a4d983-0d97-e616-2326-c62afc95cb88@gmail.com>
Date:   Thu, 17 Sep 2020 23:16:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a4840762-ecdf-121d-198b-537125cad603@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-17 23:05, Michael Kerrisk (man-pages) wrote:
> Hello Alex
> 
> On 9/17/20 12:42 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> I'm proud enough of the result to commit it now :-}.
> 
> And fair enough! It's been a great piece of work!

Thank you, Michael!

> 
>> Changelog since v6:
>>
>> - ffix
>> - wsfix
>> - wfix
>> - Change ordering of headers (no actual change)
>> - Curate See also (sigval)
>> - Add NOTES section (about structures)
> 
> I've merged all of the patches. However, I then squashed
> all the patches adding the links into a single commit.

That's fine.

> 
>> On 2020-09-17 12:27, Michael Kerrisk (man-pages) wrote:
>>> That sounds okay to me. I presume you plan to uncomment the
>>> lines above that mention sigevent and siginfo_t, right?
>>
>> Right.
> 
> Did you actually do that.? It seems not. Wanna send me
> a patch?

Oh, I meant that I plan to uncomment those lines when we document those 
other types (to not have broken references).

> 
> Thanks,
> 
> Michael
> 
> 

Cheers,

Alex.
