Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E3CF25F667
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:25:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728331AbgIGJY7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:24:59 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:36876 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727122AbgIGJY7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:24:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1599470697;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=F3JuciyJMit3hQ8XdJ7Vim5U8N8aaFN55BW/qn8iTds=;
        b=fueiRY6KGc6umBM326uxTgzdJoeB8YX2rRp/H4nCtgS2aw3c8JWjMBCkqEXXcCiNyMqGqQ
        iClryCZ0uikHpCd7zM22ElAsJJSm3LmQNn0ImIDs8rCEnnu5hk4WjntXbBXXmdG+6hDuja
        1wS+qEKlhNadJYY4xd41A5o4KE+zc+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-tyH4LhOlOGalZvegJtHolQ-1; Mon, 07 Sep 2020 05:24:53 -0400
X-MC-Unique: tyH4LhOlOGalZvegJtHolQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A6968018A1;
        Mon,  7 Sep 2020 09:24:52 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-228.ams2.redhat.com [10.36.113.228])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 802A68C515;
        Mon,  7 Sep 2020 09:24:51 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Bug or misdocumented feature in pthread_setaffinity_np.3
References: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com>
Date:   Mon, 07 Sep 2020 11:24:49 +0200
In-Reply-To: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com> (Alejandro
        Colomar via Libc-alpha's message of "Mon, 7 Sep 2020 11:00:05 +0200")
Message-ID: <87sgbu7xcu.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar via Libc-alpha:

> pthread_setaffinity_np() and pthread_getaffinity_np(), "on error,
> return a non-zero error number".  Usually that kind of library
> functions return -1, and I don't know if this case is different.  The
> RETURN VALUE section doesn't specify. Actually the words "error
> number" hint that it is an `errno` value, because it's the same words
> in errno.3, but it could be clearer, and maybe also point to errno(3)
> in that page.

Most libpthread functions return errno codes instead of in addition to
setting errno.  This is something that POSIX requires.  The asymmetry is
annoying.  I think it dates back to the days where libpthread was purely
a library in some implementations, to be used with a C library that was
not even aware of threads and did not have a per-thread errno variable.
(Of course, that didn't work too well, but people tried.)

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

