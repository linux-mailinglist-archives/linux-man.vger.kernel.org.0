Return-Path: <linux-man+bounces-1749-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A7F967440
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 04:59:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9DFF2825B1
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 02:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E64F2746F;
	Sun,  1 Sep 2024 02:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PqiECOMH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A062F2901
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 02:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725159557; cv=none; b=Qqsl5irlyMHLKBZIqiooXt9jC+M/DvHSYhsGCbOMrj4pAMrWXpBjybj732+QqcwDgnuYclraH3fi0edWcB5pZOKjwBo//MbasYYb7pfhJQhN1qQWAiBchGCTD54cWafWUrQ+2VrugbepTpd6+dpr//J2kFBis7X9cNGkl3e4pEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725159557; c=relaxed/simple;
	bh=dNQC7SYJ6+DvMuBVKEwfwcbSZxHHfPg1MndVC5WzRjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m4ayyjXTE0MO1ABeYnDkm00idYNcTKr1xGK5/XxAMsuHLrUIH+wfmR/TW/XB+PfLUWfsRDfkQY+F863KLf7lFXpweSrlhCJ15bDGGJ44coQIxn9WIMHKvfkPJJCXL+OslTo8qAGWCpJh7UvEqArdnRwxUl+gV2B8fWovW25efyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PqiECOMH; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-70f65cad4b8so1169428a34.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 19:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725159554; x=1725764354; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YxI9oLWr1S8jVJtNk2FspgYH1XHSEV1cvNYuNEbhed8=;
        b=PqiECOMHLP5bMJpPXZFWt0WNxLttuEQDhL1uhhCe3t8GQsUIMhm2fZMr4Obk0TmsZL
         dJKoXEf+Xn5mHqyvaOSNGS8Ol8PmgiQ/e9J9SR5HoLsYU8Vrc+bEScrLlEbaPdmY1XFw
         cAlA+aH+iX1/9OyyJqS71DnR+mCVmBYX0XdXsu2DWebL+66Gwwd/ulvDH6VUpBh5A8xU
         POR68mahkach3m29GjPBsW8uTf+jcN2k60/Vflh7LWY+9xSIyf4L8FsKPIvWOWEhUzni
         /UD7hwp1a41Kxk1/Bc2QSeMXYI2mJx7I2ikXB/JMs1Zvg9et7KD2hycQutIhDBwSOSW7
         2eBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725159554; x=1725764354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YxI9oLWr1S8jVJtNk2FspgYH1XHSEV1cvNYuNEbhed8=;
        b=XbdyKTPks3cnrF5PhfxN2RiHEn8r4lZ9lOOhDrH/xXNiuqfJoV1Y8vh21fqSRIMvWz
         bxCOyiu5EuSYz6KY7AgtoGEvUR0pNc4STT7i2vIOmy6Whg6DpY76S5xQypaVSVRwyjzN
         G3asRY1lwpMaNsFgs3PCkTpaTu2X9RSQPPkCyBJs6sAUI6KcoWa6+QChibz0ZRzRghRA
         kb3wsd/ULVxvtofqMLJdbfb/aZahrxPGNdX/EUQSovrm2tmYgNs7yA/0EpNtSelFrX5h
         /7TeBw9W+Z7LNfuCYPBVMUynjJ77R9ULFoJENI5eAxzbyxI0YZWBetgH6cg0SZxIenJz
         bMEA==
X-Gm-Message-State: AOJu0YwWY/fBxQ8G5WskE1BgMc3bQELp5+xYpalFo6osjKUBgSWpEzfq
	+cj2UXtFJeTbrOK0Amkm0EeUE7uDoa7BZ9K+Zg5m2RfHV5i/qVnq5tepdQ==
X-Google-Smtp-Source: AGHT+IEZohgVrg0WWYlD5nYrEcIhUhYh/kkTgbMCcYIFLf3iNubQ0eFwiBYL0QI71u+V3k4qqdM2Qw==
X-Received: by 2002:a05:6808:1693:b0:3df:2ea:51cb with SMTP id 5614622812f47-3df0676dd1dmr4064609b6e.6.1725159554441;
        Sat, 31 Aug 2024 19:59:14 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df117a6582sm1246901b6e.8.2024.08.31.19.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 19:59:13 -0700 (PDT)
Date: Sat, 31 Aug 2024 21:59:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
Message-ID: <20240901025912.l6rpcee2d6gzftcn@illithid>
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
 <20240831221626.b2t6knmfdqc54rm2@illithid>
 <cq6ykykosgn2ytewgmx6rwmvnqm37by5bfedvk7ywkzz3ihwhr@6kwfxjqly7cv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hnl257yviwhp6dzo"
Content-Disposition: inline
In-Reply-To: <cq6ykykosgn2ytewgmx6rwmvnqm37by5bfedvk7ywkzz3ihwhr@6kwfxjqly7cv>


--hnl257yviwhp6dzo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/5] man/: srcfix
MIME-Version: 1.0

Hi Alex,

At 2024-09-01T00:30:26+0200, Alejandro Colomar wrote:
> Using indentation for the scripts (and cat(1) before a script starts)
> would probably help.

Ok, I'll do that in my next submission.

> > > Could you split this change into some simpler smaller patches?
> >=20
> > That's harder.  It's a scripted change.  I don't think breaking it
> > up by individual sed commands is going to enlighten anyone.  But it
> > would be easy to break it up by affected file...
>=20
> Do the individual sed(1) commands produce good states?  Or are they
> temporary steps that would not be good by themselves?

How about this?  How about I improve the internal documentation of each
sed script so that it discloses the sorts of case to which each
substitution applies?

$ cat fix-man-page-refs-in-tbl-tables-1.sed
# Rewrite man page cross references inside tbl(1) text blocks to use
# man(7) macros instead of troff(1) font selection escape sequences.
/^\.\\"/b
# Case: (handled in commit 9d21f97766, 2024-07-27)
# T{
# See \fBchown\fP(2) for
# T}
/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) /\
=2EBR \1 \2\\"1A\
/
# Case:
# T{
# the map that is loaded by the utility \fBmapscrn\fP(8).
# T}
/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^0-9a-z]\+\)$/\
=2EBR \1 \2\3\\"1B/
# Case:
# T{
# by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
# T}
/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\) \(.*\)/\
=2EBR \1 \2\3\\"1C\
\4/

I'll be taking out the injected "1A", "1B", "1C" comments before
submitting.  But they were helpful in development.

Regards,
Branden

--hnl257yviwhp6dzo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT2IAACgkQ0Z6cfXEm
bc5DQQ//dgDN8BtrNwK0lJ60FjS5ji5mqdSI6/mLnJr1+XeMQUvSppd2MoTzXpVw
JItQ4WP8sUuWqlzrKWQ2fCuzj3QL6nXhQJMhJgGeAirHmzUkUUHJNpnEuP2koVcF
kAL7kWWReoA4prHkJeuJdWIuwFkl/VdQq5gIpu3IazK+1jDRG8K5b0tdXiiP+XD2
8thYUKlJ15plpIkoTlns9lcqLcYQT4YRKmiCesCMje0o+E+Y/eMJGZmF90jVIrkq
x4v53NOuo4UKUoFb0SvEom1fFDa9miGE2Cy7MVzyK8XW1UHlc1/1vIjoJRun4jcA
sFqBsqTv6ssGnGNHlRfi4v926pu+2OH73GzGMBoOoCBh6nZPs2W/DHHuk7Zgn8Vz
VqAsa5UVO4hBCQHIMEf3lM2GgaOZFiuMxB7lo/xxF4DG0LoUtIb18J4LrkJslvWs
lGAGK4wEeTy/o8K55dB4Tb7Y+MGhjvzCsXeBd/jTk6nM8X+iA6ul49dFtSAYOVD5
IOzlJIgbkt5S+onnI+GTyiOL5ZsjV1RjG7kQXcjROOc0gzTrU069GMOv6F5r1ZBp
gDFtPOunBMRM8DkVUSebN02npqPS/M43863CAVtSxN7SXamurGnFRfwcSQ9m1nOk
XQF1G9ymPgEtdiXmzuWOQkVv/dV57sTZJLs69rbGdXwn6+UjbFI=
=UZ/o
-----END PGP SIGNATURE-----

--hnl257yviwhp6dzo--

