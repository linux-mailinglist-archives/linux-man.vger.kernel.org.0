Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA875169A50
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgBWVlo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:41:44 -0500
Received: from outpost.hi.is ([130.208.165.166]:35968 "EHLO outpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727100AbgBWVlo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 23 Feb 2020 16:41:44 -0500
X-Greylist: delayed 856 seconds by postgrey-1.27 at vger.kernel.org; Sun, 23 Feb 2020 16:41:42 EST
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by outpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLUwHt001119
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 21:30:58 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 outpost.hi.is 01NLUwHt001119
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 01NLUtUv022898
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 23 Feb 2020 21:30:55 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 01NLUtUv022898
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 01NLUt6K002173;
        Sun, 23 Feb 2020 21:30:55 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 01NLUtjK002172;
        Sun, 23 Feb 2020 21:30:55 GMT
Date:   Sun, 23 Feb 2020 21:30:55 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man7/*: srcfix: Correct the misuse of two-fonts macros
Message-ID: <20200223213055.GA2159@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Changes are based on the latest (23th Februar 2020) revision of my
local git repository.

  Correct the misuse of a two-font macro, which function is to

1) use the first font for each odd numbered argument and the second
font for all others.

2) join the arguments without an intervening space.

  There is no change in the output.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man7/cgroups.7          | 18 +++++++++---------
 man7/mount_namespaces.7 |  2 +-
 man7/uts_namespaces.7   |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 493b7a10b..5173bbea4 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -788,7 +788,7 @@ frozen 0
 .PP
 The following keys may appear in this file:
 .TP
-.IR populated
+.I populated
 The value of this key is either 1,
 if this cgroup or any of its descendants has member processes,
 or otherwise 0.
@@ -799,13 +799,13 @@ The value of this key is 1 if this cgroup is currently frozen,
 or 0 if it is not.
 .PP
 The
-.IR cgroup.events
+.I cgroup.events
 file can be monitored, in order to receive notification when the value of
 one of its keys changes.
 Such monitoring can be done using
 .BR inotify (7),
 which notifies changes as
-.BR IN_MODIFY
+.B IN_MODIFY
 events, or
 .BR poll (2),
 which notifies changes by returning the
@@ -813,20 +813,20 @@ which notifies changes by returning the
 and
 .B POLLERR
 bits in the
-.IR revents
+.I revents
 field.
 .\"
 .SS Cgroup v2 release notification
 Cgroups v2 provides a new mechanism for obtaining notification
 when a cgroup becomes empty.
 The cgroups v1
-.IR release_agent
+.I release_agent
 and
-.IR notify_on_release
+.I notify_on_release
 files are removed, and replaced by the
 .I populated
 key in the
-.IR cgroup.events
+.I cgroup.events
 file.
 This key either has the value 0,
 meaning that the cgroup (and its descendants)
@@ -836,12 +836,12 @@ contains member processes.
 .PP
 The cgroups v2 release-notification mechanism
 offers the following advantages over the cgroups v1
-.IR release_agent
+.I release_agent
 mechanism:
 .IP * 3
 It allows for cheaper notification,
 since a single process can monitor multiple
-.IR cgroup.events
+.I cgroup.events
 files (using the techniques described earlier).
 By contrast, the cgroups v1 mechanism requires the expense of creating
 a process for each notification.
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index 832d52282..584b223cd 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1101,7 +1101,7 @@ may desire to prevent propagation of mount events to other mount namespaces
 .BR unshare (1)).
 This can be done by changing the propagation type of
 mount points in the new namespace to either
-.BR MS_SLAVE
+.B MS_SLAVE
 or
 .BR MS_PRIVATE .
 using a call such as the following:
diff --git a/man7/uts_namespaces.7 b/man7/uts_namespaces.7
index 3b30b6b3f..4db8c51e2 100644
--- a/man7/uts_namespaces.7
+++ b/man7/uts_namespaces.7
@@ -48,7 +48,7 @@ When a process creates a new UTS namespace using
 or
 .BR unshare (2)
 with the
-.BR CLONE_NEWUTS
+.B CLONE_NEWUTS
 flag, the hostname and domain of the new UTS namespace are copied
 from the corresponding values in the caller's UTS namespace.
 .PP
-- 
2.25.0
