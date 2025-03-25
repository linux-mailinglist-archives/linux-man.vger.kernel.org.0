Return-Path: <linux-man+bounces-2651-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0E7A6E7C3
	for <lists+linux-man@lfdr.de>; Tue, 25 Mar 2025 01:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EAD23B29D0
	for <lists+linux-man@lfdr.de>; Tue, 25 Mar 2025 00:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFEC838382;
	Tue, 25 Mar 2025 00:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4ROKM7O"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E38B672
	for <linux-man@vger.kernel.org>; Tue, 25 Mar 2025 00:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742863722; cv=none; b=qwipj4xcBSErRLROI3YAS8oJt5MmPp3NMo2gG/qopJWxDJ4u7mq5acTXIxHNTjCCuBkBDvt1ujqeu5JMcrwEOgFWuMh0u/8yN+RLQ/WJaX7d9u1d9uqD8wpc3ZnIk1CWpnpGNwdAsAoNX28bmXRw1/vc6zgJ9UPejdv6US2ZLfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742863722; c=relaxed/simple;
	bh=sfcpBSFPALUEnxSt9aCYjiMxmVxFy0hPqgKYGg5CWmw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OFFb0Fx4eDIzhVCytW41GmeGDtz9K7u2yuClK8NM1M+GNpQP9HX2ix9UnFyvXCgGS/8R/zcLRgTlQEQ6/EmmG2gSYWTYpfDkSpLz5TtKqBt2rveGOfjvy7afF/hXDUK6T5yeykJAmfX6A6L99qJWY04moA+YYQ+nq1l6lnSITss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4ROKM7O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20FD9C4CEEF
	for <linux-man@vger.kernel.org>; Tue, 25 Mar 2025 00:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742863722;
	bh=sfcpBSFPALUEnxSt9aCYjiMxmVxFy0hPqgKYGg5CWmw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Q4ROKM7OFJrbsRXi+eGSSrfB1Or8SYnEmnedlDjdYxun23LsjwK2o1FACbr4eKLO8
	 73FPqag+Tftx7KqW9ADHAhIGDCFpljZ3+CigLWJzuC++TSnT8yp8xdB/7p6F1fj1QK
	 aToCJcL9JsvADH2zmgMSU/mrbmWHod9eEPJ03lwfq30xJKGH6FZVnaBFpsEmgNXJZP
	 uNhT8P7AMxR3CDOV+zhpvJX+HxOCyYkgO6aVa1InCFqYB0QT70QGVhkjCeS18xD2QN
	 xufCcb59ErvJQR0bWNStnsMqdQl/HtccfNyqaLsVw528oP+BeBqQzJdQehIl79oLSy
	 Ogt/5ytSnOZbw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 1576AC53BC7; Tue, 25 Mar 2025 00:48:42 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219921] posix_fadvise refers to non-existent len parameter
Date: Tue, 25 Mar 2025 00:48:41 +0000
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
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-219921-11311-4PSlxE89AF@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219921-11311@https.bugzilla.kernel.org/>
References: <bug-219921-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219921

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |CODE_FIX

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Thanks!  I've fixed it.  I'll push soon.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

