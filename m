Return-Path: <linux-man+bounces-3064-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27775AC944D
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 19:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40CCC3ADD1F
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 17:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5779823644D;
	Fri, 30 May 2025 16:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b="RoFMQxtS";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="GpG1OI8d"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E563239E89
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 16:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748624376; cv=none; b=lD3JIXv+J+ZaGrYILHSyNrDOomRjR166FJo8PZqHGQ7aSmBcDUSjr+LgvZfdfFrizJqK4IbL4kzdYzZ3QzkojvXddFQ7lXFXItGebkwZAqPd4x+WAk5G4PawJNiaZIgvGUIskWnVZPVO4ic0CN19vxqfHDfjUwq7XXwy6DoTLEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748624376; c=relaxed/simple;
	bh=4VURWnhWrFBA/zz29roZ9la11Xvg4EuxRc8EwsEgjZI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aPSbjpLYO6Mbl0K9t93g0aflyK8DIJG6LsfFjrHm4vW2LOnghGZEUKynVraeYOl+BcH2m7r88PAAfc8kDHmdmmYY9eLQp3lQADmQ//C93yhAlqPaWONeLnzw/cZS2AsEpNU2KpwjxUjcELGfRg8COFLTezZIlwpAytSM0m4o/1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net; spf=pass smtp.mailfrom=locrian.net; dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b=RoFMQxtS; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=GpG1OI8d; arc=none smtp.client-ip=103.168.172.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=locrian.net
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id EA16C1140178;
	Fri, 30 May 2025 12:59:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 30 May 2025 12:59:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=locrian.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1748624372; x=1748710772; bh=Xm/eCk0rwD5k6uNbXYk3d
	e4vhv8OutfyMQGrgdAG/ww=; b=RoFMQxtSCLaoehmLyly/DCNgGl62Sc/egsCls
	T8euKoUaLL0barlNuLRmOtfNtC8w2CQee5S6vWqaKPHb8t6LoSPt47/LyV3LGl8m
	QlxUfGFMe+xNJ0rb0QxrK3x3GAAsy9gbNijEdeiNXpOfGVgVpRr0ZUe9zrB4zo/U
	9zsRK1us4T5bfOSfK0BngwX0bTWE07VLggqpSWKZgw0v80RnpQq/VFiieeErHbSC
	pvE12qRoAaYrk8IQOUTqFWiGOlQJpf4v30JOx5XyVv1xjW5o3Zf1FJ5PxgyyN6Qz
	C9fQwxp43aOZzWX6FadDxtdMLVDploU2OuA5qGUU0t48kWm1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1748624372; x=1748710772; bh=Xm/eCk0rwD5k6uNbXYk3de4vhv8OutfyMQG
	rgdAG/ww=; b=GpG1OI8drQc40fzb9u5l1crOumsAwQ5KHXs0MiPSzvag0Ua9aum
	xdQ/skjInHSZ1NQAaFhuTiBKn0HQ7tRzoJWG4sm03KGpqGhTUv5yOKiTJ57uePC8
	2DcfAjlhaWCau6X1olJG9a/zaV/y20sYfN+0xZ7sykzthJ6MPxVrPCdeAZQLVjIB
	gIlOBP3Pw6e+FDCSiFuzaPQaDl7luNUGT31FnvIFxKhz7+sFtIcoP0UYpJX8CO8L
	Sqqs2n1peey6MF8u9xmTy7s5rjllO1G7ArZvxhLCZ6F/iw+E6uZwe6vfVYuVcrVx
	QdJ6ItvYro3J92ObWua18dEsGEWfT+0g/Kg==
X-ME-Sender: <xms:9OM5aKsot76bX-I6ODCzbY5Ya8Cyn2K48H3U9UtQjuAVYKlcZsrigw>
    <xme:9OM5aPcOINIMVfZ8bIP3JBy2XTuFU3teJxX7LdkEU3F7owsfH8eC8UIY6AdGeLDkL
    5BWIAs3OXbfqhBzmA>
X-ME-Received: <xmr:9OM5aFyhLDopymys7GIPCWQtcKSTiD_2PBKiHrNgWvHMKdTfzIzdn8aIDt9dD3EytP6i-8-LVj2kfyCJCKbatFKhUS4cbKr0OqWI_uvUvxUcPt_TBaJTpSHO1Miy>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgddvleehheculddtuddrgeefvddrtd
    dtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggft
    fghnshhusghstghrihgsvgdpuffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftd
    dtnecunecujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepuegv
    nhhjrghmihhnucfrvghtvghrshhonhcuoegsvghnjhgrmhhinheslhhotghrihgrnhdrnh
    gvtheqnecuggftrfgrthhtvghrnhepjefhudfhtdeltedvueefgfdvgeeiteehffevffet
    veegiedvgedtteejleegfeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepsggvnhhjrghmihhnsehlohgtrhhirghnrdhnvghtpdhnsggprhgt
    phhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghl
    rdhorhhgpdhrtghpthhtohepsggvnhhjrghmihhnsehlohgtrhhirghnrdhnvght
X-ME-Proxy: <xmx:9OM5aFPIrKvINvpgamB4sg7SPqYHbUvY4x40ETf7N2q7ZNsfNComzQ>
    <xmx:9OM5aK-hUzeOLFtlmNX9cei3z7Jq0VU_UcqyiRfIB3-1k8lVrWZRFw>
    <xmx:9OM5aNWtGQI6Uace8-zDuzaG4746QvXISlxI1_0q5vFOVhZU8zP5eg>
    <xmx:9OM5aDfzFWDIRGQ76duGGVp6kIeD9wAgi44xM0oDA9gudhVGcCZ5Ww>
    <xmx:9OM5aPOzWrv9VzuGNaoruM9WfV32NuLsTGmcwE_ViUofU0SDFnk-HGQo>
Feedback-ID: icec1443c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 30 May 2025 12:59:32 -0400 (EDT)
From: Benjamin Peterson <benjamin@locrian.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Benjamin Peterson <benjamin@locrian.net>
Subject: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Date: Fri, 30 May 2025 09:59:30 -0700
Message-ID: <20250530165930.46548-1-benjamin@locrian.net>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW flag to fchmodat.  glibc added userspace emulation support in version 2.32, and Linux gained native support in 6.5.  See glibc.git 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d ("io: Implement lchmod using fchmodat [BZ #14578]") and linux.git 09da082b07bbae1c11d9560c8502800039aebcea ("fs: Add fchmodat2()").

Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
---
 man/man2/chmod.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index 307589481..76dbfc6b2 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -197,7 +197,6 @@ If
 .I path
 is a symbolic link, do not dereference it:
 instead operate on the link itself.
-This flag is not currently implemented.
 .P
 See
 .BR openat (2)
@@ -329,6 +328,9 @@ POSIX.1-2008.
 POSIX.1-2008.
 Linux 2.6.16,
 glibc 2.4.
+.BR AT_SYMLINK_NOFOLLOW
+glibc 2.32,
+Linux 6.5.
 .SH SEE ALSO
 .BR chmod (1),
 .BR chown (2),

Range-diff against v0:
-:  --------- > 1:  6a1171eb1 man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
-- 
2.48.1


