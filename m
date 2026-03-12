Return-Path: <linux-man+bounces-5253-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /ShdH3g9s2kMTgAAu9opvQ
	(envelope-from <linux-man+bounces-5253-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 23:26:00 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8827AE76
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 23:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A434A30B197F
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2026 22:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F361B3B27C7;
	Thu, 12 Mar 2026 22:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unusedvar.com header.i=@unusedvar.com header.b="wlg3JRb+";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="xTqlpwhm"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b8-smtp.messagingengine.com (fhigh-b8-smtp.messagingengine.com [202.12.124.159])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CCC3233E8
	for <linux-man@vger.kernel.org>; Thu, 12 Mar 2026 22:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.159
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773354356; cv=none; b=riCOog5QejMWxQSGzzWrf7qoEr5ZfnSCBHQruKAz0rHGocb7oVYtkKvQVjItlScQ3A0KqQk2Swe7UNnt8emHQ3VIf2XiS1pEPAbXSOZbq432Nhabj/TuSqI8GxWfjpGupmIY30pjHEU75yJgZpx/r171gTYHDIbMINorwdZOv4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773354356; c=relaxed/simple;
	bh=vT9ZXcTGLrAPdX5tYeeSOmtJK1GCldyTo6YcmpldJ3s=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:Subject:Content-Type; b=Y0JdZgRgA8/8T4mX5SK7ua+UZ2Po2DoSoZjllLYMYF7CCId4wtCWjXJ/s5H51e4y/6JMvyp+pWs92+uBiJzdkd+TY2d7UoId936yxYEZ7uiJrwnI3jT3YZ7daMLsjw2yRGfJfXQAn72/ydYa/RI2vGXUMUNw3K9/c0jIUN2mqRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=unusedvar.com; spf=pass smtp.mailfrom=unusedvar.com; dkim=pass (2048-bit key) header.d=unusedvar.com header.i=@unusedvar.com header.b=wlg3JRb+; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=xTqlpwhm; arc=none smtp.client-ip=202.12.124.159
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=unusedvar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unusedvar.com
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 116B07A016F;
	Thu, 12 Mar 2026 18:25:53 -0400 (EDT)
Received: from phl-imap-15 ([10.202.2.104])
  by phl-compute-04.internal (MEProxy); Thu, 12 Mar 2026 18:25:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unusedvar.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm2; t=1773354353; x=
	1773440753; bh=mHtshExxXxx65i8W3xfognzVjmNpYszqRpJ6TzDlCDg=; b=w
	lg3JRb+Lw8H2bJUMGCtt8zBcW6KHBxwUNCB+rbOc76nYIW1+CVDl5UFAy0DQwQpS
	CSbv2EoQ38xHlGgq/kaRlgxpolUMH7hqGuXSfTNbyDqCu6oa98PJE+OChZeiR992
	+cbPdHQhhchjkBtBcb+9YbBXSuh7l7x7+dJVVTPGQsF3dV2q2cTd2we1lYxj+Vjb
	No/yJvWc8wftKt2NVpZJQ7+1V5uMw/Y3YLB+82u/FkSrEgYU4zhLiZ3Lq00C/GKG
	9RfpDR+l/tX9t6cVg21wABTPiIbo/rumF/eRptUK+lHS5K4rVw7nZ+bA2ovZDHK7
	84zNQxUlOaTHONVTFmFiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1773354353; x=1773440753; bh=mHtshExxXxx65i8W3xfognzVjmNp
	YszqRpJ6TzDlCDg=; b=xTqlpwhmDPpPz6oekOvXkT1LuHNaTH1gQXXVmrBuoCJA
	MOhqdIVXK+R5PgQ3LhKXuUhcd9oGjcD+SCx3pIkwns8T6mqxkUK1HJJ06Gho9SMt
	Z1qVE173Oh3+dHNM8rq8uX6/ec6BEdURb9eFoIQasnB6wh0vvwGn8t0YzEdZiOnf
	pszT0tW6ZhEwwVHuQx1w8xk9/ck24olearKk6FKHtKa/xlVL8W8OINcqUrkiE3Jd
	hEHYGOCQm41SYLiQD/bLV0AxmWf3Iq9ASq/dW0Z8KcNd5cistWvYbhVEviwbSwr3
	bAP64y314Pe8R9q99FyHVO3wihokmT+4TGTv3zkefA==
X-ME-Sender: <xms:cT2zaVJNRiLMREdEq91JQfJkxnf4uYafOJpXz2Y1JCWCT0w0546Xhw>
    <xme:cT2zab9rjQBYCnVPvW3K9VplUeczRwOu_sMwKd07gGiKeQgxguanskYXcGDSVJ6x6
    l96QWGfmoF0h2l4v9ZDtlUzWzkaVpU98dBRRLqkIDKxTCX7AFekuvg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvkeejleekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvvefkufgtgfesthejredtre
    dttdenucfhrhhomhepfdftrghnuceuvghnihhtrgdfuceorhgrnhesuhhnuhhsvgguvhgr
    rhdrtghomheqnecuggftrfgrthhtvghrnhepheeifedvledvkeehfeejfedvheevhefggf
    evhfduvdffvdeliefhgefgiefgieeunecuffhomhgrihhnpegsohhothhlihhnrdgtohhm
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhgrnh
    esuhhnuhhsvgguvhgrrhdrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhht
    phhouhhtpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplh
    hinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:cT2zaf2s5gTLJagE0ivYBxk8MH80Zl3DufxRaakW1vO6OcZCy6uQgQ>
    <xmx:cT2zacA-uVyEVW6XScUQW9xftFobns43qxk8pciRVz8-LdG4oppzgA>
    <xmx:cT2zaXe1Biwd8f-ei-mDF-GLUXhLvzQeN8BJ3kt6omycpuCaQYdBmg>
    <xmx:cT2zaRgZMN-CUSOlXhfuLSXRh47rROg8Ixff65oOB2eUF14fIJgijw>
    <xmx:cT2zaaBqeV4We5W2I_Mep6ztrIaD8g-Gww0tzx1L_3JX2jxdmLhTXIgl>
Feedback-ID: i5ea94479:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id A5D5D780075; Thu, 12 Mar 2026 18:25:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 13 Mar 2026 00:25:53 +0200
From: "Ran Benita" <ran@unusedvar.com>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-Id: <18e37f7f-21e9-4e8d-bef3-2adde5980bc2@app.fastmail.com>
Subject: man/man7/tcp.7: Document effect of TCP_DEFER_ACCEPT on clientsocket
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.15 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[unusedvar.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[unusedvar.com:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5253-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ran@unusedvar.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[unusedvar.com:+,messagingengine.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,unusedvar.com:dkim,unusedvar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 90E8827AE76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TCP_DEFER_ACCEPT has an interesting little-known effect on client
sockets. I don't think it's very useful but should still be documented.

See here for reference:
<https://elixir.bootlin.com/linux/v6.19.6/source/net/ipv4/tcp_input.c#L6781-L6796>

Signed-off-by: Ran Benita <ran@unusedvar.com>
---
man/man7/tcp.7 | 5 +++++
1 file changed, 5 insertions(+)

diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
index adfd6623e..85f6c631c 100644
--- a/man/man7/tcp.7
+++ b/man/man7/tcp.7
@@ -1091,6 +1091,11 @@ Allow a listener to be awakened only when data arrives on the socket.
Takes an integer value (seconds), this can
bound the maximum number of attempts TCP will make to
complete the connection.
+.IP
+On a client socket, if non-zero, delays sending the final ACK of the three-way
+handshake until the socket has data to send, in which case the ACK is
+piggybacked on the first data segment, or a delayed-ACK timeout is reached.
+.IP
This option should not be used in code intended to be portable.
.TP
.BR TCP_INFO " (since Linux 2.4)"
-- 
2.53.0

