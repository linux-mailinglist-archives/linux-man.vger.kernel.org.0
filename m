Return-Path: <linux-man+bounces-5256-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB7lHrzZs2mzbgAAu9opvQ
	(envelope-from <linux-man+bounces-5256-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 10:32:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C562808B9
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 10:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47AF230A0A75
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 09:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D66388E7B;
	Fri, 13 Mar 2026 09:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unusedvar.com header.i=@unusedvar.com header.b="FnHuKriv";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="bZR8o3nd"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BC389111
	for <linux-man@vger.kernel.org>; Fri, 13 Mar 2026 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394010; cv=none; b=d+YzFmqXfZ0bMVPip6PMNL5oplCAT19//L7QlGX/NJDJGlapSj3WUlcT7uEM0BXR6tJkgJii2pCSw4Axl31yvPksx4I+lZwe7zI9UJFqCKNJ65M0sxDQv9t3dDvgcGx/zO4w9d88jMvqjKZsGi8O5DdwXyWaiQiZAP+eYdj2OdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394010; c=relaxed/simple;
	bh=z1a4K6o4lWphw3vRub7k0jpLDvnxbXKYyhVDmexK3l0=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=bs6dXIAPjyb+ezPRv7vOekW717WPJGz86AFuYOBYd8mqc0TEuje9mMjd+xJLZpBWcMu4tSCCvn09gBHPca0moHDPbCudJyEpZsJ0ckWTj4lQFsr9yjUbJtb7n8nlpdk8PhIq2SQliH29/Yc79UksFad3M6ZkFuQoMBb6h2cixjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=unusedvar.com; spf=pass smtp.mailfrom=unusedvar.com; dkim=pass (2048-bit key) header.d=unusedvar.com header.i=@unusedvar.com header.b=FnHuKriv; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=bZR8o3nd; arc=none smtp.client-ip=202.12.124.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=unusedvar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unusedvar.com
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4490C7A0185;
	Fri, 13 Mar 2026 05:26:47 -0400 (EDT)
Received: from phl-imap-15 ([10.202.2.104])
  by phl-compute-04.internal (MEProxy); Fri, 13 Mar 2026 05:26:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unusedvar.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1773394007; x=1773480407; bh=cHXvuBrGz/WyRfT8V3vdOir8YH8fdvUt
	YfvLO0dID9Q=; b=FnHuKrivV9w6c4EsGEfg1wV6xmX0LLDAOmM2vojYx7+CaqI2
	SFGLNqXpc0r++S4Kq7L7wXKyMK2818eodY/n5vTQjHraiJo7wgZb0E80Z4pUVlOc
	u4ZpqXApOkNh1zLLXzfMtMvor6Oza3D/5ktlz/BQDCrnlKJIVr0aDZ35IHL2BWSn
	3gprXMwzGsUFAC5Yi28LWka8qmNDCc24k5o8hOe83/iY4HInouVoRf+a2PzfOy/U
	V4fnHT8wqjqj2/9a6ajAWENS0BY1yIsnRoZxDvHDzEoDKtTHApeBrzhi0hDsByjL
	Z5SAhAOZ2wfNWfT+7csJb93wqmiBjNr+4BCNHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1773394007; x=
	1773480407; bh=cHXvuBrGz/WyRfT8V3vdOir8YH8fdvUtYfvLO0dID9Q=; b=b
	ZR8o3ndMs5mhwJUjFf+6TLC5jU0p3pRjKrHH7E0SiNQV7uazyQJp6qYjSGnNCe44
	FOy5DvXIoVmHNomaopz0zZVUynuuhLGQRNjGkldhzUGhiTaRjZTAr5tHLZcLTt2k
	Lt3gLiyh0M4cmGq0RJGDn7i2okcZlv1CRPYY++n1VthYNYynb3aeuuFTe8VMLo2e
	LSGHgI6tvu/FTHVJJ7xwdc1wvIZmlC+5OsAVylQgd9IV8xRUzdfHtNt3mktIifKC
	TdAOZ9E8W12iK2GEKV9k69Rb/1gQGFEmFytXzRu6o+SH2wp+l4jffoBFI9WepZQ6
	+SP+WG0WTEmAIggstCgtg==
X-ME-Sender: <xms:VtizaSxT_0RUqLsLCa1mgwXx4NReFOaw291KHtD-0BGhf8tZYE7n1g>
    <xme:VtizaZHFjnWTfrca3c5CnZHSqKP46pFAlZsj6x8j5crtRGUJg7hXNfr-Lc7SqZjhd
    8wiS8LAPvB8pPMFem5bWtxUgLDkogjxZdEwYrxwWbBd1Alfz_Ig-64>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvkeelfedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvvefkjghfufgtgfesthejre
    dtredttdenucfhrhhomhepfdftrghnuceuvghnihhtrgdfuceorhgrnhesuhhnuhhsvggu
    vhgrrhdrtghomheqnecuggftrfgrthhtvghrnhepudduvdeugeduvdfgleevteeijeekvd
    dthfevgfffgeehfeelgfekvdekveeuveevnecuffhomhgrihhnpegsohhothhlihhnrdgt
    ohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprh
    grnhesuhhnuhhsvgguvhgrrhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    eplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:VtizaVfdtK7_zJs1FKBfp7oIcS6l7WNPE6rFD1YGyVqJzy6rK5BzHw>
    <xmx:VtizaRKx7IepD5ZFaStVhbJLhxo9nahR7IS-bebwE2LFd9RePd_sxw>
    <xmx:VtizaWEOPEk9HC7RUprvpDl939ZBjCtd9sxBOl16X1B-_zkiKq1ejg>
    <xmx:VtizabowgSCQ6jCtmgkRhXwSNbBLgHqG_q0m7OVbm5WS3JS8zPjmpw>
    <xmx:V9izaUL7KFOR8_lFnKoQU0nxmd-ywMgrWHR5V_FsfH-cK2ciBY6S93Ux>
Feedback-ID: i5ea94479:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id C272E780070; Fri, 13 Mar 2026 05:26:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: AjsMaHhFAMuB
Date: Fri, 13 Mar 2026 11:26:12 +0200
From: "Ran Benita" <ran@unusedvar.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-Id: <777621b7-d204-4476-bf98-23a703250db2@app.fastmail.com>
In-Reply-To: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
References: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
Subject: [PATCH v2] man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT on client
 socket
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.15 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[unusedvar.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[unusedvar.com:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5256-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ran@unusedvar.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[unusedvar.com:+,messagingengine.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,messagingengine.com:dkim,app.fastmail.com:mid]
X-Rspamd-Queue-Id: C2C562808B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TCP_DEFER_ACCEPT has an interesting little-known effect on client
sockets. I don't think it's very useful but should still be documented.

See here for reference:
<https://elixir.bootlin.com/linux/v6.19.6/source/net/ipv4/tcp_input.c#L6781-L6796>

Signed-off-by: Ran Benita <ran@unusedvar.com>
---
Thanks for taking a look. I fixed the following:
- Change non-zero -> nonzero
- Use semantic newlines

 man/man7/tcp.7 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
index adfd6623e..80b91ffda 100644
--- a/man/man7/tcp.7
+++ b/man/man7/tcp.7
@@ -1091,6 +1091,12 @@ Allow a listener to be awakened only when data arrives on the socket.
 Takes an integer value (seconds), this can
 bound the maximum number of attempts TCP will make to
 complete the connection.
+.IP
+On a client socket, if nonzero,
+delays sending the final ACK of the three-way handshake until the socket has data to send,
+in which case the ACK is piggybacked on the first data segment,
+or a delayed-ACK timeout is reached.
+.IP
 This option should not be used in code intended to be portable.
 .TP
 .BR TCP_INFO " (since Linux 2.4)"
-- 
2.53.0

