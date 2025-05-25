Return-Path: <linux-man+bounces-3013-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C120AC33DC
	for <lists+linux-man@lfdr.de>; Sun, 25 May 2025 12:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33A777A3857
	for <lists+linux-man@lfdr.de>; Sun, 25 May 2025 10:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0854818DB35;
	Sun, 25 May 2025 10:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSt1gpIM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0DC72605
	for <linux-man@vger.kernel.org>; Sun, 25 May 2025 10:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748169228; cv=none; b=u2hkL+5AxaPsiswZ1b/GCMT89h5nDXEwcUXt50ikx72S7SMDwI0Z26d9ec/NrONX/7dE2FbibWLHn2VQ+TrHMHPzMbA2mENzKDlDNut5CmBc7UrF3Si6bbTw+FnEv64Awgu1dwVIH5ighRTCedCw03jdmlyfZljw7rKqLGMRvcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748169228; c=relaxed/simple;
	bh=ZMzH5GtlHb2YA1VNE5HEVQyiHg8KSrfV95e1ah7xp28=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=b4VC+P3KAP9QRAFHpXkwglXla716fiGcPyXX5HtOCIKPCDAYpMXR9+Fd/yknBh6Akc6fBZifwRFCHXvJtcTM4aE3fXjOau0knksbjq9KOcwc/2dL0VCymD+Bins7jO25j3AvjQ8kj7rmIEG+arZcgmfp+aRhU8qws+HCDO5/Mj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSt1gpIM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00EE4C4CEEE;
	Sun, 25 May 2025 10:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748169228;
	bh=ZMzH5GtlHb2YA1VNE5HEVQyiHg8KSrfV95e1ah7xp28=;
	h=Date:From:To:Subject:From;
	b=LSt1gpIM6MqUtR4HfWqP1pKDFxUI08U5LcpYCnoAlzmnDvTUsMkKnJclUMN4/lm41
	 fp8Vq3YnIYoIyJcz9gE8cPiLcNVQrF9Gnb0yM3I/8grz/11/s3wHxw2Ku4O4sjwX7g
	 5UhRMGlqImkOuiCWK05ijXefAPw9HjEgy6y3aWUiawd6ZRNq1wIQzPWJzt5cd1dduR
	 37u1jnHokfj0uou8v8lzrB05Chr+CEQ6QEYVRV6S/S+fUsvmXAztdP869sfoTSxwHu
	 ywl8cW3GTLYlgyzpzi4ERa/8Jd0diV1DHd9zq3YTIRPD75vjPM+rBwxmifBn0qx0sg
	 n518NeIki4wtQ==
Received: by pali.im (Postfix)
	id 148BA74C; Sun, 25 May 2025 12:33:45 +0200 (CEST)
Date: Sun, 25 May 2025 12:33:44 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Improving inode number documentation
Message-ID: <20250525103344.fe27ugiytfyoadz5@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Hello Alex,

I would like to ask you, could you improve documentation about inode
numbers returned by readdir()/getdents() and stat()/statx() functions?

https://man7.org/linux/man-pages/man3/readdir.3.html
https://man7.org/linux/man-pages/man2/readdir.2.html
https://man7.org/linux/man-pages/man2/getdents.2.html
https://man7.org/linux/man-pages/man2/stat.2.html
https://man7.org/linux/man-pages/man2/statx.2.html
https://man7.org/linux/man-pages/man3/stat.3type.html
https://man7.org/linux/man-pages/man7/inode.7.html

The missing information in those documentations is the fact that the
dirent.d_ino does not have to be same as stat.st_ino/statx.stx_ino for
the same file or dir.

stat.st_ino number belongs to the stat.st_dev but dirent.d_ino belongs
to the st_dev of the directory on which was called opendir().

So for the mount points these two numbers are different. readdir()
returns the inode number of the underlying directory (which belongs to
the parent filesystem), but the stat() returns the inode number of the
root directory of the upper/mounted filesystem.

And I think same applies for mount-binded files, not just for mounted
directories.

Note that this Linux behavior (when readdir and stat returns different
inode numbers) is in POSIX readdir() specification called "historical"
and is described in RATIONALE section of POSIX readdir:
https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html

Therefore it would be nice to mention the fact in Linux readdir(3)
documentation, that Linux conforms to POSIX "historical implementation".

Pali

