Return-Path: <linux-man+bounces-322-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B51508201AF
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 22:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70E9B2823C9
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 21:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1325114291;
	Fri, 29 Dec 2023 21:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH1+A1tJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59FE14A83
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 21:28:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 496B2C433C9
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 21:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703885288;
	bh=U0t43aprcNLATeY6I3WOh3XNKl1xAmWVfSGCtsib1mM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=ZH1+A1tJcgPIMJiPQOoPWBJISgPPVPDTQczI0QmRCMZ28c4Nh/9lU1GX4Z67MGyEY
	 c9Pc7lk9HUZmGwdjFP7LvF99HYRLcHnjJ+iAX1KGCoOC+XolWcMKnHhr7LUhF0smn3
	 /Gxp9cPqqTE9udYulPPvyWArxM/V6XQTRYTr+1qwPqZZa+3fGhyHNWnaz1L7oGkQcB
	 q4Bft5KyEoRnMf6QVbm1y31fRCjpC0TJtzDZeb3F7ggu7IrS1suJlpzHLo0yEXVVzm
	 KvMO0f/OW96rBgF1VfNeo7pRBeuvex8CXt0gdGRydnPnhasJmzMX0k9DhguezZBg7I
	 y6juySwIFDjDw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2E11EC53BC6; Fri, 29 Dec 2023 21:28:08 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Fri, 29 Dec 2023 21:28:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-csZzMxbuqH@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217709-11311@https.bugzilla.kernel.org/>
References: <bug-217709-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217709

--- Comment #3 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
Great!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

