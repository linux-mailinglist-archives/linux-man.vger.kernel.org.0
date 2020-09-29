Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8286427C921
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730241AbgI2MHv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731957AbgI2MHf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 08:07:35 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870D3C061755;
        Tue, 29 Sep 2020 05:07:34 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so4366217wme.0;
        Tue, 29 Sep 2020 05:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rf/0DA9A43B4u9HrFqYqsvp9POw7rCQFUx9GMVzOhJI=;
        b=UBBNl7Lmm82WXtWOiANc/fbGX3kcqYiOLEghnO4QnkvRwSWPC0RlrMe+wUtINWuNds
         iJ5BnHOJNor441pN9+mHmnvp0SySsUZumwy8n1ha8DlzBtuYfSyKxmPTEUNelrq+43/B
         ikfnDStVVWmbIZFLkhaN7HC7sQngpGQmAhsyeinsyfBtjmRiwS2W4amVmcctD7u0qonA
         ge/ZFw+tq57RiJ2CkAW8ELipmtU2JH95hsqu5R/mfys5cKRvurKFrvVn5c8a0SisfvmJ
         s5EUQitzIfNljcOiM0HACsJXU8ZrPiZ14sU82Y0sGIwVZIVvsmBv+AKMoe7lBVA+sKXe
         ZFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rf/0DA9A43B4u9HrFqYqsvp9POw7rCQFUx9GMVzOhJI=;
        b=jXPA7kJYjQtLb6JOyxAuCJBmTc7LsQM/brEloNSPf7YeUkkK6oof7Zi8WYdve2c2mk
         YnVyVGs8pVFsrgc3dp0gn7qLYxR0dw0UIPjcytf1GmF+85rpme/Danag4JWhzEHAt0ak
         6c/NvCcN26jVmT2LQFyQcJGgFXETqsA7QdzPkbl/JLuqctvG2x7RfAb5hmwU/KOZIsuD
         B7gha193PoyxyIbyIAjz/RDWbGi63F46R8Z4TFvc72QkxkBHDRQWyRL7/V4wmZMEjf4o
         UNG9Ofb5D3+LGcBwGVTIVtCC8jHReffiORmpWvdQ+ttYw4fPrsssTT/ECe7Zm2EbVCLF
         +qdQ==
X-Gm-Message-State: AOAM530C3Ms2PngdhMcvZW2sPFOCfGqzZrFSW3D4W9aTqJL+0K2nBPvp
        eE61W/dByGSnuKq6uuMQ6GRG6mj5L/M=
X-Google-Smtp-Source: ABdhPJx9FI3wdRF/iI+fS+clxFuYXuBe9OjgXWDES4lUutq3tiMLwlXj3fX56nGHieHD6SPqm9U7AQ==
X-Received: by 2002:a05:600c:2189:: with SMTP id e9mr4233573wme.8.1601381252919;
        Tue, 29 Sep 2020 05:07:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u12sm5949457wrt.81.2020.09.29.05.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 05:07:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        g.branden.robinson@gmail.com
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c088e23e-6001-0e52-4538-ce4c22921a11@gmail.com>
Date:   Tue, 29 Sep 2020 14:07:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/27/20 10:05 PM, Alejandro Colomar wrote:
> Hi Branden,
> 
> * G. Branden Robinson via linux-man:
> 
> 1)
> 
>  > .EX
>  > .B int fstat(int \c
>  > .IB fd , \~\c
>  > .B struct stat *\c
>  > .IB statbuf );
>  > .EE
> 
> 2)
> 
>  > .EX
>  > .BI "int fstat(int " fd ", struct stat *" statbuf );
>  > .EE
> 
> 3)
> 
>  > .EX
>  > .BI "int fstat(int\~" fd ", struct stat *" statbuf );
>  > .EE
> 
> I'd say number 2 is best.  Rationale: grep :)
> I agree it's visually somewhat harder, but grepping is way easier.

I'd say number 2 also. But, visually, it's the least difficult
for me.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
