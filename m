Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD3B5278FC7
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 19:40:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727290AbgIYRkC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 13:40:02 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:50784 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729653AbgIYRkB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 13:40:01 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601055600;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=i0NUkfA/IECNtbw53+ZcCVAPJL6aLyJb1AKj19Cje3A=;
        b=jVFgk4zMnpvcfTciiUs28ZanhnM0OCKi/NOkCog1IRFmcW/MaeC2Wo4Ds7BW5vDeSG6YeP
        RsWs1ZAX/H1jXzgX6iE09UvVn287EzfODD9oYR9Xo+XJ1iRouukdjtPLCJ7mJSOKSFB4M6
        /YSGaPrrUENrQ1TnLEBjgxUgOtAvpJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-dCpyZtn4ODenprkVglBi8A-1; Fri, 25 Sep 2020 13:39:56 -0400
X-MC-Unique: dCpyZtn4ODenprkVglBi8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 852511891E89;
        Fri, 25 Sep 2020 17:39:54 +0000 (UTC)
Received: from localhost (unknown [10.33.36.4])
        by smtp.corp.redhat.com (Postfix) with ESMTP id B420D5C1C7;
        Fri, 25 Sep 2020 17:39:53 +0000 (UTC)
Date:   Fri, 25 Sep 2020 18:39:52 +0100
From:   Jonathan Wakely <jwakely@redhat.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     fweimer@redhat.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org, rusty@rustcorp.com.au,
        linux-kernel@vger.kernel.org, libstdc++@gcc.gnu.org,
        libc-coord@lists.openwall.com, enh@google.com
Subject: Re: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
Message-ID: <20200925173952.GN6061@redhat.com>
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
 <20200925132000.235033-1-colomar.6.4.3@gmail.com>
 <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
 <20200925144822.GM6061@redhat.com>
 <22c110fe-4c92-e5e6-dc35-dbf00a97cfa2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <22c110fe-4c92-e5e6-dc35-dbf00a97cfa2@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 25/09/20 18:30 +0200, Alejandro Colomar via Libstdc++ wrote:
>Hello Jonathan,
>
>On 2020-09-25 16:48, Jonathan Wakely wrote:
>> Do you really need to provide snitems?
>>
>> Users can use (ptrdiff_t)nitems if needed, can't they?
>
>They can, but that adds casts in the code,
>which makes longer lines that are somewhat harder to read.
>To avoid that, users may sometimes omit the cast with possible UB.
>BTW, I use
>
>IMO, array indices should be declared as 'ptrdiff_t' always,
>and not 'size_t'.  More generically, I use unsigned integer types for two
>reasons:  bitwise operations, and library functions that require me to 
>do so.
>
>I don't intend to force anyone with my opinion, of course,
>but if I were to choose a type for 'nitems()', it would be 'ptrdiff_t'.
>
>However, for legacy reasons people will expect that macro to be unsigned,
>so I'd have 'nitems()' unsigned, and then a signed version prefixed 
>with an 's'.
>
>Some very interesting links about this topic:
>
>Bjarne Stroustrup (and others) about signed and unsigned integers:
>https://www.youtube.com/watch?v=Puio5dly9N8&t=12m56s
>https://www.youtube.com/watch?v=Puio5dly9N8&t=42m41s
>
>The two links above are two interesting moments of the same video.
>
>I guess that might be the reason they added std::ssize, BTW.

Yes, I'm aware of all the rationale. I already said that it makes
sense in C++ where you have generic code. I am not convinced that it's
necessary to add to <sys/param.h> when all it does is a cast from
size_t to ptrdiff_t.

