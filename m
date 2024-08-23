Return-Path: <linux-man+bounces-1666-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5461A95CC5D
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF9D2B231EB
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 12:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4201184552;
	Fri, 23 Aug 2024 12:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="bJdRExXq"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19494185B42
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 12:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724416143; cv=none; b=fvxegRpyXBWeOMtqwAdicURExoC6FszERDBUX8fAuwQ5FUwr6tF0XcEc83KX7dd8VIDqGBsNBym1OsvuSDVwJzhcl7HSx6P1XQDT0R3JcFkryOep0Spa2dstyKOjpdsrhF/pzt1IdmWYTHS6BJqYcpAXzECaV/qNF/FOIYPthX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724416143; c=relaxed/simple;
	bh=vrIg/himaRxAyps/vdn7097nHmLNkvVJMUk+ODu7CJ4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Odr2a5RYPmaYr40Wr+pCJrew5szFgAyFvS72mpWdATtBOSCJt4jUvuLL7epWHd5Iscw9kr+29/fmS2Fzt42465wRgBvmrC7JB7rNKx1Mxgtd6BV5cvVAhxVTs38mI8VZavyxKiGrybcOahz8E1TeLwLmJJpQamgNmlHWmwTDsIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=bJdRExXq; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1724416140;
	bh=vrIg/himaRxAyps/vdn7097nHmLNkvVJMUk+ODu7CJ4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=bJdRExXq6KdjTooVfo2By4zCAEFgiJHsfXm/SQen/GMsrNIprpyMwLewkxAQ6dLeF
	 GhwIH1qaRm1gG2Koed4u01NvKGmfRSvpE/klYPFKtQlhlxgbx2qxO7h2GUychZQpzW
	 bK82uWFMmCfGJo4ahAfU6VSumv7nVsQko53fwDvY=
Received: from [192.168.124.6] (unknown [113.200.174.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id D613C66F26;
	Fri, 23 Aug 2024 08:28:58 -0400 (EDT)
Message-ID: <6df14344ec74834892d0be7eb9a2140c85f15a1d.camel@xry111.site>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, DJ Delorie
	 <dj@redhat.com>, linux-man@vger.kernel.org, carlos@redhat.com
Date: Fri, 23 Aug 2024 20:28:55 +0800
In-Reply-To: <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
References: <xned6jlywd.fsf@greed.delorie.com>
	 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
	 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
	 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
	 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
	 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-08-23 at 14:28 +0200, Alejandro Colomar wrote:
> > > Because I'm being very careful writing that code, and still I'm havin=
g
> > > trouble doing that, I think we must provide some example of a correct
> > > call, to prevent many other programmers from doing it wrong.
> >=20
> > So IMO you should just say "the interface is deprecated, do not use it
> > in any new code."
>=20
> mktime(3) is not deprecated, as Vincent pointed out.

I must be lacking sleeping time recent days :(.

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

