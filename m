Return-Path: <linux-man+bounces-4455-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F77CD0E27
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F06D5303BEB0
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 16:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907FC339873;
	Fri, 19 Dec 2025 16:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bW08g+WV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8FC32826F
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 16:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766161516; cv=none; b=ZTLmewmK4u2ZnM5q93T0DwQJ2fadIkpIR5m7bwngX9PJHjogudjzf1qsoUlwJ1HrNYtFDDabJpeofk4JWRw6TnYG322rFwLTLCEZ+ecYK95gk9jrpknsgA4Gb1ZdNPWfDcpEIRFTjZS6+XmWkCnmG0mHzQAlKJkZPHLYpWVjHGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766161516; c=relaxed/simple;
	bh=pd4hoOqJ17WhE0A8GKehyDUkHC6P9p8qIiNRuI6alkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PaV1BXNTJIYOjiKlDJKPGRONethrDFmeJcuvy8o9YQ/XulYoZWts+eCbu/Q1ntZudEREM6+n5dQJHvFehFxi0q5WGCrvM1UMO3sdNqkB7kIRtSA1BSMwBWh1JNflVAqd4TlLrO2vVHvZYe3CXWOjhnj3K2w0irIIBoMdpExfUoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bW08g+WV; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-644715aad1aso2334780d50.0
        for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 08:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766161506; x=1766766306; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lJJoyrtXjuAjlcGPCsdu+J5TQf6qPVJJWp8UvaTS2ek=;
        b=bW08g+WV+2kRe2DOHLq4fPR7IKt7rbEJwrb8ZYsHOi1mkL9Pk8EISur/Sf/uC4xhX8
         n0cHAMJdQlmUQv4UQ+Qj+lSY1Wve+yBsi+qFIysn2kdwNtSulkHuPp1TqwWsiVhQZk/+
         o1auEFG6nvdHnCnf35CmjyY0jf8bUs/9qRXAVy3cfdoVNvpgn+vAhzgLVtSSCCvg/kBu
         /jyz0w5FdBEhnu7vsT2tv27X3EbGK6DiiiQC8/1aRTCtRjM7k/+TvVfjUvPISVxdzrfU
         sg1rJJtVEjUJrYsBsM1mcj8EA+jYkjURevAAVUFl0E9GHo0c8x0fD7A8QgIf2eZgEVkA
         VEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766161506; x=1766766306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJJoyrtXjuAjlcGPCsdu+J5TQf6qPVJJWp8UvaTS2ek=;
        b=biXVmPYrW38HeTYH67thghF5T3jQAu5s6Tx9IuQdGepaTiRDUTtJFjyfycdhVx2taq
         doVczAaCLLbSrsfTgipV2Gpgqv2cNY733hCPg4g/oChz+IKr/jdYyl1GjWA47p+gVfC/
         TIwscghFywGyskuG9v/cvuq6QOXdJscfR/q0Nx0VvsAjhezrS3LQ0S+lqB6mziQKoSH/
         yXQcWhxdGzzqTMSy/YbxmKqmWi10GgYxI3eVdaT07bOa4IZDPlNafbaXsbHwZdiUfNMu
         MJIqLheW+c9UX8NVq/E/6XFDwREYDnKpLvpnZHbhUznBy4SVGH5qXPieK7TCxTNK6A/d
         m50g==
X-Forwarded-Encrypted: i=1; AJvYcCXAr6715QIh4jVQmROSZA8gAEEOxqFYqJA7uOdM7DI3+vv7q3RuMtWDizAMYhRY1ZhkYwFKNOgBvWY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyYqEtBgwMAgkqEkLE3tUinrN/fEtbSXhLjw/U1OecI81rfPl8m
	J1V1C6HpVZaxNX+ZubuqhvWg1Jy7RGaxFLHDpsdgv9ehEJMOKDGzFtio9YkJng==
X-Gm-Gg: AY/fxX7KZqcDNgJ+VlgN7aCdlVuaJmMAsTYm86X7SxJpRo+hGU2nrW1Ak82vyg2C4A/
	sh8xrcLop0c3rIlVp1G/GZ/LlQjx+ldJdY7D3of1dU1OrUKtB5UZTTUF9MOPyGdSwRG5EqhuVUA
	fiNOh/HfgYhA6J+5Dw0nbDjDw43CU40U/4xwzORP7rFMSzr75FmDiYUCw1wOdYIuciPYWm9Fnu9
	4tp7QzzULeXOcgvhyjvtG97U1nWEL5HbevLfsISH/2wkt66u+o/l+CQ87kV/VVgQRTvv7Ix2wC8
	C9nDEXqi19nOicRyc/aID3loXFnBeTDIikMlTyhkegoo8Y1YFRc5hN7E+DrGwvvmSRGOZFjyy0u
	ySJHJ3z5pBLrwW5zhbvxq0HkEKb0XpTBbsbran7b+fGPXgoVtgNq/02xhSAn2NSHeXzh2o6Wruw
	yv
X-Google-Smtp-Source: AGHT+IGCsZjgsWxVk6kR76luXCGrqY+r5dtMGBStBiiVyUaBxY6G9M3+aq+F0RF7xBbUVFqoEV4XrA==
X-Received: by 2002:a05:690e:1593:20b0:641:f5bc:692b with SMTP id 956f58d0204a3-646632c4990mr4275796d50.36.1766161506233;
        Fri, 19 Dec 2025 08:25:06 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43766basm11422127b3.1.2025.12.19.08.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:25:05 -0800 (PST)
Date: Fri, 19 Dec 2025 10:25:03 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <20251219162503.gg7k3fbfgsie7muq@illithid>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
 <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
 <87h5ughsn0.fsf@gmail.com>
 <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5cvvtapouki34u6c"
Content-Disposition: inline
In-Reply-To: <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>


--5cvvtapouki34u6c
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
MIME-Version: 1.0

Hi Alex,

At 2025-11-27T13:12:26+0100, Alejandro Colomar wrote:
> On Wed, Nov 26, 2025 at 10:54:59PM -0800, Collin Funk wrote:
> > Alejandro Colomar <alx@kernel.org> writes:
> > > On Tue, Nov 25, 2025 at 08:05:24PM -0600, G. Branden Robinson wrote:
> > >> At 2025-11-25T17:15:39-0800, Collin Funk wrote:
> > >> > While looking at 'man -S 3 getopt' the underlining under PID
> > >> > looked strange to me.
> > >
> > > The underlining under 'PID' means that it's a variable part.  We
> > > use that syntax in many pages.  This is documented in
> > > groff_man(3), as Branden said.
> > >
> > > However, you might have also noticed some dotted underline that
> > > extends until the end of the line.  I think that's a bug somewhere
> > > --might be in the terminal emulator, because I see it in
> > > xfce4-terminal(1) but not in xterm(1)--.
> >=20
> > I was using Gnome terminal and Emacs '(man "getopt.3")'.
>=20
> Hmmm, I can reproduce the dotted underline in gnome-terminal(1) too.
> I don't know where's the bug.  It might be in both.  Branden, can you
> have a look at it?  I guess you'll know better than me about these
> issues.

The dotted underline is how gnome-terminal(1) marks a hyperlink.  The
man page source explicitly formats this text as a hyperlink.

MP> .P
MP> Very old versions of glibc were affected by a
MP> .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3D=
bf079e19f50d64aa5e05
MP> .BI _ PID _GNU_nonoption_argv_flags_
MP> environment variable
MP> .UE .

I observe a few cases of failure to protect literals from hyphenation in
this page, include the aforementioned literal.

       Very  old  versions  of  glibc  were  affected   by   a   _PID_GNU_n=
onop=E2=80=90
       tion_argv_flags_ environment variable.

I'll prepare a patch.

Regards,
Branden

--5cvvtapouki34u6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlFfFcACgkQ0Z6cfXEm
bc6WQQ/9HQRt7oh2wvs4ojDRFIznHu97llwSVmBFBT/rZ8p6uYY7xbxv7FvhoeUH
qTDVLj41ZJbqz7AR/ryAY0Cs+wDzzAW0gSb5FdXoGeeH2c0xbDTrsxA6sGQAKHng
Nubcfb6EoTEQU8JWhVRM6y1Svi7uukK8wktlHm+vwZD7qdCcjZFE3LMskuGAlqCp
pTj1qeSAWqh4V2BYXoINtt6R8Cbd2SrxkZjr+AzGG9keF/9G5+cnAL9mR6z2jz7z
zdQJDlMZ2EVROOdlLfU4URj5hZ+BSZkxxnsb0YEvlm1Lg897xxpWtiqwKKSlPncT
Nrpdyi4oVq1ZmFz00k+U1IHkMahmUQ6zvd9SXxafcNlCrWPy0qsLWcTJAx98j5N1
Z8Wnn+mfwL3KnC9akEveVM9WyCYkyR/Lpncy34bPetRGbAxQw2vzjtp24B08mgob
SvMGiPVGQ7eQd7FqhT31noOnOVaYTl7F1Fd29nbm+19TtwVQ+HCe1eeopvA+jGW5
KMxN04lxHvewUUhuBnodAjofrAANkHthQQWEPz+6SdP/PFCQGYJ6u/PbUFSd5ygO
pq2QGrefys02I07G4MANzJEGYRLT9nArBK2b9f/aaeHBACSvRJmL7CpQbTc8002c
TlNOHqfWVi81EghgxaVGnUHlNztCllFrdcWcJDspWV8A6hDgLd0=
=dxEN
-----END PGP SIGNATURE-----

--5cvvtapouki34u6c--

