Return-Path: <linux-man+bounces-1358-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B49F09297CB
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 14:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A8C81C20363
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 12:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E7D81CAB2;
	Sun,  7 Jul 2024 12:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WOYanUjb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDE11CA92
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 12:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720354884; cv=none; b=W4HHPXG4USFjbtRv0eGXUNvmRBUOAjqL3NgDGQ9ZvJ939dX9MqSfr9PCNf6KMoV/L9UjfQV/+/fEnLFUMjFAf98dm7qHVnav/virHLJs9NYYBm9eUeidtt5XpSUf02Xb6Xw3lMZpkE1YtjQBUkfIiygO9ZrjgmwPRZ+6ulvrDlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720354884; c=relaxed/simple;
	bh=0u3PqT7ayChcaNPcH3OpvxzIWLFP+p1+Cy8CvEgkzDU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=t2JsCM2RbmGYljNFpE2ksTE3tu41uGNLKwTH4y996HR397JetuOmf4yu7Km/PlDZ9Fl6RTxVCWiXe1QgsGFMUvULzHHnZzqnqgKHZpM2r6KS/9DFtgBDqjctq7QdFPUbMVyfssgJ2Sp4mps7C/JjL+/sdOP4lRvIflyqf7WlUkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WOYanUjb; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-367ac08f80fso1034839f8f.1
        for <linux-man@vger.kernel.org>; Sun, 07 Jul 2024 05:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720354881; x=1720959681; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qkPOXFK0JUNmiRasN+Ew2qKJN4a9iGucrRGoDrrPXoo=;
        b=WOYanUjbBxqEsl4343pNp2yxX/47wQFBJ5f+RGh9TiPll1X3J7+zNN+Y5TyvwL7qwG
         P9HpomzA6KEuK0y4YEX0Gfbg7ipmuRy+KXVkBWTPGumSqtQMav9b1jkka8uUAUMU0FE2
         04sgrTcQsze+W9GXSXKLiQU4Hi2jCO6klsL1H9A6JsYWnRkx8XnJv/G3y8691VpuJTvd
         0c1hAZemyqNN7QSNKCY1glkDLrKsEHpfkSb4z1eK6EL6SbhQ0Mli/PAHuDKTFqEqyxZQ
         YWnTliSeJ01b8iY+K89GtWsX1Z/xRyLKJnYfOcV22EATb7IjIooYRrtFDOKnu/4/cu4a
         EdQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720354881; x=1720959681;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qkPOXFK0JUNmiRasN+Ew2qKJN4a9iGucrRGoDrrPXoo=;
        b=u4YAp0LTo5qjzJUunIoZ4u64CBWYTkoDouMjHq26T71jHzSjRh1ZyQGis5h2Mj8/QW
         26ILxtNmyCgBOrwuprwnhZwtxsBrCkjMG+IdMtTZOVLemkPq6SzJl8oa0c5PPYmsXtft
         6AOdIdGJepn9IvQupC+SSKsuCE/6H3anwwkGAo+qzxvu5+mO4PuJyLmnHXF0IbBQpL5W
         /KciOl+YqevBdU6vhjkbq7DZhCKwPpChhHt2zMblI01AdigFbZHjfaUGvhHpNMbLdhXL
         o2h5L20RgAT7Kf9ZpwpzwrlUS4gnqds/ZanUwD7WEszzxwwuqtK1FRvdJiZ7GaMVEX3+
         Lp1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUUqOKfepkkSgyWZNXaGe2tQ0cN9ph0sxl2pUxLLFX87ItWhi0ZzafDmFyS0DohnEtW/ttTSR2H9aXNPDd+9iQmEJGqC30tmcje
X-Gm-Message-State: AOJu0Yy/3k05P6MXT28gm6fO2X+uSm2OYAy6pI+CnssrB+stULX0JkJD
	5pL3y42424bu6/A+WMKKwbgLMjzqnBmr0Q5sEAgcJ70O8GWVk97v
X-Google-Smtp-Source: AGHT+IFBeSvwsxlCPFYtje2SE8fdnec4NplIiPo2iD1McjvwpBUUVHM2RVNLh8O1wgv4bkrpXwX7DQ==
X-Received: by 2002:a5d:508c:0:b0:362:df5e:6807 with SMTP id ffacd0b85a97d-3679dd2ad9emr7244100f8f.28.1720354880710;
        Sun, 07 Jul 2024 05:21:20 -0700 (PDT)
Received: from 2a02-8388-e203-9700-eddb-fb4f-5189-911d.cable.dynamic.v6.surfer.at (2a02-8388-e203-9700-eddb-fb4f-5189-911d.cable.dynamic.v6.surfer.at. [2a02:8388:e203:9700:eddb:fb4f:5189:911d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3679c12440asm8637453f8f.73.2024.07.07.05.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jul 2024 05:21:20 -0700 (PDT)
Message-ID: <567c558f7ae6f26902105cc208b1fde241e6df6d.camel@gmail.com>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: Martin Uecker <ma.uecker@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert
 <eggert@cs.ucla.edu>,  linux-man@vger.kernel.org, xry111@xry111.site,
 jakub@redhat.com, lh_mouse@126.com,  jwakely.gcc@gmail.com,
 Richard.Earnshaw@arm.com, sam@gentoo.org,  ben.boeckel@kitware.com,
 heiko.eissfeldt@siemens.com, dmalcolm@redhat.com,  torreemanuele6@gmail.com
Date: Sun, 07 Jul 2024 14:21:17 +0200
In-Reply-To: <mlzyfpvrnihbcg27oopghds5mm5ysz6sujrxvnbiixlcs53nkd@ibyybtnekhyc>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
	 <mlzyfpvrnihbcg27oopghds5mm5ysz6sujrxvnbiixlcs53nkd@ibyybtnekhyc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Am Sonntag, dem 07.07.2024 um 13:07 +0200 schrieb Alejandro Colomar via Gcc=
:
> Hi Martin,
>=20
> On Sun, Jul 07, 2024 at 09:15:23AM GMT, Martin Uecker wrote:
> >=20
> > Hi Alejandro,
> >=20
> > if in caller it is known that endptr has access mode "write_only"
> > then it can conclude that the content of *endptr has access mode
> > "none", couldn't it?
>=20
> Hmmmm.  I think you're correct.  I'll incorporate that and see how it
> affects the caller.
>=20
> At first glance, I think it would result in
>=20
> 	nptr	access(read_only)	alias *endptr
> 	endptr	access(write_only)	unique
> 	errno	access(read_write)	unique
> 	*endptr	access(none)		alias nptr
>=20
> Which is actually having perfect information, regardless of 'restrict'
> on nptr.  :-)

Yes, but my point is that even with "restrict" a smarter
compiler could then also be smart enough not to warn even
when *endptr aliases nptr.

>=20
> > You also need to discuss backwards compatibility.  Changing
> > the type of those functions can break valid programs.
>=20
> I might be forgetting about other possibilities, but the only one I had
> in mind that could break API would be function pointers.  However, a
> small experiment seems to say it doesn't:

Right, the outermost qualifiers are ignored, so this is not a
compatibility problem.  So I think this is not an issue, but
it is worth pointing it out.

Martin

>=20
> 	$ cat strtolp.c=20
> 	#include <stdlib.h>
>=20
> 	long
> 	alx_strtol(const char *nptr, char **restrict endptr, int base)
> 	{
> 		return strtol(nptr, endptr, base);
> 	}
>=20
> 	typedef long (*strtolp_t)(const char *restrict nptr,
> 				  char **restrict endptr, int base);
> 	typedef long (*strtolpnr_t)(const char *nptr,
> 				   char **restrict endptr, int base);
>=20
> 	int
> 	main(void)
> 	{
> 		[[maybe_unused]] strtolp_t    a =3D &strtol;
> 		[[maybe_unused]] strtolpnr_t  b =3D &strtol;
> 		[[maybe_unused]] strtolp_t    c =3D &alx_strtol;
> 		[[maybe_unused]] strtolpnr_t  d =3D &alx_strtol;
> 	}
>=20
> 	$ cc -Wall -Wextra strtolp.c=20
> 	$
>=20
> Anyway, I'll say that it doesn't seem to break API.
>=20
> >  You would
> > need to make a case that this is unlikely to affect any real
> > world program.
>=20
> If you have something else in mind that could break API, please let me
> know, and I'll add it to the experiments.
>=20
> Thanks!
>=20
> Have a lovely day!
> Alex
>=20


