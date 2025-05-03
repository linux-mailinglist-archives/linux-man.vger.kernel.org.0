Return-Path: <linux-man+bounces-2861-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BBCAA7DE6
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 03:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 468641C00061
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 01:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071A4D517;
	Sat,  3 May 2025 01:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gPlDVuni"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E769443
	for <linux-man@vger.kernel.org>; Sat,  3 May 2025 01:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746235853; cv=none; b=nqJGWqdshVsLFT4Q+o5PopCteSDlYz3nLaa/z9tPSiArGuciNRBelGxmxVCNa64jMcbQI4Qs++cy/CUfHSm1BeDWyoI121GCdboN26+GcF2OVDe5+onMCzIcT7qQy1Yab1yMjyvPmTtBrn/15b2CTywUsbMJbPsIGV/3KuQ2TCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746235853; c=relaxed/simple;
	bh=+LiysxYko9uiunT5vzUf5jSyREFko87ciVvMPbG5zRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5fS5T8JkFpUCV00/RmSLAKhokaMru9c0eC4CWNCYOf8lOFeJvupXoRrDQ8XzQoRvinIqNCDc4KnU13qhz/cCDcfeqDoBH3/j5H8SGfV4mNlWMGMYGOrCKoPhE2nyU1VHBy6qpyhXlMca/Kjn/CLa2+qbsSD+6d8npaoSXbcedE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gPlDVuni; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3feaedb531dso640552b6e.3
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 18:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746235851; x=1746840651; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sKWqcI/jelx2LINPMSBgZgu9Elk0+ANa/H3aeL7k/gE=;
        b=gPlDVunitDdtOP1e8BPlun4KFsHbD5Zl5rjYM4G/0wHZn969UV+ZZFcoFgAeD1LN/n
         uI+hgcXwu4EeXGxIiDypfGvRsZjjZFD1mN+G5pKUPaaunfWNAq4E6ZG6GenjGDeAz7wa
         BnyMZmrs0nT+nwTTAXVfDtMuN8qzp6DvthZB1Euhl4ZoGnXsNUMUp17QeLhH/UH+bKWZ
         us8mS+jdbNzitQ5KyWOx6Yn2mw4tUgpKxTBX3LrEOhiZhd8VIDKx9BNRE30bqS8Fr6pP
         iI9Ju3OKDDtUOFJmds/KZaK8GpA558CTOiSrF6I7wjRoPvj72JS4Cr5W4MMsqopJhGKQ
         pfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746235851; x=1746840651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sKWqcI/jelx2LINPMSBgZgu9Elk0+ANa/H3aeL7k/gE=;
        b=HJfsruVo0BXuTDbdDyYDzKWR8spIKSzHdEOd6tzLY6+Nz9WEZNAEY7suBXe0CmqMce
         8Mjuu7TNal+NE7eE9cUBRTd3mi1ZNW4W1nVo3XyQCjYJfxzZ6zG6gexH2t8UvH6gTYMu
         Pb7Ul3jppgxIZEB+FTkss0vjYZAJKCa/KI/FHdJRWAVEF9rw+Y58C0o+vHz5i+IubuLx
         sVpEo95uxC5Dn99EDX3X3y66GXOp0dF9yWBbFJSAROfAXr2SnG6CHrZ1LEVb7M/8FYHB
         PZlVZNN+G+jnP4txqYtlWq9P2sBZ6jrEXCe2ERycXUgCvSJ3xB0iXjVl86F+AcQibPNx
         l1pA==
X-Forwarded-Encrypted: i=1; AJvYcCUKKC0eQrokAHz0DZlTtVTskp5zO0GDNCl68vI53M1tCn8ycfeu8xQTAXA2yyOYYXrDv5nYWrkIBws=@vger.kernel.org
X-Gm-Message-State: AOJu0YyaiWVJyDAy9Sf3W4dsYKaSPyuWdMcsZnJ9k+QgHc5iyDTW82sD
	8Uw3y4Kzik1hbzGrPpPI5RRsI1BYbTp6r5PZxTlK+Nt11oJxHs/q
X-Gm-Gg: ASbGnct3vcaKdv6JHhkPLo3fOSq+WeSZCQKuQAbiOo6HrlfiN8UXo7oX6aVR4BT5uhm
	COdOs9GX8ZVlVoMhSgPggVSp83M81DGqx3rpKrUcO4BrBmmPMdEd9OIV4LaQtEHtY6wGGxX7Ozg
	JqfpabVcLP3pSmKiPOBkhG3t+x4GQ8srFLp7uXZLJaKf/3lAKeqylrR1wAAze96cWD1b+ruTEZv
	xikV/O2REZmNWH7Mro87l4Bb4B+7MYMwqaZhPh8JfT1SjreZKxkyyHfFRp5pkTZCIyPb2ooDMxy
	sQtUG1kJSvMGqsw5KjtAsG5rV4LYH+o=
X-Google-Smtp-Source: AGHT+IEVV8uORF58Kc+1+NkED8m2Q8K6rkihWDPYvk1MAavTIg83Kblv5ca/dLcrwLDsZIGiDSH7RA==
X-Received: by 2002:a05:6808:1649:b0:403:3973:23c4 with SMTP id 5614622812f47-40341383b06mr3391806b6e.9.1746235851222;
        Fri, 02 May 2025 18:30:51 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4034116aa68sm657669b6e.34.2025.05.02.18.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 18:30:49 -0700 (PDT)
Date: Fri, 2 May 2025 20:30:47 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <20250503013047.ckwvtgroil6jdlwy@illithid>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <20250502145104.uouytem5fpxfjc3s@illithid>
 <kb3ufv3zgvi5xihgkb2jrt72a44ykcut2srwmilb42johera3k@jrsl7nuh7k2p>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hrn753yvdsotm4un"
Content-Disposition: inline
In-Reply-To: <kb3ufv3zgvi5xihgkb2jrt72a44ykcut2srwmilb42johera3k@jrsl7nuh7k2p>


--hrn753yvdsotm4un
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0

Hi Alex,

At 2025-05-02T17:34:41+0200, Alejandro Colomar wrote:
> On Fri, May 02, 2025 at 09:51:04AM -0500, G. Branden Robinson wrote:
> > ---snip---
> > PDP-11 simulator V3.8-1
> > Disabling XQ
> > @boot
> > New Boot, known devices are hp ht rk rl rp tm vt
> > : rl(0,0)rl2unix
> > mem =3D 177856
> > # Restricted rights: Use, duplication, or disclosure
> > is subject to restrictions stated in your contract with
> > Western Electric Company, Inc.
> > Thu Sep 22 23:33:03 EDT 1988
> >=20
> > login: dmr
> > $ cat lemaire
> > Off-topic to Alejandro's initial question but related to the subject of
> > justifying text set in monospace, do we owe this typographic gesture to
> > the early *roff formaters or was it already a thing in previous
> > publication tool, either software or hardware?
> > $ roff lemaire | sed '/^$/d'
> > Off-topic to Alejandro's initial question but related to the sub-
> > ject of justifying text set in monospace, do we owe this typogra-
> > phic gesture to the early *roff formaters or  was  it  already  a
> > thing in previous publication tool, either software or hardware?
> > ---end snip---
>=20
> This example doesn't show the alternating preference of blanks left and
> right.  Do you have any example that would do that?

Sure.  I was going to be glib and say "just repeat any word whose length
in ens + 1 (for the trailing space) is relatively prime to the line
length", but that doesn't quite work because when the trailing space
ends the line, it is discarded.

Still, this serves.

$ for n in $(seq 60); do echo alex; done | nroff | cat -s
alex  alex alex alex alex alex alex alex alex alex alex alex alex
alex alex alex alex alex alex alex alex alex alex alex alex  alex
alex  alex alex alex alex alex alex alex alex alex alex alex alex
alex alex alex alex alex alex alex alex alex alex alex alex  alex
alex alex alex alex alex alex alex alex

Regards,
Branden

--hrn753yvdsotm4un
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgVccAACgkQ0Z6cfXEm
bc6U/w//UUypycwtDOXR8cUnkHl+WzgBWIxRXi7Dim0be9CDcf22jHcm3vwpoUt7
DvA4Kyf7gv6Dv91rrtax8abVCES0CIqoigkcVnM1Bs6RG7XFcHD7Uyd9JdpQldCS
QkboX9/6814URn1KZNl3Ih+TY8Glo2fysWWc4FhNuFj9kOS+xa8xiHxndhvZTbTA
pVO6aMUCdGwcIVUnghd3bv2i7Z8fCkDub4wUXqqMATpy1FjiJi7DBlz1YovXO++Q
9F9D/l0mZqUnZGLQAxDe33JHoZAUUC45QUXr8ksq/8Y2UE9Ygic8SOjlofQTqZbL
kuoGUgqlWb7PxmmYBJ0oxAqtFvh+RGBzSjkDSC9JtLF/+VUn3hfelThpgI8pM77i
STPY3Gu/bGr6gIg3YpDcX1xaoqbNA4gtqqAX0eAUOx+yWb5cCdzFD51b9l2sVEhs
h/CRoEfCrYNHb6AoC3OVmv9gCXDnGaK49u8XIz09Ld0ZByI0Lp/QhMM4Z2qxgtcv
UgqJzxgPHMKAXcEJhwHP6Dp35ZYeBYXJSQNT+ISuVgUsLV4u60u9gLBz8ns8a9cG
zay/a9e/1WnmnbUe6skCIKSPXPTx+qA5eWIsL48ZimJKI1D9854L/JpemvVg4j4i
+vgtmdMO2sN288Xht5y+v00YcUHObEgrZGjeYoHrmNV42FkFXA0=
=qFYE
-----END PGP SIGNATURE-----

--hrn753yvdsotm4un--

