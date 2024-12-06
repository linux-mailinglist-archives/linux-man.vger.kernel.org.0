Return-Path: <linux-man+bounces-2127-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B09E680E
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 08:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 984DC16198A
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 07:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE751DCB2D;
	Fri,  6 Dec 2024 07:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DV/UEmBY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8677B1DB37A
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733470715; cv=none; b=D4m+cvpc5UGlQp0QycAcOSxFgRfN/+0tJks+SjXbzMQhgfI0u0j3JmwdD3CNTvxqTLZeIjhupK6/eDeGcK/X1dhHXt+qPInj/IQn+5V8rdS5BWKKX1tooz021KLY6zROa6T53UEV3VvdFyn3iFK25u5LPci9Rarf37JSwZVRMGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733470715; c=relaxed/simple;
	bh=6bkrrb/uiGTuE/W9xZJReBN+m+hOGzzdHINKIK2NnBo=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=j8GcllAvfKFyWH9gZ6E18XnINSGI17fK3CKmASYjo19tHt3sEAlPRHbhfZYyqnRk77kTuoTRra7cccGvWEdag2EeMc681MZp1W8waQOBmIqYjTtkZrMY9Xhm1eV/cS4aX/GXBwMrxdIOts/xZHvANIyFcNr7rzp38VrEKvyPIGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DV/UEmBY; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e35e9d36da3so4006539276.1
        for <linux-man@vger.kernel.org>; Thu, 05 Dec 2024 23:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733470712; x=1734075512; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SLJxxCZMQjxFHfpRLUoPsE0Pog5U57DZgoMGmPXxLis=;
        b=DV/UEmBYQt7lDBKYp2VF1OJ/CbX79NVUpWrz0tzCjGuIrEXtLE2+ES5UkA/7dhHb+3
         O12Ppxc/daXR3k4MVCkSAcHdJV4Cu6ys6lJg+bho+B6IH9G34rARZzWU4yOQTGhaEZyn
         /elhC2WeCQPXwK4HiSnc+HeS0xUetikHcMCvzs0hs+t+a+kH44cr1REoAuHQmrm92ZAv
         e2rVN+Ps6ZNSOEZhj26qpOS4GUO0Z0/u2r+n6z/NJGU+UDUKOpt8iWuWv+855TqqPp4n
         rvUgTaan/4O92YHQ2VNnf6dhg7ygAH66hpA02Dj/A+qVbj8aTLyA8P/pOXHsR/VDhwXl
         O/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733470712; x=1734075512;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SLJxxCZMQjxFHfpRLUoPsE0Pog5U57DZgoMGmPXxLis=;
        b=VGX6qTVYwP5oLaks+tUR0x8jNiD+aSlbJWg9jnLUDW6vlY8FANLOXkdBRHrLcd1M9X
         L86zeQh4ATFUcD1eVWqq9rxx3YHnzkiLyP9eH7Y4z8n01n/nLnTgwxozu5BwxO/LjTGs
         WeY7UojUvBuO1x5eEalvK1gRB3+yKf0mqDmAL9kIDZtKtfU0MEUiqetZGPCsidMn9tsY
         BBzRxpOcPXzEVJHIrXYyuiPiDyqR9MERz1ZngSLxNXmhBozCdz/SzZnjeJE4SxaEQeO/
         67d750Rf7WfQ+uvJhSmlj/c5HXqH+Ac7jHopC+7k2DCE+gU1KYfMnJT3ZxQluC3a2n0j
         Qr1w==
X-Forwarded-Encrypted: i=1; AJvYcCUOV9pSuUinzv1xPUinnkAsQeqChD50D2fu4fsqy8Qy9FXNbnJFDrKQ3WzBJOPVz1LRksnpSgVmDIc=@vger.kernel.org
X-Gm-Message-State: AOJu0YxKNerOnYIIuzVY+vfNKpOMULMPeBzGv8IF9SmCYU4zLaCv+TVR
	wJHeQJhy8psb8Acvq10Nl3zj3cqHq+MsXSlN2sDlc4xq9uCgOXeg70v9zy4be7Q8KeYf6pq0+eJ
	PX8nPjQ==
X-Google-Smtp-Source: AGHT+IFHADbgNWu44wH+EjPynn/KpIRmLys7JfKxs6jd18rOnGXtQ37Irj6xBMwTLehW76cUlY5nbXBYX++6
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:bff4:a354:8911:79b3])
 (user=irogers job=sendgmr) by 2002:a25:e907:0:b0:e39:6c75:dd22 with SMTP id
 3f1490d57ef6-e3a0b0a8930mr3089276.2.1733470712462; Thu, 05 Dec 2024 23:38:32
 -0800 (PST)
Date: Thu,  5 Dec 2024 23:38:25 -0800
Message-Id: <20241206073828.1119464-1-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Subject: [PATCH v5 1/4] proc_pid_fdinfo.5: Reduce indent for most of the page
From: Ian Rogers <irogers@google.com>
To: Alejandro Colomar <alx@kernel.org>, "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"

When /proc/pid/fdinfo was part of proc.5 man page the indentation made
sense. As a standalone man page the indentation doesn't need to be so
far over to the right. Remove the initial tagged pragraph, move the
"since Linux 2.6.22" to a new history subsection.

Suggested-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
v5. Remove the word Since.
v4. Since from Alejandro Colomar <alx@kernel.org> review comment.
---
 man/man5/proc_pid_fdinfo.5 | 51 +++++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index 1e23bbe02..1c6c38423 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -8,8 +8,6 @@
 .SH NAME
 /proc/pid/fdinfo/ \- information about file descriptors
 .SH DESCRIPTION
-.TP
-.IR /proc/ pid /fdinfo/ " (since Linux 2.6.22)"
 This is a subdirectory containing one entry for each file which the
 process has open, named by its file descriptor.
 The files in this directory are readable only by the owner of the process.
@@ -17,9 +15,9 @@ The contents of each file can be read to obtain information
 about the corresponding file descriptor.
 The content depends on the type of file referred to by the
 corresponding file descriptor.
-.IP
+.P
 For regular files and directories, we see something like:
-.IP
+.P
 .in +4n
 .EX
 .RB "$" " cat /proc/12015/fdinfo/4"
@@ -28,7 +26,7 @@ flags:  01002002
 mnt_id: 21
 .EE
 .in
-.IP
+.P
 The fields are as follows:
 .RS
 .TP
@@ -51,7 +49,6 @@ this field incorrectly displayed the setting of
 at the time the file was opened,
 rather than the current setting of the close-on-exec flag.
 .TP
-.I
 .I mnt_id
 This field, present since Linux 3.15,
 .\" commit 49d063cb353265c3af701bab215ac438ca7df36d
@@ -59,13 +56,13 @@ is the ID of the mount containing this file.
 See the description of
 .IR /proc/ pid /mountinfo .
 .RE
-.IP
+.P
 For eventfd file descriptors (see
 .BR eventfd (2)),
 we see (since Linux 3.8)
 .\" commit cbac5542d48127b546a23d816380a7926eee1c25
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:	0
@@ -74,16 +71,16 @@ mnt_id:	10
 eventfd\-count:               40
 .EE
 .in
-.IP
+.P
 .I eventfd\-count
 is the current value of the eventfd counter, in hexadecimal.
-.IP
+.P
 For epoll file descriptors (see
 .BR epoll (7)),
 we see (since Linux 3.8)
 .\" commit 138d22b58696c506799f8de759804083ff9effae
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:	0
@@ -93,7 +90,7 @@ tfd:        9 events:       19 data: 74253d2500000009
 tfd:        7 events:       19 data: 74253d2500000007
 .EE
 .in
-.IP
+.P
 Each of the lines beginning
 .I tfd
 describes one of the file descriptors being monitored via
@@ -110,13 +107,13 @@ descriptor.
 The
 .I data
 field is the data value associated with this file descriptor.
-.IP
+.P
 For signalfd file descriptors (see
 .BR signalfd (2)),
 we see (since Linux 3.8)
 .\" commit 138d22b58696c506799f8de759804083ff9effae
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:	0
@@ -125,7 +122,7 @@ mnt_id:	10
 sigmask:	0000000000000006
 .EE
 .in
-.IP
+.P
 .I sigmask
 is the hexadecimal mask of signals that are accepted via this
 signalfd file descriptor.
@@ -135,12 +132,12 @@ and
 .BR SIGQUIT ;
 see
 .BR signal (7).)
-.IP
+.P
 For inotify file descriptors (see
 .BR inotify (7)),
 we see (since Linux 3.8)
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:	0
@@ -150,7 +147,7 @@ inotify wd:2 ino:7ef82a sdev:800001 mask:800afff ignored_mask:0 fhandle\-bytes:8
 inotify wd:1 ino:192627 sdev:800001 mask:800afff ignored_mask:0 fhandle\-bytes:8 fhandle\-type:1 f_handle:27261900802dfd73
 .EE
 .in
-.IP
+.P
 Each of the lines beginning with "inotify" displays information about
 one file or directory that is being monitored.
 The fields in this line are as follows:
@@ -168,19 +165,19 @@ The ID of the device where the target file resides (in hexadecimal).
 .I mask
 The mask of events being monitored for the target file (in hexadecimal).
 .RE
-.IP
+.P
 If the kernel was built with exportfs support, the path to the target
 file is exposed as a file handle, via three hexadecimal fields:
 .IR fhandle\-bytes ,
 .IR fhandle\-type ,
 and
 .IR f_handle .
-.IP
+.P
 For fanotify file descriptors (see
 .BR fanotify (7)),
 we see (since Linux 3.8)
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:	0
@@ -190,7 +187,7 @@ fanotify flags:0 event\-flags:88002
 fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle\-bytes:8 fhandle\-type:1 f_handle:4f261900a82dfd73
 .EE
 .in
-.IP
+.P
 The fourth line displays information defined when the fanotify group
 was created via
 .BR fanotify_init (2):
@@ -210,7 +207,7 @@ argument given to
 .BR fanotify_init (2)
 (expressed in hexadecimal).
 .RE
-.IP
+.P
 Each additional line shown in the file contains information
 about one of the marks in the fanotify group.
 Most of these fields are as for inotify, except:
@@ -228,16 +225,16 @@ The events mask for this mark
 The mask of events that are ignored for this mark
 (expressed in hexadecimal).
 .RE
-.IP
+.P
 For details on these fields, see
 .BR fanotify_mark (2).
-.IP
+.P
 For timerfd file descriptors (see
 .BR timerfd (2)),
 we see (since Linux 3.17)
 .\" commit af9c4957cf212ad9cf0bee34c95cb11de5426e85
 the following fields:
-.IP
+.P
 .in +4n
 .EX
 pos:    0
@@ -296,5 +293,7 @@ fields contain the values that
 .BR timerfd_gettime (2)
 on this file descriptor would return.)
 .RE
+.SH HISTORY
+Linux 2.6.22.
 .SH SEE ALSO
 .BR proc (5)
-- 
2.47.0.338.g60cca15819-goog


