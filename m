Return-Path: <linux-man+bounces-4354-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFAEC98EE2
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 20:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00EFB3A2622
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 19:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77ADE260578;
	Mon,  1 Dec 2025 19:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="SJkyGOYB";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hPq7YqZ0"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9B925EFBB
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 19:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764619064; cv=none; b=W84FWMwmpqJuDGaveyBV6kTKNQuBUa2vTNFTL6mDUyX4RABhIRdDxwEqgNb0eiQ+AOcsmFF8fisNd97sxN8sngEJ2bFzQiO9jkfusTyRa2g9gGvMowF8PzWtPkBDY54WZrnhPyU3V4+JWqBzUaETcdEV9Mvp2i6weyG86jnjZgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764619064; c=relaxed/simple;
	bh=43K83QTUXPV8nZCAdOBfQqLpeDHpiazl4sGznH5Q1y0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JQ6895HUlMVfR4IgbOQ/3Z/5iHJW/0jmAMuBmcUp9E/12U5+xfnxOipZhH7TrXqk71SoT1mJVsy63xm9WjUK8slp18SJi3jtLpm+Dy8+aTJZLGIuXJSkARm3RP//bOFNlYrtS7WvMCeUPN0CaBLDnfjdihvjsBxsVgVX3uiS3s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=luffy.cx; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=SJkyGOYB; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=hPq7YqZ0; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luffy.cx
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 010C07A01CE;
	Mon,  1 Dec 2025 14:57:40 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 01 Dec 2025 14:57:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1764619060; x=
	1764705460; bh=6fTcc3P42UdS7RFYh8Fj45c7AROggpT65XwolsnQBlg=; b=S
	JkyGOYBIKYG1ZjcVzcbX0+s5+Asxu04LvCMuavglzwnv4U2DejL0+WE2IU2u4/pj
	+JrL/21Ju1BKKDTz5uGOIzz7/TV6cba6qiGNZ9xPcDlPlTQNl8F2bZS45MEl/H3i
	MQZ1KdoongrAg+KBdk5+febobYEm+V/j7GC8Q/Q+mQc216fXHgMLQbbbf/m3c+bp
	tYryQTN92RKJW7hGNkKUDuj0Y+Nz41tLjW2XkxCkqQusowyeWCu8r4nprqybj5AY
	XgvzrsziCkb06CgSdXUgA9DZ/2wU+KKFKk5fdj+EIcoad4faE6PNFIzD7ODDy0iw
	cDXgueB+4ji0F3HebIDyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1764619060; x=1764705460; bh=6
	fTcc3P42UdS7RFYh8Fj45c7AROggpT65XwolsnQBlg=; b=hPq7YqZ0AoIhhjeeT
	GNzRPVC/5QJt2wZ93V84DioLnCGsPvdE5BmiPgdjLs98ZAnHnDiHtACyMWHxlymQ
	bxZ4fOMXcJ4qU9mATtLuzZKM2kO94VvEksLAzkppAsOsAXiWCJp/pPrS9G3P/WrN
	sCIMjTshgM9cyUTsIJm6ryxlzRw5Nt88CGvo8ZOf4xJ4QqX4ktavKTx924h9hzom
	V3GCkF+BcEhSn9ad8lly8+iFMSjCWChHluRXhlS56zMMEbzxGCZ8h3Veajdl7/ov
	/gFT8OVArfrOP5p8q8AY6IPkb6X/OtBREjeKsxD0xcW3K9mpIQp5UfwWuCwUn8nX
	6DO2Q==
X-ME-Sender: <xms:NPMtaaXyQQy6iMINZX9CY73wHAHNyBhoknsBKk6HqlLuzHd4KXYMwQ>
    <xme:NPMtadd0XVlBJMGHd_ZA-ksL9sfyUaZQZLHZc-BsrXaazD0lLfFH9dpheB_kjBMoY
    ymMwUMU69Ob3S_elZ04icOQNmZ313bP6ZTkFziL--0LFqa3Kc4woQ>
X-ME-Received: <xmr:NPMtaWt8Cs-MPqMrhLFHm6-8dDYz4wxLx17Lhxk2KisbpRqTnMP2D4O7Afuo3Xz6kF0ZKZZGiOFTyKtZdBcjEWAKACyZ_qrQGMTTL68H>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvheekieduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepgghinhgtvghn
    thcuuegvrhhnrghtuceovhhinhgtvghnthessggvrhhnrghtrdgthheqnecuggftrfgrth
    htvghrnhepfedvgeegledtvdegiefftdetheffleehteethfefvdeguedvleeljeduleej
    tddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsg
    gvrhhnrghtsehluhhffhihrdgtgidpnhgspghrtghpthhtohephedpmhhouggvpehsmhht
    phhouhhtpdhrtghpthhtohepvhhinhgtvghnthessggvrhhnrghtrdgthhdprhgtphhtth
    hopehkrghfrghisehfsgdrtghomhdprhgtphhtthhopehkrhgrihhgsehgohhoghhlvgdr
    tghomhdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlih
    hnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:NPMtac9FhJU_Kh1vLC_r2H-f3fagZFWqg0WHspvgicw-JeHvHOSi_g>
    <xmx:NPMtaR1w85HlGYdDKOsMfCIOUHZjFRuH4wMB8etTGVvOJ0STaMebVw>
    <xmx:NPMtaRAkGWBw0rjpqADw_VsSMKDV0UJEeFFlcjTLTtaBdnK8bim27g>
    <xmx:NPMtadcCFPaGXw65CtyTTRA1KgaWSUo8NRPfXZscebhxsjFn2vOG4w>
    <xmx:NPMtaZUhj_1zMp84VF9fUi-XB0jvktsEk3VPd3OEYMKpWXQJr5NRH-H9>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Dec 2025 14:57:40 -0500 (EST)
Received: by neo.luffy.cx (Postfix, from userid 500)
	id 1B8FD3D7; Mon, 01 Dec 2025 20:57:38 +0100 (CET)
From: Vincent Bernat <vincent@bernat.ch>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org,
	Martin KaFai Lau <kafai@fb.com>
Cc: Vincent Bernat <vincent@bernat.ch>,
	Craig Gallek <kraig@google.com>
Subject: [PATCH v3] man/man7/socket.7: fix documentation for SO_ATTACH_REUSEPORT_EBPF
Date: Mon,  1 Dec 2025 20:57:15 +0100
Message-ID: <20251201195726.3669864-1-vincent@bernat.ch>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251027131711.186482-1-vincent@bernat.ch>
References: <20251027131711.186482-1-vincent@bernat.ch>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When using eBPF, there are two possible cases depending on the program
type. Only the first case was described. In the second case, the program
should not return an index, but a decision (SK_PASS/SK_DROP). The socket
should be selected using the sk_select_reuseport helper.

Cc: Craig Gallek <kraig@google.com>
Signed-off-by: Vincent Bernat <vincent@bernat.ch>
---
 man/man7/socket.7 | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/man/man7/socket.7 b/man/man7/socket.7
index b4d58a23d5da..e4e85dc9345d 100644
--- a/man/man7/socket.7
+++ b/man/man7/socket.7
@@ -354,20 +354,34 @@ the sockets in the reuseport group (that is, all sockets which have
 .B SO_REUSEPORT
 set and are using the same local address to receive packets).
 .IP
-The BPF program must return an index between 0 and N\-1 representing
+The classic BPF program must return an index between 0 and N\-1 representing
 the socket which should receive the packet
 (where N is the number of sockets in the group).
 If the BPF program returns an invalid index,
 socket selection will fall back to the plain
 .B SO_REUSEPORT
 mechanism.
-.IP
 Sockets are numbered in the order in which they are added to the group
 (that is, the order of
 .BR bind (2)
 calls for UDP sockets or the order of
 .BR listen (2)
 calls for TCP sockets).
+.IP
+The extended BPF program can be of two types:
+.B BPF_PROG_TYPE_SOCKET_FILTER
+or
+.BR BPF_PROG_TYPE_SK_REUSEPORT .
+In the first case, the extended BPF program must return an index between 0 and N\-1,
+like a classic BPF program.
+In the second case, it must return an action
+.RB ( SK_PASS
+or
+.BR SK_DROP )
+and the
+.B bpf_sk_select_reuseport
+helper can be used to select the socket which should receive the packet.
+.IP
 New sockets added to a reuseport group will inherit the BPF program.
 When a socket is removed from a reuseport group (via
 .BR close (2)),
@@ -386,7 +400,10 @@ takes the same argument type as
 .BR SO_ATTACH_BPF .
 .IP
 UDP support for this feature is available since Linux 4.5;
-TCP support is available since Linux 4.6.
+TCP support is available since Linux 4.6;
+support for
+.B BPF_PROG_TYPE_SK_REUSEPORT
+program type is available since Linux 4.19.
 .TP
 .B SO_BINDTODEVICE
 Bind this socket to a particular device like \[lq]eth0\[rq],
-- 
2.51.0


