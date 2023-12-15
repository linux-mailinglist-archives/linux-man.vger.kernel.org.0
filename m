Return-Path: <linux-man+bounces-263-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1623F8146CC
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 12:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C698028344E
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2828F24A0D;
	Fri, 15 Dec 2023 11:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tvb6NRBk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB64B24B22
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FD6DC433CA
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702639482;
	bh=4yols/6ZBXS8YSXcm+ZGeOP3WrdO/uVW8Rh9zJLESRM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Tvb6NRBkwwYkxn2SDndw10Lj59wPimHagWrFitYUYLCGwDhDyFHeiZTBdQI1ZX6Ov
	 V039nz4eSS62grBKqnNAUiUoZLa8Qh/M7YbK7s8L3/rrlFXXXPsUgUnA1si0ET223r
	 NaPw4JO/sFsZDGgXl36VrW5hieid/4wEUksgPbCh7oXOq9TKsUzf1P+b/0sTqift1l
	 r5UEVIlKAOeZVDibBOESU4X/f7Ih3tY6bFnxlOG0kKErc59tVuykt6/CdHa2C2ZPGA
	 yMLnAhXuqWIeTxG5Qv9UT5KQEcfozqfVg0lflcqgiFieAxjeD9m5tY8m19nBjvYdAV
	 UPHnWjqEdI6JA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2A819C53BD2; Fri, 15 Dec 2023 11:24:42 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Fri, 15 Dec 2023 11:24:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218266-11311-T2pNzV0Qyy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218266-11311@https.bugzilla.kernel.org/>
References: <bug-218266-11311@https.bugzilla.kernel.org/>
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

--- Comment #2 from Alexander (aralni@mail.ru) ---
> Maybe a shutdown(7) page would be
appropriate for such an article.

No, this is too complex a topic and the current manpages content is clearly=
 not
enough. This is not about using the shutdown command, but about the informa=
tion
necessary to build an rtl programming language. Perhaps some explanatory
graphical files are also needed.

It is possible, of course, to dramatically simplify the task by making your=
 own
patch for the kernel and describing it, but I think it would be better to
describe how it works now on the part of the kernel developers. I have noth=
ing
to write about now - there is not enough information about the topic.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

