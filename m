Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D159D3FC313
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 09:10:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238082AbhHaHIP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Aug 2021 03:08:15 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:34736 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232209AbhHaHIO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Aug 2021 03:08:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630393639;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=98r1oWGaX5g3qtcckRiCf/oKPwrJ4ewxK/KzFNpPPnc=;
        b=HXKUXFdohBPzdrD9+gTSBzrpS/KJGkQpoEidrzgagOQ39zpD1hjJkHVzl3i6isXGfhHeBZ
        FhviISMDAYKxOeHkJUoUj46CLcZTiain3Cin3fxUCxvc1Gi6xJAOJQpIkKNf9cmtl9blAK
        qe574zPdASegLZOTDvVF/8dwTZ3i15E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-ntN17hakO4Ced-s3iGKN_Q-1; Tue, 31 Aug 2021 03:07:17 -0400
X-MC-Unique: ntN17hakO4Ced-s3iGKN_Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 413A3760C6;
        Tue, 31 Aug 2021 07:07:16 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.140])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 972DD19C59;
        Tue, 31 Aug 2021 07:07:14 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
Date:   Tue, 31 Aug 2021 09:07:12 +0200
In-Reply-To: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
        (Michael Kerrisk's message of "Tue, 31 Aug 2021 08:00:00 +0200")
Message-ID: <87lf4im6sf.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

>    Correct usage of realloc() (and reallocarray())
>        Since, on the one hand, realloc() (and  reallocarray())  may  move
>        the block of memory, and on the other, it may return NULL on fail=
=E2=80=90
>        ure and leave the memory contents and location unchanged,  correct
>        usage is something like the following:
>
>            void *ptr, *nptr;
>            ptr =3D malloc(origsize);
>            ...
>            /* In the following, we presume 'newsize' is not 0.
>               (If 'newsize' is zero, realloc() may return NULL,
>               and that is not an error.) */
>
>            nptr =3D realloc(ptr, newsize);
>            if (nptr =3D=3D NULL) {
>                /* Handle error; the block pointed to by 'ptr' is
>                   still usable. */
>            } else {
>                /* realloc() succeeded; update 'ptr' to point to
>                   the (possibly moved) block. */
>                ptr =3D nptr;
>            }

Maybe add this to the else branch: =E2=80=9CThe original value of ptr itsel=
f and
the memory it pointed to are invalid at this point.=E2=80=9D

That is, the somewhat common idiom of adjusting internal pointers in the
allocation to point to the new allocation is invalid.

Thanks,
Florian

