Return-Path: <linux-man+bounces-605-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A370F87C512
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 23:16:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 556DB1F21A15
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 22:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDB367641F;
	Thu, 14 Mar 2024 22:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlQdH9vt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABD973196
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 22:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710454599; cv=none; b=RUxT+1EWWcJRq9s0cfwWugZ4BQIeICVBsJGVVX+ldMfF8wGXVzQVWFMM3dY2s6KJjQAh4vApRpZiDUfcT9aLvfGEJ2wU9l9pqaxHJNLc1kVV88Vc/jNS1msQt6CTmggvqmC4Twv3GUdOMziYQNLg5VADAGaNhR3uLl9OOs8aXFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710454599; c=relaxed/simple;
	bh=i+PlRuFvMoUKhkJeBkuGMjvYkHC++r464+/6PELvIr0=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=of8uONu7RNkzbPeRw0nBhCD5cuwXVKzQJQ7JoZ3i6Sw+kD8dP+VA/wfoczDSGoY9rl9s5ZMzW3iC5UERJnEgaDTbLzv57QwWUNk9pKD62SZz6gOAhLJYQ9MPKv/C7+fgw6nqmSzTA8evvJdgdCl5nAZsPYvAYPuNM2wxFyYvnJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlQdH9vt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07066C43390
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 22:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710454599;
	bh=i+PlRuFvMoUKhkJeBkuGMjvYkHC++r464+/6PELvIr0=;
	h=From:To:Subject:Date:From;
	b=SlQdH9vtyUP2NBArRzPfeglRFFB5Wng0LkDGqx6KPOYfe85h87sMOfBzT1/wVLfg/
	 xuXqdrLrcCnplCDMLGHnAZsTBiOlZ3MWU9NYyNcnL6GOLitIFYdIrke/QeGRVX0/Mg
	 TT1eSafGNbpwV/0HacjgG0AL/nUPl2iofDiO3AtkiBjFsWMS/6Zx3hZOqvx2r2dD3K
	 0c2oRr2uQTwWXd7qCsV/4FBwhfPpl9cocxxar37kZnRl2QilVbEHywDxOUncm0os5I
	 RFup8x6xfwlE6qgOkzyeaDKucTFWlvNeQBj320f7JIK7sklj+W5q1spx3+SbN8SxXw
	 ErNg4BPQR+3+g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id F0FC0C53BD4; Thu, 14 Mar 2024 22:16:38 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218600] New: printf family returns number of bytes written, not
 characters
Date: Thu, 14 Mar 2024 22:16:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: quirin.blaeser@freenet.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218600-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218600

            Bug ID: 218600
           Summary: printf family returns number of bytes written, not
                    characters
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: quirin.blaeser@freenet.de
        Regression: No

For comparison:
https://pubs.opengroup.org/onlinepubs/9699919799/

In an utf8 environment the number of bytes written may differ
from the number of characters.

Example:
fprintf( stdout, "%*s\n", fprintf( stdout, "=C3=B6=C3=A4=C3=BC=C3=96=C3=84=
=C3=9C=C3=9F=C2=B5=C5=82=E2=82=AC\n"), "^");

From https://man7.org/linux/man-pages/man3/dprintf.3.html:
"Upon successful return, these functions return the number of
 characters printed (excluding the null byte used to end output to
 strings)."

Greetings.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

