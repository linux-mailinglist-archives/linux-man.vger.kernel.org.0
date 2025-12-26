Return-Path: <linux-man+bounces-4570-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 71258CDE459
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 04:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF6943000B1F
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 03:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0F01EEA5F;
	Fri, 26 Dec 2025 03:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iylD1gyL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902E522578A
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766718498; cv=none; b=Y+8g622FrrRtGaRKvdoalkWbMJ67gblJD80nhNMHV9TWMcY6PncOkkEEhT5cfL3wqocSQvYZDB9Eyjtomj9A8ci5/jBulC6+wg+C/97c3E9+espVAaR6kAjUkZT4PEbTu7SNiN9NnLjvkiOoo7sd4e9JurobaVhjFWacH0hTWEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766718498; c=relaxed/simple;
	bh=/778n3zllNSqDHhLiMkuJnIV2VruRcSKUXp8g3PF4ms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M2OCGNSWpAu5rF/of1EYrVNMyiRKDlHm8vDXs4qs7DA0FEOwCmSo1ZBY8lFiFJGPogA1G9+qXbv8aSOWZWO6Gn9mOR5ytVSkddJ9oOwmvqQ7TgTboksJyqwirFxgdJ2EVKf1aXqIPQDSauR8ZdOkvRiOv4UAcrc7izjJHvs5dcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iylD1gyL; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-78fc0f33998so41587257b3.0
        for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 19:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766718495; x=1767323295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aEDR9MFyC3ScP/br759mQubyy8/0p+P0YvtfxEZzQcw=;
        b=iylD1gyLj0GL7xtbMGie5DJ9sH3Mzzz/WmSYt0MtHJEbNrc+g7XWN6mQ37y2ICSv3y
         YU47wDdeRIXmcJpPUlHt4S/k22sg+JM72GPuBaOE3nsqq1e2gDlbKNxZyR70byhlliH0
         VPZvHt8SfaLb1LicFCj/DlN7uE4hw6pHLFN/WBWyhZJTo1I3urwL6/Z7oxl0lW2AzE14
         UZQBshj3FNhSEmHo7SETmri0dF9ooIgQZd7J3mQqTSezy1dudPIypY8zavt2V9sHkEP8
         KtyRT+jJ1m5Tn3suHf4wY1WdCFNO/KdxiI/o7Ll92Wq91k9fgwj4cwUTohbApd0HG2pz
         jFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766718495; x=1767323295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aEDR9MFyC3ScP/br759mQubyy8/0p+P0YvtfxEZzQcw=;
        b=WOftwDqk4mkXMkaQV75wBm+Wo5jPrGxKG4YAUlKqdJ3eS+vPjdAn6Vse1mJ/uAJ1WW
         JBmSEA7ANusk5/gcrPKQGS73b1Ey+Y9kEWh8zDSeMrid+Y4EdYivlrPsdnSKboPp0jhF
         +J/OM/5COdkPnugJlTAmlTrOM/BT26wC9W0qVwXkUZqRbDQrIC/rhowcoe3E+Sa7udbU
         Dy9jXScHiP6tbD/DJEFv6Jbr0E1QGNmVr1efEQrol3FoGRzVRQfeGhd2/3bvBq+ViXLi
         dAbpJf2aOklMtCzWT7F4pIYHr4jTX9vXSepXXQE14GvgQfCvaiaIZd4+tyZr6cOBRR7x
         qRUw==
X-Forwarded-Encrypted: i=1; AJvYcCX492fPDQAswmdVSwq0nI8DvkWM/OCYTbBqNXi4xmbtv+C6VFvigAzYG7SjR4AUi0Ahar/QIQuNRNA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt7d2hxTAnuG8LkB0kSQrHK9SN1J+FQCvaueIsJdycuBLnNemM
	4axkIYE0zMuoHi2fRfxcoiY5r8HFTOwjScbD1ZprI1IHHiZvvwI+r5Xv
X-Gm-Gg: AY/fxX4qtuAKVcUfBVc+fg5qJQYmAP6X5WarmgRdBTP9x97jSFRqsV1GRzl0pVJ/c4f
	BME0kGCADvmAS+rJw+xY1JXUn6wtfjLLciAWP/vJZwe3t6z8z/jdQe962+O2wkR+ku+j6V7TDdq
	zMOKuR7IHt8da5BdQXtn027UStcsqcGJDnzD+adyoKujtZPUP0P88oTFbAZYApBa/hscDro9B0a
	o43IqNNb+lHDEEvs3FK1Re6+NxXTFUDpOxLobI2b4rqyHI+Ih2ctc+4TI4bLFhI6QAMVZtQj55Z
	cTnLK98/nrqlbdcKsYyby1wxq9QBJhKl7mvt3UtF6WFujENLiSNrrnME1/mFpeg50431mo4syHv
	k08Jxkww0so5jn18VzOC0jRa0Jxh5Edaa7VfffPkfsTztcq+sdhGBYjdPFQgDevUmQLK7ZU/2C+
	UM
X-Google-Smtp-Source: AGHT+IHlbGqtHw6D4yfUEV5NOna5Dea5sjNtuQNRDEwqo9eI4/yJloBbF6V31W6icSGJ1P5CBk++tg==
X-Received: by 2002:a05:690c:4507:b0:78c:655d:f7ba with SMTP id 00721157ae682-78fb403c3dcmr374065957b3.38.1766718495466;
        Thu, 25 Dec 2025 19:08:15 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43782bfsm81154387b3.5.2025.12.25.19.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 19:08:13 -0800 (PST)
Date: Thu, 25 Dec 2025 21:08:11 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Russ Allbery <rra@debian.org>
Cc: Alejandro Colomar <alx@kernel.org>, debian-policy@lists.debian.org,
	"Dr. Tobias Quathamer" <toddy@debian.org>,
	linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	Colin Watson <cjwatson@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <20251226030811.6pwpbmgp434l6pd5@illithid>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="go2mtq5oxkuj7ntm"
Content-Disposition: inline
In-Reply-To: <87ms364c05.fsf@hope.eyrie.org>


--go2mtq5oxkuj7ntm
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Subject: Re: Stop compressing manual pages
MIME-Version: 1.0

At 2025-12-25T11:06:34-0800, Russ Allbery wrote:
> > Yup, I'd like that policy to change.  I've added debian-policy@ to
> > this mail (and also linux-man@).
>
> The rationale in Debian for compressing documentation in general is
> for embedded systems and other small installations, and it applies to
> just about anything that can be safely compressed (manual pages are
> only one example).  But this rule also predates such facilities as the
> nodoc build profile, and is several decades old and thus predates the
> growth in storage size even in small embedded environments that has
> significantly outpaced the size of text-adjacent documents.  I would
> definitely want to get feedback from embedded folks before changing
> this rule, but at least at first glance it sounds like a reasonable
> request worth considering.

I'd add that, in contrast to the mid-1990s when Debian's man page
compression policy was promulgated--my recollection is that it was an
early, early decision, already in place when I started using Debian in
January 1996--transparent compression is now an oft-implemented feature
of file systems, including some that are popular in embedded systems,
such as JFFS2, where it's been the case for at least 19 years.[1]

Further, the selection of compression algorithm and container format has
become a popular site for partisan battles over the same.[2][3][4][5][6]
Since Debian already generates sufficient partisan battles over issues
specific to our practices, it might be advantageous to abandon this one.
(Speaking for myself, I find deflate/gzip satisfactory, and I intend to
release groff 1.24.0 as a gzipped tape archive.)

Adopting this change would enable man-db man(1) to discard the
zsoelim(1) tool, simplifying the code base and logic depending on this
tool--but I defer to Colin's judgment of how advantageous that'd be.

Regards,
Branden

[1] https://lwn.net/Articles/219827/
[2] https://linuxreviews.org/Comparison_of_Compression_Algorithms
[3] https://www.nongnu.org/lzip/xz_inadequate.html
[4] https://engineering.fb.com/2016/08/31/core-infra/smaller-and-faster-data-compression-with-zstandard/
[5] https://www.reddit.com/r/archlinux/comments/eiia99/zst_packages_consistently_larger_than_xz/
[6] https://sysdfree.wordpress.com/2020/01/04/293/

--go2mtq5oxkuj7ntm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlN/BEACgkQ0Z6cfXEm
bc6UXA/6AonpoLrnALyh/OMlJ1N4u4oOlOOds4w2F7qdZxlHXaPgkPVhOKh2jSuL
Lh5R0sh98qDRvOmzfDS7YnRE2R2v4eAPWwRtwI/yrCzQNtz0gZ2FBO8ZAC3csSHW
g3e3zB5KrDmj7X3/IeF5SmTwtfDJ8SyZU/+NIRbPjn10o5WPxyzKuFWGKEONPsmF
DPzuKMOcfTMGZYuPR9OrNMtMoJ8qFF/rdyJAPo2vcD7JFN38DwF5Y1vPTtfM+u69
yDFdBSRwGF9L7p6FyRT3i7Q3A+ZsEDYg1XmHYoekV6OqTb/Of+/E8VrfZNuu3K7P
PFeBSCBMak6dYl2Hwn+HFBLGJQPkVA+o2ip8Hs5GcHZkgm4d1oZ6RTYYoBhJXo4p
AXJ7cTrW8Rb1Bo8O6tJOP50bRs7gkgOcMvIxZ8aVVh1rDdMI+f6CvB1Pw2j2h9Tm
BVZqOPvCVBbGspqroyPkXmMHR4YVdYA4ATLbyeD8SNQBBsRaAASNsqM72EO7LEtE
xildhEA/PF7MbwrJhu8Sf21ixDSLIukg2n+056nEHzf9i7XOPH2FzfB53MYMGtPE
sDEK0Uy0wvnlvW2BspM4Q6x3dHeZgas0ve4bzamWjVrNf8Mlh9KyBw2vAd1eGtwg
O1kL5Zbyj+BnOAdebi1uGkAawYslqf6USmavGRFrbemPSIBUEn4=
=fb40
-----END PGP SIGNATURE-----

--go2mtq5oxkuj7ntm--

