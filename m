Return-Path: <linux-man+bounces-3319-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B60B1B86D
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 361AB4E071A
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38DB28BABC;
	Tue,  5 Aug 2025 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="d0YxmF6L"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EAA72630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411183; cv=none; b=ZM/2dspIACeJVtbGCAIGEiORO4d8wngAMKEbmlJgRCPzX821gI7xcf0tCiPTue4wvlqkRoXbXYOdopSEMaDxu/srKkDZ7MkXYCQqNyocI3WW3YCbVGO9R4Pl0XiZ7YkByUB1lFhY9TWYMph+sSO9vigRasNpXtTZeD5IR9i+IuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411183; c=relaxed/simple;
	bh=6PnhgoWUl7BXuPZlY7jTKchGncsIatf8H99KMLdi68Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tEQRVPBcvvmvvf3cxZC5N1ayDPDZRkYCdU4rOsaDesm0z/Hvd2cgitTcX7Ua4cF/6gGRVAV8XqLPEf3oDpP2aF9/9KZlSz1j3hbcSeW69uwz8RBGIbABL1Rktkh+gkSojg0Nt4xThF5Dta+k4NCEaYtQFgAsdvPuiFWxbW1Wvt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=d0YxmF6L; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4bxJhT4Bbmz9t6N;
	Tue,  5 Aug 2025 18:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WEhgzro1oTZNM2JIg/DnbNtQ6soDhl6Tm/QX4BndLu8=;
	b=d0YxmF6LPQYQGLpdYn66B20RPstN1E5SC6xgO0+EK5bs49N5tKmUTG2bjVxmm/gP1PKKFm
	1SxMiptZdjAIpeTuFDvgLfGzjiFpYDbRVAv2qaTEHjzQBVW8QIYB/iQDpYbimr9tx5aiP2
	Uw7tFbvvT/i3FXrYjb/K2tqFxSfm7M5RpHx5ac71XPqCC2iJHOwbVuoU/IHyLWIVDFuB7V
	KTXueMw4BfY7bzd3QfmlYw10Y9tvjcHMBVizD9rjDu6dphctvgKegmaXs1V4YLCEVTmyHd
	j+LPScJRo8rDhq7FnIIZps5Ix9iX6m4QpexdqkXvoW3QtIjVBJVCHuSDogHQjQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 00/10] man2: add man pages for 'new' mount API
Date: Wed, 06 Aug 2025 02:25:45 +1000
Message-Id: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIkwkmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCwMj3bzUct3c/NK8Et3EgkxdE2OzlCRLC5M0E2MjJaCegqLUtMwKsHn
 RsbW1AF36cE9fAAAA
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4315; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=6PnhgoWUl7BXuPZlY7jTKchGncsIatf8H99KMLdi68Q=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMlggun7C3Dv/+RSqbFTPfAm7o/doZ+KcvcZK9z33z
 C86fvXc5o5SFgYxLgZZMUWWbX6eoZvmL76S/GklG8wcViaQIQxcnAIwkYICRoZjiy5yd+tV3z3o
 fU8myfsNc22QW+X0FKsdP++uiVg56a43I8PFY79vBRwrMp/ckbfTYOcV41sSZu+9z8UHv/0aJb9
 z5j0WAA==
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bxJhT4Bbmz9t6N

Back in 2019, the new mount API was merged into mainline[1]. David Howells
then set about writing man pages for these new APIs, and sent some
patches back in 2020[2]. Unfortunately, these patches were never merged,
which meant that these APIs were practically undocumented for many
years -- arguably this may have been a contributing factor to the
relatively slow adoption of these new (far better) APIs. I have often
discovered that many folks are unaware of the read(2)-based message
retrieval interface provided by filesystem context file descriptors.

In 2024, Christian Brauner set aside some time to provide some
documentation of these new APIs and so adapted David Howell's original
man pages into the easier-to-edit Markdown format and published them on
GitHub[3]. These have been maintained since, including updated
information on new features added since David Howells's 2020 draft pages
(such as MOVE_MOUNT_BENEATH).

While this was a welcome improvement to the previous status quo (that
had lasted over 6 years), speaking personally my experience is that not
having access to these man pages from the terminal has been a fairly
common painpoint.

So, this is a modern version of the man pages for these APIs, in the hopes
that we can finally (7 years later) get proper documentation for these
APIs in the man-pages project.

One important thing to note is that most of these were re-written by me,
with very minimal copying from the versions available from Christian[2].
The reasons for this are two-fold:

 * Both Howells's original version and Christian's maintained versions
   contain crucial mistakes that I have been bitten by in the past (the
   most obvious being that all of these APIs were merged in Linux 5.2,
   but the man pages all claim they were merged in different versions.)

 * As the man pages appear to have been written from Howells's
   perspective while implementing them, some of the wording is a little
   too tied to the implementation (or appears to describe features that
   don't really exist in the merged versions of these APIs).

I decided that the best way to resolve these issues is to rewrite them
from the perspective of an actual user of these APIs (me), and check
that we do not repeat the mistakes I found in the originals.

I have also done my best to resolve the issues raised by Michael Kerrisk
on the original patchset sent by Howells[1].

In addition, I have also included a man page for open_tree_attr(2) (as a
subsection of the new open_tree(2) man page), which was merged in Linux
6.15.

[1]: https://lore.kernel.org/all/20190507204921.GL23075@ZenIV.linux.org.uk/
[2]: https://lore.kernel.org/linux-man/159680892602.29015.6551860260436544999.stgit@warthog.procyon.org.uk/
[3]: https://github.com/brauner/man-pages-md

Co-developed-by: David Howells <dhowells@redhat.com>
Co-developed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
Aleksa Sarai (10):
      mount_setattr.2: document glibc >= 2.36 syscall wrappers
      mount_setattr.2: move mount_attr struct to mount_attr.2type
      fsopen.2: document 'new' mount api
      fspick.2: document 'new' mount api
      fsconfig.2: document 'new' mount api
      fsmount.2: document 'new' mount api
      move_mount.2: document 'new' mount api
      open_tree.2: document 'new' mount api
      mount_setattr.2: mirror opening sentence from fsopen(2)
      open_tree_attr.2, open_tree.2: document new open_tree_attr() api

 man/man2/fsconfig.2           | 446 +++++++++++++++++++++++++++++++++++++++
 man/man2/fsmount.2            | 185 +++++++++++++++++
 man/man2/fsopen.2             | 275 ++++++++++++++++++++++++
 man/man2/fspick.2             | 274 ++++++++++++++++++++++++
 man/man2/mount_setattr.2      |  67 ++----
 man/man2/move_mount.2         | 470 ++++++++++++++++++++++++++++++++++++++++++
 man/man2/open_tree.2          | 440 +++++++++++++++++++++++++++++++++++++++
 man/man2/open_tree_attr.2     |   1 +
 man/man2type/mount_attr.2type |  58 ++++++
 9 files changed, 2166 insertions(+), 50 deletions(-)
---
base-commit: f23e8249a6dcf695d38055483802779c36aedbba
change-id: 20250802-new-mount-api-436db984f432

Best regards,
-- 
Aleksa Sarai <cyphar@cyphar.com>


