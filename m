Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C57A3798F1
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 22:11:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729014AbfG2ULl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 16:11:41 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:38698 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729748AbfG2TdC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 15:33:02 -0400
Received: by mail-wm1-f67.google.com with SMTP id s15so33134599wmj.3
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 12:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9bvX7WBaH9Y2cddiEU1/W4lkLv4nNYN7FvvlMKAMulE=;
        b=RtvtJbG6r57v8iOkMmVf/7MRTY1YIGuNXzRcR32BMw1S8j+ho8FSrer2800QxrUEyO
         erBzOpNBOCgZ1BwOixxDZhcg65UsSo4hV+JiqqgbJWrteMRQpcIz7pmZ8J9EAOyjDsBk
         0XkOOm2sxwi7ofujhRoKQ3Jkp3zS+B9rWWlvaE+QLflF9Iud6HyC/5548mvhyojPsmeR
         wT2PzbPDK0G7uLhRZYY0LFiYAuRofB8v0X6GAh6M7U2DalWDwlXMz9Za6bZSEbCyI4EE
         usuZguC8/j/bJVSCg43NKwcNVz4qi+qvG/N1PSoz9YKMj/k703+Cv6PVDujZRe0y80Zo
         9c/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9bvX7WBaH9Y2cddiEU1/W4lkLv4nNYN7FvvlMKAMulE=;
        b=grXSITqxU+e4p8w+Eanl11856eJjDvvhwaIxoFCK+1gdofpOEO/BFGecZhwxJc3bym
         ehq71XJCOD9eNTjJRuJTdV8puKsh+EbuAByt3oBkFHJlpAm6gtY7fTcZEEEIG6bdDBNP
         FQE77jei2UcTvhZ9S3/W8M2N0OGwkmwRaQ6tb0lxkNJ15xFi7VPDZ0tdt1sI8NPiy/tq
         U1dCZp1Ba/8vmBzL4FFfIi15Dxv/S/YKgYCEInsNb0lrQRJCkZss0DLb8P0wjCcIN/u5
         DoM8WIuGsmiyE6PodxzvDfcOKVzJTafaol3mvSgR9MXxZMlOg/2FNe+veTxO6eQ+mzAa
         aheA==
X-Gm-Message-State: APjAAAUJRDGIJAbIhAfytMHypeapRU+5FmhMTCEqjt3i1/wfjDualCuu
        2GyK8ny01HuqxZYo8fgXE6w=
X-Google-Smtp-Source: APXvYqxIadIGpWqrXwc2rex4FC2YwoBQwj87j6Efmq8oZBlAo+iYXD8xUDLy9hjs0e/GLqqPU+pcCw==
X-Received: by 2002:a05:600c:2199:: with SMTP id e25mr96935821wme.72.1564428780961;
        Mon, 29 Jul 2019 12:33:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:3aff:2d01:3e8:cefd:7d80:b611? ([2001:a61:3aff:2d01:3e8:cefd:7d80:b611])
        by smtp.gmail.com with ESMTPSA id b203sm76567553wmd.41.2019.07.29.12.33.00
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:33:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
To:     Joseph Myers <joseph@codesourcery.com>,
        Carlos O'Donell <carlos@redhat.com>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
 <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com>
 <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
 <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
 <alpine.DEB.2.21.1905201651260.2935@digraph.polyomino.org.uk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5725e69e-cb7d-042c-2eb2-d43f0be75f18@gmail.com>
Date:   Mon, 29 Jul 2019 21:32:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1905201651260.2935@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Joseph,

On 5/20/19 6:58 PM, Joseph Myers wrote:
> On Fri, 17 May 2019, Carlos O'Donell wrote:
> 
>> On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
>> <g.branden.robinson@gmail.com> wrote:
>>> What would you prefer?  That the man page not document the bug at all?
>>> Was it a mistake in your view to have added the information about the
>>> bug to the man page in the first place?
>>
>> I think having the glibc upstream version information is useful.
> 
> Likewise - if a bug is worth documenting there I think it's unavoidable 
> that the version numbers describe when things changed in glibc upstream.
> 
> What's more of an issue is when the BUGS section gets out of date or the 
> descriptions of the conditions for an issue are misleading.  pow(3) is a 
> case in point; it says "On 64-bits" meaning "on systems using the generic 
> implementation" (i.e., it's written from an assumption that x86_64 and 
> i386 are the only architectures and that i386 is the default) and that> issue was fixed in 2.28,

So should the text now read something like: "Before glibc 2.28, on 64-bit
systems [this bug existed]"?

> while the "If x is negative" described there was 
> both i386-specific (not mentioned as such) and fixed in 2.16.

And similarly, should the text now read something like: "On i386 systems
and glibc versions earlier than 2.16..."?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
