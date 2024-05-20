Return-Path: <linux-man+bounces-942-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 385318CA3F4
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 23:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E41AF28234A
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 21:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6273F137C25;
	Mon, 20 May 2024 21:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP+ljezN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5E1847
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 21:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716241757; cv=none; b=CtJ5qbqm4RTUeje1DlRQc9Fwl92jG8ntxTi6HciL8FSsExncJyUBL1EpgR7UtlL/MwE4u70T+Z6I2cmo1Rg+etlqVmJU7/JnWcLy/pY4FLb/jGMIHF3Re1Ur2oBX4tkdIM9DHMSfAxFVMS2Z9hezDU3EGsHisz/3ZWrkNhMRTw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716241757; c=relaxed/simple;
	bh=4LTkEznWkf1hrglU+q4BodYQE4U9FZLfWiTTqW0I5yY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cTuC8sMV8XLpQECtTwWMFzm6pL6gUmo+HISF0HEt1mIm/q4SNfATAFyZTCpP7x7c0SgCRIMVg0NLw2ne7LWuSnJu3iATLNiFCO5GeqHLefx4uqFpacTyYhf67JpUsTg/hrEbFvfIz7+KgOmI+yX9crHM8KuN90IzdVxKXZ9IPog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP+ljezN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAFE7C2BD10;
	Mon, 20 May 2024 21:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716241756;
	bh=4LTkEznWkf1hrglU+q4BodYQE4U9FZLfWiTTqW0I5yY=;
	h=Date:From:To:Cc:Subject:From;
	b=fP+ljezNFFlQO8vrVRIRWVnVnocboAH6Kv7BNdoq2HPIA3LAqXRCMNxv+GIyHPvnK
	 y6gRfAunvR3HV+FzwRdGdd1VkvbDApkcJs8WENkUNbD2iB3d/yc+aQd0PY5ViMeJj6
	 U9LBF6N4zjyT/YTjxrnADx+9VroiVSJEB5YOPhijMTBXpgqnwhd1EtVLG+YuzR3ckb
	 PGbf7LqR6o9xYYsCCTiGj+i6tvaswJdgEBG03RhBVitfC6THH18c9GOoH/7qBfLXVy
	 EJbYwRL2OK3fhUlbxyk3OLPNn/ykxWwMzyZNb3JEXE+9ZN3md5YgNxzuo7TPVE+Syq
	 sl7hOrWQQmG3w==
Date: Mon, 20 May 2024 23:49:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: LINE_MAX
Message-ID: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3j6gvbcrl7s7qtmq"
Content-Disposition: inline


--3j6gvbcrl7s7qtmq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: LINE_MAX
MIME-Version: 1.0

Hi Eric!

I think I found a bug in POSIX.1-2017 (and probably, previous ones too,
but didn't check).

<https://pubs.opengroup.org/onlinepubs/009695399/basedefs/limits.h.html>:
     {LINE_MAX}
           Unless  otherwise  noted, the maximum length, in bytes, of a
           utility=E2=80=99s input  line  (either  standard  input  or  ano=
ther
           file),  when  the  utility  is  described as processing text
           files. The length includes room for the trailing <newline>.
           Minimum Acceptable Value: {_POSIX2_LINE_MAX}

It doesn't say anything about the trailing null byte for the buffer that
holds it, but I assume it doesn't include it, from the context.

However:
<https://pubs.opengroup.org/onlinepubs/009695399/functions/fgets.html>:
The following sections are informative.
EXAMPLES

    Reading Input

    The following example uses fgets() to read each line of input. {LINE_MA=
X}, which defines the maximum size of the input line, is defined in the <li=
mits.h> header.

    #include <stdio.h>
    ...
    char line[LINE_MAX];
    ...
    while (fgets(line, LINE_MAX, fp) !=3D NULL) {
    ...
    }
    ...


This example seems to contradict my understanding of what limits.h says.

So, either limits.h should be explicit that the trailing null byte is
also included in LINE_MAX, or the example is bogus and should be fixed.
I guess it's the latter, although I wish it was the former, so we can
avoid a +1 in the code.

In any case, could you please forward this to the Austin group?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--3j6gvbcrl7s7qtmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZLxVMACgkQnowa+77/
2zKf/Q//R0TTsdi1R4zrvDfcdRNrYbgSmNol+lJUO0lBbv9nynaDcKqEvGNGifOg
/VKhBGN9+VsR43CV8TDf/tzDBGKodEmhTZiCuS2ju8Jjyns9hkwoihUcqAn2A5q6
1D+f9t2G0jevTZESkcLQjUfYw7qXH8Aocq8AA4fI01LKlBRRrzkReelmRR/omTtT
whxX//Mm/9atdfLdZuzdakln3JSqLETWggaDUpf+TpKtI/8OZ91hW+Z2CWP6G4NC
B0Ko3By04xOZy+rEtyU+95NwZ3J9TQ15eO1EDebySVLOJiuH0oAMSTlUwbIR5zbw
h7RReXqglPalJvNeEIUrF/RsWy0SZkcEdeHnS6mQTlCqsk+leNQvp9c1Tjc3xr6R
M6iqj+hLmMWoUWhycf0mEFhgptsH2uQh2WNRNu2icxOuq91P1tH7PejI5NVXTs+J
lP4jnb6rWNUq+U3b3IQ4KBm78RNwgcklpOE3j+fGXIeri07OSHEU6Fklh2v3xCxh
Ety6eSDJDiVPxcvMyCLNTdLAe6M0o5vW6vdrRrLKa0Xjiya6Ug/icrOhi5n+KbC3
9m9XSERDP2w7RUOqPgUJPW19KMB7VtiXbqydsA1gN9m9cmjUVACiVyuGvic1/K9j
TUveCu/KaHadvneR6ap/BLIkyefDM2x73jBUdDIpxLbUn5yucBs=
=H2+p
-----END PGP SIGNATURE-----

--3j6gvbcrl7s7qtmq--

