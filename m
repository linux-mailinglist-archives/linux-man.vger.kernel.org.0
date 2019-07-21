Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 580126F3FE
	for <lists+linux-man@lfdr.de>; Sun, 21 Jul 2019 17:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726405AbfGUPcR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jul 2019 11:32:17 -0400
Received: from netrider.rowland.org ([192.131.102.5]:55983 "HELO
        netrider.rowland.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with SMTP id S1726366AbfGUPcR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jul 2019 11:32:17 -0400
Received: (qmail 16615 invoked by uid 500); 21 Jul 2019 11:32:16 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 21 Jul 2019 11:32:16 -0400
Date:   Sun, 21 Jul 2019 11:32:16 -0400 (EDT)
From:   Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To:     mtk.manpages@gmail.com, <linux-man@vger.kernel.org>,
        Kernel development list <linux-kernel@vger.kernel.org>
Subject: Error (?) in man page for ppoll(2)
Message-ID: <Pine.LNX.4.44L0.1907211104350.15063-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Here are two extracts from the man page for ppoll(2) (from the
man-pages 4.16 package; the 5.01 version is the same):

       Specifying a negative value in timeout means an infinite timeout.


       Other than the difference in the precision of the timeout argument, the
       following ppoll() call:

           ready = ppoll(&fds, nfds, tmo_p, &sigmask);

       is equivalent to atomically executing the following calls:

           sigset_t origmask;
           int timeout;

           timeout = (tmo_p == NULL) ? -1 :
                     (tmo_p->tv_sec * 1000 + tmo_p->tv_nsec / 1000000);
           pthread_sigmask(SIG_SETMASK, &sigmask, &origmask);
           ready = poll(&fds, nfds, timeout);
           pthread_sigmask(SIG_SETMASK, &origmask, NULL);

But if tmo_p->tv_sec is negative, the ppoll() call is not equivalent to 
the corresponding poll() call.  The kernel rejects negative values of 
tv_sec with an EINVAL error; it does not interpret the value as meaning 
an infinite timeout.

(Yes, the kernel interprets tmo_p == NULL as an infinite timeout, but 
the man page is still wrong for the case tmo_p->tv_sec < 0.)

Suggested fix: Following the end of the second extract above, add:

	except that negative time values in tmo_p are not interpreted
	as an infinite timeout.

Also, in the ERRORS section, change the text for EINVAL to:

	EINVAL The nfds value exceeds the RLIMIT_NOFILE value or
	*tmo_p contains an invalid (negative) time value.

Alan Stern

