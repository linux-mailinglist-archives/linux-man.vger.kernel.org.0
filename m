Return-Path: <linux-man+bounces-5528-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNTxEP+mCGpizgMAu9opvQ
	(envelope-from <linux-man+bounces-5528-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 19:18:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CE10655CDE5
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 19:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D356300558B
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 17:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2543F3E8352;
	Sat, 16 May 2026 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6MRVuCK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9813E7BDB
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 17:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778951932; cv=none; b=fHqCT7KYg3BEjXpu7KJwf23kingmFZ8TNiMygrWWr47o9ZW3YLCRt2PVvPWI20TxaE9gAA1jljCy87qMtOmYcdxPx88Ne07JY3lAluW1UxXsTDjmcQJR8kG+x1LHYqxejX8CD5vzPby8lC6ohbyDGn0VCCr/pC6QOro1mn95L+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778951932; c=relaxed/simple;
	bh=I2Eg7AHc5rweROmZoneLV0OYFaJvZvKtEQQHJFdP0HU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZxaGsExmtadzIX6bhsFTxukAY9T7l6drYIciAf5bo5vEAls5DvD8HtLx7/FB0EC2dT0rK2xW8MWTq+zH9haSKmwSqyqW2KybDjGVsAOLRyz/WwFE0r5IbCAZzBQIkLJVd6wDolmg+ypHza7oXwiEvYmoUWtuo89WfzktNn3O4gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6MRVuCK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92304C19425
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 17:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778951932;
	bh=I2Eg7AHc5rweROmZoneLV0OYFaJvZvKtEQQHJFdP0HU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=S6MRVuCKqHBw4JTpy+CNI47Vpc88bGD6/n5pfkbmJ5zaQzN1nqSqCif9sqigvE4qS
	 AhBIQ+VogxZPDyWJgsf1xHlvN16agxEvkP15MtEfQqRpr8RO1ESj2Fn2SCZRG4K9m8
	 3bmUDc9QLB4443LWlcNWW9M1vmOQbMtQG+9EKEbfoqcWsHPkdE/ErmIci2lib8L14X
	 Cx1UsLeGkTGhl6Z3Nhsuk3IKqHfo09wyV2fPdotsLCapGaB8J8gWapGLsSDW9eMYv0
	 PBpxJtiJw8TO21hkwl5oBZ+FgCTt+9v6xuqqxh55xUNRMoGnIVvE0vmS4pM3kJxOTL
	 uIHcJUK/ipX8w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 8607CC53BBF; Sat, 16 May 2026 17:18:52 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221533] strstr/c23/constness
Date: Sat, 16 May 2026 17:18:52 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linux@treblig.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-221533-11311-3RoETPdxgD@https.bugzilla.kernel.org/>
In-Reply-To: <bug-221533-11311@https.bugzilla.kernel.org/>
References: <bug-221533-11311@https.bugzilla.kernel.org/>
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
X-Rspamd-Queue-Id: CE10655CDE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TAGGED_FROM(0.00)[bounces-5528-lists,linux-man=lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action

https://bugzilla.kernel.org/show_bug.cgi?id=3D221533

--- Comment #2 from Dr. David Alan Gilbert (linux@treblig.org) ---
Yep, makes sense; I tripped over it yesterday in one of qemu's tests (someo=
ne
has already sent a test).

Thanks!

Dave

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

