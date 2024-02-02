Return-Path: <linux-man+bounces-408-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 343018479E6
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66E511C231C0
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 19:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C974C15E5DB;
	Fri,  2 Feb 2024 19:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlKn8PXs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BA915E5C5
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706903332; cv=none; b=MWNbwCCnXF9sAyokP7jd/UcB3kzeP+qKXCpltFdo+MijahKeaSP3keAbi2ys9YvYr6U86yNGW9lX7kVTTfApruPyy+pVCTcKIHnlwfHOOxyg0KlugE+9oHfKPGtEV+76xYgykjDONW06mDtuozHi/vcWdQ1sg2VbYtB1IzT1wJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706903332; c=relaxed/simple;
	bh=eHbcop+YYqPw7UwPoBoaCYt+SxTfCUVrF2sk5K0v9wU=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=I66pftNF/C4L/1+u4xqD0B97fF4nTkKPtoeMw7m7dKaU+vw+lzDyXiNHyrBpiYQhUhmgyLq94Yuglwth+2zHZ0Ho1Ysxx8B18WeXRosJXlGzEoGKb2GdLttiW5oQy1eX65vVTfooFB+PT7iN4WncIREOjPQY/PhO5WshrU2won8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlKn8PXs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2736FC43399
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706903332;
	bh=eHbcop+YYqPw7UwPoBoaCYt+SxTfCUVrF2sk5K0v9wU=;
	h=From:To:Subject:Date:From;
	b=DlKn8PXsf2S4Pfke23zdMxXnqlxvwh2SB7q3kgdWNK4O0xbNPki6tooNVvDd43aHi
	 ae0fUl1dUkjr7BOdoNjrUksnEaYsJ4Ys//Ysvtsqvs4dEpnkVvChnr3ScBkxQiJlVx
	 bP+zt76rPefbvSpkvbz0R4ZakUF//MyEKzppbjFyGiTsScoaK+TJ38SIA1qJKk3dKA
	 Qh3zZ2721UGKdiCo6fzuaEszQ6AhDPreVVCcwR+2LJLUBzuj4jpgrTA/1Z8SrlHiwc
	 Z7Pvb8QHdXw3SQmSH5oXNBWbTPnsS/laiDbCs45VwusydnJYo4qniG542OmOwnX76P
	 F9HziD/CoLTbQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 0F7E1C53BD3; Fri,  2 Feb 2024 19:48:52 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] New: Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 19:48:51 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: cquike@arcor.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218453-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218453

            Bug ID: 218453
           Summary: Update posixoptions to POSIX.1-2018
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: cquike@arcor.de
        Regression: No

The posixoptions(7) man page shows information from POSIX.1-2001 which woul=
d be
good to update to POSIX.1-2018 standard. From what I can see the following
options are no longer optional and have been moved to the standard base [1]:

AIO - _POSIX_ASYNCHRONOUS_IO - _SC_ASYNCHRONOUS_IO
BAR - _POSIX_BARRIERS - _SC_BARRIERS
CS - _POSIX_CLOCK_SELECTION - _SC_CLOCK_SELECTION
MF - _POSIX_MAPPED_FILES - _SC_MAPPED_FILES
MPR - _POSIX_MEMORY_PROTECTION - _SC_MEMORY_PROTECTION
--- - _POSIX_READER_WRITER_LOCKS - _SC_READER_WRITER_LOCKS
RTS - _POSIX_REALTIME_SIGNALS - _SC_REALTIME_SIGNALS
SEM - _POSIX_SEMAPHORES - _SC_SEMAPHORES
SPI - _POSIX_SPIN_LOCKS - _SC_SPIN_LOCKS
TSF - _POSIX_THREAD_SAFE_FUNCTIONS - _SC_THREAD_SAFE_FUNCTIONS
THR - _POSIX_THREADS - _SC_THREADS
TMO - _POSIX_TIMEOUTS - _SC_TIMEOUTS
TMR - _POSIX_TIMERS - _SC_TIMERS

Also, below "XSI - _XOPEN_UNIX - _SC_XOPEN_UNIX", the following options can=
 be
removed:

_POSIX_MAPPED_FILES
_POSIX_MEMORY_PROTECTION
_POSIX_THREAD_SAFE_FUNCTIONS
_POSIX_THREADS
Legacy (_XOPEN_LEGACY)

[1] The Open Group Base Specifications Issue 7, 2018 edition
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap02.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

