Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0592813EB
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387789AbgJBNUb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:20:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726386AbgJBNUb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:20:31 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDCDAC0613D0;
        Fri,  2 Oct 2020 06:20:29 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id j136so1747064wmj.2;
        Fri, 02 Oct 2020 06:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/JX4Jd0493SLr9+MjpTZSSB8EEv9+SWoccnHkCLNQOs=;
        b=ra3P48UxZ5JqjXwS3sHh43IQ5jWqN5BxIO06U71bJcqPZWRS25oKdLgnrJrsqkHehu
         cTPVgsHd7eUzslw/UuGuEqgKkrAq0Y1W/jsSAbyVQ5ZuIpvfvAqZvW/xl9MINlpZh+7i
         bsZX2PY1mxVOMXSADFMgDorxCskbnqKMh9TniqLPYJFBNfdrQzRLw/ry9Sx4AGq9oR4n
         ZeqM98vUUMVCXV4c5Y3NVq7CdVuzfaTr7331+BB8TCSQHhA763aT/yZpj8XV7FICYNfc
         RpFLgG5rTbBlPUB5AOCfE9CpuRG+KxsijR6ey3X0vmtY/pLlIpOyexCtVUIUBJsELtWg
         6tFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/JX4Jd0493SLr9+MjpTZSSB8EEv9+SWoccnHkCLNQOs=;
        b=kMzs3KPDh6tT+M9YuO1GIO8cUyfSQ1xz/un97kQR58tP7ys8wbgwkRIEnMAey9ZrFo
         hLEJ3YG64qE1abpm65N8/eUvZoaDwvisbhXIjrY7zwJZVrL/VWlOY8NfSv5zZY2O4dcF
         xxhy8OBBCrBdBCaDfa9aas+DcqUKbgpIF4TdX8yEoU+13FvfnVOgrqEZ9ivWt5wX9xag
         UOSF0YVVWyvpV18iTv3RWn8/XkZdezjeBVgnva7zv6DtNPXU/sIjdP4MJozoxGofOjSU
         6sxkfJKO9iiUINdTe+SaSfef4v8mimQR6MzVA/qiafh8SFXWxNp/XoOetAWGoveDzrn8
         qx6Q==
X-Gm-Message-State: AOAM533Avh/agECH2OvtufSGDpulLSEaadALn9yI6ztoLNtj5MSN1QVV
        wxyJZoeJiog0lmNoybYGaF8=
X-Google-Smtp-Source: ABdhPJzX+caDkpml67KMGJULyJ4USuiAOmh99POcfkM/aOxt23s2o2Y+Vr8ZKqzcNtbXxxdTknI99Q==
X-Received: by 2002:a1c:e283:: with SMTP id z125mr2607245wmg.154.1601644828511;
        Fri, 02 Oct 2020 06:20:28 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id a81sm1848137wmf.32.2020.10.02.06.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 06:20:27 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
Date:   Fri, 2 Oct 2020 15:20:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-02 15:06, Jonathan Wakely wrote:
 > On Fri, 2 Oct 2020 at 12:31, Michael Kerrisk (man-pages)
 > <mtk.manpages@gmail.com> wrote:
 >>
 >> On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com> 
wrote:
 >>>
 >>> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc 
<gcc@gcc.gnu.org> wrote:
 >>>> However, it might be good that someone starts a page called
 >>>> 'type_qualifiers(7)' or something like that.
 >>>
 >>> Who is this for? Who is trying to learn C from man pages? Should
 >>> somebody stop them?
 >>
 >> Yes, I think so. To add context, Alex has been doing a lot of work to
 >> build up the new system_data_types(7) page [1], which I think is
 >> especially useful for the POSIX system data types that are used with
 >> various APIs.
 >
 > It's definitely useful for types like struct siginfo_t and struct
 > timeval, which aren't in C.

Hi Jonathan,

But then the line is a bit diffuse.
Would you document 'ssize_t' and not 'size_t'?
Would you not document intN_t types?
Would you document stdint types, including 'intptr_t', and not 'void *'?

I guess the basic types (int, long, ...) can be left out for now,
and apart from 'int' those rarely are the most appropriate types
for most uses.
But other than that, I would document all of the types.
And even... when all of the other types are documented,
it will be only a little extra effort to document those,
so in the future I might consider that.
But yes, priority should probably go to Linux/POSIX-only types.

Thanks,

Alex

 >
 > Trying to document C seems like a huge task, ill-suited for man-pages,
 > and not worth the effort.
 >
 > Maybe some people prefer man pages, but for everybody else
 > https://en.cppreference.com/w/c already exists and seems like a better
 > use of time.
 >
