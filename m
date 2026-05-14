Return-Path: <linux-man+bounces-5504-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5DofFi07BmqdggIAu9opvQ
	(envelope-from <linux-man+bounces-5504-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:14:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F093546F37
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84C7E3008D15
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 21:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CEBA3976A4;
	Thu, 14 May 2026 21:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kolttonen.fi header.i=@kolttonen.fi header.b="N37ttBIa"
X-Original-To: linux-man@vger.kernel.org
Received: from cloud35.hostingpalvelu.fi (mail35.hostingpalvelu.fi [31.217.192.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9933F413B
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 21:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=31.217.192.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778793256; cv=none; b=CRyvbb0uPGnX3BYNl80ImVfYEHV5aiU4Zyqx0BEcGLeZ9pvRHcyQ2bY2ShdvdvLHqiYWzRZtpvBhXW2EHzPeA4TIWZMHnR4yJnOGWf8RjBxMnDEzU2mTgMDidcGV0O9R+CtKyptd3FSRMyUdUiBQN5jQc4LYzRjFJVwbachFPaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778793256; c=relaxed/simple;
	bh=tTjBE2G41jwRxcrQqJ0svr+qVvB14noxpBDObvjo8Ds=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QyT7Dvni6Iz1Cag1YRwFawimknzNf9Wa16320qmlHAHExEkeYkG3uqYbWGnk1aPcpeC0bhHHKb8KWtrlsLbwdu95zc2fyjJd7knsvqNdkA4FXZUX9IirYbSCY/2U14zj3A+J9i+IXCBiFJrWUupJc8x+51IuLfK4FJV0lt42jlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kolttonen.fi; spf=pass smtp.mailfrom=kolttonen.fi; dkim=pass (2048-bit key) header.d=kolttonen.fi header.i=@kolttonen.fi header.b=N37ttBIa; arc=none smtp.client-ip=31.217.192.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kolttonen.fi
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kolttonen.fi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kolttonen.fi; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=E5/+pdLXF526bQYfw747FpkqfEbpha8J/4lTFY+k7v8=; b=N37ttBIaIyh+U2qkyQl9iW+SaS
	mwdooBR/TRSF1L/DectpXrPBFhD7yNY47jMCWV7C2zbjDGfBYobKT/Wl27JBXpygSMkngUxmSXVWb
	LXEPB9iT9BjtrZFKjWGYdM0TLYJ70dPz64FF1juNnsNSdnKdnurldAEGuESWtn6a2p3HoTmEGjvkQ
	t/GLN+IkrTpNV30zd5797EvZOhEQoma9DhoSAbXIpFqEmtMQDXwqvset5b3p9Ys9uJ8ny99ncZ+ZV
	1iNkhMukogcDGEs8Kr1Ii4YD1liKDgbKOmIlYMGdH3WBSISf4IOkblQSS11DCQ2xIHUtmpmyxM/bN
	8wRFAi5A==;
Received: from 176-93-144-62.bb.dnainternet.fi ([176.93.144.62]:11490 helo=14-5A-FC-31-E8-67)
	by cloud35.hostingpalvelu.fi with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.2)
	(envelope-from <kalevi@kolttonen.fi>)
	id 1wNdNp-0000000E6yC-2iVK;
	Fri, 15 May 2026 00:14:12 +0300
Date: Fri, 15 May 2026 00:14:10 +0300
From: Kalevi Kolttonen <kalevi@kolttonen.fi>
To: alx@kernel.org, linux-man@vger.kernel.org
Subject: reallocarray() is now part of POSIX
Message-ID: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud35.hostingpalvelu.fi
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kolttonen.fi
X-Get-Message-Sender-Via: cloud35.hostingpalvelu.fi: authenticated_id: kalevi@kolttonen.fi
X-Authenticated-Sender: cloud35.hostingpalvelu.fi: kalevi@kolttonen.fi
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Queue-Id: 5F093546F37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	R_DKIM_REJECT(1.00)[kolttonen.fi:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5504-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kolttonen.fi];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[kalevi@kolttonen.fi];
	HAS_X_AS(0.00)[kalevi@kolttonen.fi];
	FROM_HAS_DN(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[kolttonen.fi:-];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.088];
	FROM_NEQ_ENVFROM(0.00)[kalevi@kolttonen.fi,linux-man@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_X_SOURCE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hello!

The man page for 'reallocarray' claims this function
is not standardized. However, it is now part of POSIX.

FreeBSD 15 man page says:

  reallocarray() conforms to IEEE Std 1003.1-2024 (“POSIX.1”).

br,
KK

