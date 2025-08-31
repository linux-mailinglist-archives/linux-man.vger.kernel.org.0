Return-Path: <linux-man+bounces-3778-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E441B3D3B3
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 15:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 139C23A5326
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E238922EE5;
	Sun, 31 Aug 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VuERsPzq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE0F1863E
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 13:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756647063; cv=none; b=EgrCIW3jbpblmGGloDTH1IuhrltMqpwOSk6xF1PxNB+swJB2D0ZT8r0LGSW2QiHA2UzBVLZfdZJwNZw4VA5MAxPit4t0BIbE3X7zLhXia5yMo0aU9y6452tUl0a1eaNXv6A+g2gzuCU5pGHaTOnKg6dnn9kVf/z5myBw+OrJWkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756647063; c=relaxed/simple;
	bh=KOcT1M415+0L3nZwVjauVb6oBy8YtthcuJXK+XhTBh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A6390diK9mt/9+4w1iQwvvZ9j8GEKM9dRTwL+VekrcwHIfcnOrqekHjoxNv1UDSk9dCC9GDapB1TrflecoJo5NIp7GihEi9OwzCHSvIgTFYMxSrgfNEIuTEOnqlNO9YOBrkHMiIU5Rcj5rG9hv8tE9b7fR6y12TfmLTCHNdusTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VuERsPzq; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-71d603a269cso28142887b3.1
        for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 06:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756647061; x=1757251861; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KFKR2n3i7R6fDswdsk8+dwJmLvNsVZPN375iGf6+kWo=;
        b=VuERsPzqxjkN4TdZDrZKN5+LEc/98kGXsE2IzFBJP8E9p1wNTWt8jnO74TeuhdxAQJ
         ACzy+Zb4fn+DsMahn1z+ck9u6G0rz7Ui7o86mB+xKdiTna17pVJ9pzuU+rlJ7WQHdeuX
         Ac9zVwm9rvYmXCb8kYI9gSB7LaYCb7MoOyoEcD94gKR8vJmY5DFRIJA3ubozgvDm/8rX
         ZFjtN9d4LEZMM506K7XfIMXA6yuSYTQImEUWeTOC5a6BB61ATVgfeAUPfUvKuJry96is
         2RGybyeQGqezw3gAMKijNre3/G39sk4nAog8e38rFtHG8PB2ZWsq+H0q3EtKFXf0E2MQ
         CzVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756647061; x=1757251861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFKR2n3i7R6fDswdsk8+dwJmLvNsVZPN375iGf6+kWo=;
        b=JbyuAb3ppETW4VZ8ZEtPyTTwpiuh+41RJYFzpgFsMQ57dT1JZa0XYKaZm8KExZOEKu
         bs//NvXZS6YIim9iVGi8Zba670xnnuC/QnlZMfmgEXzl64uWkUxF5KAiRyGM2t37NAy0
         WQ/+UuxvbCaNKOcjVXnWLbVrGFuNvw5rF5CAeFDW/Hs6ntXiskgvqLzqjsZxFY5pO1dy
         9wFqO7BnMdFYZR73xtXMjHDNp8PnO7fmNX8NOA+FWqoU72e987Pbv7gDPgBy+VSGBVOt
         LH0udbPaPUT+OYnP8VDaFhEQt5kDEDVAdoocHxnpKGNE9wrrutZrlhlTlyOYkRyS3SiY
         YAkA==
X-Gm-Message-State: AOJu0Ywhu8WaAEZuVZbYGdZNwZ/EWY63uYze3G+w+1Se1SHQJDgLnEfD
	l0ZQnW/IfsJwqKEwuX8kwf2adevZTe1yRLap3LgZH0oDIw8fmp3JOV4lk0jO6w==
X-Gm-Gg: ASbGnct2U3shA1KJLNYNVjwGpK0I4ALNVlQfr0C8tN+k31+4EyBOa3WNEhrIap14lfP
	jGhlmtM1FqD6U6ZGutS2GJ0Pp29r/1UxoWOgqpZaazb63alo469ClVcmNr995CwO99Dq0xODFLC
	AbL8gVHJRiGQErdIPHEd/gPh0qcy+ehCBLHyxnys9/JCot3UGizJNsxWtM9pshB+ZJwx+D2hm7Q
	TVpWtCZw95XpqEdXPIuwucbapUtvlDoqBgbGZfsJzW7qqsJto/4kyB6FOLHaCvJgzURTYj/O2lr
	YDn7Jhn955vjOnWy6bTsJPlbGgqVbqvSjL6lGLm55++3J+IfthV4jNabOD1Svwu1/29WTA6quiD
	95FYGNWVm+Rl+nzatjU3zOxM=
X-Google-Smtp-Source: AGHT+IGttCADX5VhLbSQ/S1rKgwtgIm0nWlezULRAko+rZeVSUSY+fQaDj57lFH/ZJrk6L3lxWvq5Q==
X-Received: by 2002:a05:690c:6c8f:b0:71e:715b:a988 with SMTP id 00721157ae682-722765106a1mr55344827b3.42.1756647060372;
        Sun, 31 Aug 2025 06:31:00 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7227d8ca596sm8230327b3.42.2025.08.31.06.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 06:30:59 -0700 (PDT)
Date: Sun, 31 Aug 2025 08:30:55 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Helge Kreutzmann <debian@helgefjell.de>,
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Issue in man page motd.5
Message-ID: <20250831133055.2tiryu57ai6dhnlw@illithid>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gsugfoubtk6y7cfe"
Content-Disposition: inline
In-Reply-To: <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>


--gsugfoubtk6y7cfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page motd.5
MIME-Version: 1.0

At 2025-08-31T14:56:18+0200, Mario Bl=C3=A4ttermann wrote:
> Yes, maybe a bug in po4a=E2=80=A6 Currently, the line break after ".BR lo=
gin
> (1)" obviously causes the double space. Without further digging into
> the Po4a sources, I found a workaround for this. See the attached
> patch. But it is based on the Git repo of manpages-l10n, so it cannot
> be applied directly. It's quite simple; you'll see what I mean.

Unfortunately this proposed patch regresses progress toward using only
man(7) macro calls for rendering man page cross references.

The idea is that we can then automatically rewrite the thousands of `BR`
calls to use groff 1.23.0 man(7)'s `MR` macro, which enables hyperlinked
man page cross references.

groff_man(7):
     .MR topic [manual=E2=80=90section [trailing=E2=80=90text]]
            (since groff 1.23) Set a man page cross reference as
            =E2=80=9Ctopic(manual=E2=80=90section)=E2=80=9D.  If manual=E2=
=80=90section is absent, the
            package omits the surrounding parentheses.  If trailing=E2=80=
=90text
            (typically punctuation) is specified, it follows the closing
            parenthesis without intervening space.  Hyphenation is
            disabled while the cross reference is set.  topic is set in
            the font specified by the MF string.  If manual=E2=80=90section=
 is
            present, the cross reference hyperlinks to a URI of the form
            =E2=80=9Cman:topic(manual=E2=80=90section)=E2=80=9D.

(Alex is still waiting on me for a revised submission of heavy
sed(1)-lifting to automatically rewrite (primarily) the syscalls(2)
page, which is gigantic and contains many cross references inside a
tbl(1) region.[1])

Regards,
Branden

[1] I think Alex and I left off here...

    https://lore.kernel.org/linux-man/eogsohjuaxoouiod2ijvkmc2oiipcv3eefjgx=
j4xeajecu6rdl@wwjfk5i3hgtv/

    But there's some good news--as of about 2 weeks ago, groff 1.23.0 is
    now in Debian's stable release, so groff 1.22.4 and the
    approximately 434 bugs in it are truly starting to fade away.

    https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dgroff=
&func=3Dbrowse&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bug_id=3D=
&submitted_by=3D0&category_id=3D0&severity=3D0&bug_group_id=3D0&resolution_=
id=3D0&assigned_to=3D0&status_id=3D3&plan_release_id=3D103&summary=3D&histo=
ry_search=3D0&history_field=3D0&history_event=3Dmodified&history_date_dayfd=
=3D31&history_date_monthfd=3D8&history_date_yearfd=3D2025&max_rows=3D50&spa=
mscore=3D5&boxoptionwanted=3D1#options

--gsugfoubtk6y7cfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi0TogACgkQ0Z6cfXEm
bc5Wug/7BO+WJsyoJpgDRNG0VNzCrDtjbAZ6zLG8elnSGoK0Ha7egwhGaSE/Mt/l
md8/F6oNzr+SeQFgBeUruNmTM4Iv6pcBZNt7yM1KoBOyCqLSa/jjB56dH/l6vy3o
4oGUhnzemFRle196RR04jo+TwYI2pQtvAOXG9ri75nxCQg/wO6xUd7CI6mBvoEmx
nOrh2ZWhUX4NQfEhkJBGoufTToaWXgGZxglaFjfCMykwHmMnKphAcCRBRCFnXxiY
53eoG+OuvFCPgKFlt+O662uSq+3JXK+j2jioSakXHExqkxtPBr1tTIl1Yox4U/cS
G/5SHj5N1eVCOakHTanEtd65xK3JR1rL/vQPs5zC0xq07x7PuazeDGIPdDFN96ql
QV8Ri2MNC1McrfnGZkhGQG+0j809Iv8A8MWlkAHjSsI2TVr9octO0oEIbJzpD1aR
V2wIOIg+692x5mXpZt5j8g33obPwYLvetwdjQTgMAwHyFc7bF/4GGhkGCF5rCVEV
sxp+RlmULVprTvq48hsbJu/VXa6sNpQMNAV46/Kfv1c0i0OvIAQYTaGf16IKja5F
MtPuV3alnQMUb4lE/EkGATYY4Q9Y5bYI11IV2ubT0pg2yddbOCWMArZAQwppVgDg
ZFysYoJ7GNa7jltxspymiVq3E//roZc9Slt3zoMm4ghSO6A3P3c=
=KKeg
-----END PGP SIGNATURE-----

--gsugfoubtk6y7cfe--

