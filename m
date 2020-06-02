Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A07521EB5B3
	for <lists+linux-man@lfdr.de>; Tue,  2 Jun 2020 08:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725900AbgFBGOW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Jun 2020 02:14:22 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:39525 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1725616AbgFBGOW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Jun 2020 02:14:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1591078460;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=mYP0xgPJfTySWJ+6ulC8+3QRXTd8XnTX4jpO0nT64hE=;
        b=F1qUdSmmrp+KtBU6GFUsxxazodFaK4d1zU8vFVUxVCB8NHpErpmR/StAIio6VlfvCCaT5X
        OcfzP23lXth7cANlX4TuxgI/ru+GYmiZPmb3XUSSbLedjde2wY984n0PgzoPJo4RDRgUOT
        A0bLvlYWITAIv+cgEc15plLMzuAhUD0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-4FdgEc1oNxeSEJkgVEgf4Q-1; Tue, 02 Jun 2020 02:14:19 -0400
X-MC-Unique: 4FdgEc1oNxeSEJkgVEgf4Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1FF197BAC;
        Tue,  2 Jun 2020 06:14:18 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-170.ams2.redhat.com [10.36.112.170])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8616B2DE74;
        Tue,  2 Jun 2020 06:14:14 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for glibc 2.31.
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
        <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
        <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
Date:   Tue, 02 Jun 2020 08:14:12 +0200
In-Reply-To: <14751c26-4c4d-24c1-df12-429931b61780@redhat.com> (Carlos
        O'Donell's message of "Mon, 1 Jun 2020 23:09:10 -0400")
Message-ID: <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Carlos O'Donell:

> +Care should be taken when packaging such application with a package mana=
ger,
> +particularly the scenario where an optimized library is being removed.  =
With
> +certain package managers, particularly rpm, the newer version of the

Twice =E2=80=9Cparticularly=E2=80=9D.

> +application is installed first, which means that for a period of time du=
ring
> +the upgrade all applications that use the library may start with a mixed=
 set of
> +libraries e.g.  the old library from the feature-based search path, and =
new

Commas arount e.g.?

> +libraries from the upgrade. To avoid this scenario the new library versi=
on
> +should delete all known optimized libraries in the post-install phase.

There is a different mechanism: Debian has patched glibc to disable
hwcap subdirectors if the file /etc/ld.so.nohwcap exists.

You now list the AT_PLATFORM directories (determined by the kernel on
most architectures) along the regular hwcaps directories, although they
are handled somewhat differently.  For example, on s390x, if you have a
=E2=80=9Cz15=E2=80=9D machine (as indicated by AT_PLATFORM), the =E2=80=9Cz=
13=E2=80=9D subdirectory is
not selected.  ldconfig will add it to the cache, but it will not be
used at run time.  I'm not sure if your proposed description gives
readers the right idea what happens.

Thanks,
Florian

