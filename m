Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D39CEB9BAE
	for <lists+linux-man@lfdr.de>; Sat, 21 Sep 2019 02:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407384AbfIUAWG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 20:22:06 -0400
Received: from mu.digital-domain.net ([108.61.197.113]:39580 "EHLO
        mu.digital-domain.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404801AbfIUAWG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 20:22:06 -0400
X-Greylist: delayed 2375 seconds by postgrey-1.27 at vger.kernel.org; Fri, 20 Sep 2019 20:22:03 EDT
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91::ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.14.7/8.14.7) with ESMTP id x8KNgNgl025042
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 21 Sep 2019 00:42:27 +0100
From:   Andrew Clayton <andrew@digital-domain.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH 1/1] signalfd.2: Note about interactions with epoll & fork
Date:   Sat, 21 Sep 2019 00:42:11 +0100
Message-Id: <20190920234211.57596-2-andrew@digital-domain.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920234211.57596-1-andrew@digital-domain.net>
References: <20190920234211.57596-1-andrew@digital-domain.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Using signalfd(2) with epoll(7) and fork(2) can lead to some
head scratching.

It seems that when a signalfd file descriptor is added to epoll you will
only get notifications for signals sent to the process that added the
file descriptor to epoll.

So if you have a signalfd fd registered with epoll and then call
fork(2), perhaps by way of daemon(3) for example. Then you will find
that you no longer get notifications for signals sent to the newly
forked process.

User kentonv on ycombinator[0] explained it thus

    "One place where the inconsistency gets weird is when you use
     signalfd with epoll. The epoll will flag events on the signalfd
     based on the process where the signalfd was registered with epoll,
     not the process where the epoll is being used. One case where this
     can be surprising is if you set up a signalfd and an epoll and then
     fork() for the purpose of daemonizing -- now you will find that
     your epoll mysteriously doesn't deliver any events for the signalfd
     despite the signalfd otherwise appearing to function as expected."

And another post from the same person[1].

And then there is this snippet from this kernel commit message[2]

    "If you share epoll fd which contains our sigfd with another process
     you should blame yourself. signalfd is "really special"."

So add a note to the man page that points this out where people will
hopefully find it sooner rather than later!

[0]: https://news.ycombinator.com/item?id=9564975
[1]: https://stackoverflow.com/questions/26701159/sending-signalfd-to-another-process/29751604#29751604
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d80e731ecab420ddcb79ee9d0ac427acbc187b4b

Signed-off-by: Andrew Clayton <andrew@digital-domain.net>
---
 man2/signalfd.2 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/man2/signalfd.2 b/man2/signalfd.2
index 497ee4cbd..a96ff6441 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -261,6 +261,23 @@ itself and the signals that are directed to the process
 (i.e., the entire thread group).
 (A thread will not be able to read signals that are directed
 to other threads in the process.)
+.SS epoll(7) semantics
+If you add a signalfd file descriptor to
+.BR epoll(7)
+then
+.BR epoll_wait(2)
+will only return events for signals received by the process that did
+the
+.BR epoll_ctl(2).
+If you then
+.BR fork(2),
+say by calling
+.BR daemon(3),
+then you will find that you don't get any notifications for sent
+signals. For this to work, you need to add the signalfd file
+descriptor to
+.BR epoll(7)
+after forking.
 .SH RETURN VALUE
 On success,
 .BR signalfd ()
-- 
2.21.0

