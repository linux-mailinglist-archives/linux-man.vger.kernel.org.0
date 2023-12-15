Return-Path: <linux-man+bounces-258-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0728141CB
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 07:29:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEC561C22078
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 06:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A91D79ED;
	Fri, 15 Dec 2023 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7hRG/vM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A570CA64
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 06:29:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CEA0C433CB
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 06:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702621792;
	bh=/j6f7aKSN+Lm5PAg58HSK8xAAkivuo4mnnaRlShCGfc=;
	h=From:To:Subject:Date:From;
	b=N7hRG/vMpvWCRjWxVLEU8tUoKzaTdFQdsAt0CJHyld/AQjs5MV+uUyslYykzk1fwB
	 PENYlAralP78myDDMM0Hwi7OqHgup0df0aWXrH8Tu2LKeyhm+pGrLN/VYhFQuofz2f
	 CSQv9LlxXON9HbV+UNe6f1FrG5TAJMeV/YZAzCBoCORahgXMpnjJUwEPiS8yRaZdrs
	 T0b5IvZT+iFISpWuYenVnmiLkrMs6YAyqLCO9DwfUF60Hm3J3wD8WT9LzzT1ybwbsR
	 pzeYPMmMN1lCgW5jU+aN8z757RjcsY8MciShBO8DvFRio6cxw8bF7q9nay0JAc/ecW
	 nKKYvcyjwqwLQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 69D47C53BCD; Fri, 15 Dec 2023 06:29:52 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] New: Need article about Linux shutdown process
Date: Fri, 15 Dec 2023 06:29:51 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aralni@mail.ru
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218266-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D218266

            Bug ID: 218266
           Summary: Need article about Linux shutdown process
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: aralni@mail.ru
        Regression: No

Hi,

I try make correct shutdown (reboot/poweroff) process for applications, but=
 not
find info about it.

There are several opinions about this but none of them are confirmed.

1. You need to process the SIGTERM signal. But no one has been able to do t=
his
successfully in the context of system shutdown. This is a very common belie=
f or
misconception. For example:
https://bugzilla.mozilla.org/show_bug.cgi?id=3D1837907

2. There is no need to save the data at all - let me get lost. But the syst=
em
will turn off faster. http://freepascal.ru/forum/viewtopic.php?f=3D1&t=3D43=
642

These two directions lead to data loss.

3. It is necessary to process the signal from systemd PrepareForShutdown us=
ing
dbus. This is a cleaner approach, but more complex and higher level than the
kernel signal. In addition, the program must support dbus, and this may seem
cumbersome.

Some programming languages (the finalization section in Pasal) contain a sy=
stem
shutdown handler in rtl, while for others this must be separately in each
program.

We need a detailed article (apparently not only in man, but also on the web=
),
describing in detail for programs and programming languages (at least C and
Pascal) the situation of shutting down the system with working examples.
Otherwise, there is serious confusion, leading to disputes among programmers
and, ultimately, to data loss.

Thank You.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

