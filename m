Return-Path: <linux-man+bounces-4103-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E333CBD0101
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 12:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F2E04E0346
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 10:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B64272E41;
	Sun, 12 Oct 2025 10:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="JneugrX5"
X-Original-To: linux-man@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D431A256E
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 10:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760265770; cv=none; b=A4tnHqdppFi9zBSge/W3CdeOyR09nqoq+7cGUsAemzfdF+tlmzl4rhCwSSzfJ0nqQcdtZH/tmenKXJX02QYm+Zedd+ARux5MQoByLCoq0MOohIMvb5z7MaZEdbg2H8qrDwKUUsvx6U1K3rTe2zZ84v5FAuQAwipIntZn93UYDDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760265770; c=relaxed/simple;
	bh=g8TtFbLnx+wWbFjvyDWMlpT22CE04iHN4hWOmbfYB1I=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=n2fZavf7GlwjXnLDJbWn8Ir1GJFalfcm4RS/jNT9WMxXYDTeNu8IRLOOEr76n77a3+ag5LFydiNdN89vKoDcHqxaCoYLZ5/kTpt8vTB8eSZh1kAMS5Fq0w8qLy70ubCuQ75SOIW9LPrx9+gCLDF1C+YhvmVnmx2DzOunRvVN/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=JneugrX5; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 4857C240101
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 12:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1760265766; bh=nbbk014KzU40fEno0kaSUSXWst9r/RvvrwD9x6DjG8E=;
	h=Mime-Version:Content-Transfer-Encoding:Content-Type:Date:
	 Message-Id:Subject:From:To:Cc:From;
	b=JneugrX5S+QvwNvpervkI2i7usTuwyZAqkTEOPZ0SQv/PcmE3P4aIXYpmBj+gRyMe
	 NedSf/nKCR4Tg4Bc+FPxBYoZyVgKg8bvAe07oObRfUQjKI/3hjiyxgsRy0BkXH0dQS
	 Sg192jARykUJazuxZx9zm02qJmbPQMhtfcvH/AZOMTBcsqLWrgPFC+pjupc0OyovAj
	 AprfHDlWpU4qX5OS0XzrfAqdJuuf4cAq+5sT7OU0+gXM9yGFNMFc3e5CFu7U+GuH8E
	 Bnfdge+fZ0rV8aQXNoBoVWQQSOIiV/SRwp7nLCcwz6C0YP+OS1IdNNd9lffSegDopj
	 99zQ5X3CTS6oQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ckxrj45vQz6v1t;
	Sun, 12 Oct 2025 12:42:45 +0200 (CEST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 12 Oct 2025 10:42:45 +0000
Message-Id: <DDGA4WZCSZOS.1TW05RY1VQGGE@posteo.net>
Subject: Re: swab.3: mention UB when from and to overlap
From: "Sertonix" <sertonix@posteo.net>
To: "Alejandro Colomar" <alx@kernel.org>, "Collin Funk"
 <collin.funk1@gmail.com>
Cc: "Sertonix" <sertonix@posteo.net>, <linux-man@vger.kernel.org>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
 <875xclm599.fsf@gmail.com>
 <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>
In-Reply-To: <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>

On Sun Oct 12, 2025 at 2:02 AM CEST, Alejandro Colomar wrote:
> Hi Sertonix, Collin,
>
> On Sat, Oct 11, 2025 at 03:40:34PM -0700, Collin Funk wrote:
>> "Sertonix" <sertonix@posteo.net> writes:
>>=20
>> > The current swab.3 page doesn't seem to mention anything about what
>> > happens when from and to overlap. In POSIX any overlap is UB.
>> >
>> > glibc handles cases when from =3D=3D to but it will choke when for exa=
mple
>> > from =3D=3D to+1. I am uncertain if from =3D=3D to is meant to be a fe=
ature.
>> >
>> > If it is, would it be possible to mention that overlap is only safe wh=
en
>> > from =3D=3D to and it's glibc (not eg. musl)? If it's not intended wou=
ld it
>> > be possible to include the same information as in POSIX?
>>=20
>> The prototype uses restrict for both pointers which is how you tell the
>> C compiler that two objects will not overlap.
>
> As Collin says, 'restrict' is there to document this.
>
> The 'restrict' keyword (theoretically, a qualifier, but it works more
> like an attribute) is difficult to explain (and the wording of the
> standard to describe it is quite difficult to follow).  However, the
> core idea is simple: nothing should overlap such a pointer.

Thanks for the explanation! Then this was just my lack of understanding
the restrict keyword.

> There are exceptions, such as the case when a function doesn't access
> such a pointer.  That's why strtol(3) is declared as
>
>      long strtol(const char *restrict s, char **restrict endp, int base);
>
> even though one can (and usually do) call it as strtol(s, &s, 0), where
> 's' is indeed aliased by another pointer (*endp).  That's because *endp
> is never accessed within strtol(3).

If endp is considered to point to a 0 size block of memory it works ;)

>> But maybe it is better to be friendly to those new to see and state it
>> explicitly? Alex will know better than I.
>
> I hope we don't.  That would require a CAVEATS section in too many
> pages.
>
> 	$ grep -rl '\<restrict\>' man | wc -l
> 	156
>
> While the detail about strtol(3) is tricky, and could be worthy of
> documentation (most likely), the general idea behind 'restrict' is
> quite easy to understand, IMO, and I think documenting it in plain
> English would be too much.  Especially, since 'restrict' is a C99
> keyword, so I expect it to be more or less common knowledge.

It seems fair to not repeat the meaning of restrict everywhere.=20

