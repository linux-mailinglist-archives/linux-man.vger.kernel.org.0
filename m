Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D43AA5850
	for <lists+linux-man@lfdr.de>; Mon,  2 Sep 2019 15:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729945AbfIBNo5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Sep 2019 09:44:57 -0400
Received: from mx1.redhat.com ([209.132.183.28]:55224 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726253AbfIBNo5 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 2 Sep 2019 09:44:57 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 1952F85546;
        Mon,  2 Sep 2019 13:44:57 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-116-55.ams2.redhat.com [10.36.116.55])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id CE7945D6B7;
        Mon,  2 Sep 2019 13:44:55 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Eric Blake <eblake@redhat.com>,
        glibc list <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org
Subject: Re: f_owner_ex vs. POSIX
References: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
        <bdc9527b-6595-9f4e-b35d-3796967e044c@gmail.com>
Date:   Mon, 02 Sep 2019 15:44:53 +0200
In-Reply-To: <bdc9527b-6595-9f4e-b35d-3796967e044c@gmail.com> (Michael
        Kerrisk's message of "Sun, 1 Sep 2019 15:23:36 +0200")
Message-ID: <87mufmvmlm.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 02 Sep 2019 13:44:57 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

> I do not know what the rationale was for the addition of the 'enum',
> and it wouldn't surprise me if there was no public discussion about
> it. The use of an 'enum' strikes me as a slightly odd decision (given
> that the kernel uses 'int') but, related to your point below, there
> is precedent in, for example, the use of an 'enum' for 'idtype_t' in
> waitid() inside glibc, while the kernel type for the argument in
> the underlying system call is 'int'.

There is also the issue of -fshort-enum.  Some people probably expect
that they can use that option and still use glibc headers.

I do not have any inside knowledge why things are like they are.
Presumably we can switch the type member to int.

Thanks,
Florian
