Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFAE246DCB3
	for <lists+linux-man@lfdr.de>; Wed,  8 Dec 2021 21:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232241AbhLHUL0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 15:11:26 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:26463 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234093AbhLHULZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 15:11:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1638994073;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=E7TWOv6QJs7gMUSDw6gOlnoaDfYOiviATdrx2fYOQBc=;
        b=dLfkMpWgE/lqKUnW/cq9N+QA7kqlRQ44TVp2CzWsymO8CeJxyHxissxrASACVEI4JSfuE7
        0BKsJtAC5laAECn8IMeObi7DLixc9OmsPojEP5NJuoQTAw9dXId/DdLoSMnsjJVcU8G4Mf
        XMXiNf471QrhiFLVxRIMNugkvdOhCzc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-41-14Y1bm_FPIeeGYqAG7U9KQ-1; Wed, 08 Dec 2021 15:07:52 -0500
X-MC-Unique: 14Y1bm_FPIeeGYqAG7U9KQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A45791018721;
        Wed,  8 Dec 2021 20:07:50 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.123])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A8CF719C59;
        Wed,  8 Dec 2021 20:07:48 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     PODOPLELOV Andrei <Andrei.PODOPLELOV@3ds.com>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: Re: [patch] --filter option in ld: srcfix
References: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com>
Date:   Wed, 08 Dec 2021 21:07:45 +0100
In-Reply-To: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com> (PODOPLELOV Andrei's
        message of "Wed, 8 Dec 2021 17:32:36 +0000")
Message-ID: <87pmq6j1wu.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* PODOPLELOV Andrei:

> I believe it would be beneficial to change it to something like:
>
>        --filter=name
>            When creating an ELF shared object (a "filter"), set the
>            internal DT_FILTER field to the specified name - another
>            ELF shared object (a "filtee"). This tells the dynamic linker
>            that the symbol table of the "filter" should be used to
>            select a subset of the symbols provided by the "filtee".
>
>            When you link a program against this "filter" and run it,
>            the dynamic linker will see the DT_FILTER field and resolve
>            symbols according to the symbol table of the "filter" object
>            as usual. However, when a certain symbol of the "filter" is
>            also present in "filtee", it will actually link to the
>            definition in the "filtee".

I think that's still misleading because to my knowledge, glibc does not
implement any filtering.  Only the symbol search order is changed (what
you describe in the second paragraph).

Thanks,
Florian

