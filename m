Return-Path: <linux-man+bounces-1527-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA993D8FB
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 21:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 937A028491E
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 19:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0A24CB2B;
	Fri, 26 Jul 2024 19:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYfnNkFD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D385D28DA5
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 19:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722022100; cv=none; b=szJyXvtUvzoftITsYyHnD8IpKfC5mc913m+uAnyQ6lPJ8EjZj35vHJTMFqljiPmXRnRaCLt3vzaH1vCkM3yXCiMQOkbVESRW+3NC7hjKYnS/YGRJxdKrjTbAk5KrC1CZyx4eZDYuhTLQWtSRiYJUwMGqBqNMkTNCZw/jskudmgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722022100; c=relaxed/simple;
	bh=krcf9Md7jGhtY3PZ1CwfdnyfRoF2IoLzRSd5bSJRBSo=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=pFJyjZjnqWk0PhBEJxsAF5enDUigkX+F73Su7vw6TOiqjnBYEG//YPybGE6L/DsVkVb6CzqQApmPJt7SJ2fd3Tyb6J5Jeb6eDt+sNlh4MACob7w7p5rw3vpi3IaYeGPNcXKMQyu8K2PyZVYOrjdF4DJ7nKt9xNSY24asraN3BpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYfnNkFD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62C3CC4AF07
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 19:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722022100;
	bh=krcf9Md7jGhtY3PZ1CwfdnyfRoF2IoLzRSd5bSJRBSo=;
	h=From:To:Subject:Date:From;
	b=OYfnNkFDK0yHkyGCSVuBcPq0ery+cOrxpQvmt+/FRf0ncIizNN67AQXt8L8RUkEUP
	 MVr0lXuk4qcQm3bYHpmxJgGUnFy8jm6V6fWrLtZB7wIuvAMYvZx7svcKL/SdfE2yb7
	 mX2iYq0XN70Kt34JvwwgIrDFb10gPS2rZHtyQtiWlRSk10W5y5B0yYdnjc66zAyYFk
	 1I2jeOe5qqYv9tQuPsh68UoeNeIUsp3TNt1u9agXZ2uQ5trl2NKCBqItMGXr2kKkh5
	 DTIZdt0aD+rUAfdCel+X3aqBmkOCHmag+h1KBw8+OFbDzVGYEPmWX6rzgN8T4UTbUt
	 OM9qZ35CBVIhw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 59B6CC53B73; Fri, 26 Jul 2024 19:28:19 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219098] New: Termios man page description of semantics of MIN,
 TIME
Date: Fri, 26 Jul 2024 19:28:18 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: stewart.weiss@acm.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219098-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219098

            Bug ID: 219098
           Summary: Termios man page description of semantics of MIN, TIME
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: stewart.weiss@acm.org
        Regression: No

The current version of the termios(3) man page states,
"MIN > 0, TIME =3D=3D 0 (blocking read)
              read(2) blocks until MIN bytes are available, and returns
              up to the number of bytes requested.
".

This used to be true but it no longer true. The case it does not cover is
when the number of bytes requested is less than MIN. In this case read(2) is
unblocked as soon as the number of bytes in the tty's line discipline is
at least the number of bytes requested, even if it is less than MIN.
The n_tty_read() function's while loop breaks when this is true.

If I c_cc[VMIN] =3D 3, c_cc[VTIME] =3D 0 and disable icanon in the driver a=
nd
then run a program such as:

int main( int argc, char *argv[] )
{
    char inbuf;

    while( read(STDIN_FILENO, &inbuf, 1) > 0  ) {
        if ( -1 =3D=3D write( 1, &inbuf, 1 ))
             exit(1);
    }
    exit(EXIT_SUCCESS);
}

the call to read() will return after each character.=20
Shouldn't the correct description be:

"MIN > 0, TIME =3D=3D 0 (blocking read)
              If MIN is less than or equal to the number of bytes requested=
,=20
              read(2) blocks until MIN bytes are available, and returns
              up to the number of bytes requested. If MIN is greater than
              the number of bytes requested, read(2) is unblocked as soon
              as the number of bytes requested is available, regardless of
              the value of MIN.
"

My apologies if this is the wrong category for this bug report.
I should add that this behavior was not true back in 2012, when I would
teach it to my students. Then, it did behave as the current man page descri=
bes.
".

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

