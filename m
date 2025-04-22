Return-Path: <linux-man+bounces-2802-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D4AA97AD8
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 01:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 968D95A135C
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 23:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9261D63DF;
	Tue, 22 Apr 2025 23:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=etorok.net header.i=@etorok.net header.b="IH/EfBmY"
X-Original-To: linux-man@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5F1D61A3
	for <linux-man@vger.kernel.org>; Tue, 22 Apr 2025 23:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745362944; cv=none; b=EsovHjJWqh5l4SVCiZBrSoVKSE5T79bVtt+VGluZXc7JtNEy9fWynQ9Si4KM6gu/yc0ePavhO8PGCQI/3LBW/H1IaxOVh3QgvtzUj+PGLumXDvgneSn5mwdoCE88dBj2vL+IHnwtnT/z028s6QOpY7pXgArHbP0VByrvOTawve4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745362944; c=relaxed/simple;
	bh=IbNvUTLKDT10Pn7zHvzOL6l8IpyFP1HyPrI3p431eIw=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=nUlxoYXFoccJWwA1SfV9cIP/AX4q1/l8jRcPtBOIryl8/P+IogTGW7pgf8Asiu8oukHkcmX9SRKcKXlNVfz4Ubm0Gp4CjCaWW3OAXgizZsAztQY5Vq+s8lch/iSna9RPBcv2c64KpARHr/VSovriPlifyIB6k6B41A6989ovpsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=etorok.net; spf=pass smtp.mailfrom=etorok.net; dkim=pass (2048-bit key) header.d=etorok.net header.i=@etorok.net header.b=IH/EfBmY; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=etorok.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etorok.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1B3AC1FCE9;
	Tue, 22 Apr 2025 23:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etorok.net; s=gm1;
	t=1745362939;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=4gWhYQWrOps6nekAtAxu67yM/7YjHa0HrQwMponRnpI=;
	b=IH/EfBmYVWd+LjJkbRiFI/mgWMxlwAE4JN01Uqlkj4PKdhMGJmzj0rFgTXBuYffG5T6i8b
	rNXEgKrFTfFUH0Jys75Tn14gUv5QO/pDlvAGnw+478jr7d16UbhcK6DlplzyppV+ErS4xQ
	1k9pQOmFjLdI9A5eP9nuDKWJD2dOmVcDZUtuDbYaOkrJDU3vtKcoxal3b55VjrfTyW1jPH
	VSvRzifNMtY9Gw9ziQiBjSa78nKdFu5dp/gI7axe9LghYlwmnP7JWQMsxBbX5V4Yk6E4MD
	zA4iUyB+BGujRQ0fvlmzx8L2IWGyO4wDRmLLHDJyh1nUCdNgsjmzwV0KQTceTA==
Message-ID: <666f7e00a28f4dec59f02cdd4c9d63d493215674.camel@etorok.net>
Subject: puts sets errno, but manpage doesn't mention it
From: Edwin =?ISO-8859-1?Q?T=F6r=F6k?= <edwin@etorok.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Wed, 23 Apr 2025 00:02:18 +0100
Autocrypt: addr=edwin@etorok.net; prefer-encrypt=mutual;
 keydata=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
 4wQMRM/LRp6oSFr8MQsCLM=
Disposition-Notification-To: edwin@etorok.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgeehtddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepkffuhffvveffpfgtgfgfggesthhqredttderjeenucfhrhhomhepgfgufihinhcuvfpnrhpnkhcuoegvugifihhnsegvthhorhhokhdrnhgvtheqnecuggftrfgrthhtvghrnhepleefvefggfekieegtdehfedutdfgleehheehleehiefhueejieduhfdtfeefteegnecuffhomhgrihhnpehinhhrihgrrdhfrhdpmhgrnhejrdhorhhgpdhophgvnhdqshhtugdrohhrghdptgdqlhgrnhhguhgrghgvrdhorhhgpdhophgvnhhgrhhouhhprdhorhhgpdhfrhgvvggsshgurdhorhhgnecukfhppedvudejrdduheehrddujeehrdduiedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvddujedrudehhedrudejhedrudeiuddphhgvlhhopegludelvddrudeikedrvddrudeikegnpdhmrghilhhfrhhomhepvggufihinhesvghtohhrohhkrdhnvghtpdhnsggprhgtphhtthhopedvpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-GND-Sasl: edwin@etorok.net

Hello,

The manpage for puts [1] doesn't mention errno.

Therefore for a long time I've avoided looking at errno when any of the
stdio functions fail (errno could've been leftover from a previous
call, or some internal, potentially unrelated and handled error).

What the manpage says is accurate when looking at the C23 standard [2],
however on POSIX systems one can do better!

Both POSIX 2008 [3] and POSIX 2024 [4] say that 'puts' sets 'errno',
and that this is an extension to the C standard.=20

The FreeBSD manpage says this too [5], although it doesn't mention that
this is an extension.

It would be useful if the Linux manpages got updated with information
about which stdio functions set errno, and that setting errno is a
POSIX extension (I'm hoping that POSIX is consistent and all stdio
functions would set errno, but I haven't checked in detail).

Should I send a patch that attempts to update the manpages, or do we=20
need to check with the libc mailing list whether this is in fact
guaranteed? (e.g. if they've implemented it according to the Linux
manpage, instead of the POSIX standard, then errno may not be set in
all cases that it should...)

I've also tested whether this is true in practice, and the following
program prints a 'Broken pipe' message on 3 libc implementations on
Fedora 42: GNU libc 2.41, musl-libc 1.2.5, dietlibc 0.34, when run as
'./x | dd count=3D5 of=3D/dev/null'

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

int main(void)
{
  signal(SIGPIPE, SIG_IGN);
  while(puts("foo") !=3D EOF);
  perror("puts");
  return EXIT_FAILURE;
}

Or perhaps even simpler, this prints 'No such file or directory':

#include <stdio.h>
#include <stdlib.h>
int main(void)
{
  FILE *f =3D fopen("/nonexistent", "r");
  if (!f) {
    perror("fopen");
    return EXIT_FAILURE;
  }
  fclose(f);
  return EXIT_SUCCESS;
}

P.S. I discovered the possibility that puts may set errno while reading
(the excellent!) book=C2=A0"Modern C"
https://gustedt.gitlabpages.inria.fr/modern-c/

[1]: https://www.man7.org/linux/man-pages/man3/puts.3.html
[2]:=C2=A0https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf from
https://www.c-language.org/
[3]:
=C2=A0https://pubs.opengroup.org/onlinepubs/9699919799/functions/puts.html
[4]:
https://pubs.opengroup.org/onlinepubs/9799919799/functions/puts.html
[5]: https://man.freebsd.org/cgi/man.cgi?fputs


Best regards,
--Edwin

