Return-Path: <linux-man+bounces-666-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DAF87F0A2
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 20:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B114B1F21F23
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 19:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA9956B7F;
	Mon, 18 Mar 2024 19:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cjwWfZE6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E846C219F6
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 19:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710791821; cv=none; b=j36ZA+bceIU64DNlPexNvthBFliqm6//mtKB7DWgxu7LRKEbZj4uLTT0IWf/z6inM+TfU9eUviKdfxEhX2fu6CGP2Uwl1EU5chM9IUaRS5121DZlSNSWCYjy7eEj8KK0C7OXOsjr32kk3vUlEI4zYgWx1a9oNPExZXKPpMU4hlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710791821; c=relaxed/simple;
	bh=W5pfRY4z1hUVlW1sJELYnoknQjvQHjbau/ZJn2cq1HE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AoGq0qBs9R28/az8kxD2lHsYJK116AI5wBjS5NbFd6pBats14EmLz0gPZWchjYNP+ZSbeo5sn6a9Yhtcq+9tJ3mBmsfeLClX2KmmPqBFAx0FmxRowGXz7sORNZjh5up38uQbpI1MdRLhVe39ke3YSiasJ2PbTMILEJy7GwBiEJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cjwWfZE6; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2222b96e4d2so2924313fac.3
        for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 12:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710791819; x=1711396619; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W5pfRY4z1hUVlW1sJELYnoknQjvQHjbau/ZJn2cq1HE=;
        b=cjwWfZE6+GPebcLiiG/fIFuUHL1NVb5DwLn9JcOp/lM4SxtbKj9khrVpXeHTV9ccG1
         qQ0xr34GRstpreHJmFtf053aVmpxwKnDoS29ugZaD6JACbJ/DF2THC7R3rRDFCNk2DD0
         bLnzLaw2qQXevhvSCu3wCSsz/RxUtlJxbp7ry9CJQm8RrhvjrA1fOGxy415c3jibkOiE
         FjhC42+avf/tEpXFrDgngZWihKrjdHsYKfQ5JZ1IxlaqS2H5dhvmFw0lEneMfPpyku0B
         jzoDCS9ozHJNoRVgN1z2mB2yLXDi8ZgM44sc23HRFbv8jupSj82ZDeYS12WAMkSqAQE8
         2i+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710791819; x=1711396619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W5pfRY4z1hUVlW1sJELYnoknQjvQHjbau/ZJn2cq1HE=;
        b=YYwabVraDU0MbCaicWM3LoEbXGj2mXC+btPYhzdCTZoRBsDhuIHOzxvJowsprWSZaJ
         zsGIae9A9sWvSve343No1v9a0yP4WTXAJVizdPhbBtcfWVYEChT6IXf4c8iaoIHY/OCC
         D1yESdk42fD0sFTTOWi053MXb/rqYUijrvljFcHdiUrDAOMwnONzen/Gt1bVPs6m5dR8
         hk4qjZiqJ1yp1ecxFW/ifsTuzhRa/UKiSJMEHTB4ytiN9aIBymjENXy9Qt3O2ap4UGKI
         uJzEX4h2i1Uji7VzNBCHo1Sh/d5asHyadWDISlGFWfgkh0ma5na41/6zMZokj1lGZdMR
         6wlA==
X-Forwarded-Encrypted: i=1; AJvYcCXubHLy5QsJ2QZoJ+VdJGDvYRyoBx4WMHY4NXtWMTJuDi3WhitRrdIyw4aw55EkKEQXtqCNDYbzEzFRjHe6j+befczK14w1RQgF
X-Gm-Message-State: AOJu0Yyi5j7wTxV3TazqorKpx0HmmGiVTmcXIq2y7xJoNZoZbAm1R4w0
	vaNgDsxfII39q0ChppDGolouIX/YN4M4R9ZHPCV/fFU64RQ1Kuwi
X-Google-Smtp-Source: AGHT+IG1WHkffWudIp+g4lePsavbqZmDL6p6WBz3NEO1b9ZY2RefZT7Oua9l0+0E/wVgSfHdRCvGdQ==
X-Received: by 2002:a05:6870:c689:b0:220:ff07:d01d with SMTP id cv9-20020a056870c68900b00220ff07d01dmr737476oab.37.1710791819079;
        Mon, 18 Mar 2024 12:56:59 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id gk14-20020a0568703c0e00b002260aa9ec72sm835019oab.26.2024.03.18.12.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 12:56:58 -0700 (PDT)
Date: Mon, 18 Mar 2024 14:56:57 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/6] intro.1: Revise language
Message-ID: <20240318195657.bihsax5gk5jx5tyc@illithid>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <ZfcCl6dcTFX9Zy6p@debian>
 <CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="amtnbq34umr4zgcz"
Content-Disposition: inline
In-Reply-To: <CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org>


--amtnbq34umr4zgcz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2024-03-19T08:50:21+1300, Jeremy Baxter wrote:
> > cat will show
> > but
> > cp copies
> > ?
>=20
> I think it sounds better to use the "x does this" form rather than the
> "x will do this" form, similar to what they have in the utilities' own
> man pages. What do you think? Should I change cat's description to
> adhere to the rest or just keep all of them as they were?

Two rules I've been applying to my man page revisions for a while are:

* Favor active voice over passive.
* Favor present tense over future.

This is "favor", not "always use", but, other things being equal...

Regards,
Branden

--amtnbq34umr4zgcz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmX4nIgACgkQ0Z6cfXEm
bc6A/A//RawW3grTGXyALI7n1daWYbJM+9ysdqRflBIobx7dh8M811nCPscaaGnj
z7roOvJGP8ZCMwkBzWjH21ZLPAxacJc6VPGlgatRyoHabZA319r6kkGpe3ddGCtU
JLTkf3DZIlhTiRfZTrRw9zI63UNogQXbMkPgCitP8akE7d4aI8ao3o9I7ip6aXJ8
BkwRVh0kEFd7kIUgYzcGTH03F5FlcOXV2ElN0AzKBP6DIYsGKLG67f5xijdd9Ter
8xFN2dNOH1ywWkK7COsJspAeQNi6aFZFFG2vezDcP5NStpSCOG24fH7JJMPL8vWV
svGChtSorVRkBDWDhjrEuOydZFfI6irORObJh6iu6YMlJjrhAtSB7xuY9BTnJyPn
MbnlfRmsRou16dIKcx3PBJSa5FtU6cYsVhodUjrRO4FHCdiZpag+iYX1amyr8RNL
kJ9G4p4LMMxVqbCUfV07G5RKD0UPIiE2bAyU6Tx6GHxSmXLOYhOZ8o7ZNM7G6Hw4
bh8K7I4zDu+26h1WI8ffEwN1H6GRVOTVPFZ9cdLUq4PWwUIYqiamtlLGNDFwMZ1s
u+F20wlAHcJ09WF2ihapwd0Xd13FSNskFPx6LIVdW6NL6g9rk3Q9o80wFunadh8T
Flh2R8FEW8V1QakxkCZBI7QhAy/6KmBT5gn3rrjOw4L7r2kwIEk=
=YrLD
-----END PGP SIGNATURE-----

--amtnbq34umr4zgcz--

