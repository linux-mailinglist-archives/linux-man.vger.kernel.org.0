Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D9F32DB98
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 22:12:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239084AbhCDVLy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 16:11:54 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:51785 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239080AbhCDVLf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 16:11:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614892209;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=tLI24ca/MERFyzL2Z5pLWaKqevRoM9VA+hYhVldy6fM=;
        b=FteRdtewGdQ3fIvOn/9ciysZlRG9sxfm3izx0Kcji9h0FtwR0IYg81CADTKsUX/DS8BM+C
        OVzP6GKpNRtnxgqqRnxpBTrQB3UdXQjxdzet8lpY8na2z0qDXAYZEK0qHrasMdLjKcU8nh
        jPJa8sEagFxSSjXlncu8ZZJ1BysH19U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-pG8swbrqNGeNqtRVYmXC4Q-1; Thu, 04 Mar 2021 16:10:05 -0500
X-MC-Unique: pG8swbrqNGeNqtRVYmXC4Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBD376409B;
        Thu,  4 Mar 2021 21:10:03 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-112-56.ams2.redhat.com [10.36.112.56])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B1A9614FA;
        Thu,  4 Mar 2021 21:10:02 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Zack Weinberg <zackw@panix.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH] makecontext.3: Fix function declarator with empty
 parentheses.
References: <20210304194534.130735-1-alx.manpages@gmail.com>
        <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
Date:   Thu, 04 Mar 2021 22:10:10 +0100
In-Reply-To: <CAKCAbMg3G4EAeuUhN9EQTDnrTSD0sPoH0uH1=kkpfj9qYorPdg@mail.gmail.com>
        (Zack Weinberg's message of "Thu, 4 Mar 2021 15:10:30 -0500")
Message-ID: <87v9a6hbgt.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Zack Weinberg:

> This is actually the Austin Group=E2=80=99s primary rationale for depreca=
ting
> makecontext and its relatives.

That's a bit surprising because open and fcntl have a similar problem:
the argument type before the ellipsis cannot be int.

And doesn't a later C standard add a generic function pointer type?

Thanks,
Florian

