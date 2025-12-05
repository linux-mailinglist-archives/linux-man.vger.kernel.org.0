Return-Path: <linux-man+bounces-4364-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA0CCA938A
	for <lists+linux-man@lfdr.de>; Fri, 05 Dec 2025 21:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE1F830113B4
	for <lists+linux-man@lfdr.de>; Fri,  5 Dec 2025 20:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7558113AD26;
	Fri,  5 Dec 2025 20:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNLgavu7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330C8249EB
	for <linux-man@vger.kernel.org>; Fri,  5 Dec 2025 20:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764965652; cv=none; b=F9Bf4h4N9kTxfm8VgBJQeksU5O3CEK0TXpBXmN0Arh98IMnmjzsvvWk+xBO+i20XcpaBA05NFr5Sg9znvb1sL7WM+E1duJVkRHMFxzK1V/MEFOdf55kUke+j3fPIphBGvV5G89KbwtXbXE4zLyX2YX+6n+3c3SrJsDelQdCQ1CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764965652; c=relaxed/simple;
	bh=DA68u7yJRliUIRCZ/+mPmEE6qE8ZRIweu1tdGzDzEAU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=osCLNSBAK71mgNONB1Tm5xFOFVvgmKUfKjSm7F57NAt2ivPY7GuGgzBHmUV0kpaWzVlXEAm0IcThJ5SgxH3ECepS3e6Ao5wEToKHVJsoE2O18VLmeO5ux6uOiQgUJoeJQDKhI2H/nvsFBIe0dsGK8eDrWVHJVpvevR6z9n6xyZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNLgavu7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE340C4CEF1;
	Fri,  5 Dec 2025 20:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764965651;
	bh=DA68u7yJRliUIRCZ/+mPmEE6qE8ZRIweu1tdGzDzEAU=;
	h=Date:From:To:Cc:Subject:From;
	b=cNLgavu7C5CQ8NrwUcm23pw+mAZzMYDcDpgrNc6bp0fWJKZ5FSPorBWUtixIccOjv
	 BhdY9Dqo2QVyLvCu0mbyRYQ5Y04al8/FO8EKt/AnoknWbv9M9Dn1lLnsehs8dGnYf8
	 xYf60egEzCA06QfzMTJ6dNfepf5DlU/+9AU15ldjzCe7hh6w2hBISGb0NWR8VO2Nv+
	 qOtQF4+wiWJNhcm7D0Vrnf/0Lo/IbxZfQAugotsc2QwM+xeiz4zAAwOhWhukuUZ+Ev
	 QsO+OEwQ8N+WW66ZWmwkj0w11LRqbgwqOisVp2F9sToNHqGWJDji7Rg5Z3cKmtcbPe
	 znkfArz/dTKIQ==
Date: Fri, 5 Dec 2025 21:14:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, serge@hallyn.com
Subject: [PATCH 0/2] Split *s*printf(3) from printf(3), and document the
 snprintf(,-1,) is UB
Message-ID: <cover.1764964289.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi!

Serge and I were reviewing some code, and we realized that it seems
quite easy to induce a buffer overflow using snprintf(3).

We solved our problems by checking that the size is non-negative in
a wrapper inline function.

	// vstprintf - va_list string truncate print formatted
	inline int
	vstprintf(char *restrict s, ssize_t size, const char *restrict fmt, va_list ap)
	{
		int  len;

		if (size <= 0 || size > INT_MAX) {
			errno = EOVERFLOW;
			return -1;
		}
		len = vsnprintf(s, size, fmt, ap);
		if (len == -1) {
			if (errno == EOVERFLOW)
				errno = E2BIG;
			return -1;
		}
		if (len >= size) {
			errno = E2BIG;
			return -1;
		}

		return len;
	}

[v]snprintf(3) seems to be even worse than I thought it was.
Let's document this.


Alejandro Colomar (2):
  man/man3/*printf.3: Split *s*printf(3) from printf(3)
  man/man3/snprintf.3: BUGS: snprintf(3) with a negative size is
    essentially UB

 man/man3/printf.3    | 223 +---------------------------
 man/man3/snprintf.3  | 337 ++++++++++++++++++++++++++++++++++++++++++-
 man/man3/sprintf.3   |   2 +-
 man/man3/vsnprintf.3 |   2 +-
 man/man3/vsprintf.3  |   2 +-
 5 files changed, 346 insertions(+), 220 deletions(-)

Range-diff:
-:  --------- > 1:  a654dcfc2 man/man3/*printf.3: Split *s*printf(3) from printf(3)
-:  --------- > 2:  d00ed9434 man/man3/snprintf.3: BUGS: snprintf(3) with a negative size is essentially UB

base-commit: 2a5edb7e59ae024d1969e7379c078a58b5f50b80
-- 
2.51.0


