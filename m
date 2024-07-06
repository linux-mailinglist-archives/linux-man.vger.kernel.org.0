Return-Path: <linux-man+bounces-1349-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49878929003
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 04:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D2871C21369
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 02:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69E78814;
	Sat,  6 Jul 2024 02:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="APl+3DKi"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1434E36B
	for <linux-man@vger.kernel.org>; Sat,  6 Jul 2024 02:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720232672; cv=none; b=b3WsnxR35oAzJPCkjpW+J55NfCZr1qlKBdaoTLkfZyR8HN8eUELbV/xHFm3TwCELE+hn1KZkmaAbCa+vjOEIqCgIQLBezrvR80Lu350VuiOBTAGxQ+pQmtFbw+isl22h6mHylOMQlAWTtKQxMpulQByxitrOD72h7cl1ftEXWmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720232672; c=relaxed/simple;
	bh=r1dQKyZ+05Ws5r084I2PkQmYRmzVoS9yM4jU6fx58uc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=A6YjahotFOGLdX0O5rI2Zm+SuLjEArnUbw7uWu3GrrCjBEQpmjwqJL8fBNLQ6N8D7/QigQhVAs1U3xQL9ptZCq63hwPQaZpNvsnDuHVpnIwlo+QYVf8XKOVAuYBWkc+2prUyUDHZMQQEmLNOuryxbT06DvIEhKaUcnHeErpdoKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=APl+3DKi; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1720232664;
	bh=r1dQKyZ+05Ws5r084I2PkQmYRmzVoS9yM4jU6fx58uc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=APl+3DKic1PbbaLAVgI1MeMMwE64T65IPZlLqlFx6v+Z/Bgf2yVTOj2W7mNcylj++
	 BTuyoclEX9qV3yhX8QsJgDa/U7dghypU/zHV7Jhyj/a+/uFju0+CZe5y2lbzwT6+9C
	 199mM62D1yDgPNft4EbAMqHy0sKbbdDBlNO83l5U=
Received: from [IPv6:240e:358:11fb:d500:dc73:854d:832e:4] (unknown [IPv6:240e:358:11fb:d500:dc73:854d:832e:4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id 658CB659FD;
	Fri,  5 Jul 2024 22:24:20 -0400 (EDT)
Message-ID: <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, Jonathan Wakely
 <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
 libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert
 <eggert@cs.ucla.edu>,  linux-man@vger.kernel.org, LIU Hao
 <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James
 <sam@gentoo.org>
Date: Sat, 06 Jul 2024 10:24:16 +0800
In-Reply-To: <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
References: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
	 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
	 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
	 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
	 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
	 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
	 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
	 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
	 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
	 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
	 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2024-07-06 at 00:02 +0200, Alejandro Colomar wrote:
> That's precisely the case with strtol(3): it doesn't access any objects
> through *endptr, and so that pointer need not be restrict.
>=20
> Then, nptr is a read-only pointer, so is doesn't matter either if it's
> accessed or not.

Restrict allows to reorder any writes to other objects with an read from
nptr then. In strtol at least errno can be written, and depending on the
implementation of locale things there may be more.

TBAA does not help here because char aliases with anything.

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

