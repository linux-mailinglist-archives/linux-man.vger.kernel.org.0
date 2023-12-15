Return-Path: <linux-man+bounces-260-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA0B814584
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02F41B236BD
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 10:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA4B19479;
	Fri, 15 Dec 2023 10:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muVvXm+F"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6A21945E
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 10:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B06CC433CB
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 10:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702636050;
	bh=P5FFZPeBSxxGcLU5tNQHfg3KMtaiZaHNjqvGS23YWn4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=muVvXm+Fzvl867tLLVVPwmxVBkdGwz+1RhXrlsxNG23B7CiETWV43fYGvLXagC6rs
	 8uQFe6EAzTELeX6wyZXI/qmq/1IRS5ReisSoYohrb6yuH6mIPCDGwU1eeqV3Ve0+44
	 6qJQEYuffdVeufKmft5J/2uFXd/WwYHNrmE9ilQJ7n+lxK3rH7P+A5EV/9X/jQyP7j
	 LofEcOtAea/b0zXu0nBnPHrHFofhmVz7Q58fvLt/tNi/atPYSOcZoLgtsqySp+ep26
	 z9hvatync5g60vlNlcUqXle/65cjRoVnB0TBWtHZdRO1JZwn22mNjt/Fabu+6dEjPz
	 IUnBTnuX+dMWQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 1773CC53BC6; Fri, 15 Dec 2023 10:27:30 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Fri, 15 Dec 2023 10:27:29 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218266-11311-7kYSX0tjyG@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi,

> We need a detailed article (apparently not only in man, but also on the w=
eb),
> describing in detail for programs and programming languages (at least C a=
nd
> Pascal) the situation of shutting down the system with working examples.
> Otherwise, there is serious confusion, leading to disputes among programm=
ers
> and, ultimately, to data loss.

Would you mind starting to write it?  Maybe a shutdown(7) page would be
appropriate for such an article.

Have a lovely day,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

