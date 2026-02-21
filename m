Return-Path: <linux-man+bounces-5165-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CopHB/JmWm/WgMAu9opvQ
	(envelope-from <linux-man+bounces-5165-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:02:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9D016D1BC
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:02:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B87D3004DDA
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 15:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0387D38DD3;
	Sat, 21 Feb 2026 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKG/5te7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD6663B9
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 15:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686172; cv=none; b=T3Ajq5/KwcNsDh8kyDBTWK99mUKie171+mD9U1YG5HcCzegTfQqHXrdTQIU6TXoNUWjL1idbarMfXeTeLwkxZj49TPkgMRai3nNY66F9AHwtPJIOGXBhp8IiIzre9auLuvGDBEIIN9Mn4k/FK62XeDEOkG9tWQifwAnl5B/962g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686172; c=relaxed/simple;
	bh=fuxJh/ChA0/0kZJyImxQH+LsnhAaMGKUMA+RD3lVLTY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=gUNbZRkaafOrrtZISs0fFtmtxKw7Azl1n9mZolWkO8THCpGzWr9VtXA1WTiStrdkOAB8o2Gew8Ldt+uf1FUo6ArQAUsk5g3BzKZVoBhlDxJFqmqQkP3raTUQb+t9SvwHvrid2xUbj9mdwhCVREpmsqULLBM7oxv/1zr56Q4xykU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKG/5te7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81859C4CEF7;
	Sat, 21 Feb 2026 15:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686172;
	bh=fuxJh/ChA0/0kZJyImxQH+LsnhAaMGKUMA+RD3lVLTY=;
	h=Date:From:To:Cc:Subject:From;
	b=JKG/5te7rmNcSWuFaC0NSJh0oN2sKw3aVyOLuZ2oFaTGRloKWMVngZ6jahcZQjd8o
	 S+b3qaQCUMs3yv29yHPvxKDyswcv5PXxPONSCLnH3uKhB8QLBbH6a9PpFEc8cM3eGu
	 c8wfZAimMr8DfLbOU6ekga98tcjuZwOBFTuwCbWLAoVjtVzKFeYmejubjA/L9PJGYP
	 k5KNaew68iQogP3qZ7xr+/l+NGTHExhoTB9Zis3W3ufQQIyQUycE3F0JXTfd6mack5
	 1y0aKd62OwUDFNNL3LNylDEYo/1aBTL5qIDguGT/T/+n6aRcScglSqI8pAeUiy22SY
	 QK1LyIb71iHpg==
Date: Sat, 21 Feb 2026 16:02:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, bug-gnulib@gnu.org
Subject: [PATCH v1 0/1] Document strnul(3)
Message-ID: <cover.1771686088.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5165-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1E9D016D1BC
X-Rspamd-Action: no action

Hi!

gnulib has added strnul(3).  I hope libc implementation eventually pick
up this API.  Let's document it in a manual page.


Have a lovely day!
Alex


Alejandro Colomar (1):
  man/man3/strnul.3: New page

 man/man3/strnul.3 | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 man/man3/strnul.3

Range-diff against v0:
-:  ------------ > 1:  7b2c4b363f65 man/man3/strnul.3: New page

base-commit: 707b47ed0e29dd8ebab93c6c5baa400320160c8b
-- 
2.51.0


