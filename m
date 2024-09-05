Return-Path: <linux-man+bounces-1765-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 555C196D0BF
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2024 09:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14164287DBB
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2024 07:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB2BA19342B;
	Thu,  5 Sep 2024 07:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekfKOArD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC30B193070
	for <linux-man@vger.kernel.org>; Thu,  5 Sep 2024 07:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725522580; cv=none; b=J+El5GRY+vQ+SQpTJ+HfrjSDoHekecxrWkNsDOlwLv8jZ+lfWjp4eDlhCiHZcEHBey3ZDJd9BOF4cr18x5sepxH6LbLTGbNWEr0LXJteUb6vE5SFX6ppr7z67L0fyv4lJe2X+SBn2SrMvclyeCovMOqNkQ/QjNz5ti89j/vyRQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725522580; c=relaxed/simple;
	bh=ezuvdppPwJ1P9K0UPmgPnWFSgLWkXfj1ScJDY8OYlbM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KNXgu4g79K6z7Qa6WC6pE0knxE6BhXRQ6OsfseTOsn1gmr1JdMNxigsy5fElI3wvN8H7HIeA0oWvyDazxf8fKTN3+pUpgoRue4+eHVvDvesKvjjMQLaFuq0CjL8K2pfabnBvWgQC7BHrsA8nUotnVCrzaAYvR0UlgGSPHllMFpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekfKOArD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D6EC4CEC4
	for <linux-man@vger.kernel.org>; Thu,  5 Sep 2024 07:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725522580;
	bh=ezuvdppPwJ1P9K0UPmgPnWFSgLWkXfj1ScJDY8OYlbM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=ekfKOArDL+8XRonMXw6t65AwkQhJbBYXxSboEOz3MNMgsjb+SXZ5G9TPBu7h/cNPe
	 2gsvecalLdn9LmOslYLXmTDO6zM0Ti5/MtL1zPa/waSSYJbec23OOxtZ9FzqsZl2f4
	 e8XssvzHfrMoLyyRQ3/ZPEddbJljSXHnZdwnbqtOpm8CYo8j9YLnELS1rgrcv+1wtq
	 OPNpM0/p1qhI8TI2r2UKZH4XrZ2Y0Z7VxFJW+HV3J1cOFMv/M+Ioiz3vCqL4b+GgLL
	 6Llr9FBKLrgzQtcKWynYabiusCQxIq5KRy4BLgLOznKkItgFAW5gwd/UKP9szbxByi
	 jqhrmaIqOzQUg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 739C2C53BC4; Thu,  5 Sep 2024 07:49:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 195083] main page not looking good
Date: Thu, 05 Sep 2024 07:49:40 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: harrygross616@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-195083-11311-rfjtfqDuiF@https.bugzilla.kernel.org/>
In-Reply-To: <bug-195083-11311@https.bugzilla.kernel.org/>
References: <bug-195083-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D195083

--- Comment #1 from samsmith (harrygross616@gmail.com) ---
Build your dream team and rise to the top in https://retrobowlgame.io. Check
out our website to learn how to draft the best players and dominate the lea=
gue!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

