Return-Path: <linux-man+bounces-3775-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD11B3D374
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 14:56:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3C36189E41D
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 12:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B48D263F2D;
	Sun, 31 Aug 2025 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MQ7czhYG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE948634C
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 12:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756644994; cv=none; b=FZHQHc37WrzDGEanl0K7CVOtMlOSKfifpmLYyjMzUTUL9wdOnJtrE9kW3R989IKqPkErDvJOUDHnOncdW0Nwtxhlv6RF8xP5XMgsCwSzk/iBCyyALTY2pDoPGVE08QaFFWK5GBMsdPm/mEJcyA1JLNYzv9SSrAg5qM/sAAnI3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756644994; c=relaxed/simple;
	bh=73WQGw9fB6VKmMJAGGlrPOcAQUVQ5CmNsi95oy4+vlw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=goDKcc3qX17nXVIBDrfQM+yqNCCGS1/g6xD9c+0U+Wa6ioFbYNJ6/Q+8Hpyugqa+1YXaUIX7EfIT42fpMpXE8f9iJlO1U1eVnVOorHYy98z75woxBPsrtNiPMeezw5thW1kUcq+okUt9IzrrslRWxIld0pIfZSwgR2HwmqQMAlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MQ7czhYG; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55f7204b6aaso868732e87.2
        for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 05:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756644990; x=1757249790; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5wnazYDcqv5uXUn6wRM2BV7yPKr3zwDxLsCbNDZ1f2g=;
        b=MQ7czhYG5NjfenUAMzfOu7DA5IGJsYEb3ezF9RABQ92Gdcdx1x3pdCNtoiliqeiONA
         Eyn0GWIDHPzF1AQFMcb0Vm/4N2fPAk/CgzLx/eRjvGvKQ6iLXk01d1xQK/QYhd/ytsj5
         o08R3j01ZoKwl9AA3dI2TAccCXIFgSCpjlW9Bd/tRTzO2jGoyy0rDF/d6Mlaw7H02kj5
         kjE/uzASxh9/P2Oeq1ru7otwADCbZxanYeq4NADrynfjyGGlRYlrkApWLzK6e6Slfv8G
         bxJsjEE6oxbW1b3b+wZs8FnhRtwtfzmU0Dn1jgOmTdxh9z2ynvVr9ubu1pDWFrDfBiym
         J6PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756644990; x=1757249790;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wnazYDcqv5uXUn6wRM2BV7yPKr3zwDxLsCbNDZ1f2g=;
        b=FRKqZqRxNV3kAB0NOfPq5vsvJ1EVRWi5ltBdC1ASmGtvgTCRpYVL3Aba4ns7RdMZWD
         IpRZIdFyZSxitIEqjHnfJFh7P+1qYYrLmwFevINbvJ/XUp+8mgaMkj4gGBqDlFfnRpJ1
         jWY691XrfhSnyOQklc8RxILbFOFPEn7VameBY75plk53SRBmv2Vi+WIH90WrhJAgnaz5
         oHaFUlGzXLtlADheAg/hPxoFI6EbvVjinJYXwVp4/cRKcR5/i5XtSeGgVAAUFTnAGb3X
         P4DoltlX+PjTahf5HcPKxtXzhtAcqEvenoMe83ZWYnsYCsqysRCn8Gwa4EqKlPHGNxAE
         lAfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWun75WXGw+lSE/KuOGuQoNPr64Zn6Al6plTrvpOois5JyakOcckxTF99xDJ+igzogw5gXNVPSfuZA=@vger.kernel.org
X-Gm-Message-State: AOJu0YytzlPRRE1A3A85VpTjVtBC3Y1Z5gsyWHZUW9jkbczqWdkl944G
	6mcfn1GLrQ1/G7twzDrtD/5bH2bnK8AkDhJM4skiyMPhbkYsCGqtvXKSCBliucVIhIKxuKsg0xn
	HOcWqN3boPg2aseBJLJrgcS5CDHYAY30=
X-Gm-Gg: ASbGncs1kQtegAKUBjiNkOoMCt0tAaVLgGf8abg6UNzWOygnUZMP3XchBYlRuouLIti
	WWdZNH7JykKEDexYi4pfXBrY8Ek88O4K36jRB8R5d77/eiIbOiVAWcY+95T0HyKU7dXG+mos3Jy
	43ukwBigvRSYKVyAFRDga7hQccfVXpG5n0Py/WKinp/l/NR0i+Lpsa/FB+r7tYnMihZuH3RLO2k
	oEqKXR39O6u3MM2U+2P287MfJTLc3CgF+B0UqoVSw==
X-Google-Smtp-Source: AGHT+IH1soEhR1+pLvUNi4t0OguIVrlUEnf75pKpPv9a4gudqdUepU7qqgMyXyJ1hw53Zrgd+bkYajx7OaDISOVYv5I=
X-Received: by 2002:a05:6512:3994:b0:55f:43ab:b228 with SMTP id
 2adb3069b0e04-55f70a3711bmr1020795e87.55.1756644990079; Sun, 31 Aug 2025
 05:56:30 -0700 (PDT)
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
X-Gm-Features: Ac12FXxVwE4RVOR7zy4bbKPZ46Wu88aR4Td5bZbFTHHQQDQhEsHRePJUDvbQUaw
Message-ID: <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
Subject: Re: Issue in man page motd.5
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000a17fcf063da8c8de"

--000000000000a17fcf063da8c8de
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

--000000000000a17fcf063da8c8de
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
--000000000000a17fcf063da8c8de--

