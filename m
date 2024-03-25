Return-Path: <linux-man+bounces-686-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC432889FD3
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 13:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA860297062
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 12:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F601A4370;
	Mon, 25 Mar 2024 07:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MX5/IItm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D91BEDB0
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 04:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711340400; cv=none; b=KePIB3bluujRucxlki19r3d87B1NTkC8tPlBSbcztCf0ee1ULotxIARpcp46V+/4CkNZFjhMJ7eWCPNeC5SJvO86M7eoxg22OOv9V2wr32GoziswReMw1pJZ9bTvZSZB120qqp9OQS8A+U4WkFEWWEY5IKNDGj0UVwanqRySzlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711340400; c=relaxed/simple;
	bh=Y/R4nXsy7UIyXZaeYV+tJ5lhfLKWc87XXk4ILexC5H8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nMEQD+XfRnFWZbFat37X+RaazDwn5umZpmDbSvyroqU1Z150ysONs6iQNGtEe6EZF2Vde7xb0StbbZo3iVL8AQUpm3W39o4nZiWNziDSsu4LU9VIefdHCjLCrYk3D9oa0VQ20LZnmoA8sZiEgL0VqktiNmD3SQkkiejwLH8KB/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MX5/IItm; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-221e6bf537dso2571446fac.1
        for <linux-man@vger.kernel.org>; Sun, 24 Mar 2024 21:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711340397; x=1711945197; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e1nqlx+HmXqGElEFqIas+6PJq2k5UXLkLjSDqJfgvmI=;
        b=MX5/IItmXOv7io7PY/WJVkuAUfxP5kATSD6uEtORYfKXjGn0e7UBmb6A0nyVm2dzrU
         VrF46jhOVIgo63DyBV9R+zH95cn7s5FaIBoWPfvEOPIoYtqaDAjbCSJqWwbGhmBF8ZqY
         rjCq0a//ANhmxXDpOmMNPGYFEID9e/TAD4/xBmhh8kcviMhpxDaHxvWXcdIgjKlE45Cp
         o6ovrxB1UjrsjwFnsXx0mB6XElb0LV0fmIHrH3bvL1CMZi4UMy/omOfcdasWX6uGe8N8
         DJof2GYgEOn0X7r3+FXwRtWRKLCyLocmPn27SSu4LxIAWzxZcxZXZFEmqqtPGywZu0vU
         Sorw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711340397; x=1711945197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e1nqlx+HmXqGElEFqIas+6PJq2k5UXLkLjSDqJfgvmI=;
        b=UEuRnA9mnYlosUIWOqcXQ5TCaQHAlkfV5Ji41zcRBkBoQpT+F5Q4i5P5CmEF9H9X2e
         Yj1CZlqyPzeTNMtC37czvbPeOy8i+FXO6ldjE8v91w72AjAYz2L7YzEbBsiEaRFpAQfN
         JqgnKyBcinla1buXBtkSi5B+pII8mYL3yIqhcq/8CKhE9BnkeQ9Lz6kQKKJolr/OHVV9
         vGzgdK3OTJCPZyYz9FVRFmCpM1Tdrwjpgf6J5JBfu2sP7pPj0yFZgsihR6DOwGaHjsnL
         MzbKWWQQ3v92QCbRkNvyu0br0GN7HBUaboiyJfyF2PLS7YzKtQajGTPNsVBWDQWZuU1x
         i69Q==
X-Gm-Message-State: AOJu0YxID4hjHXtr01LZBWZkKZulP3G+tvn4dE42n5i5Jsh3MIh5BoxJ
	NwZZhOYtgHxOapOf0UMN8ByFob69aG0Zjz0MUu9c7HvvCzYo68VP
X-Google-Smtp-Source: AGHT+IG4W/IMzFeIh5XBuRGP3GY5q7/hpAEKtv9pgJSXZ0DdA0QYMvW0YAruoJGSp6pHpDNHSs3U5Q==
X-Received: by 2002:a05:6870:332b:b0:220:9f8c:b97b with SMTP id x43-20020a056870332b00b002209f8cb97bmr7132803oae.4.1711340396815;
        Sun, 24 Mar 2024 21:19:56 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id mm9-20020a0568700e8900b0022a185fa4fesm1027876oab.21.2024.03.24.21.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 21:19:56 -0700 (PDT)
Date: Sun, 24 Mar 2024 23:19:54 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts
Message-ID: <20240325041954.fofjtgghwhe4znm6@illithid>
References: <Zf3BRmfTFvADOIBG@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="agcvczbjgotp4ibx"
Content-Disposition: inline
In-Reply-To: <Zf3BRmfTFvADOIBG@debian>


--agcvczbjgotp4ibx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-03-22T18:35:02+0100, Alejandro Colomar wrote:
> I see that Debian provides the Tinos font in some package:
>=20
> $ apt-file find -x Tinos.*pf
> texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tin=
os/Tinos-Bold.pfb
> texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tin=
os/Tinos-BoldItalic.pfb
> texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tin=
os/Tinos-Italic.pfb
> texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tin=
os/Tinos.pfb
>=20
> The above is .pfb, not .pfa, which I don't understand and may not be
> usable for our purposes,

PFA and PFB are closely related font file formats.  Reputedly, they
stand for "PostScript" (or "Printer") "Font" "ASCII" or "Binary",
respectively.  PFB was much more widely used on MS-DOS, due either to
the meager disk space there, the 640kB RAM limit, or because it was
thought that the fonts would be "pirated" (or even understood) less
because the nature of their contents was less obvious.  Who knows?

Regardless, groff provides a tool for converting uncouth PFB to
civilized PFA.

$ apropos pfbtops
pfbtops (1)    - translate Printer Font Binary files to PostScript ASCII

The grops(1) and gropdf(1) man pages in groff 1.23.0 discuss using this
tool to prepare fonts so that groff can read them.

(Why not "pfbtopfa"?  Ghostscript was already using that name.  Why does
groff provide a tool that does the same thing?  Good question.  I don't
know.  It is not a young program--it is old.[1]  Maybe at one time groff
was portable to MS-DOS but Ghostscript was not.)

> Can we similarly get the Unifont for zh_CN PDFs?

As I understand it, GNU Unifont is a low-resolution bitmap font intended
for terminal emulators.[2]  I expect it would look offensively bad when
typeset.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=3D1.23.0#n3211
    https://www.youtube.com/watch?v=3DK2tgZCabTzs
[2] https://unifoundry.com/unifont/index.html

--agcvczbjgotp4ibx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYA+2IACgkQ0Z6cfXEm
bc7BvA/+PquQ0qkbO5svWAwJo9CI87SaAhfeUsq+VwjlYUUfxdCdUqbgtRT+prrk
ZDrUJyuNLEvb7lx8oKK3h51WqHq/T/HYFUxhHV8i5AtU+Sij+xI26uKNHRia6x82
By5oTLVS+ErarVGUeWwltvIyMU1gjsJNZrlKcphHdWM/1ZYLLxAFSW5/NEJopcRF
cu0f1qpVoZ+rggzKgTtNGPhmFC8hUV4ck0nMIgza1EFeLrWvZTeqiOWjNarzB/Yf
AjZsjqfLvMPC3VSRlTnZDnYzSazZa130JpsNfv+Y90KajgwqOp4eErXZb/wOm6N7
f8W6khYt06BOWdLu7FXPPf9zsAVB+L/eKJsSQrJnbo3SWqZg2mvuK5dUt6g3E2kZ
k6F73Lvvzp7f4x9QhSZFGKiBPsiifMxeGCkLA3lxr8Havmlkr047JR1boGuN4BST
nXN2JKQN33WpNB7TK2KluUUYhS0SyQ2Q+3E1DpD4il55zxBscHHlqP742IhGcdrI
Uvw9K9OvuNjsf2DhOOzK7pd5eRWDYHP0mpkhf9auV6TXn7MFBWCdRERtsyADaJIM
2Ds7L1xuCFfFAhqyRseb5GR+E7ghr39IAsase67/HRm4YninK9ezH0qOWzAMlW1K
yW/UDg/p6jj49t4f4WaAXbbo0hdYxI5FYXBLPqeCjx6abLnWYWI=
=Jjko
-----END PGP SIGNATURE-----

--agcvczbjgotp4ibx--

