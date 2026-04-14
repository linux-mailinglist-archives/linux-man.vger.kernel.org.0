Return-Path: <linux-man+bounces-5331-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P3ODIZ03mkqEgAAu9opvQ
	(envelope-from <linux-man+bounces-5331-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2026 19:08:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC313FCD6C
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2026 19:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A002307AAC0
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2026 17:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30DA2D97B5;
	Tue, 14 Apr 2026 17:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=joshtriplett.org header.i=@joshtriplett.org header.b="Ut/KY46o";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="VD7ui6g/"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5DC22D73B5
	for <linux-man@vger.kernel.org>; Tue, 14 Apr 2026 17:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776186381; cv=none; b=BccDU96dxNmjStxgeao0xvk5zbdxR5jWIEcUhGcUX4PHmQYSv9Wm8XGyy/e7ucwMQA16hecXn/azWKzQEtLxprq5Yf3osZ2M4ME0BQZ1yL6U6f0v/P8dIksJVR1ZjoKJESWsceQRR8UFlZYJUnhdDmhVoqnGeP7r1YhgKB0Uz+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776186381; c=relaxed/simple;
	bh=Nj6xfprvYm1XtToADQ/Ro5P8Vp3FTee4hy+f1Rcx6QM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=syAWesfXKDeTJZnUahq7ut+3b7adgvGmM1DyzYJJwyPkGESjFXNKgCMAyUvAtj04DflNhpT12MXLOi9mT/Pv+LUWho5qR42CSFgMBwG+dlBWgfy2x2rInknNvxkyyyzoCEfc448ku+u0Zh8lmhu2GMt3nV6Doi/nsHW8z9JPDss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joshtriplett.org; spf=pass smtp.mailfrom=joshtriplett.org; dkim=pass (2048-bit key) header.d=joshtriplett.org header.i=@joshtriplett.org header.b=Ut/KY46o; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=VD7ui6g/; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joshtriplett.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=joshtriplett.org
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id 07F671D0014C
	for <linux-man@vger.kernel.org>; Tue, 14 Apr 2026 13:06:19 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Tue, 14 Apr 2026 13:06:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	joshtriplett.org; h=cc:content-type:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1776186378; x=1776272778; bh=Nj6xfprvYm
	1XtToADQ/Ro5P8Vp3FTee4hy+f1Rcx6QM=; b=Ut/KY46oNCCzs5B0Acq8aFPWgS
	N6S9MEfBfI3t5EyPBFnRoDgDkK/WNNqp3kCKaZOKhnBzu6UAix1V5HsgB2vb3b7o
	qmypUILokzXR2q7iLNw3hFYrEM6Y2cbJCY0i549chquZXKTBzZZw4krnHzapkE6l
	rB3H8C1VNyPH+Wi+MXdyiauewwWEUFHZjn30FpL0F5V4mqg/+ekorD9VMbClAlCp
	73ZJnRNK7GqsVWe9LaX3BfsYhMkzdLp7rJsBQsv8f5X2xVE4mN9N9J+JtyQGtufu
	rqLihjpx8GyVWxPvm6AfFgAHKCJvZMpxrXef7e2y2rwUTvbp9B3bK+jpuzSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1776186378; x=
	1776272778; bh=Nj6xfprvYm1XtToADQ/Ro5P8Vp3FTee4hy+f1Rcx6QM=; b=V
	D7ui6g/T+PQC3r7HkGZiW6IG4X9LIM4BlkMODnuEHkYwvRMdW2HVEQU+mYQV80uZ
	ou9LCXmgLjVZcE27dfxnNGHVzfDZDqGSox1vhox54uLTzQob7ZMfUP1e6QCgLTZa
	9O0MULK3EzhQKkjjFRSDlL4WZ10LcJUXweLst5Ei7PJfAQxNrcjVtnXLRDuzexq1
	eMA4zJHnMnj3S/U/0mtj+ra/Hq2y2K++XbiPIQNxJ/GXQWBFdY5GA6KikWnWw3Sb
	QiweG/+UaN4YHpOWtHbOUt/SURhRitFZ4UKCoKPIhMduyjNGzU2lIaqlcPM3tLGT
	hAOfdf2DYOvntrlB9FNGA==
X-ME-Sender: <xms:CnTeaXeZUi8Gn9AQ67L-d6MtV2s5fzbpKTWcCRQ6AbyEaBsTCWvfaQ>
    <xme:CnTeaUJWYK6mfrh4IGvBiC2F3OdZ7JQlcR8URkUUNgZJ5liOfdSRsDiWyfymMIG8i
    0oNYdY-iYeutxh3O2X5MHIJP6zMxiWCesRoMbC285oNQvWy3_g-uw>
X-ME-Received: <xmr:CnTeaWJxfgkNAsmcl7iINGGkmyq_He2cor_jmc7i118pBPg9aO983OBqTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdegudejvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggusehttdertddttddvne
    cuhfhrohhmpeflohhshhcuvfhrihhplhgvthhtuceojhhoshhhsehjohhshhhtrhhiphhl
    vghtthdrohhrgheqnecuggftrfgrthhtvghrnhepleelgeegtdejjeefuedvudefgefgke
    dtfeekheevueevvddvhfegfffgvdfgffeknecuvehluhhsthgvrhfuihiivgeptdenucfr
    rghrrghmpehmrghilhhfrhhomhepjhhoshhhsehjohhshhhtrhhiphhlvghtthdrohhrgh
    dpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhi
    nhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:CnTeaeHTgY8pDpAM9Cgho6L-s6_geLKW2hXRn7f36DZuhdGNoPRapw>
    <xmx:CnTeaTlSNNFjbUJo6iMOXub3jlFyfJCn4WJiYZ9Qx5vbCPs2u0YBAg>
    <xmx:CnTeaTIlXRE9ddBXZqHxC-kmY9_y2UVlbRwTeToFsqfXEUN9ZXAvlg>
    <xmx:CnTeacbLKsmFFSOqJd7d2Luag8X2KH5BbZ1qkVNMdJeLne4hvLihNQ>
    <xmx:CnTeaZPdhjdHcwl9c1a-EGlHQXUW--_l4lIn81WIuBKYKWhe3DVmNPvE>
Feedback-ID: i83e94755:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux-man@vger.kernel.org>; Tue, 14 Apr 2026 13:06:18 -0400 (EDT)
Date: Tue, 14 Apr 2026 10:06:17 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: linux-man@vger.kernel.org
Subject: TCP_DEFER_ACCEPT documentation should be more precise about rounding
 to retransmits
Message-ID: <ad50CQgF_gNtB1Kr@localhost>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[joshtriplett.org:s=fm2,messagingengine.com:s=fm2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5331-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[joshtriplett.org:+,messagingengine.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[joshtriplett.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josh@joshtriplett.org,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 4CC313FCD6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

`tcp(7)` says:
> Takes an integer value (seconds), this can bound the maximum number of attempts TCP will make to complete the connection.

However, it doesn't say *how* it bounds the attempts. From the kernel
code, it appears to round up to the first retransmit time that's larger
than the specified bound. Could the manpage please document this?

(Discovered when adding Rust bindings to this, and trying to figure out
and document the rounding behavior.)

- Josh Triplett

