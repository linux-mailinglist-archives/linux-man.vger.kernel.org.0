Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78BC6F50EB
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 17:19:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbfKHQT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Nov 2019 11:19:56 -0500
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:56087 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726152AbfKHQTz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Nov 2019 11:19:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1573229994;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qfftxBQSyIyxsP98Stgtia4lPdR8+21Ca93caRxOvvM=;
        b=dXccqiy5Gxo4+VxfXYIEh3exarron01zzjyObiY3U89AwJ2oV9uAX8XW7D/ioP3lwdwOoE
        /carE5lHjuHm9IsvmlpXhtmlIkuG4ln2+rvdkQRG7svK245UnuEzmV+7ZAkvKh9V+6ByPz
        IT6LQVcHZHAnSjzDvjiLlbT4gfKhZIg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-8AWStgtsMxKyhFvI6GLfwg-1; Fri, 08 Nov 2019 11:19:51 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77E7A107ACC5;
        Fri,  8 Nov 2019 16:19:50 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-200.str.redhat.com [10.33.192.200])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 535161001B39;
        Fri,  8 Nov 2019 16:19:49 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Szabolcs Nagy <Szabolcs.Nagy@arm.com>
Cc:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        "libc-alpha\@sourceware.org" <libc-alpha@sourceware.org>,
        nd <nd@arm.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: glibc in master is incompatible with systemd-nspawn
References: <87k18a62xe.fsf@oldenburg2.str.redhat.com>
        <20191108141149.GB20533@altlinux.org>
        <87v9ru1l6d.fsf@oldenburg2.str.redhat.com>
        <c4001320-2d3f-9523-c93f-60f799545654@linaro.org>
        <e3486649-58fa-c1b5-7913-9e9f098972db@arm.com>
Date:   Fri, 08 Nov 2019 17:19:47 +0100
In-Reply-To: <e3486649-58fa-c1b5-7913-9e9f098972db@arm.com> (Szabolcs Nagy's
        message of "Fri, 8 Nov 2019 16:01:58 +0000")
Message-ID: <874kze1gt8.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: 8AWStgtsMxKyhFvI6GLfwg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Szabolcs Nagy:

> it's of course broken whenever the application is
> run on a newer kernel+libc than what was used for
> creating the filter, may be the seccomp manual should
> warn against the use of EPERM (there is already a
> caveats section)?

On this topic (ENOSYS vs PERM), I wrote earlier today:

| They serve different purposes. EPERM is appropriate if you want things
| to fail (so that applications break), ENOSYS is appropriate if you
| want to trigger fallback (like utimensat_time64 =E2=86=92 utime) or just
| disable the feature (because the application assumes the kernel is too
| old to support it). For a generic container runtime, there either have
| to be no filters by default (my preference), or filters for unknown
| system calls need to return ENOSYS. Everything else will break too
| many applications.
|
| If you have specific knowledge of the system call, you can return
| EPERM instead in a few cases (e.g. for clock_settime). But that's not
| really possible for an unknown system call.

<https://bugzilla.redhat.com/show_bug.cgi?id=3D1769299>

I don't know how controversial this position is.  People seem rather
opinionated about EPERM.

Thanks,
Florian

