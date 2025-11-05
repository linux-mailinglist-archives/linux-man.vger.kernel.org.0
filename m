Return-Path: <linux-man+bounces-4255-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C01B6C38299
	for <lists+linux-man@lfdr.de>; Wed, 05 Nov 2025 23:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 758F83A158A
	for <lists+linux-man@lfdr.de>; Wed,  5 Nov 2025 22:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969DA2E7166;
	Wed,  5 Nov 2025 22:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbHJREbT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D452C15B5
	for <linux-man@vger.kernel.org>; Wed,  5 Nov 2025 22:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762381027; cv=none; b=P1fDMi1ZBNLxz6rRcJhUB6pO4yoWBXRjG5zO5s8LQlYhmuek5clhlN2YqDonEV70cTnbHxDbr3MLN/Z8E7jqM9RJzuxC+GA9W0OgDR6KXCdkeP616blDaHbncFaPu70m3oEWey6XkNDZs+dHJ+jPoqpTcR02A8AWzixxI5dTKVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762381027; c=relaxed/simple;
	bh=j/u/x8cQx/yKfhrwpn5HJ0HPX9CWi/KwyXzfyLXsldk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g4AGQuZwmysa79Y702s/oVpME/Y5p1HbvVXyhe37cn1fxwYNO5Nc8ecuE2MdHIbinyoMv0k73uh/EjKGw9FujaKa+KNP9SeU2tcTaLeXFGuI+Mf8kRiNv1XYqeO136AFVnHwHJQjLBiHgF1xmAbngPG6Ham3cAdlfim8x8IkYb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbHJREbT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F0C2C4CEF5;
	Wed,  5 Nov 2025 22:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762381025;
	bh=j/u/x8cQx/yKfhrwpn5HJ0HPX9CWi/KwyXzfyLXsldk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rbHJREbTN7CF+DXW3Cx6vc5LeRIWHwp8pfJFel+RmbCZWIWTLVSeEER1V4wkx17DF
	 GOWaRjAJa5U5YAtDkrs5V/jnvP67BfFfiKH8PDJXsPDmeLDkQDJN9/o2INEXQwycxw
	 A7ALSrdvKVXGZMItEYtqyC0mQOM4ByD+yWupqi7dpifcm9ova7gy176GLRQUnfLeYk
	 NbZuXLKQcXOLI0KICq73+gRAYTSPHS4ic/hNbeZu9Xv9vReLVxp4SrDi8caX0889KC
	 UKJqUJcMRmlJLhvffeuS7E2er0+60ZgZF1XFI3dtUpnvfSgJGvLrlcBCgUjuvyJLgS
	 3uLjJFDaUR2iQ==
Date: Wed, 5 Nov 2025 23:17:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
References: <ghms50i7u0.fsf@gouders.net>
 <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
 <ghecqci13z.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ljxpd5y3i5jeehgr"
Content-Disposition: inline
In-Reply-To: <ghecqci13z.fsf@gouders.net>


--ljxpd5y3i5jeehgr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
References: <ghms50i7u0.fsf@gouders.net>
 <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
 <ghecqci13z.fsf@gouders.net>
MIME-Version: 1.0
In-Reply-To: <ghecqci13z.fsf@gouders.net>

Hi Dirk,

On Wed, Nov 05, 2025 at 11:08:32PM +0100, Dirk Gouders wrote:
> > On Wed, Nov 05, 2025 at 08:43:19PM +0100, Dirk Gouders wrote:
> >> I'm playing with a program to calculate wide character widths and
> >> gcc complains when I use wcwidth(3) according to the manpage:
> >
> > What's the exact diagnostic you're seeing?  I'm not seeing any issues:
>=20
> here's my program (meanwhile, I read that _XOPEN_SOURCE should appear
> before _any_ header and that indeed would help):

Yup, it should be the first thing.  See feature_test_macros(7):

$ MANWIDTH=3D72 man ftm | head -n20
featur..._macros(7) Miscellaneous Information Manualfeatur..._macros(7)

NAME
     feature_test_macros - feature test macros

DESCRIPTION
     Feature  test  macros  allow the programmer to control the defini=E2=
=80=90
     tions that are exposed by system header files when  a  program  is
     compiled.

     NOTE:  In  order to be effective, a feature test macro must be de=E2=
=80=90
     fined before including any header files.  This can be done  either
     in  the  compilation command (cc -DMACRO=3Dvalue) or by defining the
     macro within the source code before including  any  headers.   The
     requirement  that  the  macro must be defined before including any
     header file exists because header files may freely include one an=E2=
=80=90
     other.  Thus, for example, in the following  lines,  defining  the
     _GNU_SOURCE  macro  may  have no effect because the header <abc.h>
     itself includes <xyz.h> (POSIX explicitly allows this):


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ljxpd5y3i5jeehgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkLzNgACgkQ64mZXMKQ
wqmf0BAAiShDduIB96TTTSO8crmsZhQ5FQEgRco23x63U53TJHYl8GLbJvPdvdSh
zweWhjLKym+vLOHwLkPCEVwkvhKf9nt8eW77FFpgV0a1h+LtcH8VQzqQuaw/XqRE
muAzApU5JUsMUYS/re0SAevKNGfUuLV9BGUT3xAjRgyKR4pprE86pPf4UemkHrin
KebP1UKuYgjDg1k6X5VCGwYQmdrniErRzOHH1M0H4Dup2zOaQHCjGpnJJFDO7tak
k7QLPM3N5qk88uqTBoCdAPxm99yEOMj6Tq9qdOe5/iKSvVlnWXE88e9+4I3KnkAV
DNpPcOE3FAYoUoVocsNZw76OYpir9Wj0lDucPXYNxRawczDxkhVQwtgAHGVbD9iM
CwuMn8ugHaqpgkKAU+tVEd4XcUcmc/JyJrMaEhi4FPDBk9la+rt1UWkoycB1g0Qz
BMOPXuAQazZJlBnS/OflSdlg5Qoy/hryiBHcIx4CqyUGioWUAQqMS89yPwJbPha/
r13Od3L2dlKdtm68AG2CzDYyOZ1S/Mm8b3jOZ84h5rII2PU+JpXRkaCq+kcj9YiC
mlpRS3BGLto0JNQ8t2Cpw6qTWgFlRpjDEwuittPeRDW+5fBrPTa1JZWiIwuhmQhf
UuvW24SzQeowChnkXwFTRBNISs8FHWZ4vcFSPGcLK88+AQGN8H4=
=oIUN
-----END PGP SIGNATURE-----

--ljxpd5y3i5jeehgr--

