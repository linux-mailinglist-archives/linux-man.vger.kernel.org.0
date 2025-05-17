Return-Path: <linux-man+bounces-2937-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1058AABA9FF
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 14:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2CFE4A1B3B
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 12:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ADD4175D53;
	Sat, 17 May 2025 12:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+XNgiFU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB22B2DA
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 12:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747484177; cv=none; b=o3roNoXRXbcrW0899765KUiV9sAfHQToeu9m0zb5T+gHIGP2tsxvjtG1MzEdBfw9TcGrhqGI0U1YfyaWzFHObgaB/dnPLm8TtH6JE5N65vtX8yTzGDuTGS16/M8CaVGjo0bmzWBqGyKd80v3bfpqKfoJ7Myvz8en6veNZD53MF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747484177; c=relaxed/simple;
	bh=TCir7n7XdDE75nNVk8vVW6126WFMcdcxMLWQjdXTnNc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ijjOB7IpcuilqqLqM411kuYGSgJ4NdK/Tlbjy7k5ppCib0LwG9cf9zI12wzTHDCsuKEm1QdHk3NhgiXm9wOEVRuGqlGg13s/PVsNrk+EOQQ6Ga5DYo2yROedOvsJ/Y14DCTkSPC3GlqMIg2c1pjL8QeDU8r/vNgLFerii6mBfiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+XNgiFU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F415C4CEE3;
	Sat, 17 May 2025 12:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747484176;
	bh=TCir7n7XdDE75nNVk8vVW6126WFMcdcxMLWQjdXTnNc=;
	h=Date:From:To:Cc:Subject:From;
	b=J+XNgiFUwoigLs4FYKi82UeKfKf5JNK/F8JwSyBzdMNlPwP80hbqi029hceVEDwFN
	 uBOy80YBG3TC3fpvzoMJb1erSvrPEwxwUbloKTVoEWEeuwXnhPDpTYczXKBCFpC2Xj
	 GalIZ1fqr6uJ5PEmZOMALydguTvBI2FWPoGm1qXPbz0iBQnZrjWamr/M3/9bXNVxiV
	 O5yhEM23H/NCi6gXtnKu+BdKjT5sn+Ya3YIZDqv1SE/atf3KvPRhAfIJvPPbQ1o7wp
	 dCVfwO//6HLHpdb8KNs+kVFxtt33zl4SAN1vcEBVm94E35tUyGyjvlPt5rAkahQ+39
	 jJIovL1B2v3Dg==
Date: Sat, 17 May 2025 14:16:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1 0/2] Document _Fork(3); update fork(2) for POSIX.1-2024
Message-ID: <cover.1747484082.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi!

I just realized about the existence of _Fork().  I've written a page
documenting it, and updated the existing documentation about fork(2).

Please check.


Have a lovely day!
Alex


Alejandro Colomar (2):
  man/man3/_Fork.3: Document _Fork()
  man/: Update references to fork(2), and add references to _Fork(3),
    for POSIX.1-2024

 man/man2/fork.2          |  7 ++++++-
 man/man2/vfork.2         |  1 +
 man/man3/_Fork.3         | 29 +++++++++++++++++++++++++++++
 man/man7/signal-safety.7 | 14 +-------------
 4 files changed, 37 insertions(+), 14 deletions(-)
 create mode 100644 man/man3/_Fork.3

Range-diff against v0:
-:  --------- > 1:  a90d0f4c8 man/man3/_Fork.3: Document _Fork()
-:  --------- > 2:  2e5dd2415 man/: Update references to fork(2), and add references to _Fork(3), for POSIX.1-2024
-- 
2.49.0


