Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF5415843B
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2020 21:28:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727056AbgBJU2m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Feb 2020 15:28:42 -0500
Received: from 216-12-86-13.cv.mvl.ntelos.net ([216.12.86.13]:50472 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726563AbgBJU2m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Feb 2020 15:28:42 -0500
Received: from dalias by brightrain.aerifal.cx with local (Exim 3.15 #2)
        id 1j1Ffc-0005b2-00; Mon, 10 Feb 2020 20:28:40 +0000
Date:   Mon, 10 Feb 2020 15:28:40 -0500
From:   Rich Felker <dalias@libc.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Remove ESRCH from pthread_* man pages or document it as nonstandard
Message-ID: <20200210202840.GT1663@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use of a pthread_t after its lifetime has ended is undefined behavior.
Pre-2008 POSIX wrongly had ESRCH errors specified for a number of
interfaces, conflicting with explicitly making such use UB; this was
fixed as a result of Austin Group interpretation 142:

https://collaboration.opengroup.org/austin/interps/documents/14366/AI-142.txt

However, the man pages still have ESRCH listed for most if not all of
the pthread_* interfaces that take a pthread_t argument.

Could this be removed, or annotated to clarify that (1) this is not
standard/portable behavior programmers can rely on (FYI: musl does not
do it), and (2) like all instances of the pattern "use of resource
identifier after the resource it refers to has been released/freed",
passing a pthread_t whose lifetime may have ended is inherently a bug.

This came up again on the musl mailing list today:

https://www.openwall.com/lists/musl/2020/02/10/3

Rich
