Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1903B2D8662
	for <lists+linux-man@lfdr.de>; Sat, 12 Dec 2020 13:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727388AbgLLMPD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Dec 2020 07:15:03 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:55261 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727289AbgLLMPD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Dec 2020 07:15:03 -0500
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160] helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1ko3n2-0005la-6W; Sat, 12 Dec 2020 12:14:20 +0000
Date:   Sat, 12 Dec 2020 13:14:19 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
Message-ID: <20201212121419.odpgbaigrjhpkjnm@wittgenstein>
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
 <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
 <20201209105618.okw5lgcdikg5bvae@wittgenstein>
 <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Dec 10, 2020 at 03:36:42PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Christian,

Hi Alex,

> 
> Thanks for confirming that behavior.  Seems reasonable.
> 
> I was wondering...
> If this call is equivalent to unshare(2)+{close(2) in a loop},
> shouldn't it fail for the same reasons those syscalls can fail?
> 
> What about the following errors?:
> 
> From unshare(2):
> 
>        EPERM  The calling process did not have the  required  privi‐
>               leges for this operation.

unshare(CLONE_FILES) doesn't require any privileges. Only flags relevant
to kernel/nsproxy.c:unshare_nsproxy_namespaces() require privileges,
i.e.
CLONE_NEWNS
CLONE_NEWUTS
CLONE_NEWIPC
CLONE_NEWNET
CLONE_NEWPID
CLONE_NEWCGROUP
CLONE_NEWTIME
so the permissions are the same.

> 
> From close(2):
>        EBADF  fd isn't a valid open file descriptor.
> 
> OK, this one can't happen with the current code.
> Let's say there are fds 1 to 10, and you call 'close_range(20,30,0)'.
> It's a no-op (although it will still unshare if the flag is set).
> But souldn't it fail with EBADF?

CLOSE_RANGE_UNSHARE should always give you a private file descriptor
table independent of whether or not any file descriptors need to be
closed. That's also how we documented the flag:

/* Unshare the file descriptor table before closing file descriptors. */
#define CLOSE_RANGE_UNSHARE	(1U << 1)

A caller calling unshare(CLONE_FILES) and then an emulated close_range()
or the proper close_range() syscall wants to make sure that all unwanted
file descriptors are closed (if any) and that no new file descriptors
can be injected afterwards. If you skip the unshare(CLONE_FILES) because
there are no fds to be closed you open up a race window. It would also
be annoying for userspace if they _may_ have received a private file
descriptor table but only if any fds needed to be closed.

If people really were extremely keen about skipping the unshare when no
fd needs to be closed then this could become a new flag. But I really
don't think that's necessary and also doesn't make a lot of sense, imho.

> 
>        EINTR  The close() call was interrupted by a signal; see sig‐
>               nal(7).
> 
>        EIO    An I/O error occurred.
> 
>        ENOSPC, EDQUOT
>               On NFS, these errors are not normally reported against
>               the first write which exceeds  the  available  storage
>               space,  but  instead  against  a  subsequent write(2),
>               fsync(2), or close().

None of these will be seen by userspace because close_range() currently
ignores all errors after it has begun closing files.

Christian
