Return-Path: <linux-man+bounces-5663-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xETcMTO1O2qLbggAu9opvQ
	(envelope-from <linux-man+bounces-5663-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 12:45:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAC36BD775
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 12:45:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YSpgQsa2;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5663-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5663-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2515130F4B82
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 10:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05CED27B32C;
	Wed, 24 Jun 2026 10:43:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD442BE02C
	for <linux-man@vger.kernel.org>; Wed, 24 Jun 2026 10:43:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782297782; cv=none; b=Itw8IRof8PUekBPemAYKkgk1qbvbn1aG3WopERNw6lKZEYjXepahLqifdrlQ5dwMnuGYr8Tn/2N0FRPtYUz3shdU2ZwQk814J/KuNGxy3xccfnK++R/O9nHUv+9XNFlnGbUTOJbSu7C5Vm/8Yue2I1Yl7CHjQzbIkaLWGs0IjdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782297782; c=relaxed/simple;
	bh=5tAyU0tEkai5DL/s7RVSd0WSk/RH+bxWsVxf+Lb9gqM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tHD4tBZBp/yjRSWxCMCVJMs7sljL6eyVU+wqMeaj3wRu1xuOsClxz590w2SjL7Uz6rAMFEL5vlORQHoRuLNCZrTSl96aSQ3MKetAxWaHqAKn3OBzoExrRslyxslH1AXu9YCsNbZ6CkxoSENi2exIhNUPGfimhJsQqu14bkf+BhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSpgQsa2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A718C2BCC6
	for <linux-man@vger.kernel.org>; Wed, 24 Jun 2026 10:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782297782;
	bh=5tAyU0tEkai5DL/s7RVSd0WSk/RH+bxWsVxf+Lb9gqM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=YSpgQsa2kCzCBLA1cDQNXW3nmDhYoHdy4xA87qLqrfwK4I//G72EoYIIwMCgW9XQ1
	 2KDaqyjvUxOpuxIdVQCULXRhqsu72hLFPxuHaLBUlpEXMYYqnCnxv1/zwgEWDqVJo5
	 0lRNWpKyTT8de9/F4HjeF1lxzigFkvdT3GspeRzLNQM+fKZcLVDFeKEtSy/yxG4FqU
	 up990xTIAfZy4xnbD0vcBNljr2ZoACZtVT7NBRkt55IOAmJLHtFCQ4qvll8L7Jpy5p
	 XObvQ38hnOceNaHrMy9+KkIw7gtYtD2nzhwX+yhjJW+WrCekQ0YfRZaHtcicVCcyGY
	 oFCzt+q6kwc2g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 443BCC53BC5; Wed, 24 Jun 2026 10:43:02 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221686] README.d/ is not mentioned in README
Date: Wed, 24 Jun 2026 10:43:02 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-221686-11311-znaOwvXnK5@https.bugzilla.kernel.org/>
In-Reply-To: <bug-221686-11311@https.bugzilla.kernel.org/>
References: <bug-221686-11311@https.bugzilla.kernel.org/>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5663-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,osdl.org:email,jasonyundt.email:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BAC36BD775

https://bugzilla.kernel.org/show_bug.cgi?id=3D221686

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
On 2026-06-24T10:24:56+0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D221686
>=20
>             Bug ID: 221686
>            Summary: README.d/ is not mentioned in README
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: enhancement
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: jason@jasonyundt.email
>         Regression: No
>=20
> The README file for the Linux man-pages project has a section named =E2=
=80=9CFiles=E2=80=9D
> that lists a bunch of different files and directories and describes them.=
 The
> =E2=80=9CFiles=E2=80=9D section mentions the CONTRIBUTING file, the CONTR=
IBUTING.d/ directory
> and the README file, but it does not mention the README.d/ directory. It
> would
> be better if the README mentioned the README.d/ directory.

Hi Jason!

Thanks!  I've pushed the following patch:

        commit dab26703f0de1206afe2990b26c084932e792e60
        Author: Alejandro Colomar <alx@kernel.org>
        Date:   2026-06-24 12:41:41 +0200

            README: Document README.d/*

            Reported-by: Jason Yundt <jason@jasonyundt.email>
            Signed-off-by: Alejandro Colomar <alx@kernel.org>

        diff --git a/README b/README
        index d994e3c12f28..6dbcd97a1546 100644
        --- a/README
        +++ b/README
        @@ -31,6 +31,7 @@ Files
                Notes for maintainers.

            README
        +   README.d/*
                Main information about the project and the repository.

            RELEASE


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

