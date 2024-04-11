Return-Path: <linux-man+bounces-735-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172DE8A2190
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 00:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4804A1C23D39
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 22:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB9B3AC08;
	Thu, 11 Apr 2024 22:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/DvbBPC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49CA2DF84
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 22:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712873049; cv=none; b=jBVzqx2/PZc7TV4ERpkQck3SM3gPEUsHkH3cO7Gqy64peM4kVwfqJSr+y90/tQNVk2W3qpPgoFc/sOod+PAkNvlI/klaqNwtEISEdzKWCclNmYpCN44JUBNQuZbY2TVVv5O3SgRFu17aM7wj5YdT2x8Tzpr3rd2Dn3+lwUqHvEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712873049; c=relaxed/simple;
	bh=XObKZ0CyvdTO36BA8A1MRXpcwfXanSTc/4QPsjZND9M=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=enb4PmaNfHL+PSCVC4HarKwTn2bF+mkR1CfoDGpjBqNxHfvnVEikAh419sWhSHm8bUdp1EhoTNDnZC4KdIdiklqMOSZAMv6vYoAFP0Eiq/7r+/SmR4Z/6BpchxtAtX5sV/ANeCvA7UWjAuTg2QowGl0wsxNqsfE44RfTB32IQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/DvbBPC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D0FC113CC
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 22:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712873049;
	bh=XObKZ0CyvdTO36BA8A1MRXpcwfXanSTc/4QPsjZND9M=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=l/DvbBPC+p7ODiM8OZeiO8iRsJO6cZekHnf7fVzVMHkjJ3a/+RxkUeKOXbXN7jk/T
	 lECats+4X8suIArDPq77s3uYtOmsVmnA6ygUi/epQoJicaOcG6caqgkOy4MGvjhZd7
	 uImcqEBN0ib02dJhUg3xLyZ98aePoyv4nNE6S3AhIiRLKHUG3f/rmmY7YCJXnGsVp6
	 6NltvCH7pxFP3asOKP0M85Jp6OZwZfSRS/Di6zmUGP/0cX/pkK957fOiOu2iCyjfEJ
	 HmfjXT0OLTxdQFvBbzbTEhimb0Fjwir3uTGP/HpWw1tNeo8l2JKZoTOWE0Rl2OvduC
	 +kh8IDdSvCoPw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 6AE07C43230; Thu, 11 Apr 2024 22:04:09 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218711] strftime man page incorrectly claims that TZ is used
Date: Thu, 11 Apr 2024 22:04:09 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: gharris@sonic.net
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218711-11311-xNCmZGpzWg@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218711-11311@https.bugzilla.kernel.org/>
References: <bug-218711-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218711

--- Comment #2 from Guy Harris (gharris@sonic.net) ---
> It would be wise to CC Paul Eggert <eggert@cs.ucla.edu>.

I'm not sure why, given that the tzdb newstrftime man page doesn't mention =
TZ.=20
The tzdb strftime() *code* will use tm_zone if the code is configured to
support it, falls back on using tzname[] and tm_isdst if tzname[] is presen=
t,
and otherwise replace %Z with the empty string, so it's only directly affec=
ted
by the TZ setting if struct tm doesn't contain tm_zone.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

