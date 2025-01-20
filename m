Return-Path: <linux-man+bounces-2267-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 729C3A16D3D
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 14:17:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87D583A120F
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 13:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BB01DFD85;
	Mon, 20 Jan 2025 13:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="imLpcrJB"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AB31B5EBC
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 13:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737379026; cv=none; b=i7JidBgFGWaQubH2GykL2ZPvoS6a3oEtkasHhmd8A9Q3bCEpiaIN9eioSI8Ag2BCqyDLtNiI7Rzdjw+FOYPR78rpmbkZ1Efj1dQKHch5HxbsRDytK8C1UzuRkfAastzitPZ8ya6xRdkKON2PY62KS/LnOv6LXthgtxBoYT4HLZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737379026; c=relaxed/simple;
	bh=VtgcUjUTirrDf40nVeBjnJnLDv/2gAvus225X+ezqls=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evQ44vFZj5LKSAypAXeclaNtL8oDAwr831X2L1E8jY7/A+pQ3fLfpXSZssyC1sbsV0fpkPh5vDkD6iXZXkAzqf7zEd9HE7BslzRHZqmgr/0aAYIua6Kb+oEszc453qPKMmaRZYLBr+N1Nu1x51O6xHFbX3dJHs41TvJiaZ5xgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=imLpcrJB; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737379022;
	bh=VtgcUjUTirrDf40nVeBjnJnLDv/2gAvus225X+ezqls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imLpcrJBx20/fkPS7SbVb/C7JW1nOBJbCcwQC54G863/tqm0/lWWGgtTLl4CaFx0T
	 tjvtE5Ro3WfQRz/wOVJgvVYABWl/y9i+roN3sYUswpgIkaf8/TqRJUrWoUC5dr93SM
	 5TOPajL386xxgKUMzWAVjYbKHVKKbVV1ABmQTLzrUb9UBUQHHB2HiM+mcR0Q4H5zEx
	 0bWO2fPx4W8TzzJ0RGUIR5VN8pLEB4oi1a6Y2N/dbrgHkE/BNdk/OHHWp+3t3R/2EL
	 26lqM4Oo9U+MC1/KPhjHtNlAyLrsN6XOCrZcI/lrZ88Sl3jnYeBDTpnKj+KzlI75vV
	 7mSQWZRpiDd2w==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 4AD847E274;
	Mon, 20 Jan 2025 08:17:01 -0500 (EST)
Date: Mon, 20 Jan 2025 08:17:00 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <uny7uqsnkq4fem6yjsmfk2qqxox4suctzf7gclubf6ndynbkpo@tbu7jnxw5gq4>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
 <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
 <877c6pew1g.fsf@oldenburg.str.redhat.com>
 <247qglmeqmdb2mlb5ydyml64w5nthcej5mtuatzblng6wyy257@b44py2sqfhyt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <247qglmeqmdb2mlb5ydyml64w5nthcej5mtuatzblng6wyy257@b44py2sqfhyt>

On Mon, Jan 20, 2025 at 12:14:42PM +0100, Alejandro Colomar wrote:
> Hi Florian, Jason,
> 
> On Mon, Jan 20, 2025 at 09:20:27AM +0100, Florian Weimer wrote:
> > Character sets used by glibc locales must be mostly ASCII-transparent.
> > This includes the mapping of the null byte.  It is possible to create
> > locales that do not follow these rules, but they tend to introduce
> > security vulnerabilities, particularly if shell metacharacters are
> > mapped differently.
> 
> Thanks!  Then, Jason, please use terminated strings in the example, and
> assume a glibc locale.

OK.  I’ll submit a new version of the patch that does that.

> If one uses a locale that doesn't work like this, they'll have the call
> fail because the converted null character won't fit, so the program
> would still be safe.

I disagree.  I don’t think that the code would necessarily be safe if
someone uses such a locale.  Specifically, I think that the converted
U+0000 null character would fit in the output buffer most of time.

Imagine this scenario:

1. We use malloc() instead of calloc().
2. The user uses a modified UTF-8 locale.

Here’s what the example code would do in that scenario.  First, it would
calculate locale_pathname_size:

	size_t locale_pathname_size = len * MB_CUR_MAX + 1;

There’s 8 characters in utf32_pathname, but lengths don’t include the
final null terminator, so len is going to be 7.  For modified UTF-8,
MB_CUR_MAX would be 6.  7 * 6 + 1 = 43.  We would then allocate 43
bytes:

	char *locale_pathname = malloc(locale_pathname_size);

Here are our 43 bytes:

UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU
UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU

When I write a byte as being “UU” that means that the byte’s value is
undefined.  Next, we have iconv() convert the UTF-32 string to modified
UTF-8.  Here’s what our memory block will look like after iconv() has
converted 7 out of the 8 characters in utf32_pathname:

65 78 61 6D 70 6C 65 UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU
UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU

Now it’s time for iconv() to convert the final U+0000 null character.
In modified UTF-8, U+0000 null is encoded as C0 80.  iconv() will check to
see if there’s enough room in outbuf for those two bytes.  There is
enough room for those two bytes, so iconv() will store those two bytes
and finish without error:

65 78 61 6D 70 6C 65 C0 80 UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU
UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU UU

In this scenario, iconv() finished successfully, but there aren’t any
bytes that we know for a fact are null.  The best we can hope for is
that one of the undefined bytes just so happens to be null so that we
don’t do an out-of-bounds read.

