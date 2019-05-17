Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2CFA21AE6
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2019 17:45:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729363AbfEQPox (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 May 2019 11:44:53 -0400
Received: from mx1.redhat.com ([209.132.183.28]:48526 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729361AbfEQPox (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 17 May 2019 11:44:53 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 37B5C2E97D3;
        Fri, 17 May 2019 15:44:53 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-117-42.ams2.redhat.com [10.36.117.42])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A8A81001E61;
        Fri, 17 May 2019 15:44:48 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
        <8736liit24.fsf@oldenburg2.str.redhat.com>
        <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
Date:   Fri, 17 May 2019 17:44:41 +0200
In-Reply-To: <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
        (G. Branden Robinson's message of "Tue, 14 May 2019 00:17:48 +1000")
Message-ID: <87y335m6fq.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 17 May 2019 15:44:53 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson:

>> I'm not sure if it makes sense to document this in the manual page.
>
> It might not; another resonable approach might be to nuke the "Bugs"
> section of the man page entirely.  However, see below.
>
>> I expect that the fix will propagate to affected distributions fairly
>> quickly, now that it is available upstream.
>
> True for fast-moving distributions; as I noted in the commit message,
> Debian 10 has already got it backported to its glibc 2.29.

I'm pretty sure Debian 10 does not use glibc 2.28.

My point is that the glibc change will get backported, but any man-pages
change will not, so it will be quite some time until the latter shows up
on developer workstations.  And due to glibc backporting, the version
information there will be misleading.

Thanks,
Florian
