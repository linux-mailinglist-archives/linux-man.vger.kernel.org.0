Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9639C46EB6D
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 16:36:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234492AbhLIPjj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Dec 2021 10:39:39 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:24335 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239965AbhLIPji (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Dec 2021 10:39:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1639064164;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8eztHTiu9y1cCKi/R6RvJbJjcH1KhDsYBd/6gPgiRxE=;
        b=Rni17exeF0Z3P+wR97A1/tku7UzuCWYEF6iC5HK8yv0AWmuyRWH/fDG9C5KKpdBohfYA2x
        OREECYcAdqg3VWmJPmYbcqXTR6IEzZPvJSI6kPEaUOr5lHVjVgMu4UHzGpbBpddnroRCl4
        2igAYDYnsdSgermaEGXAAnMY4Yb8Yvc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-hF85j1kGN-qhH9a5TDBYvg-1; Thu, 09 Dec 2021 10:36:01 -0500
X-MC-Unique: hF85j1kGN-qhH9a5TDBYvg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85FB3801B0F;
        Thu,  9 Dec 2021 15:36:00 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.123])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D8E0F60C7F;
        Thu,  9 Dec 2021 15:35:58 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     PODOPLELOV Andrei <Andrei.PODOPLELOV@3ds.com>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: Re: [patch] --filter option in ld: srcfix
References: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com>
        <87pmq6j1wu.fsf@oldenburg.str.redhat.com>
        <11c8a3fcad954d429a9c55564f5f7064@3ds.com>
Date:   Thu, 09 Dec 2021 16:35:56 +0100
In-Reply-To: <11c8a3fcad954d429a9c55564f5f7064@3ds.com> (PODOPLELOV Andrei's
        message of "Thu, 9 Dec 2021 01:08:12 +0000")
Message-ID: <87fsr1g59f.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* PODOPLELOV Andrei:

> Hi Florian,
>
> Responding to your idea about filtering...

> I just checked the filtering. It does work as expected, means, I
> cannot build main.c using some new symbol, defined only in filtee.c,
> but not in filter.c. So the runtime won't use the full set of filtee's
> symbols, but just a subset, defined in the filter.

Looks like ld (the link editor) has filtering,

Try linking with -Wl,-z,undefs, I expect you will see that the symbol is
available at run time.

Thanks,
Florian

