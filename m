Return-Path: <linux-man+bounces-1536-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FED93DB14
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 01:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C177628207B
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 23:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E33154C0C;
	Fri, 26 Jul 2024 23:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="jTfy87Ml"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56D2154BEB
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 23:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722034814; cv=none; b=XidrEBtCsLbl93a/egwC5kfXXsp9RREy03d+GDU74fnfw9jMcSFx8RVxsz50zm4V51O+NR34EXUidh+lwn0KlKO7/i6PRYypAQczwEKbhML0GnYcCJahvL9DJFCmAfOOv/MgbDdUPXKKdXy1CLJqm1dVaq1eXzGZmKIw2GoKjHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722034814; c=relaxed/simple;
	bh=aoOeSW+ws5IA2HLLoYspBkV2L0bIs+wxYXNS7nzizpw=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SyePX5X7UANDcxJ3MJ6ubxIASPGSdy0XZNHCjnh52os0+EPIC4yWP4rzLiB9jbqUAW5zdNie3phXatwHXf4AR1TOoojT8f2lSI+nSyGruEF/X+guGZfzadt4MNXdSnbLCStqXoC6Q4X/l0kzxD9KULZNr1m3PZ4c/7aByE61/ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=jTfy87Ml; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=j40Im7bQOAUIwXhWkTlNU/Nxzmw1iya4YIPOExgrBNQ=; b=jTfy87MlqDSj9xWQnF7/4QgoAE
	oIg9yqrZaiJADaC2WmiHp1POdGpV5bc4DYaf/mkG221R/e3LHLWLYsmas2o0JogY9vFRyb8LMPP7h
	zWQtlSvMwdnYmEBN27ro8umlHPadU1Wmna6mqrwkCWhsXoh1wQ/cjqjOR9SsiYyUjigDylbP24czw
	gLIqmXgREP4DRbaTs0oJXhBmBiqZtb5719xYGowsRVbI2RCLPMeEsSyCTXLqQuHHcFT+YgY257kUI
	fL5PfkAJJAwygUfVz8zu+IwTG7xx3rLZIxuFxJoVwmyExvfCwxtC3nXwXiDtonWXT7wGkw7k/6cKm
	2+pK3TVA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:44390)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sXTui-009Vqg-09;
	Sat, 27 Jul 2024 00:59:52 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sXTuc-000R2B-33;
	Sat, 27 Jul 2024 00:59:46 +0200
Received: from [10.144.246.49] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Sat, 27 Jul
 2024 00:59:35 +0200
Message-ID: <aec126f0d4ee775b78accdbd14d35a5266cde3c8.camel@gwdg.de>
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: Joseph Myers <josmyers@redhat.com>, <libc-alpha@sourceware.org>,
	<gcc@gcc.gnu.org>, Paul Eggert <eggert@cs.ucla.edu>,
	<linux-man@vger.kernel.org>, <xry111@xry111.site>, <jakub@redhat.com>,
	<lh_mouse@126.com>, <jwakely.gcc@gmail.com>, <Richard.Earnshaw@arm.com>,
	<sam@gentoo.org>, <ben.boeckel@kitware.com>, <heiko.eissfeldt@siemens.com>,
	<dmalcolm@redhat.com>
Date: Sat, 27 Jul 2024 00:59:34 +0200
In-Reply-To: <rep4dolvep7xx77tirmdknhci5ogliqj44ufngop5b3xjjacoc@2azllzbk3lpw>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
	 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
	 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
	 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
	 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
	 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
	 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
	 <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
	 <rep4dolvep7xx77tirmdknhci5ogliqj44ufngop5b3xjjacoc@2azllzbk3lpw>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-FMZ-08.um.gwdg.de (10.108.142.67) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Samstag, dem 27.07.2024 um 00:26 +0200 schrieb Alejandro Colomar:
> On Sat, Jul 27, 2024 at 12:03:20AM GMT, Martin Uecker wrote:
> > > Maybe if GNU C compilers (GCC and Clang) add it first as an extension=
,
> > > adding diagnostics, it would help.
> >=20
> > Both GCC and Clang already have such diagnostics and/or run-time checks=
:
> >=20
> > https://godbolt.org/z/MPnxqb9h7
>=20
> Hi Martin,
>=20
> I guess that's prior art enough to make this UB in ISO C.  Is there any
> paper for this already?  Does any of your paper cover that?  Should I
> prepare one?
>=20

What do you mean by "this"?  Adding UB would likely see a lot
of opposition, even where this could enable run-time checks. =20

N2906 would make=20

int foo(char f[4]);
int foo(char f[5]);

a constraint violation (although having those types be incompatible
could also cause UB indirectly, this would not be its main effect).

So I think brining a new version of this paper forward would be
a possible next step, addressing the issues raised in the past.

Martin


