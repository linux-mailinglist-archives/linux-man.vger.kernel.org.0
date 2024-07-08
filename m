Return-Path: <linux-man+bounces-1371-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D440A92A6C9
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 18:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E50B1F21C42
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 16:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2F7145323;
	Mon,  8 Jul 2024 16:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="Fr9xyG5F"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0456F142E90
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 16:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720454730; cv=none; b=ii+cJYx9BCcaBQyU1HaJA74jtvQb7T1Og7ZOj/qLxLtBsjnSgQhWq1kJWtPiB3ojTv4FJNWh+n97WDaVq65GlrO/dKbytmgSCeeFD1ZVxNoWUpoRp0JmLFmghdl+Pm62xkzYL+R+KBruimb0j2bRGw72xkS4PDdZ7N8HCx8SMPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720454730; c=relaxed/simple;
	bh=FFM1I1afPIVYL2VsVKVAtopsQNJ7j8ssroRzi0kjWeI=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EKcOdPM5qNySyx4m7onSi5un3GENojP/jAQj8+RD/TCcSndhGdRQjLi6IP9X9yD8rYTG19tUbvNGbxpSjQJ2Xm8bS1FwPSXIqTpq0UIL5T+0SJVv6eAn5FkNAj4uVjHWyWTTLkddqLOUiKrUi+9Lmmv7vFghhxN/NyJ44+M8a2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=Fr9xyG5F; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=+vCpgitCzoeFmQyAnqE9brNqxpL9FaCEqjS8bq6moxM=; b=Fr9xyG5F/3vRtaZvxqdxlDf82g
	dMFeVN8XUTEjiMAubGEYR3qcPkRUVoc0a/VR9k0IOw7Wc2klERo8H1YlUb/92/n3zQNeS1V+alUeK
	UBLomDcdkdGcQUzwg9ghHX+3KoFre06GurWZzVIc3dXawiD8BaDrv/ny5VRnpycNaQ6KFVlqy2gKj
	QE53Qy029LaRNy9hRrnycPmjj3wJqYndOnehqQ4qyoZUP0hTZVrZAUDOpIRje98W03TeRmkYaMGHt
	v62J5fYpB211w8W0LiZAs0JnuTw1hZVLhmvzrD5RRAw1ApsazjmNtxjjhQFJGG4zsJKBEaA/jpfBD
	aInmQy7w==;
Received: from xmailer.gwdg.de ([134.76.10.29]:49748)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sQqrV-0031i6-10;
	Mon, 08 Jul 2024 18:05:09 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sQqrV-0004Zm-0q;
	Mon, 08 Jul 2024 18:05:09 +0200
Received: from fbmtpc21.tugraz.at (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Mon, 8 Jul
 2024 18:05:08 +0200
Message-ID: <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>, David Malcolm <dmalcolm@redhat.com>
CC: Paul Eggert <eggert@cs.ucla.edu>, <gcc@gcc.gnu.org>,
	<linux-man@vger.kernel.org>, <xry111@xry111.site>, <jakub@redhat.com>,
	<lh_mouse@126.com>, <jwakely.gcc@gmail.com>, <Richard.Earnshaw@arm.com>,
	<sam@gentoo.org>, <ben.boeckel@kitware.com>, <heiko.eissfeldt@siemens.com>,
	<libc-alpha@sourceware.org>
Date: Mon, 8 Jul 2024 18:05:08 +0200
In-Reply-To: <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
	 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
	 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
	 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: mbx19-sub-01.um.gwdg.de (10.108.142.54) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Montag, dem 08.07.2024 um 17:01 +0200 schrieb Alejandro Colomar:
> On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:

...
> And then have it mean something strict, such as: The object pointed to
> by the pointer is not pointed to by any other pointer; period.
>=20
> This definition is already what -Wrestrict seems to understand.

One of the main uses of restrict is scientific computing. In this
context such a definition of "restrict" would not work for many=C2=A0
important use cases. But I agree that for warning purposes the
definition of "restrict" in ISO C is not helpful.

>=20
> > Later, I added a new -Wanalyzer-overlapping-buffers warning in GCC 14,
> > which simply has a hardcoded set of standard library functions that it
> > "knows" to warn about.
>=20
> Hmmm, so it doesn't help at all for anything other than libc.  Ok.
>=20
> > Has the C standard clarified the meaning of 'restrict' since that
> > discussion?  Without that, I wasn't planning to touch 'restrict' in
> > GCC's -fanalyzer.
>=20
> Meh; no they didn't. =C2=A0

There were examples added in C23 and there are now several papers
being under discussion.


> I understand.  That's why I don't like innovations
> in ISO C, and prefer that implementations innovate with real stuff.

