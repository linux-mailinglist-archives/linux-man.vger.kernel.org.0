Return-Path: <linux-man+bounces-5140-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNroMlkDk2nF0wEAu9opvQ
	(envelope-from <linux-man+bounces-5140-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 12:45:29 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7EB143176
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 12:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8FC7D30162A0
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 11:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8723009DE;
	Mon, 16 Feb 2026 11:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="lpI/zxxv";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="egFiMlnn"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-b8-smtp.messagingengine.com (flow-b8-smtp.messagingengine.com [202.12.124.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BC82FD67C
	for <linux-man@vger.kernel.org>; Mon, 16 Feb 2026 11:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.143
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771242297; cv=none; b=fo76r1dU8Rkm87qAqc0q0XjeRobyY1pVi3e8D63Qbytjj/dFbxWlTl9LGe5g4Ld334i5VgO3IVD+T+9GaN+hmfpOq2yIesjOgykcH1dde0BFeF+Lr/CHL/4cV4ocCXo+8GuUI81qctN1v+kKfOikMDw8TQNiFcNFY2l8ycjKc5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771242297; c=relaxed/simple;
	bh=aGvASuYvX/F5DhMqiT+5IHsRvZfysTotBTLoES7GTrw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BLou8eQPkxYOfgBzDPOQLrAWwVL09OYzpTeCH72y0zqI93hYjeuSLyNqF4v1G1N6UDpT1RFr3ZqaNHzu7FHleAF5RJbPBpt7OzW4IekyKP5gwb91ZQL5rF3U7s55LLKPGugY+Gxif8bZjDUdDAlRsM11m++YItOW5NBj0o+K/Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=lpI/zxxv; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=egFiMlnn; arc=none smtp.client-ip=202.12.124.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.stl.internal (Postfix) with ESMTP id 086111300B57;
	Mon, 16 Feb 2026 06:44:54 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Mon, 16 Feb 2026 06:44:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1771242293;
	 x=1771245893; bh=iBJeGLi1oAQ/7Ak58UCCH3vLrVYPw/R93u4pXxPKyao=; b=
	lpI/zxxvAZHJ+gGINGRS2d63rprC7lx0L8UDFcx4fMWdGfGizPXy+yPueuI+qNxj
	nIb6zaPE8Q33P0dyERIknT9KrcuW5x9u99PJbCo3Z3AYi8jMpvNapd79YFTFiARv
	WVvFybJbay/YNosH58yF20P8YYgxxKXLzrMVgIQ4schtwddh09zxIHuyJ3RLYjNE
	A2+Ad5nb1rjzYyefQr/QHE+DsN26PUPVrGYMgDiF5H9tOCQKJ6PerX3B3wnmVnWM
	UoQDOmTaf1NnxEBpCQ3W83hkzJA2Ko9umkCbm0sBYlC3wlAqiBXGKiTnCSGol33i
	/9QNCPSASJqwQiJ1qIS3ZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1771242293; x=
	1771245893; bh=iBJeGLi1oAQ/7Ak58UCCH3vLrVYPw/R93u4pXxPKyao=; b=e
	gFiMlnnjhmh1cwLV7Vg2veO55kcEMAWXZXo0KgFCXuUSMi3p45SVPFMws37vwgnk
	mvljnJeaPtqz+VY/IiFwEWG0yifGPAT5PdqRfBhG13ZEwkzl3apTiwEq2q7K+6vE
	1R0wN3Jne8YIi62QySRe13QHGlgWTppeM1EsbQKuzjPxCeZdKLHJHAlofbUKiNCB
	QdqTF144ryusvgZJtKE8pcKNJkoOx7EP4I7BhkrKsOkfOrWKPxcxdUMcRRbdHJxm
	7oM7xhn07jiCwAzoMw3xsm6yMOojPvcxSa0L0SYi9+MUBqfuwS8ZIbCmClpr2Qn2
	McJPiPix9rq0+a+K584/g==
X-ME-Sender: <xms:NQOTae6vGGKJvHFslf5K4mt1gkPM-HqakwTjaKYEpK5axi62iBBoPQ>
    <xme:NQOTafo_xW5Z6a-w-cn8j76hw0SbScnRHgrrqf79eg1jc4Gu59IyXlBwokU5o_0Ul
    VmBBoTsak0kgcqPMNPbVI4Wyf1fUqfCPkolZyp1pJk6qEl0FMPmvIo>
X-ME-Received: <xmr:NQOTaQhVUJILbriXQ0awZvVRiA1KikwGKquwzOl-sTYTiXFEkrdiXxEE3Kspjb1_r-dJxmehLFGCOWWKCc3AITvuGy2ppcG0eI_sFAOhXrxfHGXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvudeijeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfgggtgfesthekre
    dtredtjeenucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhm
    rdhiugdrrghuqeenucggtffrrghtthgvrhhnpedvueejfedtjedvjeehhffhhedtgedtff
    eiffevteduvdevgeefieevkefggffhhfenucffohhmrghinhepfhhrvggvsghsugdrohhr
    ghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvg
    hvsehsvghthhhmrdhiugdrrghupdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhp
    ohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopeguvg
    hvsehsvghthhhmrdhiugdrrghupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghr
    rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:NQOTaZLlitavYST7zywyKy7HpTruRnz6_pA_siaQpQQTn30AecoQpQ>
    <xmx:NQOTaQD1z8_QO9ABVDtvHV7HD1_z9mmSYbaRo1FW--Xpn2WB-03Nwg>
    <xmx:NQOTaZgR2JBYgl-nSNoskZ3pIOIzIyxRTDiJlkuNpzcEuvBSkUL4uw>
    <xmx:NQOTaYkb2EHzjoiHSj78fLZ8FBKz0Cnh_Eea45CNpxjAN5U6D0cKiw>
    <xmx:NQOTaQjQyFCb495oYdLOd1yEihi-uNKrHYJTZ1gZvqysZA4wtvt7czYt>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Feb 2026 06:44:52 -0500 (EST)
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <dev@sethm.id.au>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Date: Mon, 16 Feb 2026 21:44:09 +1000
Message-ID: <cover.1771232583.git.dev@sethm.id.au>
X-Mailer: git-send-email 2.53.0.1
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sethm.id.au,reject];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5140-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@sethm.id.au,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 4F7EB143176
X-Rspamd-Action: no action

Hi Alex,

Apologies on my end also for my delayed response.  I've made some large
but hopefully beneficial changes to my email workflow – as can be seen
with the different email address.

> This patch seems to be corrupt. [...] Probably another issue with
> protonmail, I guess.

Yeah at this point I give up with ProtonMail.  I shouldn't have to fix
all their issues for them just to send in a patch.  Hopefully Fastmail
serves me better.

Anyhow, this is just the patch for mincore(2) with a few minor
adjustments on the commit message.  I won't PGP sign it yet as I first
want to ensure everything works before adding things on top.  But if all
is well, I'll continue to sign my patches with my more secure key:

E9D1 26A5 F0D4 9DF7 792B  C2E2 B4BF 4530 D39B 2D51

Let me know if it's still corrupt, and I'll ̶k̶i̶c̶k̶ ̶m̶y̶ ̶P̶C calmly figure out
what's going on.

Seth McDonald (1):
  man/man2/mincore.2: HISTORY: Update appearances of mincore(2)

 man/man2/mincore.2 | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

Range-diff against v1:
 1:  d109f3dc06e2 <  -:  ------------ man/man2/ioctl_eventpoll.2: HISTORY: ffix
 2:  55de16b213bf <  -:  ------------ man/man2/kill.2: HISTORY: Update POSIX appearances of kill(2)
 3:  17eacf0f2d3e <  -:  ------------ man/man2/link.2: HISTORY: Change order of linkat(2)
 4:  bec317b8ee88 <  -:  ------------ man/man2/link.2: HISTORY: Update POSIX appearances of link(2)
 5:  2024c82a058d <  -:  ------------ man/man2/listen.2: HISTORY: Change order
 6:  bcf9f5113f3c <  -:  ------------ man/man2/lseek.2: HISTORY: Update appearances of SEEK_{DATA,HOLE}
 7:  2dd12d136bf0 <  -:  ------------ man/man2/lseek.2: HISTORY: Update POSIX appearances of lseek(2)
 8:  817af323707e !  1:  b1b6f011a7d3 man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
    @@ Metadata
      ## Commit message ##
         man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
     
    -    mincore(2) was implemented in FreeBSD on 1995-10-21,[1] which was first
    +    mincore(2) was implemented in FreeBSD on 1995-10-21,[1] and was first
         included in the FreeBSD 2.2 release on 1997-03.[2]
     
    -    It was implemented in NetBSD on 1999-06-15,[3] which was first included
    -    in the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit message
    +    It was implemented in NetBSD on 1999-06-15,[3] and was first included in
    +    the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit message
         stating its intended inclusion in NetBSD 1.4.1).
     
    -    It was implemented in OpenBSD on 2001-03-09,[5] which was first included
    +    It was implemented in OpenBSD on 2001-03-09,[5] and was first included
         in the OpenBSD 2.9 release on 2001-06-01.[6]
     
         All other listed systems are taken at face value and rearranged in
         chronological-ish order.
     
         [1] Dyson, John (21 Oct 1995).  "Implement mincore system call."
    -    FreeBSD source tree (Git repository).
    -    <https://cgit.freebsd.org/src/commit/?id=02c04a2f6c83ee28ed637d120296d04da8f03372>
    +    FreeBSD source tree (Git repository).  Commit
    +    02c04a2f6c83ee28ed637d120296d04da8f03372.
         [2] The FreeBSD Project (29 Nov 2025).  "Prior Releases – EOL".
         <https://www.freebsd.org/releases>
         [3] Thorpe, Jason (15 Jun 1999).  "Several changes, developed and tested
 9:  8b25a256e60f <  -:  ------------ man/man2/mkdir.2: HISTORY: Change order of mkdirat(2)
10:  347e36c11666 <  -:  ------------ man/man2/mkdir.2: HISTORY: Update BSD and POSIX appearances of mkdir(2)
11:  d3da8260e1bc <  -:  ------------ man/man2/mknod.2: HISTORY: Change order of mknodat(2)
12:  b0feda20f21d <  -:  ------------ man/man2/mknod.2: HISTORY: Update POSIX appearances of mknod(2)
13:  32bd25fd3630 <  -:  ------------ man/man2/mknod.2: STANDARDS: Update
14:  67bf0c1aa133 <  -:  ------------ man/man2/mlock.2: HISTORY: Update POSIX appearances of m(un)lock(all)(2)
15:  57292b4f60c4 <  -:  ------------ man/man2/mmap.2: HISTORY: Update POSIX appearances of m(un)map(2)
16:  b8f4e6fa54e7 <  -:  ------------ man/man2/{mount_setattr,move_mount}.2: HISTORY: ffix
17:  4e1acc0f5e00 <  -:  ------------ man/man2/mprotect.2: HISTORY: Update POSIX appearances of mprotect(2)
18:  024ce32c9da5 <  -:  ------------ man/man2/msgctl.2: STANDARDS, HISTORY: Update POSIX appearances of msgctl(2)
19:  975e61bea29f <  -:  ------------ man/man2/msgget.2: STANDARDS, HISTORY: Update POSIX appearances of msgget(2)
20:  86e7c24b1428 <  -:  ------------ man/man2/msgop.2: STANDARDS, HISTORY: Update POSIX appearances of msg{rcv,snd}(2)
21:  d106bca86ec1 <  -:  ------------ man/man2/msync.2: HISTORY: Update POSIX appearances of msync(2)

base-commit: e2cc229b7551a63bb51853c849ce1a9e95946637
-- 
2.53.0.1


