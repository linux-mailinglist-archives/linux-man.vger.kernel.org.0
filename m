Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE1A538DB5C
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 16:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231761AbhEWOFE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 10:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231758AbhEWOFD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 10:05:03 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C55AC061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 07:03:36 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id i17so25744057wrq.11
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=hj19LL4Z9Q1eJK5hJgHOG35v8KEGcXZYMkK8ZcqUYMw=;
        b=IIqbGFo5wa3M4RkcF0Ia8dKgE9LYSjrwVKgBD+051m+Bzkc0kDjF70kFfO63Ldukno
         px+9vNoHdgIVJ4B5Gqs+t2NGpODAycyYBu2sBT15JHSxq+4bUsDldB+hlHR6BzqPD2kO
         mb7Ck/bCg1GlsXFigQoXKO2LFMOa8aoEeRH70V67r1ZyG8IBdk1ylAc2KjKRA9OT0oDb
         G2ZTh7yIYDwOF8LjzPB0Ip9+hzuuz2iSX0gJF/ace5MeM2eM6Qrw+sfAlj2As3X198sj
         ZUtzex5VNRLXwqq448UhOojEbBnPV3TOoN8qxnKLo6er6ipQe9vufpCifQ84H/8LvlGZ
         VIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=hj19LL4Z9Q1eJK5hJgHOG35v8KEGcXZYMkK8ZcqUYMw=;
        b=RjhdfR+cOAuOlMwtyP1PWfgAfzCz+UqwuO2QQfdZf5Tdr0e6zwBN5oxih8/g5JYB5C
         ca9JRWlhSt+MvoqfvrWis8InAiEcqPF2bX9dpjGdcoMmLMKYoe5x1l7gLZ3R09OEkA2h
         MfoXw3P7L3lKdo98VoydjDMfdhSs/hgqREjDEusj9xd98xQvcvMdZzZXnZEe6b/kpuoL
         oqhi3obrRdcdNBr7MDRp6KwhHNQsGqxnxhuJctqf45llpr0QXKI5WfgKI+2I6Asm3uIz
         CD/T1nh+Sse/Ic8y9ZLW+qUdBd/3BMGMJdPncOn98cW8u6IfYPn8ZKQsA70vffntEC/3
         wang==
X-Gm-Message-State: AOAM531SxjLe3EJOCawGVfUQRNkSbg9mb1cGRMdyipl86lybsPKUBFTV
        ef61vbyCEJos7nGZRRfgSrrRTO5xY9Q=
X-Google-Smtp-Source: ABdhPJxl+xoaUTdjKyDqS4nxy4J5py3Yfh9REKo+FQFscGHamlAqHiW9N8ByQSU7Dy+oM0bKcvf0pQ==
X-Received: by 2002:adf:dcd2:: with SMTP id x18mr17676531wrm.202.1621778614926;
        Sun, 23 May 2021 07:03:34 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b8sm9022739wrx.15.2021.05.23.07.03.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 07:03:34 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Adding struct-xxx link pages for structures
Message-ID: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
Date:   Sun, 23 May 2021 16:03:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

We have some structures defined in system_data_types(7) for which we 
don't have a link page, because it would have shadowed other more 
important pages.

I've been documenting 'struct stat', and it happens the same: I'd shadow 
stat(2) with stat(3).

But I need to refer to stat(3) (or whatever link page we decide to have) 
from stat(2).  So I need one (referring to system_data_types(7) isn't 
very informative).

How about adding struct-stat(2)?

However, that means that we should also add struct-xxx(3) / union-xxx(3) 
for all of the structs/unions we have documented there (one might 
reasonably expect to be able to find struct-aiocb(3) or union-sigval(3) 
if there's a struct-stat(3)).

What do you think about it?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
