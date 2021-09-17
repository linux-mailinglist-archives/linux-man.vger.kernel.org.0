Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7507A40F3F8
	for <lists+linux-man@lfdr.de>; Fri, 17 Sep 2021 10:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237577AbhIQIWb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Sep 2021 04:22:31 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:60360 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230296AbhIQIWb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Sep 2021 04:22:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1631866868;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=nVD/02E4Dl9BulZLAySuW0Xs6LWidezzpAjy9Z3wwhE=;
        b=dSP7zuDWBUZ5TVjV/rO2WDmd5TB0vXfx8V7IgHy2Wa74A48C5r5y6TOcwAxmDiN93lJgMA
        QQ6AdhmiCQ9M17XqZ/SvsNJrUFovSG7gfyYzAHe4+asmmoGtRrhGldGlNYYTJxKiZwv3HU
        AENL4hds3MODpErv+5mvolzqeF43nRI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-viDGewU5Oceer9bvU34NdA-1; Fri, 17 Sep 2021 04:21:07 -0400
X-MC-Unique: viDGewU5Oceer9bvU34NdA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 392BE1084685;
        Fri, 17 Sep 2021 08:21:06 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.16])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id BCE791972E;
        Fri, 17 Sep 2021 08:21:04 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
References: <20210911160117.552617-1-alx.manpages@gmail.com>
        <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com>
        <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
Date:   Fri, 17 Sep 2021 10:21:02 +0200
In-Reply-To: <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
        (Eugene Syromyatnikov's message of "Tue, 14 Sep 2021 10:30:43 +0200")
Message-ID: <87tuijhatt.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Eugene Syromyatnikov:

> I think, the split is codified in the standards[1][2][3][4][5] (so,
> -lm/-lrt are expected to be supported by the compiler, per my
> understanding, and providing the necessary -l* option will always
> work, because it's codified in C standard, contrary to not providing
> one)

The C standard does not specify compiler invocations.

POSIX specifies some of these libraries and says that you have to link
with, e.g., -lm if you use math functions.  It also says that the
same functions may be available without -lm.

But some of these libraries are not in POSIX.  dlopen, for example,
should be usable without -ldl according to POSIX, but in glibc before
2.34, it is not.

And yes, in glibc 2.34, there are libdl.a etc. files, so that the old
-ldl etc. options still work.

Thanks,
Florian

