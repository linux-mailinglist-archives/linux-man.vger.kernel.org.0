Return-Path: <linux-man+bounces-4032-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D8BB4EE2
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 20:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F38681892984
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 18:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52BE227B326;
	Thu,  2 Oct 2025 18:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="BLOUnoDg"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57BF22DF95
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 18:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759430786; cv=none; b=Pikbmd9Jyo0qIlQ5l/CUEpp9W2JV5zR/pqEa0m7+UnQPwVZ+SEG68kMsxBTP7ldGfYnQ6/iQWPvnWfk7TpiCLpwX6UvNGZKJcjQg1caOegaYHk2HgVpMcvHh5jNh43US+hzkq/FDgF9FUlBn3GzmeVALVubv5j899jyGlzrj8RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759430786; c=relaxed/simple;
	bh=qhUCBxRffAG57pLVqNNBl3VnqmecMjKC5vVjqg1yqu8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LHS2bYsJ1pkzND06EZL5/aFx5SEnAlGVZ1O6Wv5ogBcnz6RrhvzVObNGSzvRFcV+vAFOCY5OSA4WePUjruPeylzlbRrr/Nm6mtg7ctCmCjLd4u3b4/HHwy3kerrDGnhoQbqiTGaTlw74p0b5cJt0wpoAuIm6j+8WdMIwYL3dNU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=BLOUnoDg; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4cd13973z4z9tKM;
	Thu,  2 Oct 2025 20:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1759430774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8V99IBIZhlouAeV7xZbbBZQJKM/Mz6/90/VhzJk1Bw0=;
	b=BLOUnoDg1aSevGBYYos408PCDDHmmNihNnA5CuQL/43UJK3EuO10OJXjhsE+FVvd10xQix
	cPjP0DayNygQXjpJMsVqfD2TJOojnGqIT7UMgV48zk0JY6K+pgVsfC3fI1I2HIHsyDmoPC
	Zjs/LZTIRE1kbMtwt6bbFb8ukdV+Cw+iGQg2zJjqZNkP5RLN3iqubSUiW+3HBUM85HZ9KB
	iyybqlUEnz+ud6bb7cbu7QCvUgKIjKBSXHSL7lYRXtPC2SRw/IMt1295LKNHrhRVmS9CBG
	N4jkUsdT/5dUbZQDyZ7HHIOXYF6Bk51r87bn9mUOFBTTqOFrCjwbmHaOtrblvA==
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Rob Landley <rob@landley.net>
Cc: Alejandro Colomar <alx@kernel.org>,  coreutils@gnu.org,
  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <60d83776-2873-4114-9647-0ec44120969a@landley.net>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<87jz1sm2t3.fsf@aarsen.me>
	<fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
	<87cy7e7hml.fsf@aarsen.me>
	<e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
	<86tt0jn27n.fsf@aarsen.me>
	<60d83776-2873-4114-9647-0ec44120969a@landley.net>
Date: Thu, 02 Oct 2025 20:46:11 +0200
Message-ID: <867bxdgn0s.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Landley <rob@landley.net> writes:

> On 9/30/25 14:57, Arsen Arsenovi=C4=87 wrote:
>> Rob Landley <rob@landley.net> writes:
>>> It wasn't "lucky".
>> It was, it was obvious even in first edition Unix - I'll come back to
>> that.
>
> So obvious that you need to point it out 50 years later?

I don't know what you mean to imply here, but I doubt I'm the first.

>> When documetning, these more complex interfaces ought to be
>> decomposed into logical units for obvious reasons.  There are also
>> overarching themes that aren't simply attached to a single (or
>> handful) of bits of the interface.
>
> There's more than one way to explain almost anything.

Okay?

>> In the original Unix v1 programmers manual (or, at least, the copy I
>> could find), the term "file descriptor" is used 30 times, and defined
>> (poorly) twice.
>
> And nobody ever bothered writing down what "inode" meant so I had to
> ask Dennis Ritchie.
>
> https://lkml.iu.edu/hypermail/linux/kernel/0207.2/1182.html
>
> The downside of documentation being written by people who already know
> the material. "Beginner's mind" is hard to recapture after the
> fact. (I say this as someone who's been trying for decades.)
>
>> To clarify, I don't mean to imply that an OS-level manual should teach
>> the reader about basic networking concepts, but it is still useful to
>> briefly recap said concepts in order to clarify possibly-ambiguous
>> terminology and set up standards for your documentation.
>
> A tutorial and a reference are not the same thing. That's tech writing
> 101.
>
> Half of teaching is figuring out what your audience already knows so
> you can connect to their knowledge base and fill in gaps without
> boring them to tears repeating what they already know. It's _hard_,
> and no canned source will get it right for every individual.

Okay?  I'm not sure I understand what that has to do with the paragraph
you're responding to.

As said, 'man' pages don't have the ability to provide context *at all*,
whichever context might be necessary.

>> Also, in my opinion, it is obvious
>
> No comment.
>
> Rob

=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOYEARYKAI4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaN7Ic18UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0RkVF
MkIzRDExM0ZDMDBBMzE2MkQ2MDYxNTJDMjk0MzAxRUEyQzQ5MxAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTu10BAMyJemGID86qq2VhqyvI6iPzNYk3ezH1xvnb
n2vHirZwAP9mdwoOx3a5vyyD68hfhu4LV/2h3TLV0JmJHCEiq1S0Ag==
=O7/u
-----END PGP SIGNATURE-----
--=-=-=--

