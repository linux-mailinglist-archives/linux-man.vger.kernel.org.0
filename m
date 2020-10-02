Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E95728117E
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:47:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbgJBLrL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:47:11 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:22316 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725964AbgJBLrL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:47:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601639230;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=y/+dbE6ZampEEgVyWbjL31CdhUsxU3p9CprgCAkzhXs=;
        b=ErsDOKuDS1AtKkNiVORMX1vYDigoRaAlEpV6P3pJs90iIwjcbrNGlOD/IVfVQ7pjr+Mp8C
        3OdhRy6Mb+6l75HGu5orT2K3BLPNUHSM8Qy1UsbRiALqV/J35RumtbjLZ7AKkhi7RJRSOm
        vQ2PgPaRbjzf/Vd8eYZvXxzAaRJyLXw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-6k_-FgFqO1ubPJeJeU-b4Q-1; Fri, 02 Oct 2020 07:47:08 -0400
X-MC-Unique: 6k_-FgFqO1ubPJeJeU-b4Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3E881084C98;
        Fri,  2 Oct 2020 11:47:06 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-84.ams2.redhat.com [10.36.114.84])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 814B319C66;
        Fri,  2 Oct 2020 11:47:05 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
        <20201001163443.106933-2-colomar.6.4.3@gmail.com>
Date:   Fri, 02 Oct 2020 13:47:03 +0200
In-Reply-To: <20201001163443.106933-2-colomar.6.4.3@gmail.com> (Alejandro
        Colomar via Libc-alpha's message of "Thu, 1 Oct 2020 18:34:41 +0200")
Message-ID: <87eemg97ew.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar via Libc-alpha:

> +the compiler is able to generate efficient code for 128-bit arithmetic".

Stray "?

> +.PP
> +See also the
> +.IR intmax_t ,
> +.IR int N _t

I think it's surprising that intmax_t can be smaller than __int128 (and
usually is, I think), so that's probably worth mentioning.  Assuming
that we want to document __int128 at all as part of the man-pages
project.

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

