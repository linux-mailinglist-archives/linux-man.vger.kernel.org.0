Return-Path: <linux-man+bounces-4345-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DDEC95BA6
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 06:48:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A0C0A341DFD
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 05:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9881DF26E;
	Mon,  1 Dec 2025 05:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="PJVbhRFT";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="rqGSNA3c"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b4-smtp.messagingengine.com (fhigh-b4-smtp.messagingengine.com [202.12.124.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95871DB122
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 05:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764568106; cv=none; b=tNokQ4DX3SxamshFHtp7vnJiIEkbcNghY5EA2DW0GR7mr+V0sZshUXhQzUkh8VyG5vPRAjIZeAVLZhZAFXQGctA+jHQCyYfVGkG0RO5elRpmQspw50b4lgFhQPVLFa2agdVHeYf7Pkgd25jhgHp6tgHyS/zmN54P3FtuI292a6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764568106; c=relaxed/simple;
	bh=Q+WZhS0LA0V0MWp83lAP7YPa6B6uvcAqhmrnc98pvJ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SrJjitfAfLZBDHQ2+U/oAo4WvHwHk6+AvxOXJXxE6gGNvO2zZk71GwvOwt7oXrMyZfldpti6DxQhosZXxN/RWOLvqSOH3s3AdR093Bs97gMgScZNasG4ravfMgeZbR1nUN/YIcGa0GDTy/GM35CORtPaRhTDrOjN1LCJm9IeStc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=luffy.cx; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=PJVbhRFT; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=rqGSNA3c; arc=none smtp.client-ip=202.12.124.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luffy.cx
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id BFF317A0130;
	Mon,  1 Dec 2025 00:48:23 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Mon, 01 Dec 2025 00:48:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1764568103; x=
	1764654503; bh=itASAJLzihSahuz2uVqDG7QORaRqJLNUW1hKoggfy5Q=; b=P
	JVbhRFTiuHsxJzndt/z2LLNVXD0Wttbe3UHtDTw/TmGT3twNY+GRv66z8fWZR2JA
	NVWkfwSqK+OTJIrFQlsnBG+x6ryW1utX89l8LBpgMRmuqVA2VSabXOmckWngSzXg
	aX6GdsQR1apjmL4wrOK8y6QLBvBZtNlUgB8BoX5l6cQJzWPd2zHd/bzG9Gm9TJaG
	gRWBWtJvugHgcIpjXRU/jN7b9FGuKyJwPTVaFhc0E/qKc8DJLJ2UJ/ro2Rm3Et1u
	9/+Xdnz44NxHmPb1R0Q8NeIkio9bry8FbXA86v+iMXeoje+a1I7C4o8wBSNdQl4x
	3f0N/ORoryc9z6WjFXn9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1764568103; x=1764654503; bh=i
	tASAJLzihSahuz2uVqDG7QORaRqJLNUW1hKoggfy5Q=; b=rqGSNA3cWPeSOnhAU
	0ZevNV9daLDcmnzJ6w1OHdCc0e9R8GT0/s7JV65BdlDSJutawhOqoQgPcNJPQ4B9
	n63UWAifxmHZ4It14x4G6VkLLmqS883RcFRG5+Up0w6D5BoaihFiClyG+VNGF9YS
	TXFWkaBAGUwDa0a4GAnGsGYRuDLSIYrZyckbvqeSd/P+ZUxXHbyh42ozOfd8lYVc
	Ka/Kb5epGGS5i2xO84Qy95+T9Q+OrA8Lu7ygsuUyVnLX1GuJEo+8r0z2PiR/YlBR
	7D2y2ODupiO83w/AANbzfC74Y7E2z/sZoPiND/+YvrIBipm4kBwRbtcB4g9Q/gwK
	RwaCA==
X-ME-Sender: <xms:JywtaWoDEOaCOe75t3jqAdCjE1oL2PWpALoAyOWwTsOwYpoVPsA1VA>
    <xme:JywtabiWx4TaFF0307R1lcADX9ReA8e0r80e-fzaH1ItG9dVqqIFSEJ3Ag04YcOTb
    e08mWpDnYpcUA-NZnMRmo3qD1QRDPK6l_XvwrHoNvytjo_ke3khe9O8>
X-ME-Received: <xmr:JywtaTgPF_-t1eDiGOqyRvd9gJlaXT81srsVDwhzaTcmu7zQVzvDHLwVUbWOUqwxBnV_rbni2DeX0o6mPMOwq1PDKKmeCP04F_ogM6ke>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvheeileduucetufdoteggodetrf
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
X-ME-Proxy: <xmx:JywtaRj1vnH-SsQ3sqqtYLhzyvYq4fWRr-8YWFgaPsI0LVIBuo2GHQ>
    <xmx:JywtaTKot_VepCi-_kJ9EY56szicmtcoS2amLPWLcx6cm2Vis41LBQ>
    <xmx:JywtaQHjYw598j9rBWedR8hzQk-ZyggMO_9ADSEf_U2MDqfFAWXFHg>
    <xmx:JywtaXTVn1e-F-0xnJ1AIvsoIP9M9o-4Ug1djZvhMcUMiHHIAnWIvg>
    <xmx:Jywtaf4haxcWreE0sWdM3Jkgkgqj7ohDcIF8P4ZV3sgDDZR2kiUJmSir>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Dec 2025 00:48:22 -0500 (EST)
Received: by neo.luffy.cx (Postfix, from userid 500)
	id EF0181DC; Mon, 01 Dec 2025 06:48:20 +0100 (CET)
From: Vincent Bernat <vincent@bernat.ch>
To: Alejandro Colomar <alx@kernel.org>,
	Craig Gallek <kraig@google.com>,
	linux-man@vger.kernel.org,
	Martin KaFai Lau <kafai@fb.com>
Cc: Vincent Bernat <vincent@bernat.ch>
Subject: [PATCH v2] man/man7/socket.7: fix documentation for SO_ATTACH_REUSEPORT_EBPF
Date: Mon,  1 Dec 2025 06:44:23 +0100
Message-ID: <20251201054800.3652822-1-vincent@bernat.ch>
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
 man/man7/socket.7 | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/man/man7/socket.7 b/man/man7/socket.7
index b4d58a23d5da..426cf63a7d0b 100644
--- a/man/man7/socket.7
+++ b/man/man7/socket.7
@@ -354,20 +354,32 @@ the sockets in the reuseport group (that is, all sockets which have
 .B SO_REUSEPORT
 set and are using the same local address to receive packets).
 .IP
-The BPF program must return an index between 0 and N\-1 representing
-the socket which should receive the packet
-(where N is the number of sockets in the group).
-If the BPF program returns an invalid index,
-socket selection will fall back to the plain
+The classic BPF program must return an index between 0 and N\-1
+representing the socket which should receive the packet (where N is the
+number of sockets in the group). If the BPF program returns an invalid
+index, socket selection will fall back to the plain
 .B SO_REUSEPORT
-mechanism.
-.IP
-Sockets are numbered in the order in which they are added to the group
-(that is, the order of
+mechanism. Sockets are numbered in the order in which they are added to
+the group (that is, the order of
 .BR bind (2)
 calls for UDP sockets or the order of
 .BR listen (2)
 calls for TCP sockets).
+.IP
+The extended BPF program can be of two types:
+.B BPF_PROG_TYPE_SOCKET_FILTER
+or
+.BR BPF_PROG_TYPE_SK_REUSEPORT .
+In the first case, the extended BPF program must return an index between
+0 and N\-1, like a classic BPF program. In the second case, it must
+return an action
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
@@ -386,7 +398,9 @@ takes the same argument type as
 .BR SO_ATTACH_BPF .
 .IP
 UDP support for this feature is available since Linux 4.5;
-TCP support is available since Linux 4.6.
+TCP support is available since Linux 4.6; support for
+.B BPF_PROG_TYPE_SK_REUSEPORT
+program type is available since Linux 4.19.
 .TP
 .B SO_BINDTODEVICE
 Bind this socket to a particular device like \[lq]eth0\[rq],
-- 
2.51.0


