Return-Path: <linux-man+bounces-1525-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EE293D6F4
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 18:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF2F0285CAC
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 16:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBC117838E;
	Fri, 26 Jul 2024 16:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cnLd03FX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17E8749C
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 16:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722011756; cv=none; b=PQAsiouvU8XvlopQ9fNaOcCsfzHKf7Rczk7lytm+ZMjaFywnK82QU8uQh98dCOmEWS3OuUOKewvG7jYIeR/r/MESKTYCjgOzovvZ9hAi53mjNzETQ4ovpcgZnpDjFSKr3FRsB5nLp8lsFfhz7EZhvT4BFx4Jw4q0We3qL30AzkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722011756; c=relaxed/simple;
	bh=QRxH0JwocfZEXL4/OiKp0WJSthAJLiIX8/EswzY9Ro4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=be52qfSddX58IU17YhBlU/kVUV6NXyiQRQboUY+dYr3+MpH/3V74mywi9i7C10WNfEUyclFQzxvsVI3w+jCJyEFam7US9H56Nu8lVA0EC2tXyzSkXV6pzTERC6PBHKlahvfOO6s686NKp0uaLbcJkFEQ1GniZk4A7nFBJ07a8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cnLd03FX; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5d5c7f24382so459171eaf.2
        for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 09:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722011754; x=1722616554; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qiNJ+sFuugvWbZSmY+/o4/NbIrfJSGvGpm6tBOp0mfo=;
        b=cnLd03FXxqFcmPDnBGZg8+S0h8KiN9dmD70mK0ebigV7/+htDJPIFRxj50Drt4m+Km
         Lle8N5zxLH95YGHJzDkwtu0uIv+JKziFWWmp+fkuQnPdX+toAS4Wg3OzLxETGWbKpD/s
         G6Ux58R0lw/SERUfd97kRGgxHR+f68eVV5E/4qWfU6gU+uQcJskkm7ooXLWas2svQ+H/
         bHkCD5Qo7tjDTHT44FicHyAe8xeihRhqUuSVNwJM3pLTdXRNKG1z+BMCmClONI/UUJoP
         KJWLPSqPPNE4uwtKbl0EcG4TOu8cOWUDZEKPLuT76C0wJzVD4fBgQLFc6UkpzJyjmMsk
         7BIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722011754; x=1722616554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qiNJ+sFuugvWbZSmY+/o4/NbIrfJSGvGpm6tBOp0mfo=;
        b=vwfO+bVkM5nb/9VuYposPbrC9O1kj4qBTMsl30v99+EMi48tYNtqHiK6cVd0T8tDWH
         DkLE4E4q8olitht9iFXacEGh/SwIuVgZB3jm9vKAH7JmmC0mZFgLljLzf3Gy0XeeklSR
         mvk8YPgYbA5a2TydV6YNYUR45RwvMhyBg2NLIkoFMNKd/yWVY13Gt6LoSZRvhn/Jf8E2
         WGfVHMBKSc5x5larpagF6dPm3wFQwcZ6rYYIWA/8K9v9wLaG6hJTOfXwoSEgSLtpHOxs
         jKp0jL6fCyQs59pxwwMzt+HOMSCIARHhx63az5kO9y7/KDgFRgMrREK0zwICPYdQM+mz
         +Btg==
X-Forwarded-Encrypted: i=1; AJvYcCWRTTZW+v1Z0N0e1nGTkS7kfqvKxt5bvnyLYjTyKYKhfcjssMMZzBLfczpYaymZlFaybansFHjvBdfmxwv9mTacYxKVhjVVsSJC
X-Gm-Message-State: AOJu0YweOLVoeRVWxVd9bJ45oiejQIl/VlcTxI1zooVBZ4fZRm3pr1BQ
	aN6Q/gi9Vz3OB39Up/ldy15VZ0Oq6sIZOWMWUo4vOCmfi237mX9C
X-Google-Smtp-Source: AGHT+IHKjPomIgb73zrTdZ9hvF/4PiGqrOWqr6GnhElw3twIxmRna2dhKAqnzV+0C7odHgbgcnR6WA==
X-Received: by 2002:a05:6820:16a9:b0:5d5:bce7:677 with SMTP id 006d021491bc7-5d5d0ee0328mr106170eaf.7.1722011753719;
        Fri, 26 Jul 2024 09:35:53 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5d5b34983adsm444055eaf.12.2024.07.26.09.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 09:35:53 -0700 (PDT)
Date: Fri, 26 Jul 2024 11:35:51 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Joseph Myers <josmyers@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	uecker@tugraz.at, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>,
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com,
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com,
	sam@gentoo.org, ben.boeckel@kitware.com,
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <20240726163551.5fn4mei345wseoap@illithid>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="myymmeijrhwcax5z"
Content-Disposition: inline
In-Reply-To: <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>


--myymmeijrhwcax5z
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
MIME-Version: 1.0

At 2024-07-26T16:24:14+0000, Joseph Myers wrote:
> I know that "noalias" was included in some C89 drafts but removed from
> the final standard after objections.  Maybe someone who was around
> then could explain what "noalias" was, what the problems with it were

For this part, I think the source most often cited is Dennis Ritchie's
thunderbolt aimed directly at "noalias".

https://www.lysator.liu.se/c/dmr-on-noalias.html

> and how it differs from "restrict",

I can only disqualify myself as an authority here.

> To comprehensively address this demands so we can make sure that any
> new proposals in this area don't suffer from whatever the perceived
> deficiencies of "noalias" were?

I think it would be valuable to get such a discussion into the rationale
of the next C standard.

Regards,
Branden

--myymmeijrhwcax5z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmaj0GcACgkQ0Z6cfXEm
bc600g//csO584P6ggBvCAIipVK5CUZ70JCceGjTcaRyKRvaWeNRHhMIemtCX5gg
3yz+PR4C6Plk0BbPa/PCl4Rn+5YpA92P0PYBvX0i3voh4zUDhVV/C4H9qOavcCOQ
IMw0ojfz2ZnlPH6DYLP09O/1GwIOxpC+kEW1uYIykIVZAzTEYgVNjwm7JW4YoSt7
lSkDlbVk0XpwR1Xq8H9/+bk99sQ+XFCwc/zG1YB9s9aVzHJo2eey/ETyYAzJO4z4
y+H+vhuyN3F/EB0n2Vu6Y6WLiXi9r3gWJKTKJZs8G3bzds/FTihSTxXXKqHKnK7w
oml6ETVtqW5eNLF30SPeniT6Sz5hfpXPKSdZHkEtA9cEJRjIxtEBIAGm6A5svUsS
twAcMkaGyaC2np2tStyuLJ351J8CEKtqV8LMFyzTEaB2kn08X49MkR7s9LkTSQZa
VIJ+WiZ7Gd5AXLD2DAzwvqKnF+2CAgImMT8ADRWw2zUGaoH3ckdU1pdVZbS72geB
YW8TpdxgrI9KX5TK+KDek14vzdwo6X6fhwsLRPcTdSq2ufT4s2ENHytvcoU61p1y
9yGnWb1alAVPAABAL1j3vOmPCqNsozuoHgbKMJCCK/dxqbILTFcz4NsKP67Qstdp
RjeCL2PSR1lavs7yJCQrIrjBW4S6wHeaeRqP0Cdn4jvOIateIFk=
=jmE3
-----END PGP SIGNATURE-----

--myymmeijrhwcax5z--

