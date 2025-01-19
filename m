Return-Path: <linux-man+bounces-2261-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F6EA16206
	for <lists+linux-man@lfdr.de>; Sun, 19 Jan 2025 14:18:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 342323A50C2
	for <lists+linux-man@lfdr.de>; Sun, 19 Jan 2025 13:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D521A3029;
	Sun, 19 Jan 2025 13:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="lYSDYf0D"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC792913
	for <linux-man@vger.kernel.org>; Sun, 19 Jan 2025 13:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737292677; cv=none; b=Ui3exfvagPQffT7VgK1Cc01Eff3mwdehzewpj50g236yq+kDpg6q/j0E1/RK0RoBLeqZAInaFBXqgSf9Kg9wwS0S1H+hRilnRQy3kSyZVCkp99Y7MGGSyBKBZj0LfBK50MtRg2bJF5tcq1M1CU58XVVpH4v2DHbijPaA38F+K8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737292677; c=relaxed/simple;
	bh=cgyEYJ5jLpg2onLyO/bTnpoZ7v2Wkus8DSlBff60tZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B9458ZzCsLJ038/aAuW0CScRCloSyl30g0BwU98Pg94QQCm40exWeAm00ydmznKWp/GRZl5OPL2HUFG4NiYHDMV77NXbcOmnGtDcuTHvWmEj2UJHpEDAVwq0POqro6yOqhzCZoSuTY/AkUZpSNKPEAys8TVHLkkG6wGFVzfCZfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=lYSDYf0D; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737292667;
	bh=cgyEYJ5jLpg2onLyO/bTnpoZ7v2Wkus8DSlBff60tZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lYSDYf0DoVO6WlBMJ2HqYlZnB/bcflVvcENzoMpBEVmLFpxL/0Q6oUWT9hYDtoaIu
	 iNc17KqW1uExgLN/A2UDMuBuKoHEdvxfVaMtMD9noxwwDzVpvRQhlSdiV14VFUD9Nn
	 gg2jITbzApAxems9GUX3BP1X4qYVWmEfg+pm0roaxxxrLC7qIc9udHD+elnWtox0sL
	 tog7gCCs7GZGibCZfhfTAb/1iZnVAEUeHWjFBtKVjfBrzVM3lm5S7aWw7JJ5sgIPG0
	 GlmzELEpZvnrHSVT4m21dxY0zc+xDA0vJFbmtyPE7/lRqx39M/6K5mC8FRhCztiika
	 pWrhKm3ciRfmw==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 223D281A7E;
	Sun, 19 Jan 2025 08:17:47 -0500 (EST)
Date: Sun, 19 Jan 2025 08:17:46 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>

On Sat, Jan 18, 2025 at 01:23:07AM +0100, Alejandro Colomar wrote:
> There's no other length.  You could just call it len.  pathname_ just
> adds noise here.  See the section on "Variable names" here:
> <https://doc.cat-v.org/bell_labs/pikestyle>.

OK.  The variable is now named len in my local version of pathname(7).
I’ll submit a new version of the patch once we wrap up the passing a
null-terminated string to iconv(3) discussion.

> I don't think we need a loop.  Do you?  iconv(3) should convert the
> 	entire string if it is valid and there's enough room.

You’re right.  After rereading iconv(3), I’m now realizing that iconv()
will only return if it finished converting the entire string, or it
encounters an error.  I’ve removed the loop locally.  I’ll submit a new
version of the patch once we wrap up the passing a null-terminated
string to iconv(3) discussion.

> > 	        iconv_result =
> > 	            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);
> 
> It seems you're passing a non-terminated string, and thus it's producing
> a non-terminated string.  Why don't you pass a null-terminated string?
> 
> That is, inbytesleft should include be the length + 1.

Here’re my concern: iconv(3) is going to see the final element of
utf32_pathname and interpret it as a U+0000 null character.  In some
character encodings, U+0000 null is encoded as a single null byte.  In
other character encodings, U+0000 null is encoded as something other
than a single null byte.  For example, in Modified UTF-8, U+0000 null is
encoded as the bytes C0 80.  Is there any guarantee that
nl_langinfo(CODESET) will return a character encoding where U+0000 is
represented as a single null byte?

