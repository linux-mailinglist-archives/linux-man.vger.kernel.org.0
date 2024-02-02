Return-Path: <linux-man+bounces-407-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEA284799E
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B79222868FD
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 19:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D7215E5C6;
	Fri,  2 Feb 2024 19:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dp+45JPM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93E315E5C4
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706902069; cv=none; b=j66ENDNt10BvHO6WxVQk4mPyAvrU/1EtuSaIR+SgKmgDvTq1xyv7u4zweshWF1H/gCvhaq7+Sc2i5Z7A6d4Mb7B5bitlu/9S0tJFy3D2PwBustsgpm1iqWMt9boK/6/sElNMAjPhrcxJXk5SzmRm+HCXOliUNkkGcQpkqNiJy+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706902069; c=relaxed/simple;
	bh=WziukWOBvUTqTxJojcSZnuC9blPu3IcovlM1BMs2zgc=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=fr9C8OMFOmojgagwBRhsX5f8nBcoxvk5ZPoz6y8DHDLs8tfQVNQJwF+EH3Siz2/0J7Tn5T5xvnLh+O5hGqvUIYkxQQAOv3NLPh99Z2ZPnD/geohZrnqdeBHYq1F7VIOollXq8aADeHZ+g4ybxH6DIlt5+jyIKIdPBvK673lc6RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dp+45JPM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34234C433F1
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706902069;
	bh=WziukWOBvUTqTxJojcSZnuC9blPu3IcovlM1BMs2zgc=;
	h=From:To:Subject:Date:From;
	b=Dp+45JPMa2eNryFYDOh7AcwMQPqvasYhSLU2/MPnLwVH0+U25EB4JMHCl3pzc0FdV
	 nud1z2wYLKhwCeAR8cArKztrkp7OWQ2Gw2D5baLklUjAQZqhsQJYAO1bC5Oz+YsMos
	 fnrL73R31CpmS68tKTvAZAq7R+Y/ih6KBkhs8AhBDuDxj94uVwMP235aU3dzFmf3DK
	 kwXu5u1y1EMHM9lon3V13ZK0oCZhGjtBzCSOEBhdfuB+v/Tnm33v8txVDxraMcBAdw
	 zYOTF0sMzrpx7wHtcNwmLVBappf5YikvqcGgQOKBB4zm+6Mu5wLGGyFgBPQyov9/dc
	 juquO6FmNpbIg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2216FC53BD3; Fri,  2 Feb 2024 19:27:49 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218452] New: small clarification clock_getres HISTORY section
Date: Fri, 02 Feb 2024 19:27:48 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: cquike@arcor.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218452-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218452

            Bug ID: 218452
           Summary: small clarification clock_getres HISTORY section
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: cquike@arcor.de
        Regression: No

In version 6.04 of the man pages, under the HISTORY section of clock_getres=
(2)
it is mentioned the following:

"       On  POSIX  systems  on  which  these  functions  are  available, the
symbol _POSIX_TIMERS is defined in <unistd.h> to a value greater than 0.  T=
he
symbols _POSIX_MONOTONIC_CLOCK,
       _POSIX_CPUTIME, _POSIX_THREAD_CPUTIME indicate that CLOCK_MONOTONIC,
CLOCK_PROCESS_CPUTIME_ID, CLOCK_THREAD_CPUTIME_ID are available.  (See also
sysconf(3).)  POSIX.1-2008  makes
       these APIs mandatory.
"

At first read I got the impression that _POSIX_MONOTONIC_CLOCK,=20=20=20=20=
=20=20
_POSIX_CPUTIME, _POSIX_THREAD_CPUTIME are also mandatory. However only
_POSIX_TIMERS is mandatory, while the others are still optional according to
the the POSIX online documentation of the last standard ([1], under 2.1.3 P=
OSIX
Conformance).

I would suggest to change it slightly to make clear that only _POSIX_TIMERS=
 is
mandatory in POSIX.1-2008 but _POSIX_MONOTONIC_CLOCK,       _POSIX_CPUTIME,
_POSIX_THREAD_CPUTIME are not and therefore portable applications cannot re=
ly
on those clocks to be available without checking for the corresponding symb=
ols
first.


[1] The Open Group Base Specifications Issue 7, 2018 edition
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap02.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

