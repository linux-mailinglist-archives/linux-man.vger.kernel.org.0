Return-Path: <linux-man+bounces-3252-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9699B00804
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 18:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 863D13B0AFA
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 16:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4112EBDD0;
	Thu, 10 Jul 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jcoPnXPR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D32586C8;
	Thu, 10 Jul 2025 16:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752163433; cv=none; b=s53I6D4he9S6qmaqe16+d2UPTUN6ohbUaijNUiB1c3qjS/c3922PBpnemiMl5lKn6q0a4SgXPfmvUI8PKVc+PI2Ck3AGwefzWXurHoWS7yTeHBUpmP+rPN4RJihdMMiwboJ2vhAwdzaClwo853ev/NJtvlu7YA5xsJfzhD4tSg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752163433; c=relaxed/simple;
	bh=5wjLfpqKhb8SRoxNPZPH7y8LRpUwdx3rqYK9DKLCx8g=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YPAI76YAUkfeamNnJ6mB8q9MiYE4F5JILQEVIpKzzzx/ZRGH2k2s/KpH2rHLUQ2W6BepsU1vzP5mWjXBBWnpgoL8TRgDnR/t8bv5/oJTKaGpNaTpy6skIXD2dNRIZ/dLMt45guzy0amMEgTZ3pL/e7X/EA0dYI5UNFGodmT0ApU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jcoPnXPR; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e897c8ca777so1046090276.2;
        Thu, 10 Jul 2025 09:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752163431; x=1752768231; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n1DtY00ZcVqh/uSJ/TNrcX2T3gTAFtYjAiI+Zs8VDSE=;
        b=jcoPnXPRs012JNI6JqYWqvfmRkChalOuB/DgX/lL+cN1Iqcquy4t455Um/7hhUzc4s
         BPOuimsU8JKY3F7viuHOAQhPfUYfDojy/af7JRAZfnnzFcOpjaw/8bjVAr45AACe+3/z
         dy4CDsReVK6IczCz79W8dxJ+OAyJ7Z37WIvXRPKeryL9gFFTR6+hJNwQA4hLF3tKnk91
         noOy8Axbf9o+71bYNnzAF4lI6IMkHdayR81X+dch2LXRlo4aSQJTGm0ETnAQdvelXa3r
         /a6OnByYhaQn6AmZUY73KCRkb2cE0eio6KcU6GGpk2oCGVBTBUYbpa4pu3xrcBBS9iut
         dFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163431; x=1752768231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n1DtY00ZcVqh/uSJ/TNrcX2T3gTAFtYjAiI+Zs8VDSE=;
        b=h3fw6j/LiEtrveSi3d/1kH1d0cBgJOym3rNldkcGs+qTcSn8IT1WUMlEVFNbcCYj6x
         A2k9hE85Wm9TCYAwOQUXp1/16ez4OD9ZWRIXn6FIUV9VJdEtlh8h/iod7PBPZjjXuL2L
         WFYGKU2tsAwCINeIAAvZrRws+NTtiiZsyAbUFXKOA/+1sYsd0mnHfvXl57KaVKRpaPK3
         Nw+yGEDiwIhDTJyAaez+gmycuj3f/5M3baE+z+7U0Lf/eoknvdU9jhdxDMjk7LOhPyFX
         M7GCmxh5H0sryN9+ozdVbIAnjvMQHrxh2Et9rOVtFcwLQpTIGJlOrg4pKchliixjYH4t
         XQcw==
X-Forwarded-Encrypted: i=1; AJvYcCUIhk6BCYqLeKgsMjkmXQB39JqngPAJ5pz1RjhDdgWk45YqjN8Ou9+1I53367rosW+oZe/SzZlE5gU=@vger.kernel.org
X-Gm-Message-State: AOJu0YyxpReiTsTiF1Bp8cy1Mbs5f+jMoPdxeiVdkIoBT0OEQvAQX459
	MgbUjF4PUNnQ2Sv4kWlVeujmfR19KUSwm9n/jqPjpQjpfSJFX2xdykn2dKyGBw==
X-Gm-Gg: ASbGncvlLyP9IJnf+aPR1qyIE595Glu4iGr+A1ZC8T6HLLNP/CnylnnA2VL/x8mJjrn
	UJod2/2afM9RU18/UibCxQXzQXbz/NlENQTzKD1vyp7VC4Ekju4TooCmpiavM3zUa3MFhMcd4W3
	Ee980F67WU7cb3XjhBrJ13T1E4FC1GUW2vDDkuWqLGYxRdVYlKtS2uO9umks/DOhDDEFoCiENur
	Gn/3GmXlWFiWJx4Ha63gc6yjMCtunsXiHt/lWb7EmWgGI9uvTTtJ5w8dWrfD9pjlN/Ra98YFap4
	7m0UCUPC1jckhdJb3uByGHwxTdYXHsuYkA1Tgf1kanz9PP2M13uR
X-Google-Smtp-Source: AGHT+IERBxH14o+P7KL//5O4cdoZZEijwgEFE6kbxUc15dtyZhc976bWZbaTGmxitgusNIbXYKxbKQ==
X-Received: by 2002:a05:690c:6a09:b0:70e:2d30:43eb with SMTP id 00721157ae682-717d5bbe3demr1412127b3.12.1752163430702;
        Thu, 10 Jul 2025 09:03:50 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-717c61e9ee4sm3400507b3.91.2025.07.10.09.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:03:49 -0700 (PDT)
Date: Thu, 10 Jul 2025 11:03:47 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: CIFS <linux-cifs@vger.kernel.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: Missing man pages
Message-ID: <20250710160347.vi25bnpwmvof3yl4@illithid>
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
 <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fkf7f7q2mdcxty3f"
Content-Disposition: inline
In-Reply-To: <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>


--fkf7f7q2mdcxty3f
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Missing man pages
MIME-Version: 1.0

At 2025-07-10T11:55:13-0400, Carlos O'Donell wrote:
> Since Michael started adding a curated set of man pages to man7.org
> from other projects in 2013... how are those sources kept up to date?

By some script(s) he has.  I've corresponded with him about it, briefly,
over the years regarding his copies of the groff man pages.

> Is man7.org a part of the Linux Man Pages project or just Michael's
> own published collection of man pages?

The latter, I'm pretty sure.

Regards,
Branden

--fkf7f7q2mdcxty3f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmhv5FwACgkQ0Z6cfXEm
bc6GMA//d5wo9os7YN6MKGWIKLh4+ocaF8A27PFgU2eLSoX5+s6iT8idrYY8hhah
4e/E9+NQHujGhiDE/00hnQ6XpQzjWKzu45FkxUQ2sO80yWiHCo9DULwNIYsJNOOL
DBJq6o5kGasghW8FQJw/9rz/KZqPnBZMWFiYG7gRHOXn4u7HhlfiHkQ550JSv3yS
lXRX/1/Qva6QBbJzv/5XUBQv4SJoa0o7C9t3AvQn+xgcm7wuVYqErc5kzAcdQ+zm
Sjeklm31wEl3mKISeAvxaUBwp0ASXyV7xLI5byA76SIJwxUTIWTuEtBFmezwC3yN
TmUhBxOgoWpaG9RwoVf2YaTtjjGvcwaxC8YK3pMhPPImHl+IbXcOPS6HJucDVLou
VHzDVpduNJnj/mAcRsvenUn1Ubq5I3g471n16ziZ/6Q0c4e9N0oHcAIhKaU1LAu0
5blUqtbsWQ6l+8OTEQri7rQgcUhN5v3fKvTSOvnh5aGCNf4KvaRL2b1EBcE6Ksxf
2/esqjUV+LZxMseF7LrvANPedV0hqtaS4n+TE0UgPliGC6xzDcxKAa5p2YcUkKyK
mKWB/eJssQsB8nBClmofUWjUPLiDpywVmGBjKttw0KURoMWGv5zLwPivT2FM/Q9m
PCuLN5/FT0LQCD5uY6wcaFEVa9AKoDK8o9whq1zM9H9+x0Eaka8=
=cR1P
-----END PGP SIGNATURE-----

--fkf7f7q2mdcxty3f--

