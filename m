Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E18244BCA4
	for <lists+linux-man@lfdr.de>; Wed, 10 Nov 2021 09:12:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbhKJIPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Nov 2021 03:15:13 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:32112 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229756AbhKJIPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Nov 2021 03:15:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1636531945;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ajgSYkK+aY8QIF3EpLyEOypzk3LXVEzZ0seo+8rWyDk=;
        b=AIc9ouo5S2Aeb1G2LqdZtQVPHSa5jdBtHQi5T8jmZHryvG2WRTPhE941BaDmTFWj903PyB
        +8M5LgUxVWO6fpAmubxdSHL5f8ZeGxbHIrnVfgrV6zBdxi18WiTN3/DBUDNydMoOmma/yw
        Vrqrkm+Jxp3N7twNs1AF2Nd8CODwRb4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-mtzDI7AcPqSotM4tZBMPbg-1; Wed, 10 Nov 2021 03:12:23 -0500
X-MC-Unique: mtzDI7AcPqSotM4tZBMPbg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DF9912C9BE;
        Wed, 10 Nov 2021 08:12:02 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.82])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E4ACD60C17;
        Wed, 10 Nov 2021 08:12:00 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     enh <enh@google.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: wfix.
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
Date:   Wed, 10 Nov 2021 09:11:59 +0100
In-Reply-To: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
        (enh@google.com's message of "Tue, 9 Nov 2021 14:27:59 -0800")
Message-ID: <874k8k8m5s.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
> index b727cb48e..3e61e797f 100644
> --- a/man3/pthread_atfork.3
> +++ b/man3/pthread_atfork.3
> @@ -39,7 +39,7 @@ The
>  .BR pthread_atfork ()
>  function registers fork handlers that are to be executed when
>  .BR fork (2)
> -is called by this thread.
> +is called by any thread in a process.
>  The handlers are executed in the context of the thread that calls
>  .BR fork (2).
>  .PP

There's another confusing =E2=80=9Cthread=E2=80=9D reference further below:
=E2=80=9Cpthread_atfork() may be called multiple times by a thread, to regi=
ster
multiple handlers for each phase.=E2=80=9D  I think that should be replaced=
 by
=E2=80=9Cprocess=E2=80=9D for clarity.

Thanks,
Florian

