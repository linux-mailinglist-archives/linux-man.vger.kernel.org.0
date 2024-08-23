Return-Path: <linux-man+bounces-1661-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 557D195C67D
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 09:26:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10686284FC7
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 07:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6EA613AA2A;
	Fri, 23 Aug 2024 07:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="W5S+tMkw"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7A86126
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 07:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724397969; cv=none; b=cBZWtMEsi4UPFxFMbYhGvrZSudMb+1YONu1qPQFepEiwXVe29MA3IDXhrEN6iFO4pwJDuq0vLlx1pkBzhF1s5kGF5Wo3dEyss35QoGVx0Lp0hAM2aEQysS2/d1rnIeMvC+5Qopza+b3cuB6VdJ7VGAFhPrI561PZrjzP9REv/08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724397969; c=relaxed/simple;
	bh=yW7XvujB/5FDJ1yHqschzXlOW+YG9t+e4GhmBdylcOE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DBflBUklU31LF5g+Mn6roARECkzQHq47SAzMEstf5Xn0xRm17u/PaZ3PZzFwFxWOQhjmahYpqT/3ylA30gHPNlTYYmOmFAZk2eAY+iLvaOf4Re+RH6bKXjSNDX83xqtOT6RSoTFhU2mR02yPpnxbtz1GgyOKffTj8dncgpcJkTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=W5S+tMkw; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1724397966;
	bh=yW7XvujB/5FDJ1yHqschzXlOW+YG9t+e4GhmBdylcOE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=W5S+tMkwseUNoWUTuKcSNaDn9sWredjvgrJAZ+EVeptGgsO6vdpNznel7T3dUny3J
	 Lm/N4TndevpQhg81ZRS7q06rfS8u51yEPSCMjCu5oyaeyfy7T5eM5kljOAGIUtmHwY
	 tRZ84Ly6eUBt1iPepHJRUoobGF2CVhcPmxWTHFjE=
Received: from [127.0.0.1] (unknown [IPv6:2001:470:683e::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id ABE7666F26;
	Fri, 23 Aug 2024 03:26:05 -0400 (EDT)
Message-ID: <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>, 
	libc-alpha@sourceware.org
Cc: DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, carlos@redhat.com
Date: Fri, 23 Aug 2024 15:26:04 +0800
In-Reply-To: <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
References: <xned6jlywd.fsf@greed.delorie.com>
	 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
	 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
	 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-08-23 at 09:02 +0200, Alejandro Colomar wrote:
> Is mktime(3) allowed to return -1 and set EOVERFLOW on a successful
> call?
>=20
> RETURN VALUE
> =C2=A0=C2=A0=C2=A0=C2=A0 The mktime() function shall return the specified=
=C2=A0 time=C2=A0 since=C2=A0 the
> =C2=A0=C2=A0=C2=A0=C2=A0 Epoch=C2=A0 encoded=C2=A0 as=C2=A0 a value of ty=
pe time_t.=C2=A0 If the time since the
> =C2=A0=C2=A0=C2=A0=C2=A0 Epoch cannot be represented, the function shall =
return=C2=A0 the=C2=A0 value
> =C2=A0=C2=A0=C2=A0=C2=A0 (time_t)-1 and set errno to indicate the error.

For mktime the standard only says "return (time_t)-1."  It does not
mention errno at all.  And the standard also says:

   The value of errno may be set to nonzero by a library function call
   whether or not there is an error, provided the use of errno is not
   documented in the description of the function in this document.

> Then I think the API is completely broken.  How should we check for
> errors after a mktime(3) call?

Maybe, special case if tm contains Dec 31 1969 23:59:59 UTC...  But it's
just stupid.

> If this is so, let me file a glibc bug requesting a fix of the API,
> adding a promise that on success, errno will remain unset.

It's a bug in the standard, not glibc.  And the standard has deprecated
it anyway.

https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2566.pdf

> > How about if we omit the sample code and make the minimal changes I
> > suggested earlier?
>=20
> Because I'm being very careful writing that code, and still I'm having
> trouble doing that, I think we must provide some example of a correct
> call, to prevent many other programmers from doing it wrong.

So IMO you should just say "the interface is deprecated, do not use it
in any new code."

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

