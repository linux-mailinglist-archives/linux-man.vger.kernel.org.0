Return-Path: <linux-man+bounces-302-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A2981ED1D
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 09:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90EF028366A
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 08:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2005687;
	Wed, 27 Dec 2023 08:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg69KdeZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4773A5680
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 08:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7327C433C8
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 08:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703664239;
	bh=+0aN9d9yaAGVuC2ADVwXQZpeQ10kz7tGykcj6tNNUak=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=fg69KdeZCG36s8AN/J6jJ36EVYZ6vZtoQVtfu8zElhS/Bvrhne3YK4nM6970B1Gi7
	 sE028ysrAlm3OCL27zHh4vci0Ogc1SuHEuI/+JJGGzV7f1Pckto7rp5LCCUudoZJqp
	 rl4OFycsDtSaZmanb13NAsVap5b1ya2dlRxuuPxMnB4tLTsKh/bGzcn0hCPlS/XYwf
	 lCzuziFVkr6bEQv9gNJZZI7+roDmaYpCMaxyyoY+pbRF4HbXsV9ozcCI+0MGgVhBCs
	 zWDJaz+597aJobTzVncDg74593isPj2+WKx1k4/1Plqf9Hc/OnGnSwlJdE3jEcUEnA
	 bO38gQPdf2RUg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id AF40BC53BCD; Wed, 27 Dec 2023 08:03:59 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217838] Systemd nowadays mounts Cgroups v2
Date: Wed, 27 Dec 2023 08:03:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: r.pandian@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217838-11311-sAQugGWhIv@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217838-11311@https.bugzilla.kernel.org/>
References: <bug-217838-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217838

Rajesh (r.pandian@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |r.pandian@gmail.com

--- Comment #1 from Rajesh (r.pandian@gmail.com) ---
Hi G=C3=B6ran,

Can you give us more info?

- How to replicate this?
- What version of Fedora are you using?

Rajesh

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

