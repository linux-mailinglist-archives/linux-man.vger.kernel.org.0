Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70E4D304980
	for <lists+linux-man@lfdr.de>; Tue, 26 Jan 2021 21:06:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726537AbhAZF1i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jan 2021 00:27:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727986AbhAYMVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 07:21:42 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEAB2C061A10
        for <linux-man@vger.kernel.org>; Mon, 25 Jan 2021 03:48:51 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id u14so3847215wml.4
        for <linux-man@vger.kernel.org>; Mon, 25 Jan 2021 03:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KwYD7H4T935W5nghah4ss+ad1JNt0n13Ch93K7YSEj8=;
        b=RlKcT6s8rOn/BsalV5+RYVFPaMQQAZrM5Z798yzQHBGuGWfIeuFZIycXaqaywv/yQa
         p/LO9udcyN3G4DO2W89wUjsiDaxGsB7JYrzFfZ699ryTs2Iia2niHhduhXeEo3J47sSi
         IzVFeu389DXobRX5pvdLT9k4Dko/fNykRlpdgS4xEc83/KdFouNB2Y7jeOHdv7U35eOq
         816EXSzgslxkl/cS16pE6h1R74RQlVo10EK8665C4MznTDRdZjJNcs25qKcwJdBnYxyg
         elMYn+KQp90qtKBo6USaAzMz2BsCflQHZkmo8gV+KArAGHyldLv+xva0ek6c2DFAjXss
         FBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KwYD7H4T935W5nghah4ss+ad1JNt0n13Ch93K7YSEj8=;
        b=cLFbSy5JkmoZ0AmUgDHowW5tD734gPj/dUoYFBCGJpHCOpRWizHO1VozG0iAgv9BfA
         S8w2qZYkqkh/OkZGgjp6AleWtSPUfOEp6HHqmXG8yo1jPhllLscO30itSM78xZL2TXZj
         5Xx+REtDoAfKaQsdCAm3yOZRJGzcYZh7yey5QGAsEtGQV7ZobTxwrQZ/TxLyxb71nJn5
         8wgkBI7u8XZFiytR4S23G0EllkmXj0yobWuZ5Y0I+atnAFDGr+hmv7+EcKvBmck4vCbS
         C3X4S7WRsDH9c23j2UhlR6HD1oYolHPXRdGJ/TtvGoTSf5bWG7SXyqY1qoi9B8OdEJDq
         8KRg==
X-Gm-Message-State: AOAM532smlwGfCNEdpPERqOtih//7M/y9ME8hkwheJ/jj7dOo5Ngpkzt
        y7WbEn0vpTuafPE7bPXo1MZXw1OJJOJMKg==
X-Google-Smtp-Source: ABdhPJz9JUhEMpqmvc4cGSXn6g682kR8sHArJgpf7VaNZW8utO4Xv72fvZlVaAb3jmH0RJ81rfd7PQ==
X-Received: by 2002:a1c:ddc6:: with SMTP id u189mr2082996wmg.172.1611575330542;
        Mon, 25 Jan 2021 03:48:50 -0800 (PST)
Received: from [10.8.0.134] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id g7sm22237608wrx.62.2021.01.25.03.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 03:48:50 -0800 (PST)
Subject: Re: [PATCH] Various pages: Use 'logical' puntuation method for
 parentheses
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210124151035.70536-5-alx.manpages@gmail.com>
 <ab080b59-8d3e-d3cf-3b70-ba2cf8fbae67@gmail.com>
 <c9453042-2af2-4ec5-3269-5ef322a26b19@gmail.com>
 <c9c2e62b-46a2-dbab-87a2-cfd3c568df29@gmail.com>
 <892dabc1-4f93-7809-291f-debe5ebc9d41@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cba8e44a-2e48-06ed-f01a-0cc75ae240d8@gmail.com>
Date:   Mon, 25 Jan 2021 12:48:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <892dabc1-4f93-7809-291f-debe5ebc9d41@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/25/21 8:47 AM, Michael Kerrisk (man-pages) wrote:
[...]
> 
> Yeah, sorry. I misunderstood some of your earlier comments.
> Otherwise, I could have saved you some effort.
> 
> By the way, I think the English system is logical :-). A complete
> sentence includes a period at the end. If that sentence is inside
> parentheses, then the period also belongs inside the parentheses.
> This is actually consistent with the "logical" system for quotes,
> where the reason that in the logical system the period is being
> placed outside the quotes is that the period belongs not to the
> phrase that is being quoted, but is terminating the sentence
> as a whole.
> 
> With respect to parentheses, German is like English:
> https://www.duden.de/sprachwissen/rechtschreibregeln/klammern
> 
> French seems to be the same:
> https://www.la-ponctuation.com/parentheses.html
> http://www.cce.umontreal.ca/capsules/3073.htm
> http://bdl.oqlf.gouv.qc.ca/bdl/gabarit_bdl.asp?id=3357
> 
> I am not sure about Italian (I do not speak any Italian).
> Some sites seem to suggest it is like English:
> https://lagrammaticaitaliana.wordpress.com/2019/08/07/le-parentesi/
> 
> Suppose that you have a parenthetical piece that contains
> two complete sentences.[1] Where should the final period
> be placed? (Here is an example. In my opinion, the final
> period logically belongs inside the parentheses.)

Yes, it makes sense to me.

> 
> Quizás los hispanohablantes no son lógicos?

Supongo que después de tantos años usando estructuras ilógicas me había 
acostumbrado.  Ils sont fous, ces Espagnols!  :)

> 
> Cheers,
> 
> Michael
> 
> [1] Yes, having multiple sentences inside patentheses is
> generally frowned on, stylistically. But it is not "wrong".)
> 

Cheers,

Alex

--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
