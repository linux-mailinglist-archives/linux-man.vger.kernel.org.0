Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4128C1A9369
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2020 08:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393582AbgDOGmQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Apr 2020 02:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728535AbgDOGmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Apr 2020 02:42:13 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E917C061A0C
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 23:42:13 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id o81so10424216wmo.2
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 23:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=an/e8IBk/UFyeSslrYJHAk6HWogjm87wmXaMlC4nx6I=;
        b=VCf0OvfsifCvumsbGlC1XZJHn2haZ54QyMkZYDA/zQWTtIpafCG+Jts0toeFAKzFkF
         g7/HVwsvHQ95I3EUWkF0BwiI8SkK4BubFWXjxdsmqnYVrxwOY19BTJYUqW48UEXPMkTP
         JN7Ys4CWWFiM5AQVl2seQ9S3XuOrA3UpEC7hl4w3sESHTXCTbj5orOzrVEFM+PT6rt3Y
         JfmfOsyMcHWgkxSWxQFwza0wdkwS6v6LIgfQmVhhG+vqyQnkE/XuFYLyigQFD8k9aL3C
         hXp1LCl6CZsIosbTmHJbruhaPmNzXgzWxc1Jj0d7KEHLK/1LAp4CKgjFJ1VjChiWqCT6
         wIUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=an/e8IBk/UFyeSslrYJHAk6HWogjm87wmXaMlC4nx6I=;
        b=Qokmb/zorUXFWrRkm12AbmgHt9bzEnWnoctaKGoq/eywTqWYUx3CO4WjCHVC5fbBnr
         B15tNVq4kYcCtcc9tRRQyHE0G2gtGHByM53J5xjSLakHxNGzAl3eLwzj3ILzx+fQdeGr
         L2NHMyU+88NUO2U3bUwOixTEgorHCwKji0iScJwtuCTBucYtIlKIWoxxa1qPVQBqKmIx
         Jyeb+NTmCAPvvTgFc2of2M3x/AbCNWiiPUFk0mCuNH1Njl4ooWAyMCceii+fwXH+R+s0
         hNKHPDN89ER2uOQAk0VbtLBWBHHOJUOTazPNKpKVJCGKUnXxaby3vM7QDgOTt5y0u2iQ
         /uFA==
X-Gm-Message-State: AGi0PuY7mjc5zVevQw1c8o5BSS80JDyAenJ1DMG1oMhOT3Ok+MWzaTb4
        woM99B/P3SegKOGkCLmx2Yg=
X-Google-Smtp-Source: APiQypIiUd78KKLLZTvdPfwfLgXSxEhUA/yT/0yCdYD5XCsXJcjgib1tuicd69jLMdOBoFJo/uwexw==
X-Received: by 2002:a05:600c:4102:: with SMTP id j2mr3764601wmi.159.1586932932115;
        Tue, 14 Apr 2020 23:42:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y7sm22801677wmb.43.2020.04.14.23.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 23:42:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 1/1] getdents.2: Mention glibc support for getdents64()
To:     Petr Vorel <pvorel@suse.cz>
References: <20191007135315.2214-1-pvorel@suse.cz>
 <39488d73-6d42-3213-98c3-5dc4f54203aa@gmail.com>
 <20200414181001.GA619561@x230>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9655825c-be5d-3941-60da-ccb8e5e433cb@gmail.com>
Date:   Wed, 15 Apr 2020 08:42:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414181001.GA619561@x230>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Petr,

On 4/14/20 8:10 PM, Petr Vorel wrote:
> Hi Michael,
> 
>> On 10/7/19 3:53 PM, Petr Vorel wrote:
>>> Signed-off-by: Petr Vorel <pvorel@suse.cz>
>>> ---
>>>  man2/getdents.2 | 9 ++++++---
>>>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
>>> diff --git a/man2/getdents.2 b/man2/getdents.2
>>> index 712d23c58..a6b7aad1f 100644
> 
>> Thanks. Patch applied.
> Thanks a lot. I still don't see this patch in master (nor in other branches),
> but you just maybe haven't pushed the changes.

Yes, I've puushed now.

> 
> BTW it'd be great if you push patch "Add manpage for fsopen(2), fspick(2) and
> fsmount(2)" [1] and "Add manpages for move_mount(2) and open_tree(2)" [2] I sent
> 2 months ago. It's based on David Howells' work with few obvious fixes.
> It might not be perfect, but IMHO it's a good start and it'd be great to have
> these recent syscalls documented.
> 
> Kind regards,
> Petr
> 
> [1] https://marc.info/?l=linux-man&m=158109737807969&w=2
> [2] https://marc.info/?l=linux-man&m=158109737907972&w=2

These patches are on my radar still, Pester me in 
a few days if nothing happens :-).

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
