Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2927122EE3
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2019 15:36:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726858AbfLQOgL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Dec 2019 09:36:11 -0500
Received: from 216-12-86-13.cv.mvl.ntelos.net ([216.12.86.13]:51668 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726402AbfLQOgL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Dec 2019 09:36:11 -0500
Received: from dalias by brightrain.aerifal.cx with local (Exim 3.15 #2)
        id 1ihDxJ-00069T-00; Tue, 17 Dec 2019 14:36:09 +0000
Date:   Tue, 17 Dec 2019 09:36:09 -0500
From:   Rich Felker <dalias@libc.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>
Subject: Access to CMSG_DATA
Message-ID: <20191217143609.GA23014@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It came to my attention while reviewing possible breakage with move to
64-bit time_t that some applications are dereferencing data in socket
control messages (particularly SCM_TIMESTAMP*) in-place as the message
type, rather than memcpy'ing it to appropriate storage. This
necessarily does not work and is not supportable if the message
contains data with greater alignment requirement than the header. In
particular, on 32-bit archs, cmsghdr has size 12 and alignment 4, but
struct timeval and timespec may have alignment requirement 8.

I found at least ptpd, socat, and ssmping doing this via Debian Code
Search:

https://sources.debian.org/src/ptpd/2.3.1-debian1-4/src/dep/net.c/?hl=1578#L1578
https://sources.debian.org/src/socat/1.7.3.3-2/xio-socket.c/?hl=1839#L1839
https://sources.debian.org/src/ssmping/0.9.1-3/ssmpngcl.c/?hl=307#L307

and I suspect there are a good deal more out there. On most archs they
won't break, or will visibly break with SIGBUS, but in theory it's
possible that they silently read wrong data and this might happen on
some older and more tiny-embedded-oriented archs.

I think it's clear to someone who understands alignment and who's
thought about it that applications just can't do this, but it doesn't
seem to be documented, and an example in cmsg(3) even shows access to
int payload via *(int *)CMSG_DATA(cmsg) (of course int is safe because
its alignment is <= header alignment, but this is not mentioned).

Could we add text, and perhaps change the example, to indicate that in
general memcpy needs to be used to copy the payload to/from a suitable
object?

Rich
