Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C437426AD6
	for <lists+linux-man@lfdr.de>; Fri,  8 Oct 2021 14:30:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbhJHMch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Oct 2021 08:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbhJHMch (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Oct 2021 08:32:37 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC02C061570
        for <linux-man@vger.kernel.org>; Fri,  8 Oct 2021 05:30:42 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id m22so29451881wrb.0
        for <linux-man@vger.kernel.org>; Fri, 08 Oct 2021 05:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jDS7ja6Pn1oYOxNJ1BgnFGk0gRPVUVJ5Mx7dvAsviqM=;
        b=lDYy4tpw9Q2yJlZlX5ViModCrWj41ZDOr5din1+AgmVLzKc3NtXPhk58MyN5EIh8v+
         zabneVomJb7T7xDDxB9AiqsJr2Oqs/jABVs8icVDzNV5z4Md7MZdLH33UrQsDGsU1tfn
         Lp/Qm9HOnsM5/H/eH7AyFs69FDtdqwUMjs+TaHIf+/kuD81xXphXHdBTRyAjgzrxVbgd
         yH4XLWODJhr0Lpxudic+yawmPkzvgpvonxxHl3Ve6CQo0moD2URP8eZ9AfLjXajZeCNE
         LKf6mrdtr06/NTkgOnoWq1ZwGY1az5PqRv0PRlCwLIYKb3MTCJCStRcE3ByUeFKJXY2q
         E3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jDS7ja6Pn1oYOxNJ1BgnFGk0gRPVUVJ5Mx7dvAsviqM=;
        b=CKLF9JaJHoVwgUmI0+2pCqAWyDDJMG1l7zrJZcO6n82zGlY09lY9shdgs4zB2zv2CM
         p5kB73aXjXVPgikL5OSXlqEfQAXBMdGxvpJsKj+F57DvOPfHwCDURMbbMmg6pyF3AQCF
         mbSGNedRhM5iEIFtqZz6EtzvMVc/ggTrLQm5Thv8ccutLdZnI+vhGkxwbZNjhKdKH2Uw
         5PHrpwmlZBqEc18TgH4Qti9fRRkzIrwzLJwchkniRH45zheaeVXnhXORKR7XirDbYCeM
         jHVVJHPyD4KXUn1CUwSkWQIkAnwNMtVM0WgqYPUL8cyLNyCeA3Bi/huRi257xD4cYkvN
         BACg==
X-Gm-Message-State: AOAM531UitlcPsg+AowruybgLzHQ1OVk7tfuJNzMlVHATHJZOMqUX/3J
        s5uM5PkN+eX6bBsRIgnjbRE/BVx8uNM=
X-Google-Smtp-Source: ABdhPJxTZHkXUSsvAw1/iN5Igf7iQFIA0foE0BTLXEi4tISYzii2kfUANQ4vsCRXOjtgu7Lv7RQMzw==
X-Received: by 2002:adf:b1c4:: with SMTP id r4mr3750010wra.428.1633696240789;
        Fri, 08 Oct 2021 05:30:40 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id q18sm11803859wmc.7.2021.10.08.05.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 05:30:40 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: should free() refer to posix_memalign?
To:     Jonny Grant <jg@jguk.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
Date:   Fri, 8 Oct 2021 14:30:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 10/8/21 1:19 PM, Jonny Grant wrote:
> Hello
> 
> https://man7.org/linux/man-pages/man3/malloc.3.html
> 
> "The free() function frees the memory space pointed to by ptr,
>   which must have been returned by a previous call to malloc(),
>   calloc(), or realloc().  "
> 

Agree that this is somewhat wrong.

> 
> Could this list refer to the other ways memory can be allocated too? free() accepts other memory.
> posix_memalign
> aligned_alloc
> memalign
> valloc
> pvalloc
> reallocarray
> 
> That would be changing it to say :-
> 
> "The free() function frees the memory space pointed to by ptr,
>   which must have been returned by a previous call to malloc(),
>   calloc(), realloc(), posix_memalign(), aligned_alloc(), memalign(), valloc(), reallocarray() or pvalloc()"

I don't like that list.  It is incomplete (the first one that comes to 
my mind is asprintf(3)).  Either we provide a _complete_ list of 
functions that can be free(3)d, which I think will be difficult to keep 
up to date, or we use the same wording as POSIX, and say that it 
deallocates memory allocated as if by malloc(3).


What are your thoughts?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
