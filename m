Return-Path: <linux-man+bounces-56-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D587E9364
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9DBE8B207D4
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 23:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73DC41BDC4;
	Sun, 12 Nov 2023 23:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="DCHeu3/0"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9F41BDD6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 23:52:25 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEFFB1FD6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 711A63C011BED
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 15:52:24 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id epufBQ2WEj2S; Sun, 12 Nov 2023 15:52:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 285013C011BEC;
	Sun, 12 Nov 2023 15:52:24 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 285013C011BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699833144;
	bh=dAIaHVbaxRutpkRrSOYlfBQFW5e0EU9rbCcPAYCYlj4=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=DCHeu3/07Nfb1VTOC1cXoA2n+G61Pd/kaJwLlzWWXnESQ5kkCm2R7f1PpIQnniMtD
	 BylSKKclDaiDAysdjolvKMGelvHzRWuYlWo6yuaNZVbal4LdY46KVj1sr0YZCeq9yr
	 5ad7nDER+ShGCFfnRIR+R3OvHi17qLXSkv1Tqh84FrNffjqxE3MIzya47yLWe7QnA0
	 SPuSVGSl70fsGKfr4jMP1P2c3TociEot4/iJC5eX3/rLLzKGYQ49GtwxH1VgUGg9b6
	 imtSfHJZ3i87gbR789BE1sYnaaGMv58GLQZmqW7fBCdRnhXrRtJW+Dj+SUZKZ4EfGP
	 VHGCRiYad3zXA==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 1mADIBfwzKf5; Sun, 12 Nov 2023 15:52:24 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 09E573C011BEB;
	Sun, 12 Nov 2023 15:52:24 -0800 (PST)
From: Paul Eggert <eggert@cs.ucla.edu>
To: linux-man@vger.kernel.org
Cc: Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH 0/4] improvements for strncpy.3 etc
Date: Sun, 12 Nov 2023 15:52:04 -0800
Message-ID: <20231112235218.80195-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Improve man pages for strncpy and related functions.
Do this partly by using clearer terminology (e.g.,
"byte" rather than "character" which is ambiguous),
partly by being clearer about whether arguments need
to be strings, and partly by using better sample
implementations and examples.

This patch does not affect man pages for the corresponding
wide-character functions.  These functions are rarely used
and so are lower priority.

It also does not affect string_copying(7) which needs similar
work; I ran out of time for now.

Paul Eggert (4):
  * Remove man3/stpecpyx.3; no longer present.
  string.3 fixes
  strncat.3 fixes
  stpncpy(3) fixes

 man3/stpecpyx.3 |  1 -
 man3/stpncpy.3  | 82 ++++++++++++++++++++++++-------------------------
 man3/string.3   |  4 +--
 man3/strncat.3  | 54 ++++++++++++++------------------
 4 files changed, 65 insertions(+), 76 deletions(-)
 delete mode 100644 man3/stpecpyx.3

--
2.41.0


