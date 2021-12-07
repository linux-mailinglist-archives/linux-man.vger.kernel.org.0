Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63DAA46C32A
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 19:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236158AbhLGS4V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Dec 2021 13:56:21 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:25529 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236052AbhLGS4U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Dec 2021 13:56:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1638903169;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=NX4n8HDIHk7rvaQrdahejx5ZoTo3PaU9Uw9ptduF4zA=;
        b=B2cY2X/0Hze1yofPFjWDdb6/ynMmHnaHqO1MC5gG9l2L1IO53BOMq1ROEPL0bQOPfWI00o
        14n1e+DsOUBHagfnZEYyU5fHpY+dIF4zciaBdSk0QAhN4Ta2+bfY6gmDLIne22aCtTIQ5Q
        IMjpKTP6fdxQvMKwCvzNIcopTiS5p6U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-208-nLFZJ2odMFOUoO4k3QHW8g-1; Tue, 07 Dec 2021 13:52:44 -0500
X-MC-Unique: nLFZJ2odMFOUoO4k3QHW8g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7E7710151E0;
        Tue,  7 Dec 2021 18:52:42 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.123])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C518810016F5;
        Tue,  7 Dec 2021 18:52:40 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, Zack Weinberg <zack@owlfolio.org>,
        <libc-alpha@sourceware.org>
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct
 timespec::tv_nsec type for x32 and portability
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
        <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
        <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
        <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
        <a55c07d0-960f-4dfe-90bf-4fee33976198@www.fastmail.com>
        <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com>
        <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
        <alpine.DEB.2.22.394.2112071841360.426691@digraph.polyomino.org.uk>
Date:   Tue, 07 Dec 2021 19:52:38 +0100
In-Reply-To: <alpine.DEB.2.22.394.2112071841360.426691@digraph.polyomino.org.uk>
        (Joseph Myers's message of "Tue, 7 Dec 2021 18:43:56 +0000")
Message-ID: <87v900nt6x.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Joseph Myers:

> On Tue, 7 Dec 2021, =D0=BD=D0=B0=D0=B1 via Libc-alpha wrote:
>
>> Looking through "timespec" on Aardvark for prior art reveals nothing,
>> except for a likely resolution to any proposal of this sort:
>> > Although we agree that it would have been better if these functions had
>> > been designed this way to begin with, we believe that making the change
>> > now will break existing, conforming code with no real benefit.=20
>
> Geoff Clare said (austin-group-l, Thu, 29 May 2014 16:20:22 +0100):
>
>   C11 requires tv_nsec to be type long, which means that if we change
>   it to be a new snseconds_t type in Issue 8, we would have to require
>   that snseconds_t is defined as long in order not to conflict with C11.
>
> and Rich Felker (Thu, 29 May 2014 13:08:59 -0400):
>
>   This is just a linux kernel bug which needs to be fixed. They have a
>   number of other such bugs in x32 too. It's possible to work around it
>   in userspace on the library side (we do this in musl libc) but it's a
>   bit costly/painful and glibc does not do so yet. There's an open bug
>   for it which I filed:
>
> and I don't see any other responses in that discussion.

This came up again during the time64 work.  The kernel was eventually
changed to ignore the padding, so userspace can use a long int type.
x32 wasn't changed for backwards compatibility reasons.

Thanks,
Florian

