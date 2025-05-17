Return-Path: <linux-man+bounces-2942-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 274DEABAC00
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:16:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FF517A8A76
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 19:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280181ADFE4;
	Sat, 17 May 2025 19:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvF1flRt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9511922F4
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 19:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747509399; cv=none; b=sBfa04Cftw+NVwQBKbXlgzCY7+g/1gijTTeMqQa3yydIQNWV45yrLts+s7itefNM+PgWQ1q9PP/YSWhpLqEiOAyb3OaY9rA/JQvUl2L8ZXclRiZ8J11XdZ+yNdiXU0n48HEe+9ZrBNfyKuTvMyIVMNlZtMHeL4g8NiVvd7nSE5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747509399; c=relaxed/simple;
	bh=6CvbNlB5CajzvkBXTJeTzsXY0bLE1fj2vv6KQgcfoNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pOIpmGQ16owQSW6LguEkxKnkbcxMyyELKDTBnRn1VapfDWmujBLY/DuKiTvQhsS4wrIM3gbWMR24zqhh/Tkod20vyp/ipO7CcMJiD4AlGhD79Zti/AIbTpWIynH9GK27O02ikojb0FxWkuE3GOuX6ap/PUeJJsiW6CaNDyT/Cc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvF1flRt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 253B9C4CEE3;
	Sat, 17 May 2025 19:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747509399;
	bh=6CvbNlB5CajzvkBXTJeTzsXY0bLE1fj2vv6KQgcfoNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uvF1flRt7UltaEeKXJug9mBAbiP7JA/9oSHP1CBExaEf4AqIUwSB5EnCb10EuRv+q
	 vBEf0E9IRVLCarWbgG8im04a1TcjFK84IXiEmIa2oxHoIzpPG5A8pf4rkCYtObC7dO
	 MdGpoq8GQBf3kNo7LRWDyRXV/I8tupfdXp9qBXxJloITZ1deNQnbHKCwVDJE5F6m1d
	 ThBn7WkC9ouVXrbdc09W/LRMzG6eXC+JvlVmeWIoZv1Ql9TBPlPiXMLXU+oMVvEOyj
	 K9dJqexfRSrEgAIGLvj9Ex9NZ241gh+F3UHoxUBQKix3w0G4Hd/5j74WqPv2ZDQNlD
	 UVAB/DYh5QXBg==
Date: Sat, 17 May 2025 21:16:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: fork(2), _Fork(), POSIX.1-2024, and AS-safety
Message-ID: <j5fti375euce3gnkjsg5fatz2vuzgx3zekxipx3q56fdkmlf4e@ylv2quyckhg2>
References: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
 <87ecwnf6p1.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vu2sgvdxi5sea67i"
Content-Disposition: inline
In-Reply-To: <87ecwnf6p1.fsf@gmail.com>


--vu2sgvdxi5sea67i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: fork(2), _Fork(), POSIX.1-2024, and AS-safety
References: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
 <87ecwnf6p1.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87ecwnf6p1.fsf@gmail.com>

Hi Collin!

On Sat, May 17, 2025 at 11:11:38AM -0700, Collin Funk wrote:
> Thank you for the reminder. I did this earlier this year in commit
> ee33752b5d8c53eb5a357f67ab7ab6288fba5fd9:

:-)

> Next time I will remember to remind you on linux-man@vger.kernel.org. I
> would offer to do the patch myself, but I don't know roff. :)

I don't know roff either.  :)

But man(7) is pretty easy.  I learnt by editing existing text, which for
a beginner is much easier than writing from scratch.  Just imitate what
you see in the surroundings.  During my maintenance, I've done a lot of
work in making the source code consistent and simple, so that most pages
look the same, and they're exemplar, so that it's easier to imitate the
existing code.

If you feel like writing some patches, I can help with any doubts.  ;)


Have a lovely night!
Alex

>=20
> Collin

--=20
<https://www.alejandro-colomar.es/>

--vu2sgvdxi5sea67i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgo4IsACgkQ64mZXMKQ
wqkpMhAAgfoZX1jTzCIoXQKNReBkD2c+QS2kZsgwVH2gg9aiEFyVJvJNxyLLcDBA
UqjnaV7qtAAoE5LHVPl2ug997e0JknnFzVqX0zTCjM05ygjlWRyynt3lnNPT5I/W
H9jcFOa1kC2Q3ln54y/Y0n7ihRZ1+iZOf3IR80cuLUfiyFAsaNQsxC0exixgoruX
3ahWLMWtVn5m6Ud85dXCTbukYfKq9fqMn2BmtFHChIfsq+0Y4+/lBwFrKk8ZN+lr
TOvK7I0Rp6MuUnX9hWcQCqGMpMozJrUmFHG0DhlwgEdZTA2DtvILlYHcJCmb0n92
05NCdjkypYxmz5m7VzzAtzCqv0tDzWueOP8Fhi+hj6j7IEE72yvjnVcZgHEugfxs
CXjKb70Wgs/Yjz+BT8fBN+Bv/MbppLSrKMqdTpZXDRtFQ31xPsYwi//Hts++fPES
hJhMakC2IynpPlG7Qt/WbDY1aDsluF045hxIycr2trl6U68Ude5fmJjtnUPxLl6k
+U7aBm1WOUqD7BypMai8FQ++0Eda00xqm7/3HN30boPBgtSRqesZ5O1DLY/9N6p4
TyQseS4HeE4+EYp3ySWI4iRaY75h5OUF5+nRWPPemPJV86xGFUfyi1cq8+nRRKHm
B8urXHg64HUXsN2KTlUV50xcv6rjP6xnw/I1tbZ+N6qlMRQpVPE=
=nId4
-----END PGP SIGNATURE-----

--vu2sgvdxi5sea67i--

