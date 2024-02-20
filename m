Return-Path: <linux-man+bounces-464-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA58085C18A
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 17:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 446DC1F26363
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 16:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68981763E6;
	Tue, 20 Feb 2024 16:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FBrGQOqq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F89768F9
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 16:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446976; cv=none; b=pTT8F9kQFqbeYuUwXrCosXAN2GlhBNRz9yZ59j6k66KTaQpHgVx0/wNdZZ5rUw2lm7jEm9IhUBLi72vM4anWo+1jFugdjWneOYBO1EUnkOZllUiHOz67E8Evsf1CZNULSLwZy/JAJ2cvMXzTwSm97y58T0wMlNK4MopeT40V3cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446976; c=relaxed/simple;
	bh=Aq+2MsQdvLuvfS+C2fBu64JieN/Y4AUvj9iJ+/eFGlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZuWVO+OWmpCXirWMefJl0nQwqPrtEMEym9mldwl17XjuLztDwPUc9HLzzCjpM3UCp5M8AxVNO2YDlZpf5XHdo2jHzyTE8wQuvgAlIFqt44sNOXBv8WD5sqB5/DWdOjYzb+6FxRlYzqs7gdkr3f+tVPho5WOv3fgQFDdp+DEwEYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FBrGQOqq; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-59fdcf8ebbcso1323337eaf.3
        for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 08:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708446973; x=1709051773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tEa4cksJHfgb0LDPBcXUfjvZb7Wvk5JSo8iyFnIXMi0=;
        b=FBrGQOqqdmo8ErKW0BP0TJ9gV1CRMv+BYMRA9JOufYv7SRibPNjtnqh7GDnSxBW11+
         PnxW+fsbir5bmqlOt8z+qmmW8bTPKsVl+G1WARzjoBfPkhh9cqzH1haoV1RB3nZiR4Pl
         Ktjue39V9wJbzSA227d4YLh+tKN/88f32rIEu2kBEUtL/sN8N0cLiwlP+XXsrsXL0wQd
         KwPwDAW5UzKj/I72zp6RHZF/lBUZwBAWBor7lGkmBqWoT9KBieBrBEU5GbgzZzNBko7n
         pVjOVP+U7WcFw+rtEPx61lslLIPrtORttErDPxqh3vleosnekk7g+xMuBQ0FLRrtL+Ky
         tJiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446973; x=1709051773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tEa4cksJHfgb0LDPBcXUfjvZb7Wvk5JSo8iyFnIXMi0=;
        b=lcRh4UwS57FXsuCXiK2MoP6OFm+2RnBMw/5yw7LrKw4Ygy7fsJEBZQltB4B02yLe6h
         gTN+qECGxgXw8/Lar0SQQJ2F+nw6/9oaJ8vL4ije0oL88Tk9Krii69z/VdFJOXtkToX7
         0g3iDtTv+tL2g/ZHbS3dMDpb0aE4HJvtSkeh+aIp9yHX5YnxlcxpPfhpvguTe9qTvAt9
         U1H+9KgedL9ai+MIUToHB0i1MaM6j0hgPGLQWPLD3Y0T6yzmxBSKORUxXVyoV2o2O/ow
         3v/2iiZB18EoS3YDem50GpuR9jH8hDBzoj07Ibmv3BWkt42FrGq6HuRaWBXnUVbYngUA
         85ig==
X-Forwarded-Encrypted: i=1; AJvYcCWEvQU9IamveaEiVrslMzCz1s6pdmtbcwZQG900Z2HnaX3M5SuQdrip7Ol2S68D6HgO2Agx63SOgaF7CdxZCW+f/YGrvWL4gMqQ
X-Gm-Message-State: AOJu0YwAI1mDVOqOscylB10ta2nOeNHlZ6DVVgCh36scXCfDJX9dS2K6
	B3LsDrvVTP0Z7hbX/nw2RSTfwyoa5YEZr+vZoXSHwEkqBt9OfIXwZhgXZa3h
X-Google-Smtp-Source: AGHT+IEEQ6Zk8V3xNOFfCYbliHIgR+PXKJzzxXvQ8DTSGLrUtLDnbtlD9UsGDLGpZNu+1r2vemqvrg==
X-Received: by 2002:a4a:ea33:0:b0:59f:fe70:3297 with SMTP id y19-20020a4aea33000000b0059ffe703297mr1931339ood.9.1708446973460;
        Tue, 20 Feb 2024 08:36:13 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d7-20020a4a9187000000b0059d97d9f75fsm1474688ooh.14.2024.02.20.08.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 08:36:12 -0800 (PST)
Date: Tue, 20 Feb 2024 10:36:11 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <20240220163611.4hfyds2jqfegjacg@illithid>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
 <20240220132015.pjqlf66odcgqdtqv@illithid>
 <ZdTEIqz56h4wdJmv@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="slwd5zjzkc54itxu"
Content-Disposition: inline
In-Reply-To: <ZdTEIqz56h4wdJmv@debian>


--slwd5zjzkc54itxu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-02-20T16:24:01+0100, Alejandro Colomar wrote:
> [Off-topic; just language curiosity; feel free to ignore]

[no worries]

> That's also taught in Spanish high school.  The Spanish word is
> "actual" too, which means current.

Oy vey.  I've got more training in Spanish than any other non-English
language, and never hit that one.

I raised this point because it was (mis-)used repeatedly in groff
documentation and I had to clean it up.  It was then that I learned that
this specific solecism is frequent in technical writing where there is
multinational collaboration.

> See some `dict actual` entries:
>=20
> 	From The Collaborative International Dictionary of English v.0.48 [gcide=
]:
>=20
> 	  Actual \Ac"tu*al\ (#; 135), a. [OE. actuel, F. actuel, L.
> 	     actualis, fr. agere to do, act.]
> 	...
> 	 =20
> 	     3. In action at the time being; now exiting; present; as the
> 		actual situation of the country.
> 		[1913 Webster]
>=20
> and
>=20
> 	From WordNet (r) 3.0 (2006) [wn]:
>=20
> 	  actual
> 	      adj
> 	...
> 	      5: being or existing at the present moment; "the ship's actual
> 		 position is 22 miles due south of Key West"
>=20
> Some other dictionaries don't acknowledge this meaning, and claim it's
> a mistake.  Do you know who is right about it?  I fear some dictionaries
> might be ahistorically removing that meaning.  Even if that meaning
> wasn't the main one, it probably was correct some time in the future.
> I'd like to see some investigation showing history of that meaning
> before claiming it's wrong.  I rather call out the Cambridge dictionary
> and others as being wrong.

I'm not sufficiently credentialed to argue with published dictionaries,
but I will offer that the use of "present" in these definitions has to
be understood in context, and note should be take of the one we're using
here.  When discussing software, implementations sometimes don't match
specifications--documented behavior may not be reflected in code.

So when we encounter the phrase "in the actual version", one can infer
that a description is being offered in contrast to some non-actual
version; perhaps some change of intention occurred in the passage from
design document or bug report to the code as written.

But, in my experience, most of the time when we see "in the actual
version", all the (typically non-native) speaker is trying to impart is
a temporal statement about the present (or near-present) situation, not
drawing a contrast between intentions elsewhere document and actuality.

Returning to your examples:

> 	     3. In action at the time being; now exiting; present; as the
> 		actual situation of the country.

Contrast:

"The Central Committee of the Communist Party reported that per capita
intake of nutritional calories in Ukraine in 1933 was 13% higher than in
England."

If a historian were to offer some perspective on that claim, their use
of the word "actual" would be contrasting reality with assertion more
strongly than it would be nailing down a temporal datum.

Similarly:

> 	      5: being or existing at the present moment; "the ship's actual
> 		 position is 22 miles due south of Key West"

"The ship's reported position was 5 miles southwest of Bah=EDa de los
Cochinos."

The contrast between "reported" and "actual" here is a more
significant factor than "at the present moment".  Given enough time, a
ship could move from one location to the other, just as an API can
change over time; but when we use "actual", our emphasis is not on
temporal matters even though we often need some temporal information to
decide the truth of a claim.

Does this clarify?

For more along these lines, I highly recommend Jeremy Gardner's document
"Misused English words and expressions in EU Publications".

https://www.eca.europa.eu/other%20publications/en_terminology_publication/e=
n_terminology_publication.pdf

Regards,
Branden

--slwd5zjzkc54itxu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXU1PAACgkQ0Z6cfXEm
bc5NBhAAgQdj3wz9Bz4XHwt3Pr8KjKtka0AP3o0yUWT+4A3o6MFJtrwqoN9zmsSs
4lhMq+ASP4zbpWxPHIqCJWiihdTCqcXK2M6VfpgZ98jLdFhgxRs1G+plegESX53i
5pSCFIVBjLoMfCwko7LJHl2cU4Mw7NqLMN1/bpjQWiyNLh3/dtpFqrAY73blpweS
FxueOzbXIF6nX53kPsvIaxpCIIvhfz97XpQWIi8ox23R3QGsO4sEWMfEh0njNJYq
XqhAU4j9z74M7b0W6BR4PDbjP53rNQu3VaDYGw9WdbLQ1j1IY6QLqpoMDx4NEUnb
x/oV70Q9A8YeXwW3xVZM33zjK2gyosIMCAJyLCxpf++dfORA16B8HddTcI6BDDSA
2lTpcmxYakR0Nvq8veZs7cKT/IVZi2uyA4Lg6Vp+E3mq/o2J11VGnmWzwWGtt/cw
ky75J2aOO6vxjFKpyhDH/rAEF8fAs2AellXBSyida6VBZWk8P63oTXZAgtm9Xkdd
eF22uZox3KA8xQjLOwdC6eyWab8vU2rR5gZb9Fhrlt/5BvqKC/yhFJDPzc12PeAp
LbPwuX0+EoXKHxnxisiNd+f23S7fdyCjwLrur0TrOjhc6sbONWTi0s+s5psK1dXZ
brm9G/44trZAk74GF+kJNkzrLbqJ98FKVeYl9yHYGUuNjxuufRQ=
=EKvs
-----END PGP SIGNATURE-----

--slwd5zjzkc54itxu--

