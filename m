Return-Path: <linux-man+bounces-1660-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E395C5FD
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 09:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 103A7285030
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 07:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F0D17984;
	Fri, 23 Aug 2024 07:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASpn6gKR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADDC5674D
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724396554; cv=none; b=ERqj5rWX+j/CFpQ+21il6e2ZvSxKBljHWdCMCbBykQjU86aWSilL+ZSV/Ai15Ba/avABtLGkhHOTjT0/JPWEBph3TJlCZYe5ptVP2aKuIkKCr0fkp7vzJQtLNXyorStRPSmXbeAu7sywWhCPbPtPdNVbqwGPsiHiewqAGM2KrSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724396554; c=relaxed/simple;
	bh=mj1IbawCyQsJo6Z355fl++kxlM58xM/vMZHRKQQespU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UEMZO8Lo5aUDxysr4AQRW9DUQc/mZ21EhfEix+Jl+WVrpwEz44GDdYxSi95iL5M9Tp4peEQ62mwO0iO16lVSDE2Xw42M5ehccpfC9E1JSXnHgqDTUSg/FrzN3a6S/7E+Lqqcpaz1st0j9Sta9aDQkdWgMNUPmt6cvFY43oPKCoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASpn6gKR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74FC4C32786;
	Fri, 23 Aug 2024 07:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724396553;
	bh=mj1IbawCyQsJo6Z355fl++kxlM58xM/vMZHRKQQespU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ASpn6gKR/WWEIA+6lMCmKe/ofZqDYs6Q/Z0HvflxDEty33HzUy2LXDUfieWxFaFfu
	 c/tRCuG989ndRmsZrZ7uqx6pNTd1tzNOAtRZyzcqRZfQIXtoHLkMukaL4Zp+J2xMT9
	 qCf0+FtYP6AdR2BnqklfbaD2Pfyfv9UMqF+BaiLbc7PgP5GnUmAhEoK7c3bHNFxX/s
	 p0t5mkOz8KJDtXq4DCo7Qsw8muGBUWVAmxhwimyLv/r2Z9H4Ip1mSKIYF2Y9b7TLvl
	 Yw6KTegIlmriv9vpTUIcvuP99+k/pI6j0iIDcFAJNyLdjZhDdhxH0MfiTOhjV+XOa3
	 1ZVEaEWGxsn3Q==
Date: Fri, 23 Aug 2024 09:02:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org
Cc: DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, 
	carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tcf3jqsv3ihhulnd"
Content-Disposition: inline
In-Reply-To: <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>


--tcf3jqsv3ihhulnd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org
Cc: DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, 
	carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>

On Thu, Aug 22, 2024 at 09:57:39PM GMT, Paul Eggert wrote:
> On 2024-08-22 16:49, Alejandro Colomar wrote:
> >           t =3D mktime(tp);
> >           if (t =3D=3D -1 && errno =3D=3D EOVERFLOW)
> >               return -1;
>=20
> This isn't right, for the same reason similar code wasn't right earlier. A
> successful call to mktime can return -1 and set errno to whatever value it
> likes.

Is mktime(3) allowed to return -1 and set EOVERFLOW on a successful
call?

RETURN VALUE
     The mktime() function shall return the specified  time  since  the
     Epoch  encoded  as  a value of type time_t.  If the time since the
     Epoch cannot be represented, the function shall return  the  value
     (time_t)-1 and set errno to indicate the error.

ERRORS
     The mktime() function shall fail if:

     EOVERFLOW
            The result cannot be represented.

     The following sections are informative.


Then I think the API is completely broken.  How should we check for
errors after a mktime(3) call?

If this is so, let me file a glibc bug requesting a fix of the API,
adding a promise that on success, errno will remain unset.

> This is just the first problem I found with the code (and I found it quic=
kly
> because I remembered the earlier problem). I would expect there to be
> others.
>=20
> How about if we omit the sample code and make the minimal changes I
> suggested earlier?

Because I'm being very careful writing that code, and still I'm having
trouble doing that, I think we must provide some example of a correct
call, to prevent many other programmers from doing it wrong.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--tcf3jqsv3ihhulnd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbINAYACgkQnowa+77/
2zJWUBAAjacrBGYLykLjFxzR6iPLEhtfCkB+8xTzi/gV/oTEBJ8I882fykXL5asz
ng05HJ0/qfu1URnxUaDV/7loOkAsAY1rtVccMGcVx2z78bsiFVpZGmjahRhtzsJ1
FXwF8FS7EW8Q6v6O9dBTMzLbLj990mU+YdY4KiDs5yJc0gOj+lZzSK18/8k3sfVp
BJzq3nkCUptAdxxAwZbz2maA1WhQbyzkfR2DxdLwNrwwWZvXbXzxOZegqhjOa5U8
PWY4KbXAqJVMe7UPS/FNseTBitzkpMHf2hNmI6IW3vGC171iDLXZRGtOcAVshsao
t9h05vt+j0AUU+jAfSObXtKpXztKvAXQYvNIPHiiNpVTY4oQoG0y/PbrmOjlBhIP
zbbO3AYS1GD47zTIPoVhGXmYFhC+D4VckzqY0+j6nmPMI5YZdRQ7v5o0oy/Sp5iq
OHzvSFjxHiON1tJvCDzMImc3c9lTtSQmL7jivQlLHrwuWBpAAcTLjNH5z2eLFXmD
bPFuBO07b1CxywoCl01NcOXCQgYUio3s2lQlr1I/e5JDYumQgVM1RbBGdE3lOFzo
4Z3l+jdg+pIb2q+hxhz1KQsD6Gxh96/71aQC7V22n5pfNbZLIahSQhI8Sfxo3fMf
BRZKJeRR5cgbPIEJW16rUYLqKufRsXMK+ovvxKtnF4VxTO29wpU=
=ajts
-----END PGP SIGNATURE-----

--tcf3jqsv3ihhulnd--

