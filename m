Return-Path: <linux-man+bounces-1862-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E35CE9BA3DC
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 05:05:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A1B4B21B15
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 04:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15ABF7081A;
	Sun,  3 Nov 2024 04:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nt31FliZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFBCB658;
	Sun,  3 Nov 2024 04:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730606721; cv=none; b=jELYMWhiYVepAzVbt3Gv85IWWGlDyOjGtS8FYjy1nwuAM3yn2OHogouFb4z3+51cisHt2EMtR5TmIl4AYRu0MynaB2z6M6OgK8gVxzY9Bo6520Lh4eXqgKeWKYnwHKwLu8TbclBywWF+zhxgUCk1vP0FopHKO1BzoBdXkNvi10I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730606721; c=relaxed/simple;
	bh=Gyg5zdarFFMb9NhxqxzGVJBjxsx3a/E23SagF5aTie0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1nqPiDEX1AWPIMH+Id+RzWipY0fzpeTQINnZIYg9t8hnOeTypThgOIdGFpwonOHjWgDAsCJGM2kpotlFdiTKWKYNlVtrU7ZrVNnbcQKFjWwG6m8uS9n1shavdW7FYozmcKrGs+9LnzZgy7Rz/aICB1GT706zMZRdxtDXbfOJUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nt31FliZ; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2884910c846so1487949fac.0;
        Sat, 02 Nov 2024 21:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730606719; x=1731211519; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3NbQqHGavlGKaUtOquClqL6oZ5jwUgWkkB2nQy7c60=;
        b=Nt31FliZ3SEbXlilSR+apIOf28sqm+j9kzfgwHBn1KA8GOZCe31cGLhfhLpTNfQInu
         Dy30lzlLIO2/ABoPotTUfHjOqUaWeISrfCRidEbeTIbotDEurXfN9kPKl4yhzfpmUxzI
         vpGaC+Lwzdx8He+KnwxhzJDsHQhxi3K8XJYH+0KWIr3LFU499ffdX/NmRxeQLqJzbKhF
         9OMhbARgdItiB1uWB8x8RAPeJU8gqm8J5SGRF38AeMDyHeG2RVlYZbqnfHgJ/byaDsyz
         8Lk/V7bO4Cq/LDQEX7IwSJBbsIYL7arxZ/aj6m0s9yMCvHm5IUQ8WLxxyxRmVzYpEQf7
         FWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730606719; x=1731211519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3NbQqHGavlGKaUtOquClqL6oZ5jwUgWkkB2nQy7c60=;
        b=C+vTi0NcDWjP/TXWzfU/mKVac8JIwybGwaesJEperCmlucAne/qaGVvtLQkEoTblj3
         GpmS2gsQlzNcGzltWzdxXMAtqt/0G0fR6Cq/a3/3GiTG0j6WL/EkC1jAPbSJbKBDCZqq
         7ATFVQE7/e7eY0UMWKtH8UgLMBx93NlUCzL0jZ2LUW2RKWNFde4hHtCz+VYGjSKXDTHP
         hzotEK4aEDEoXUIwKJiLbPu6rhDAu4IR2YV9ZqPuIYJZS0R5IQ4ftf3WGERzkhv0aEQk
         7Ijn9tcO0+KxMy7/pWkFQcSkkV8W4seNp/2d5i7HgAZ4CIJA2kui2+XskjejqC6wWdOQ
         ldMg==
X-Forwarded-Encrypted: i=1; AJvYcCV7THiO+bz4VGblBTL+kSgljOu29iDB7Dv0/7ou4UUdGFPiNBoLBBY1wJpw4JCXn47HuOzQbT7gNpk=@vger.kernel.org, AJvYcCWtYjCofpMuo/Ol8a1o1kUKQg/jboUgYw7e32hAvhgod3zog17lBHF2XkmAEc0SiuXMAVUAGLOGT9ws@vger.kernel.org, AJvYcCX3Q2hQmd+UpPQf/Azac9oVs2H+UVmw+Q4P+uMHOMXS+89sj3ux/bKIwZKCfkjEb34OWoMoCyt+ozNdzxeg@vger.kernel.org
X-Gm-Message-State: AOJu0YzkHmKVSd30COj03UvbDEsaO6NFMCU6E+qUzTakbNEDG6tzEZLi
	zQQ0B1HqaA6nUR+rkSs/WXy8voGm49VbtvNlpb9Rq7O68CTrk7YI
X-Google-Smtp-Source: AGHT+IH1IuMJjXidoZxnvbOq8EhauNN2fyc1gFkAHH1Y5mnVtlVIMI/Co/2ogwXyqrLdvm8tOuNG6w==
X-Received: by 2002:a05:6870:498f:b0:277:eea4:a436 with SMTP id 586e51a60fabf-2948442b3e7mr9572727fac.7.1730606719281;
        Sat, 02 Nov 2024 21:05:19 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-294874880c7sm2151154fac.22.2024.11.02.21.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2024 21:05:17 -0700 (PDT)
Date: Sat, 2 Nov 2024 23:05:14 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, cjwatson@debian.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241103040514.6wo54kf7smiqf4yg@illithid>
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pscddhjqsar3tshn"
Content-Disposition: inline
In-Reply-To: <20241102103937.ose4y72a7yl3dcmz@devuan>


--pscddhjqsar3tshn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

Hi Alex,

At 2024-11-02T11:39:37+0100, Alejandro Colomar wrote:
> And diffs are a real win for text.  Thus, semantic newlines are a real
> win for text.  "Write poems, not prose."  (Any chance we may get that
> warning added to groff(1)?  :D)

Yes, but I've kicked it out to groff 1.25 because a gift-wrapped
opportunity came along.  We get to retire a warning category and its
number.

groff(7) [1.23.0]:

Warnings
...
       el             16   The el request was encountered with no prior
                           corresponding ie request.

groff 1.24.0 [in preparation] NEWS:

*  The "el" warning category has been withdrawn.  If enabled (which it
   was not by default), the formatter would emit a diagnostic if it
   inferred an imbalance between `ie` and `el` requests.  Unfortunately
   its technique wasn't reliable and sometimes spuriously issued these
   warnings, and making it perfectly reliable did not look tractable.
   We recommend using brace escape sequences `\{` and `\}` to ensure
   that your control flow structures remain maintainable.

This was a 35-year-old bug (or incomplete feature) in GNU troff that as
far as I know first came to attention 10 years ago when the
then-Heirloom Doctools maintainer pointed out an incompatibility between
AT&T troff (from which Heirloom Doctools descends) and GNU troff.

https://savannah.gnu.org/bugs/?45502

More recently, Paul Eggert scored big-time grognard points by actually
depending on the AT&T troff behavior in the zic(8) man page.

https://savannah.gnu.org/bugs/?65474

We therefore _had_ to fix it.

The consequence is that the warning category `el` and bit 4 in the
warning mask integer are undefined for groff 1.24.

This was irresistible serendipity, because this warning category was (1)
not enabled by default and (2) probably used only by people who wouldn't
object to style warnings anyway.

In groff 1.25, I want to revive bit 4 as new warning category `style`.

Ending sentences before the end of a text line is something we can warn
about as discussed a while back, and I plan to do so.

https://lists.gnu.org/archive/html/groff/2022-06/msg00052.html

I've been collecting specimens of other contemplated style warnings.

https://savannah.gnu.org/bugs/?62776

Regards,
Branden

--pscddhjqsar3tshn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcm9nIACgkQ0Z6cfXEm
bc5ZnRAAqhIZQOmVX214qFJPNcP4uF/DYd1DJjyabBQb/MwJd/KVO1kM/n2bsaAG
F/alGpXKF+6oJ2mlz05zkC/I0qMQ7JxB6jDxtSRTivQyT2zf0pHFIZTrOj/7Po5S
SnmRJk354RKLXJF6JtjG6Wtymyg/hbnQEMzOCl8c6p46vwcg7b+cK8G5G5dsZRKY
bH1pjEPunVQEFeQKnVTmulirbSYduhWk07q2j6VMM8E3JaX2zSSQf4EyHutCTGoP
VztycC1344QDk2w00PdgDAEKLIclzTQpttqatlCy2rBcLhAvDrimeqmA7H4weQlo
xrJNz7mxYYGdEGJiFdBpRygvdmkAvbqVpPn8hbv0Y8cFSnisnHdMfWluaVEnSCm8
hYRDHcRx7ZwQeP/d+AL8B9uHQrLoA53iZLqt6RnzZZyRqae8L0ayTQnoRjGVACDR
XGFhl85oisMEd4eJeMihq2qV60UXz2tUWFpd9BApWdtj7ySKKe0Ul+0BOesXnJw9
5abyFC6NTt/FlhUJRi85GR97AavxYLwPGOjkDOiqf3pelY0JrF4QmS3dH2I2zIka
+DslpTR0aEyWNwUsNxIACSmvmE4UXKKoYX1fqGpAwUlPXssRsz283TGSlxUdSisK
f2aND1zHzp/1WFkK2FQ5fCPmC/7BX+wslaVFrMBan/9QTRDcvDc=
=GEH3
-----END PGP SIGNATURE-----

--pscddhjqsar3tshn--

