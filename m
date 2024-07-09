Return-Path: <linux-man+bounces-1378-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2241C92AFA1
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 07:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDB2A281360
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 05:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0EF55C3E;
	Tue,  9 Jul 2024 05:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="h8SYdckj"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86255139F
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 05:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720504739; cv=none; b=FyvULCSS5MxD5bfX0wFEND58TwiPAzKzUOoS5lvHR/e7uf70udJxBtXSUQxuMqGx+Vg4mfjbcoyMQytAC8gh1im1EkoGIrVg9JRCLPLVUhPooVWscPoAyu8SSvD1v1zEnztziRmz0FXMbGVGc2H3xRJHDOUnGhnTg+th2NVD8xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720504739; c=relaxed/simple;
	bh=+TkPnrxwvNKxJrRP6Y4eD35HbEsGU1wLFy6sIKOrQNo=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R7UFP614HttHrBYBGnVcZlS411we6RtSnLtFrdN78LbphjQL/JAPl82U5GyFf9aHcVv8Qg1wSVlO/++fC+IRyh4k92jf+SJWNk54Xj7uD0FATJ6egqyncfOfrAW77oPzXAUnBkpSC/+OCFEzD7LR0/0CK9wwk7rDQ1ZT8bvwnNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=h8SYdckj; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ga8H1i+gAo0YUR8kviwxdIf1qdkf8GIvHCsTz4yJnc0=; b=h8SYdckjJK6rgj8p+RqT2KvlaN
	5SHhx4Uz4eoI6n7elpm7iXYe8Sb7E/A9Y0dzKALYRSUK4gkifXLWUycBWDZs7Ju2yRevfwgBXRW1x
	SB7s+/jZePoHTZ8m6zsg/jW0Szh49D7vKe9pldaKBJq9hncc0cHy5dkK6XyCJDOuBH2xCwYjHiqTG
	35NknA8ajozUh3yppVXC18LcjEPgkzDsQ8esBKylA+EGX4wblBcxFD0GPFuy7G/7KVOOKeAo9cJr+
	6CIMlV3MVGdOzQNTu1VBU/kXUiimA3ca6KRHt9k590BLgVzLPURNOKHb4ybvFpOlfzfUt+h7fO4PT
	Nr85kXyA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:60506)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sR3sF-003Aeo-27;
	Tue, 09 Jul 2024 07:58:47 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sR3sF-00059r-1v;
	Tue, 09 Jul 2024 07:58:47 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Tue, 9 Jul
 2024 07:58:46 +0200
Message-ID: <a461e1766a197ff3e2bc1939c1ea5aec43d740d1.camel@gwdg.de>
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>,
	<gcc@gcc.gnu.org>, <linux-man@vger.kernel.org>, <xry111@xry111.site>,
	<jakub@redhat.com>, <lh_mouse@126.com>, <jwakely.gcc@gmail.com>,
	<Richard.Earnshaw@arm.com>, <sam@gentoo.org>, <ben.boeckel@kitware.com>,
	<heiko.eissfeldt@siemens.com>, <libc-alpha@sourceware.org>
Date: Tue, 9 Jul 2024 07:58:40 +0200
In-Reply-To: <yfzhg4mfjxf3bpvgamsgibaqj3npwofon33dorkgs643ttgxks@ujcklvwsph4v>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
	 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
	 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
	 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
	 <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
	 <yfzhg4mfjxf3bpvgamsgibaqj3npwofon33dorkgs643ttgxks@ujcklvwsph4v>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: mbx19-fmz-02.um.gwdg.de (10.108.142.53) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Montag, dem 08.07.2024 um 22:17 +0200 schrieb Alejandro Colomar:
> Hi Martin,
>=20
> On Mon, Jul 08, 2024 at 06:05:08PM GMT, Martin Uecker wrote:
> > Am Montag, dem 08.07.2024 um 17:01 +0200 schrieb Alejandro Colomar:
> > > On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:
> >=20
> > ...
> > > And then have it mean something strict, such as: The object pointed t=
o
> > > by the pointer is not pointed to by any other pointer; period.
> > >=20
> > > This definition is already what -Wrestrict seems to understand.
> >=20
> > One of the main uses of restrict is scientific computing. In this
> > context such a definition of "restrict" would not work for many=C2=A0
> > important use cases. But I agree that for warning purposes the
> > definition of "restrict" in ISO C is not helpful.
>=20
> Do you have some examples of functions where this matters and is
> important?  I'm curious to see them.  Maybe we find some alternative.

In many numerical algorithms you want to operate on
different parts of the same array object.  E.g. for matrix
decompositions you want to take a row / column and add it=C2=A0
to another. Other examples are algorithms that decompose
some input (.e.g. high and low band in a wavelet transform)
and store it into the same output array, etc.

Without new notation for strided array slicing, one
fundamentally needs the flexibility of restrict that
only guarantuees that actual accesses do not conflict.

But this then implies that one can not use restrict as a
contract specification on function prototypes, but has
to analyze the implementation of a function to see if
it is used correctly.  But I would not see it as a design=C2=A0
problem of restrict. It was simply not the intended use=C2=A0
case when originally designed.=20


>=20
> > > > Has the C standard clarified the meaning of 'restrict' since that
> > > > discussion?  Without that, I wasn't planning to touch 'restrict' in
> > > > GCC's -fanalyzer.
> > >=20
> > > Meh; no they didn't. =C2=A0
> >=20
> > There were examples added in C23 and there are now several papers
> > being under discussion.
>=20
> Hmm, yeah, the examples help with the formal definition.  I was thinking
> of the definition itself, which I still find quite confusing.  :-)

Indeed.

Martin

>=20
> Have a lovely night!
> Alex
>=20


