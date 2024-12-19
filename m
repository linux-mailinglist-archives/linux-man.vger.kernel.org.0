Return-Path: <linux-man+bounces-2174-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3589F7F3B
	for <lists+linux-man@lfdr.de>; Thu, 19 Dec 2024 17:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6E147A2339
	for <lists+linux-man@lfdr.de>; Thu, 19 Dec 2024 16:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A124225A2C;
	Thu, 19 Dec 2024 16:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yj14lbzp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62907225769
	for <linux-man@vger.kernel.org>; Thu, 19 Dec 2024 16:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734625158; cv=none; b=jlBVmOxs7XsNepZnwAJvjxqTETlpE8j5OhlgClmgkzyqBgWjF3B9FoZ9l3aBwPUFPc5A3LJ8hcbBpVgb6UOzMtE9SVlPYIX+VsQqAPQmaoJSSFsjOENEPg8Myn/mtOfBnIY486FjbHcDZ1yz8hhQ2IskdReXAYaUeHV4x9a+i48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734625158; c=relaxed/simple;
	bh=x/luLya0Ae30YUdS5HvQwQ9GH3BxzgcBM2HrovwsGDQ=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=sqb8TYG1wMClu1PhtuaYByUbI3VtFyRYOHx6+OT3gSygqyaYYSuTS2o0ZBiau+o8d1HeyWbDcLuKaY75C/7CTGmzhXnsCw+Mypqn0Q76B3ycz1gADPmym3oIXU1YB1xOlhFii9n5Rx9xRAuzU6/0ID2A1ZBaBKzx/ECv7l6/aTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yj14lbzp; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-29fcbf3d709so297052fac.2
        for <linux-man@vger.kernel.org>; Thu, 19 Dec 2024 08:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734625155; x=1735229955; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gge9rTrI17fj6f9GKyqqBJ+aAeaSkuT9XIzK2ioPYuA=;
        b=Yj14lbzpkS+jYVmEyv4L298GsWwOvXY8cejzA7sTUgWW5wERW0HYZappMjpZ6Kakv0
         vWHNi+5L+zn7oLWIx9oxyiNX/3quGCycmPdPxnP6+JJXmo9lyv0tE7Ojntk7Gqc6MbYp
         CBLzXUan3Ugcq3GDl0NsvVjgboARzWeuKBjt3XBJGlLXPpz1WtfEStVKw5yIoa/HTMkw
         OynazeCiejz14b+/Vi5WgZvMxdHNSVivN13qWlBIipWlEOCPUm1rrYpAs8vZ63QoR8th
         +FH1LLp9avslrbx8oj6k4YebKm1FpC4+FPujTfFk2tYFnnYvqp9TWRS9nO9Wu8kZ0ZaJ
         XMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734625155; x=1735229955;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gge9rTrI17fj6f9GKyqqBJ+aAeaSkuT9XIzK2ioPYuA=;
        b=F2c/w5nCWb4eJxjip9OTYZuERQLTYcL6KnJpcRAjPXdmqpTV9s8jPPg8ABVnmxuvJr
         3MBRZGNPZJKbfJ1wNE/PY1hBcdO3ydg8xGDy8RYsxZ/8w3EhN8xA5v5mM93wDE/AD2cy
         V2JB/uVg+TvZq2W009pLhxyoZHJIZKbfT1kyaAPMMq3+8KR2J94+5wi94AFdb26pa1gw
         N7CIVOZIrESm5zuENsRfO5fvmDLBYSXV/T+4fL8H9DNPtWDFkOMd97fEQk3xyPQjk7PE
         5WyFLDbZa1Pa6RYcR7+AWKTZ2y27oD6UVToYrUhZuiJ4sEdS3MSq+ToqsxR50KQf+gqQ
         FTIA==
X-Gm-Message-State: AOJu0YypmOV6hDBN6Y4ViSkm0F+IODuPhWiqIthB6lJDkFWPKT9UlR0n
	fMwrBGgIkabA7b1YzZG1FTd4OrOQROYg0aQumaZAY17n8uad/9fXIYc/jA==
X-Gm-Gg: ASbGnct5YnnahgpMyDOcvxlRHXs4WkHmOlCghKbMH93P1dcHXh1DQa6S9QYsyhqc4qj
	dsrJyX30p++iR8jZAbKsRx/8fIxik5Fw+ACFHyp+43l0Ca1Of9v9RZXLyinT+Y2MJ6l3RHNTbW9
	Uy/15Hdfxv6fVF/Ga2p34YeaPbOeW0NBBfbayvaR7j1E2a2+R3duTbsh9+VKdzqn6Ran6SMFuf5
	Jql6LLQq8TAuugL8zLd3v4LXVJPlMm0lfeOwg2ea4Q73oI=
X-Google-Smtp-Source: AGHT+IGAdRX8ifrFh4LMTYZSkjS+CfTw1hL2n9/jAO8tcOu8G3bAd+Il1xFhZD6Yw4iRT3aeivK0Mg==
X-Received: by 2002:a05:6870:9d8c:b0:296:beb3:aa40 with SMTP id 586e51a60fabf-2a7d0a559f8mr2201884fac.36.1734625154809;
        Thu, 19 Dec 2024 08:19:14 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2a7d7454102sm367748fac.1.2024.12.19.08.19.13
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 08:19:14 -0800 (PST)
Date: Thu, 19 Dec 2024 10:19:12 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: How to set URLs in man pages
Message-ID: <20241219161912.bclicxtutaji42qd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cskwisnaht3vaava"
Content-Disposition: inline


--cskwisnaht3vaava
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: How to set URLs in man pages
MIME-Version: 1.0

Alex raised an issue that I suspect a lot of people don't know how to
cope with:

How do we avoid warnings from the formatter and/or bad typography in a
man page when huge URLs or file names must occur in the document?

The mechanism for doing so has been in groff for decades, but practical
advice to man page authors has been locking.  A few years we hashed the
matter out of the groff list, and you can find guidance in the
groff_man_style(7) page.

groff_man_style(7):
     Prepare arguments to .MR, .MT, and .UR for typesetting; they can
     appear in the output.  Use special character escape sequences to
     encode Unicode basic Latin characters where necessary, particularly
     the hyphen=E2=80=90minus.  (See section =E2=80=9CPortability=E2=80=9D =
below.)  URIs can be
     lengthy; rendering them can result in jarring adjustment or
     variations in line length, or troff warnings when one is longer
     than an output line.  The application of non=E2=80=90printing break po=
int
     escape sequences \: after each slash (or series thereof), and
     before each dot (or series thereof) is recommended as a rule of
     thumb.  The former practice avoids forcing a trailing slash in a
     URI onto a separate output line, and the latter helps the reader to
     avoid mistakenly interpreting a dot at the end of a line as a
     period (or multiple dots as an ellipsis).  Thus,
            .UR http://\:example\:.com/\:fb8afcfbaebc74e\:.cc
     has several potential break points in the URI shown.  Consider
     adding break points before or after at signs in email addresses,
     and question marks, ampersands, and number signs in HTTP(S) URIs.

Here's the exhibit Alex handled recently:

At 2024-12-19T12:08:35+0100, Alejandro Colomar wrote:
> I've had to amend the patch again.  I didn't notice that it caused
> many warnings in -Tutf8, -Thtml, -Tps, and -Tpdf output.  I've applied
> the following diff.
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index 3b0025528..cb946355a 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -384,7 +384,7 @@ .SH HISTORY
>  .IR <stdio.h> .
>  .P
>  Very old versions of glibc were affected by a
> -.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e1=
9f50d64aa5e05b5e17ec29afab9aabb20
> +.UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Db=
f079e19f50d64aa5e05
>  .BI _ PID _GNU_nonoption_argv_flags_
>  environment variable
>  .UE .
>=20
> That adds break points, and also reduces the hash by half (which
> should hold without clashes forever, hopefully).

I observe that break points could also be added after semicolons.

Also, you can escape a newline to keep the input line length short.

=2EUR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;\
h=3Dbf079e19f50d64aa5e05

groff_man_style(7):
     \newline  Join the next input line to the current one.  Except for
               the update of the input line counter (used for diagnostic
               messages and related purposes), a series of lines ending
               in backslash=E2=80=90newline appears to groff as a single in=
put
               line.  Use this escape sequence to split excessively long
               input lines for document maintenance.

Regards,
Branden

--cskwisnaht3vaava
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmdkR3gACgkQ0Z6cfXEm
bc7jLA//fcWQE51vhAF9RjQAyqrPx3a7WzZ0f6od10yPIxxhIY0u7tf9t0MX1Spz
MZJB1m+4BW50d0HetQZMYItV/G2T8MwKgxaxza4AUEAGnAw3x8GaaJowZmRJuGre
ZqVY7o+9Ql4mJHH8av9CKmN5N2Gx5E4Kndqe02O0PHuH217IUjN0dQnJLU89fEvq
kpYwR22e9/Uezcap4DUw8+yIks4J0gDJ9IrZernVkBTuBpTnZpxYkSRizd57OCZg
+I6CmI0A7TteOtRsN+O/y3gYEW2TMdsaEP0Ybvtg87qwobcvxRW0gDKs0W4M1dcj
A4V1JdSm4xZqvrAIAjF+cB0OQQT9anxcKa0NxJozQE01NDolDMKx9iEwujvggV2/
OK/Qu20vboba3HUQq+C+I3GpKRetJL1sze1yjKdUFVx/nqo1JnL9nP/d2lWLn/Wl
LP6ITdwDEkHlqzkyJ1gx26uqp9Z7p2hmKNPxNCl0M3YzDQjIeiyYSaXVW1Bprlte
iYQnaBSCblJMhwyEkWYgunqhwimVretZYju0nH8OkapMAN/opEeF21WBSHeJNFtp
sWE+HSvuJQ3gfLBW2KOp1bWWfXH3fxD+aWlVCyRwQUKQCnyp7UUXGFex0bdYgP6Z
fpjOgY7DDzMv2z5LgMvN9+P93lOx1JC+SPn+Nf9tAy+usGS4tCg=
=Yrmq
-----END PGP SIGNATURE-----

--cskwisnaht3vaava--

