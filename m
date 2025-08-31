Return-Path: <linux-man+bounces-3776-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF01B3D375
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 14:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8226A17CD73
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 12:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0069825BEE5;
	Sun, 31 Aug 2025 12:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yc1+RprW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70625DD07
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 12:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756645017; cv=none; b=iNG5dtWuza+vwrVRAc51BMCDmYIquINsfaSbdnOGqXezMEZ8n1uyTyjD5cVjHQ9FuuchoQKiomFV7cO4P3dDQWGEbEpaNnDd00wH+jPGunqog1O8tF+rimIPzYVg2AdBJqfwNWOKaN/aREoy6tTGQmknd6eh8ETV801GJjvYxuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756645017; c=relaxed/simple;
	bh=QIdCV4a4DRRzhN5pggVssQjKjrfV4NWiH0LmJweGH3I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ck2/6JdbGb00kxK0Ta3fe2e0nVNDhj4Wt8VLhp0UW07riLigfbN17HhsnwBUSUdnATrAvngVRBCdLVc2DM00I1hmr9eRaCpplGsYjkdM9E5WugM+TyKNAC3bbAQ6Y1QT0DKS10eJYpeff6GbNtSL0EVCZ24+DC46PQp+TaBe/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yc1+RprW; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3d17f24d42fso1174711f8f.1
        for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 05:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756645014; x=1757249814; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RzblCZtguG4OeyZlPfV9phgs9NJ5iUuzw5hM5Gt/qz4=;
        b=Yc1+RprW87x52zLaw97zMfIVoUcIEfN55TafLqWEmQGLLX7b2DsvfSNVigAZEi0oBp
         argpFwvjQlUhwCzUTuzwgmYeBsguA06M1qnqHnO3z3bHTvAlBhMHtgq1JuFAT2jjl13j
         zVqxGLh9rcqMTGa8S6mBqX3UrhY2zN70Gpvma67c13S2wFkylYwrDeGZOB6VdvFYUKDX
         EGLoe6EvFBW5b4xlsFPyiY3AgyKlOJ7EW+mwl4aaPYM3BxdOqoz34hDsuqZWJP/w+5Q2
         dWV2UDSyZZCx27sJVsP4z/aQLr/P/B+GhmZjBGIbRrIMqu2TricM76EfByjPPvcJBskA
         Sf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756645014; x=1757249814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RzblCZtguG4OeyZlPfV9phgs9NJ5iUuzw5hM5Gt/qz4=;
        b=ZQgd86XHKxlESRug4bUFIp7Q9dHtf5jcGZE1riv1wFWSLSks/u7JS3mRsVNut/bANE
         a88jYZboZFIx7ifCbSFzCalktHueZLPCt762yTGxMkjn7etAEmxPmhypQ52gr7zmvenH
         J1u1+7429GaPeYO9H6DsCOpx4Dv4aaBPMtP5u5Pj8dSOBpeYGi5LAqllfMInOu49MjYX
         vBvQV7DuWEs0kK+GB2vXUVrNZW4xXg5XDCbWC//6Rl1O9+VMGSqADY1/GYLZ0g5PE09C
         F1GNFXws22+uYEhN2beZsIB64U+mk1yBd05ehywEl9h1yVIdQ4expch7kiJj0/HdfhBF
         XRJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyLBMIMB5gDsxuXLL6NSB+XzIAEvxFXGJt/elR6CwmWgh1hvdADgDpqDSSWbHwu0ucExBgmCxxcGU=@vger.kernel.org
X-Gm-Message-State: AOJu0YzCPA9frHIagCapwiz+ZuNiOQHhfTPb88GONL9X38yfAEtmesTR
	L6DhsRITD4erb9/1Hk8zSNWPGh/BmUfhZuJs5bN61bEID99Ejmyen/wDrKMmHZrMXEUJoe4h/uo
	0ogLwXcJ+ErBDRfb/yAd09V3vlhdT/Nhj63Nt
X-Gm-Gg: ASbGncsX+gnPLF2iSiXCqZN0pgco02CA3sf1fN9A6Fq50GZf9AhUjXv9hfvD8aCy+aa
	JJ1cy7GBTxXLyHql+fww1CzKrex4FhpGP4O+C2TohAFUEI6PH/6UFkuxl13ls2RjXNJbARyFaS5
	bPPBsqGoPckiCfhWL/pvFlHYrwujYvUboPn/gm29MY6vn/8rizrYO/b7/1peSKqxQ2P9ShiqS0/
	bNQdtZt0MnbuYPqMgDomV1PRFfYHmhteJ3Ql+gwmQ==
X-Google-Smtp-Source: AGHT+IGKR15mBttL7uDnLsu3gQB+NbbmkoQqqyz5s4arXpogjJRjC7n3fP5lz+jO1zvuskIxP2z6XbAjDqi/nIFHSr4=
X-Received: by 2002:a5d:5f90:0:b0:3cd:cf31:d760 with SMTP id
 ffacd0b85a97d-3d1de89a698mr3763099f8f.36.1756645014174; Sun, 31 Aug 2025
 05:56:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de> <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de> <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
In-Reply-To: <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
From: =?UTF-8?Q?Mario_Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Date: Sun, 31 Aug 2025 14:56:18 +0200
X-Gm-Features: Ac12FXyG4LWW_E-p5Uv6lIJcmUP-Ce4F48x1W95MK0ksWiE5ixM9mA4tzs9xHqk
Message-ID: <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
Subject: Re: Issue in man page motd.5
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="00000000000011159c063da8ca80"

--00000000000011159c063da8ca80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Am So., 31. Aug. 2025 um 14:11 Uhr schrieb Alejandro Colomar <alx@kernel.or=
g>:
>
> Hi Helge,
>
> On Sun, Aug 31, 2025 at 11:42:49AM +0000, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > Am Sun, Aug 31, 2025 at 01:33:46PM +0200 schrieb Alejandro Colomar:
> > > On Sun, Aug 24, 2025 at 02:48:45PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >
> > > > Issue:    double space before "after"
> > >
> > > I can't see that.  Can you please check?
> >
> > > > "The contents of I</etc/motd> are displayed by B<login>(1)  after a=
 "
> > > > "successful login but just before it executes the login shell."
> >
> > I see the double space in our po file, but I cannot deduce how it is
> > created there, maybe a po4a artefact?
>
> Possibly; if you report a bug to the po4a, feel free to CC me.
>
> > So please disregard this issue, I mark it accordingly for our
> > translator.
> >
> > Greetings
> >
> >            Helge
>
> Cheers,
> Alex
>
Yes, maybe a bug in po4a=E2=80=A6 Currently, the line break after ".BR logi=
n
(1)" obviously causes the double space. Without further digging into
the Po4a sources, I found a workaround for this. See the attached
patch. But it is based on the Git repo of manpages-l10n, so it cannot
be applied directly. It's quite simple; you'll see what I mean.

Cheers,
Mario

--00000000000011159c063da8ca80
Content-Type: application/octet-stream; name=motd-patch
Content-Disposition: attachment; filename=motd-patch
Content-Transfer-Encoding: base64
Content-ID: <f_mezowhd50>
X-Attachment-Id: f_mezowhd50

ZGlmZiAtLWdpdCBhL3Vwc3RyZWFtL2ZlZG9yYS1yYXdoaWRlL21hbjUvbW90ZC41IGIvdXBzdHJl
YW0vZmVkb3JhLXJhd2hpZGUvbWFuNS9tb3RkLjUKaW5kZXggZGViMjRjZWMwNzAuLmY0MDljN2Qz
OWRmIDEwMDY0NAotLS0gYS91cHN0cmVhbS9mZWRvcmEtcmF3aGlkZS9tYW41L21vdGQuNQorKysg
Yi91cHN0cmVhbS9mZWRvcmEtcmF3aGlkZS9tYW41L21vdGQuNQpAQCAtMTEsOSArMTEsNyBAQCBt
b3RkIFwtIG1lc3NhZ2Ugb2YgdGhlIGRheQogLlNIIERFU0NSSVBUSU9OCiBUaGUgY29udGVudHMg
b2YKIC5JIC9ldGMvbW90ZAotYXJlIGRpc3BsYXllZCBieQotLkJSIGxvZ2luICgxKQotYWZ0ZXIg
YSBzdWNjZXNzZnVsIGxvZ2luIGJ1dCBqdXN0IGJlZm9yZSBpdCBleGVjdXRlcyB0aGUgbG9naW4g
c2hlbGwuCithcmUgZGlzcGxheWVkIGJ5IFxmQmxvZ2luXGZQKDEpIGFmdGVyIGEgc3VjY2Vzc2Z1
bCBsb2dpbiBidXQganVzdCBiZWZvcmUgaXQgZXhlY3V0ZXMgdGhlIGxvZ2luIHNoZWxsLgogLlAK
IFRoZSBhYmJyZXZpYXRpb24gIm1vdGQiIHN0YW5kcyBmb3IgIm1lc3NhZ2Ugb2YgdGhlIGRheSIs
IGFuZCB0aGlzIGZpbGUKIGhhcyBiZWVuIHRyYWRpdGlvbmFsbHkgdXNlZCBmb3IgZXhhY3RseSB0
aGF0IChpdCByZXF1aXJlcyBtdWNoIGxlc3MgZGlzawo=
--00000000000011159c063da8ca80--

