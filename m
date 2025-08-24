Return-Path: <linux-man+bounces-3587-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 467F1B330A0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2E087A5F09
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4482DE6F6;
	Sun, 24 Aug 2025 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="b3Y4okS4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740F2DECBC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046936; cv=none; b=psr0RZS6tDDXmAcYwK1CsxYL4u7Ym8EnelxhWSh7aHhGdvNJuQZ9Ok0ap4XZar51aLq2y7yqLke1RjzT1LOSmolPgY3kOkOkIHHOjyB3b6QpWoBWmOn6POE6qbNC6hHkgSkXWNiWTH7zfSgc7qc0d1KG/+SLOVXVHMM2LLWdyFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046936; c=relaxed/simple;
	bh=EXsKlyQ+CMFPhd4jlRGbXeGzpreVfAX+uYpfowY6Tsk=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=qQh70U/jKIy5WO1RVqCwovVx7epDfDWfgiD9ett3Fd/is6MUBYt5ifl7d6lsF15MGu1uHjZb+Wo7NxbzrOkX0jeZTRmjEJ8GE5hcUf/r8gajeX8q9ZQ1HoUGJKl2pfUyu7wb6pPsOoAHIvsfDCfWH+8DxB+/WKfUsW4MxwWEElo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=b3Y4okS4; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=AXY2sfd3mAK9gvWR5MzfS7KV5nPl5TrnEHju146GpPg=;
	h=Date:From:To:Cc:Subject;
	b=b3Y4okS4vdL3qvo7vKrsz6QQSrdcFwi6OXNyWpG15GjpD4+lbbKPil9O0EnrxE2U2
	 9A+aQ5uuz2xBmPUOqVHHxaoijurV7+nZqhp8wsug7bSslKmAlqv6bwQDk9vdfkddav
	 ticnbiv4c1tpweNjQvTbs+eUaHg9qpjVRs4e1XzbqPByva0PZqpQtIPr+BrjqNICes
	 YGhUsnMZD+xfmTDMV0CK8sCPgOZ0mUJLrwsZQASbj7Bbaydg+ghZVPRS+mDPJCDXuF
	 2zZEtkXTMdzGeBTIdydXneamzKPxB6jn+E/jkp2VauPnjYRdQP9nmbMdtAmMHlYvxe
	 MLh0vfZGq7RhA==
Original-Subject: Issue in man page crypt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216CD.0000000068AB2645.00138F5A; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page crypt.3
Message-ID: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    "fail closed"??

"The behavior of E<.Nm crypt> on errors isn't well standardized.  Some "
"implementations simply can't fail (except by crashing the program), others "
"return a null pointer or a fixed string.  Most implementations don't set "
"E<.Va errno>, but some do.  POSIX specifies returning a null pointer and "
"setting E<.Va errno>, but it defines only one possible error, E<.Er ENOSYS>, "
"in the case where E<.Nm crypt> is not supported at all.  Some older "
"applications are not prepared to handle null pointers returned by E<.Nm "
"crypt>.  The behavior described above for this implementation, setting E<.Va "
"errno> and returning an invalid hash different from E<.Fa setting>, is "
"chosen to make these applications fail closed when an error occurs."

