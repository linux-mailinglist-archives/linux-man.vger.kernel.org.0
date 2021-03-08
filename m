Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A987330C4C
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 12:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230412AbhCHL1p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 06:27:45 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:31100 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231411AbhCHL1T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 06:27:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615202837;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+s8SYCXFQ23FMSWCgopz54sR0n6a7VMCR3xAiXOItuo=;
        b=dQSfdXGXv1NMj/dRX4PM/RBioTbCGFlrBt4+V6yDHW9lakG9U5bzK0qkGyKAZa/AsfHWZS
        FpV+6VOx8TeuLDz+2heQJsroFMgcpO2F0KFzvi8RcSht/yr+84+lktImWItpCLj/f1FnCT
        yIqClkxXP3cY8AaKbLXKjeTXqGIVLDI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-rgfztzWDMT2oB2CzRNjrOg-1; Mon, 08 Mar 2021 06:27:15 -0500
X-MC-Unique: rgfztzWDMT2oB2CzRNjrOg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92FDB26865;
        Mon,  8 Mar 2021 11:27:14 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-112-77.ams2.redhat.com [10.36.112.77])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 55C0360C04;
        Mon,  8 Mar 2021 11:27:13 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
Subject: Re: pthread_cleanup_push_defer_np.3: missing functions in glibc
References: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com>
        <87mtveexop.fsf@oldenburg.str.redhat.com>
        <1eecbbec-06ac-d94a-c0b2-52a8012d7280@gmail.com>
Date:   Mon, 08 Mar 2021 12:27:17 +0100
In-Reply-To: <1eecbbec-06ac-d94a-c0b2-52a8012d7280@gmail.com> (Alejandro
        Colomar's message of "Mon, 8 Mar 2021 11:54:51 +0100")
Message-ID: <87im61ga22.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> Hi Florian,
>
> On 3/8/21 11:39 AM, Florian Weimer wrote:
>> * Alejandro Colomar:
>> 
>>> While adding 'restrict' to the prototypes, I found that the functions
>>> defined in this page don't exist on glibc (or I couldn't find them).
>>> I tried removing _np, and still no luck, and 'git log --grep' didn't
>>> help either.  Where these functions removed at some point?
>> Yes, they are part of the legacy cancellation implementation that
>> predates DWARF unwinding.
>
> Thanks for the info.  I guess we should add that to the manual
> page. I've tried checking out some quite old versions of glibc and
> still didn't find the functions.  If you know more details about when
> they were removed, please tell me and I'll update it.

LinuxThreads had this:

/* Install a cleanup handler as pthread_cleanup_push does, but also
   saves the current cancellation type and set it to deferred cancellation. */

#define pthread_cleanup_push_defer_np(routine,arg)                            \
  { struct _pthread_cleanup_buffer _buffer;                                   \
    _pthread_cleanup_push_defer (&_buffer, (routine), (arg));

extern void _pthread_cleanup_push_defer __P ((struct _pthread_cleanup_buffer *__buffer,
                                              void (*__routine) (void *),
                                              void *__arg));

This is from sysdeps/pthread/pthread.h in
glibc-linuxthreads-2.0.1.tar.gz.  It was part of an add-on, not glibc
proper.  This may make it a bit difficult to identify the release where
it was definitely removed.

Thanks,
Florian

