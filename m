Return-Path: <linux-man+bounces-4730-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C07FD03AED
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 16:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63DDA30A02ED
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 15:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08181500962;
	Thu,  8 Jan 2026 14:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WHJv11gH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD33500948
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 14:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767884368; cv=none; b=Jr3onFN95BYe9Q2+YPKTtq6pdWEPgf7xBTO+SsMB1UIO1SjrPJDJTa2cW86udhUahydEZ/XVu3Kym5fUYjHyrkKmAmmKlwOy1FLOS+0k/odTIdsVE9xxQop2Ex4MmY5TqTyH7SvxgkKQoQRLE0UuABs5VhD2LC9+s5QWlhSn4EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767884368; c=relaxed/simple;
	bh=p034+aCpl+g1IaLkhrPepowtoW+qRaIi1XNNAb/RtCQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cnq7t+y9fcreDc0y44MryC0utFi3U7/oXvL0UmO4kEvQW/Pj6jPidpUDv6Ies5bbYFOUEGDCzhGZW31HLcjxnfJ9pa9Ln8UkfnjPuyJKdxeDPaM8yslNJSbo3LmCFJ0icwKOYxtVRkZCWs8cOmtBdeF6vYYRcXnRDOBl2vkgURM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WHJv11gH; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so26318745e9.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 06:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767884365; x=1768489165; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sqfIHliliIPQa2RZiCwuwte+eHwFa/Jeb+FUs0+8has=;
        b=WHJv11gH8991lel0PkgaMkiyFtp66DdsLHFSCqQM0/y33DUS+F6ScNOJSr98xk3Dt5
         xcViQSrItm1rKrsC/j/bhtIzCHRDM9MkJQsIMdsKs8YAdr4B/FGHHeq3SCE9MUyAwYyk
         MTOFPiyHGDsWK+mGA7VfuAArRsyerRnQOPhBWXMsojYa5AxZVTJ4JeOQRqtt3mymoQTX
         fZyyK64GoCFPop/yRLSNNPC50R63Bky4QL1WlX0wih+oeNC8uAwccbn9cIR3I2+nrKp3
         IwcGSkWewHO2nVpZSHsOuMEQIZbuH9pCw65aeBIL4gYBKjhDqGzdHj5vz1JnAKMF2dM4
         kf+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767884365; x=1768489165;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sqfIHliliIPQa2RZiCwuwte+eHwFa/Jeb+FUs0+8has=;
        b=DMCXrpeGX4y9yT0bGZA21RJY4kNbdtqzJbJK2Xs2umnZBUBhEpQZYU2X1xWgSyofZg
         3GZjaHtoe2hm5sOocInGXiz/Jj8fSsCXKnFJxyxqZsh8eoHok7pBaJMkKiu+PLgBEt3e
         dEflcBB16CPJAnw9drr/HKIxF6tY0a9uer7cVoYkIgTHPpO+GmiYhZvanOWsFDIlXNWg
         5uNGGyll2yp7qiO1JiFWAlz+zLvP6wNoX8DQQQ58JoLTyzh57GzPiOsIcrS6qAcwgH2z
         aZeF2UxA/bJyNC7Pj3o/lZcZdBtFk56bq6IZ8f9SH7Sr2B8ZGr8YqEkHymJmPdmBs8Fp
         Il0A==
X-Forwarded-Encrypted: i=1; AJvYcCVEUfrErn+gekbje8G4U3tHKTRWAaVJ6m8CrqYS/gtlNFnugHBgF9i0wcVtUha3fVh+XLxPnwzEzsg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzZb7PvkQJwQAv5vHE0C+v9ICb0GiKk9ClfYMQfjh8o3JMTDhZl
	JyjH5xBDKbrjCm+l5yACOEXthINTow3KaSBqyAqoja7wwNEFWjy/XvwC
X-Gm-Gg: AY/fxX5XaByjbYa0COH32/VzPs617ycp3dfx97q1xg8aVXCiUMXJXrmhU9LrBs9h9gC
	lo3xPKtMR28mQQ/CVqwWQva+lG3NSp7YR6TPtAGEyVX8E8M4ZsCqk+BW4uU3cLsJCYiZ3jR3V2L
	HAgiOo0QmZA6jX2sl+NBfZfewzTILGXPjIHPTQtowiYYSqUOGbOUf4ID6v51v1LPpVWIc9rGAmg
	GrTdcuklA1rQQN7ck+MagDgHi504kpe3LvgX6YAniHe2Zy17+8CO6riPPr0lLwAJSs/BBIUnXgF
	0os9MOkA24mkuw6M7IKQRMSVuryMx1bkKVovsVtl82BX94UChXJSDj9JDbDRbaLx6tBCyCOCLsf
	y6biAxQvhhHCkEoHUHz0Wbnmy63fsazW8ylfycE8bEE6YCzrFRJVDI6nVIZbSOv2GBHsmRV29si
	Z6MZnvJ5EszOdj9PzSUr6szKBbifcaIGzfUYT8DxCB1fKan/XCEg==
X-Google-Smtp-Source: AGHT+IG8cj7xQb7AEQFf6kV4xh3O/fKQkNGDxjMvNhArE2dU10q7mQx5epJHXZx/lk4YvCFeYhEGJg==
X-Received: by 2002:a05:600c:37ce:b0:477:a0dd:b2af with SMTP id 5b1f17b1804b1-47d84b61341mr74463575e9.33.1767884365178;
        Thu, 08 Jan 2026 06:59:25 -0800 (PST)
Received: from tug-swl-226-95.tugraz.at (tug-swl-226-95.tugraz.at. [129.27.226.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f41f5e0sm152722205e9.8.2026.01.08.06.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:59:24 -0800 (PST)
Message-ID: <9ba7ba75043cdabf30bc98260848aa8b9e43c0bd.camel@gmail.com>
Subject: Re: [SC22WG14.34679] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
From: Martin Uecker <ma.uecker@gmail.com>
To: Joseph Myers <josmyers@redhat.com>, Alejandro Colomar
	 <une+c@alejandro-colomar.es>
Cc: David Svoboda <svoboda@cert.org>, Robert Seacord <rcseacord@gmail.com>, 
 "sc22wg14@open-std. org"	 <sc22wg14@open-std.org>, Florian Weimer
 <fweimer@redhat.com>, Carlos O'Donell	 <carlos@redhat.com>, Aaron Ballman
 <aaron@aaronballman.com>,  "libc-alpha@sourceware.org"	
 <libc-alpha@sourceware.org>, "musl@lists.openwall.com"
 <musl@lists.openwall.com>,  "linux-man@vger.kernel.org"	
 <linux-man@vger.kernel.org>
Date: Thu, 08 Jan 2026 15:59:22 +0100
In-Reply-To: <20260107220138.AE8DF356CFB@www.open-std.org>
References: <20251223161139.196AB356CF9@www.open-std.org>
	 <20251223164349.F0BC5356D1A@www.open-std.org>
	 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
	 <20251223211529.6365A356CF9@www.open-std.org>
	 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
	 <20260106210527.AA3FA356D3A@www.open-std.org>
	 <20260106214930.A5C8E356D2B@www.open-std.org>
	 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	 <aV4N-0egpfxhmnta@devuan>
	 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
	 <aV69o8h0I3Px7ryV@devuan> <20260107220138.AE8DF356CFB@www.open-std.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Am Mittwoch, dem 07.01.2026 um 22:01 +0000 schrieb Joseph Myers:
> On Wed, 7 Jan 2026, Alejandro Colomar wrote:
>=20
> > I thought you were talking about the UB introduced in C23, but that one
> > seems not documented in Annex J.  In fact, it's still documented
> > incorrectly as ID (J.3.13 entry 41, in N3220).
>=20
> See=20
> https://stackoverflow.com/questions/78691087/reallocptr-0-in-c23-now-what=
=20
> regarding the lists of UB related to realloc being out of date.  I think=
=20
> this could be fixed editorially via a merge request (to make the Annex J=
=20
> lists in C2y agree with the actual current realloc semantics in C2y) but =
I=20
> haven't got round to writing such an MR myself.


There know of various other issues and omissions in Annex J3.  I think
it would be good if the UB study group informally takes over maintenance
of this annex.=20

Martin

