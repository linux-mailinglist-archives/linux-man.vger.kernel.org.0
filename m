Return-Path: <linux-man+bounces-3532-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BCAB302C5
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 21:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCC4AAC4FC9
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 19:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884213451D8;
	Thu, 21 Aug 2025 19:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRxaaRzX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E10341672
	for <linux-man@vger.kernel.org>; Thu, 21 Aug 2025 19:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755804073; cv=none; b=czpFz0nJ2r0vj7eufIfmknSp2wm+IuHPah2zHxXLLQ5/7hzv8yZp/ceDMitK2Muw11i/KDCpjSDBDu5b3FbuGRJm5L1VDb6vSmHLSQVZo2IOVVLFNAS0aFVgnPiuWCL4jJClHMjvOGCMJ6pZPQSETPe1V40eSe3W5N/oA5qPa14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755804073; c=relaxed/simple;
	bh=QiepZFVggo0mp8sLCXSxkN4RzIhg9gvQpK4wjwA1lZ0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WKCIXCSlrYVzLFelyqCwAulWYQCaSFMmGfZz6cVqH2a1mz/98vPe8mY6mSBWTEJpOEbqPcKzhDiaYglZFf9KIaCHE4grbZFi9ctzaldA0Iz/iMyhXi2kXhFp6ba5AJ3YOmqn7tkrP4qqFFJmju+OFJYaP7+O8XLALjqWWES3P+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRxaaRzX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF05DC113CF
	for <linux-man@vger.kernel.org>; Thu, 21 Aug 2025 19:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755804072;
	bh=QiepZFVggo0mp8sLCXSxkN4RzIhg9gvQpK4wjwA1lZ0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=dRxaaRzXEAPb6hNqMtUmW8ka+/Y0aqRb3lnezmr8KIg20/mBPscdFF8CuAiFsW3gQ
	 Lx/nroBGKSdaDklxvvDJWpLmKNA87VdMAWZCuN8YP9Heg0q5NEMwVieyjq8iAMDgyu
	 pej4sGcuwVXwvZDpH5eLGpBaNcnetFmAlYn+Lr5B4iSRK/Pd9Hzat7lXQpJwIZz8Nn
	 v/Hew8OsDdsEFmqHOhpMEcTm8cvyV2U41wJDm0eaHfVgumAJYcYafouZKpthMsXst6
	 gzhuVTZyx7+Cc2B8VLrTT7U0Y72f9GhJpx2Kwn/UB4gTiFTUBzVdur/H6tMQApmY3B
	 MUspTz958qCAg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B99BEC53BC7; Thu, 21 Aug 2025 19:21:12 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219335] Wrong in the write text
Date: Thu, 21 Aug 2025 19:21:12 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: PATCH_ALREADY_AVAILABLE
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-219335-11311-196GKgyPTv@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219335-11311@https.bugzilla.kernel.org/>
References: <bug-219335-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219335

Artem S. Tashkinov (aros@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |PATCH_ALREADY_AVAILABLE

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

