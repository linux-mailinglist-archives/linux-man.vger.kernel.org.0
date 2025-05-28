Return-Path: <linux-man+bounces-3043-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 135B0AC7037
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 19:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0BAA1BC48F1
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 17:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C643283C8E;
	Wed, 28 May 2025 17:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPQkdH3y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB2D28DF51
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 17:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748454938; cv=none; b=fJr7Hij5pcRBRl21WyFZB/WWtQPvCsK3lpAGEOwEqRIdmTQxJ9KWzRxNnMyvfRTtV/Ess099+bnxMHeyNRJ7hvLmMO4u+pZzqjUUPQzNVkmDbZXC46IX2pKtnUiPY3VS7wYcp0QEWDxxyfsEAZdgaR+3plrLNYQ3ex++283LmFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748454938; c=relaxed/simple;
	bh=w9+4iRLdSb876+5aa4a35BiSoiK1ReTK0mSuJpuqP80=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eQ++YVlyu8ifdRJjW78OZcbUe06cSd/BnQk1/3jzTCXsVIa29n6swFebSnXcADA5Owk/xthTInZEvFetcUsAhRZYIMEG77ro2OY2pqUFh0PQfGFkSo9gwBF2f9z3pkFNQqy8c/KP+MCmmYI1KVUy7YHv49FgOGkswff2I1fBIVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPQkdH3y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7320C4CEE3;
	Wed, 28 May 2025 17:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748454937;
	bh=w9+4iRLdSb876+5aa4a35BiSoiK1ReTK0mSuJpuqP80=;
	h=Date:From:To:Subject:From;
	b=SPQkdH3ynDSr7f8hli06MSDs7KLbJroZTen7TlvRsH3LjwOepy4+AzdBxd28EjXPf
	 4QTecs23jYENpN7Snvchsx/DN6cetYhACBhjsDPLhoqd4NnvVlRzT73aVz/Av7ee+r
	 xuLOIPRfOarKOnedr46ON/d9GR1POLYzvT9mGCkX3fNeheb9G6W7tk0lhc7+4wbPor
	 7bULdB2t/itscYELOhxXVj1RkTSk0xyYQnS4sCdJcRp5iQ6xOhPYXtIoZo1NBcySxG
	 i3PsLXhbslExEx32CACKGFCgKxKuVpBcpsx0LF6w9weFNeKT4tbyhghZJqCFZEu0KM
	 18P4sc/zm6gng==
Received: by pali.im (Postfix)
	id D30908AF; Wed, 28 May 2025 19:55:34 +0200 (CEST)
Date: Wed, 28 May 2025 19:55:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Wrong hyperlink for protected_hardlinks in link(2)
Message-ID: <20250528175534.f2wxywf3piia4rcf@pali>
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

In link(2) manpage is following sentence:
https://www.man7.org/linux/man-pages/man2/link.2.html
> (see the description of /proc/sys/fs/protected_hardlinks in proc(5)).

But in the proc(5) manpage there is nothing about protected_hardlinks:
https://www.man7.org/linux/man-pages/man5/proc.5.html

Instead, it is documented in proc_sys_fs(5):
https://www.man7.org/linux/man-pages/man5/proc_sys_fs.5.html

Could you fix the hyperlink for protected_hardlinks in the link(2)?

Pali

