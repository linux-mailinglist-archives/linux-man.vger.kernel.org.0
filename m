Return-Path: <linux-man+bounces-3871-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF0BB58669
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 23:11:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDADF482951
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 21:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33A22BF3C5;
	Mon, 15 Sep 2025 21:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zoyx3bkb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1599279DB6
	for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 21:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757970700; cv=none; b=A6i+YNsJzP7Tn9Om6WhB8/si+kbzFdZvhoMCRJZ1D9313cKOapVWX9H8n4LPsP32/JSio3yxKzcGPqz5LObzRZy060n6mCyG4Q5cOPaLg+yEot0dleJrJRnPW8Sn4BxIY87Naz+N2owuOF8At5Ku4aSooaGZoBmJozLozCPf9A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757970700; c=relaxed/simple;
	bh=YQwQQ5l8DmC1pkN9yXjzUsH5SFGBLBv8AmQzPsAqBec=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=LkVPVU0AjKiacCc09KcWF7t50uYGJJ9m5ELWM3R21vXg9ua/y1JUU6WY9GzpEhf15pHpcjims54uAlo2qRdN1hEl3CiAlUYBi33VGo6PCsShYseyLlzZ5n0VB95rYE7K+4OBhuPmqdHA/cTiZ2Uhd0JxgETNFV8uNYWmWm5l7so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zoyx3bkb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D57C4CEF7
	for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 21:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757970700;
	bh=YQwQQ5l8DmC1pkN9yXjzUsH5SFGBLBv8AmQzPsAqBec=;
	h=From:To:Subject:Date:From;
	b=Zoyx3bkbtBr4QOogasHnWzIkDfvcE6qmwqyxIPC4HEgTMvnsZ6SpQJ7L16ViN0Wkk
	 K59Sn+1oSghyHf8SlyMB5v0a7FAV1V7ISpBRktX9bfs0APZ3pbnmyBkSAmUJBTm1k5
	 EBa3j2I/leFyBNW8GLIeFanar2EkbQTCzDtP7UuKjhd4NohlfW9uXMftrgd/g7is+K
	 9d/56KmjkRJu6yHyJJ+yKvVm0vsuBUv8u4l9tDjY8lTyZEzkWRJltfu1OVcV8do4OQ
	 pxZTtBzU6gWxfbRBkbORuqiYZa9hdqEkre54xSIxmRIyxOvGtOtMhAQ8axssZzwuzv
	 w/Gh+iHAvk13g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 71B32C41612; Mon, 15 Sep 2025 21:11:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220578] New: [recv(2) man page] MSG_PEEK doesn't always return
 the same data
Date: Mon, 15 Sep 2025 21:11:40 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alanas.00+k@mail.ru
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression attachments.created
Message-ID: <bug-220578-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220578

            Bug ID: 220578
           Summary: [recv(2) man page] MSG_PEEK doesn't always return the
                    same data
           Product: Documentation
           Version: unspecified
          Hardware: AMD
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: alanas.00+k@mail.ru
        Regression: No

Created attachment 308681
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D308681&action=3Dedit
c source code of test program (uses unix socketpair)

recv(2) man page text:

MSG_PEEK
This flag causes the receive operation to return data from the beginning of=
 the
receive queue without removing that data from the queue. Thus, a subsequent
receive call will return the same data.

but for unix sockets and local tcp sockets the "Thus, a subsequent receive =
call
will return the same data." part is not always true

if data was written using sendfile, writing to file that was used as in_fd
argument in sendfile changes what data recv returns

tested on 2 operating systems:
kde neon unstable, uname -r -v -m -p -i -o: 6.14.0-29-generic
#29~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Aug 14 16:52:50 UTC 2 x86_64 x86=
_64
x86_64 GNU/Linux
opensuse tumbleweed, uname -r -v -m -p -i -o: 6.16.5-1-default #1 SMP
PREEMPT_DYNAMIC Thu Sep  4 15:51:43 UTC 2025 (642f24d) x86_64 x86_64 x86_64
GNU/Linux

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

