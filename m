Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B807278B34
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 16:48:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729121AbgIYOsf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 10:48:35 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:49003 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729097AbgIYOsf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 10:48:35 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601045313;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=WOE8C534cybdDhaeE/ixqwfnkj+2uT32PmfwYjnlzc8=;
        b=FXURxxvdoJlNwkNNqbY5t9rMLkfpmwGB/NqDoKDQj7CMGPvUfYzdVOFKWQdjearB1ySu6c
        Fz2uj6HoDy4JKBluzXfL4kHTdw3FvNoCcnot8jghbr2D9za0YYTEWKBB25WUqTYY4sX8j5
        Yo5XP6jXBjwHwqf9GBjjzYvybJ3n5Fs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-lVpsl2L7PmSm51S3Uh_5sw-1; Fri, 25 Sep 2020 10:48:29 -0400
X-MC-Unique: lVpsl2L7PmSm51S3Uh_5sw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F9EB80B70F;
        Fri, 25 Sep 2020 14:48:24 +0000 (UTC)
Received: from localhost (unknown [10.33.36.46])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 870735C1BB;
        Fri, 25 Sep 2020 14:48:23 +0000 (UTC)
Date:   Fri, 25 Sep 2020 15:48:22 +0100
From:   Jonathan Wakely <jwakely@redhat.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com,
        libstdc++@gcc.gnu.org, gcc@gcc.gnu.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        fweimer@redhat.com, ville.voutilainen@gmail.com, enh@google.com,
        rusty@rustcorp.com.au
Subject: Re: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
Message-ID: <20200925144822.GM6061@redhat.com>
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
 <20200925132000.235033-1-colomar.6.4.3@gmail.com>
 <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 25/09/20 16:10 +0200, Alejandro Colomar wrote:
>
>
>On 2020-09-25 15:20, Alejandro Colomar wrote:
>> 'nitems()' calculates the length of an array in number of items.
>> It is safe: if a pointer is passed to the macro (or function, in C++),
>> the compilation is broken due to:
>>   - In >= C11: _Static_assert()
>>   - In C89, C99: Negative anonymous bitfield
>>   - In C++: The template requires an array
>>
>> 'snitems()' is equivalent to nitems(),
>> but it returns a 'ptrdiff_t' instead of a 'size_t'.
>> It is useful for comparison with signed integer values.
>>
>> Some BSDs already provide a macro nitems() in <sys/param.h>,
>> although it usually doesn't provide safety against pointers.
>>
>> This patch uses the same name for compatibility reasons,
>> and to be the least disruptive with existing code.
>>
>> This patch also adds some other macros, which are required by 'nitems()':
>>
>> __is_same_type(_A, _B):
>> Returns non-zero if the two input arguments are of the same type.
>>
>> __is_array(_Arr):
>> Returns non-zero if the input argument is of an array type.
>>
>> __must_be(_Expr, _Msg):
>> Allows using _Static_assert() everywhere an expression can be used.
>> It evaluates '(int)0' or breaks the compilation.
>>
>> __must_be_array(_Arr):
>> It evaluates to '(int)0' if the argument is of an array type.
>> Else, it breaks compilation.
>>
>> __array_len(_Arr):
>> It implements the basic sizeof division needed to calculate the 
>array length.
>>
>>
>> P.S.: I'd like to put this patch in the public domain.
>>
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>
>I patched my own system's <sys/param.h> with this,
>and while 'nitems()' works fine,
>I had to include <stddef.h> in my main.c to be able to use 'snitems()',
>because I didn't have 'ptrdiff_t',
>eventhough <sys/param.h> already includes <stddef.h>.
>
>I completely ignore the mechanisms behind system headers including
>other system headers.
>
>Moreover, I didn't find 'ptrdiff_t' defined in any of my systems headers
>I used 'user@debian:/usr/include$ grep -rn ptrdiff_t'.  Does GCC do magic?
>
>What's the problem with that?  How should I fix the patch?

Do you really need to provide snitems?

Users can use (ptrdiff_t)nitems if needed, can't they?

C++ provides std::ssize because there are reasons to want it in
generic contexts when using the function on arbitrary container-like
objects. But for an array size you know that ptrdiff_t is wide enough
to represent the size of any array.

Do you have a use case that requries snitems, or can you assume YAGNI?

