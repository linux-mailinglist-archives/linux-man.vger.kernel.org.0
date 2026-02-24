Return-Path: <linux-man+bounces-5217-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UI95EG/cnWmuSQQAu9opvQ
	(envelope-from <linux-man+bounces-5217-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 18:14:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 317A818A623
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 18:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94C39305D6C4
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 17:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E168E3A9D85;
	Tue, 24 Feb 2026 17:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="W18n/VHb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FA33A7F4C
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 17:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771953251; cv=none; b=dXo0GNdChNTkR5DggX4M13OnWsyLZFvFa4GybmsvTqaS4an06lzPLVIyuZRMxLrQH80qFmzTTMXkgfv3a/oXTnmwd/HXE2sLKzfLVMUe9VRF2I3uVfw7zJAnCnIFRIrXGgxMkfwErNlRWvYdo/32S5WK9XiSdzYeGZLhuuwflWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771953251; c=relaxed/simple;
	bh=S1d5lr7kmnXBLQwYq395g4UUjV6RO/OMwALfVkEa0V4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=EgqeLv43ppS7izDnRIY2PYSA3Lg0n/BoSyc0KuUOMLx68egpEGaaTCrsX5of0MUY/7aWiWZaF+6rb20j38UWWm9hSfYmaL3e7IJJQJU0IWoAJk1vY0NjHdJjT9kSaNKQopKzP1Z6Uk1e3DpipiuZ8/Id8Cj7jQji2AVdgUBYI20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=W18n/VHb; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id E044D3C1082EF;
	Tue, 24 Feb 2026 09:14:04 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id Rn-L7S6ttgw0; Tue, 24 Feb 2026 09:14:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id B7C533C1082F2;
	Tue, 24 Feb 2026 09:14:04 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu B7C533C1082F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1771953244;
	bh=QJK7BY4xm57hUYngf2Yv1pIEpYcAIKbcf0KXufjia9g=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=W18n/VHbNCCX+orDvZAx5ANS+gTVdk08jFYN2g8ichLz1feBF6sIt4cQxueUnUBG2
	 0620yH2kQr2OXrPDSgk0rc41+cMelD2l8Nr8scGw+E8eBSm1pm9J4maZkz33Y6FJFx
	 UbNo6XkljWZPD2HeSpiacgJXI9OI2PW2J2zx3EZ5TuWdMx8BYjDjTMhtPjNF9K8y4x
	 XpTw1ExhmC/jFvXK5a6sB6TX5pvlFb0PmbewUF3WtbgCeSdn29/976LjWJ16u5c53e
	 Jx2oFNW92QZw97pJvoHkC3dZAzhrQ/c3bfS9dr79Xcg20d2ZXUWEsjjvJN+jvlDJOZ
	 EVPu/Feaoe8ug==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id k_azyXa2AwSz; Tue, 24 Feb 2026 09:14:04 -0800 (PST)
Received: from penguin.cs.ucla.edu (47-154-25-30.fdr01.snmn.ca.ip.frontiernet.net [47.154.25.30])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 965E53C1082EF;
	Tue, 24 Feb 2026 09:14:04 -0800 (PST)
Message-ID: <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
Date: Tue, 24 Feb 2026 09:14:04 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <aZ2xBQcy7mMEXW_b@devuan>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <aZ2xBQcy7mMEXW_b@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cs.ucla.edu,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[cs.ucla.edu:s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5217-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cs.ucla.edu:mid,cs.ucla.edu:dkim];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[cs.ucla.edu:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eggert@cs.ucla.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 317A818A623
X-Rspamd-Action: no action

On 2026-02-24 06:28, Alejandro Colomar wrote:
> -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
> 
> 	QChar *strchr(QChar *s, int c);
>     vs
> 	char *strnul(char *s);
> 	const char *strnul(const char *s);
One documents strchr, the other strnul. And strchr and strnul do differ: 
strchr has an underlying obsolescent function, and strnul does not. This 
suggests strchr should be documented differently from strnul.

