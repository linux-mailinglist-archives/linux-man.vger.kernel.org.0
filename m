Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACB541B32A
	for <lists+linux-man@lfdr.de>; Mon, 13 May 2019 11:48:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727719AbfEMJsW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 May 2019 05:48:22 -0400
Received: from mx1.redhat.com ([209.132.183.28]:18840 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727640AbfEMJsV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 May 2019 05:48:21 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id CCA5C87622;
        Mon, 13 May 2019 09:48:21 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-219.str.redhat.com [10.33.192.219])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id DE1FD5D71F;
        Mon, 13 May 2019 09:48:20 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
Date:   Mon, 13 May 2019 11:48:19 +0200
In-Reply-To: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
        (G. Branden Robinson's message of "Sat, 11 May 2019 17:20:52 +1000")
Message-ID: <8736liit24.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 13 May 2019 09:48:21 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson:

>  .SH BUGS
> -Since glibc 2.19,
> +From glibc 2.19 to 2.29,
>  .B pldd
> -is broken: it just hangs when executed.
> -.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=18035
> -It is unclear if it will ever be fixed.
> +was broken: it just hung when executed.
> +.\" glibc commit 1a4c27355e146b6d8cc6487b998462c7fdd1048f
> +This problem was fixed in glibc 2.30.

I'm not sure if it makes sense to document this in the manual page.  I
expect that the fix will propagate to affected distributions fairly
quickly, now that it is available upstream.  It's certainly more likely
that users will receive a glibc update with the fix than a manpage
update with this change.

Thanks,
Florian
