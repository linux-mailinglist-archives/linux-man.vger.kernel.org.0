Return-Path: <linux-man+bounces-1112-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A854A904044
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28E4CB22502
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343E52E851;
	Tue, 11 Jun 2024 15:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kcOfcOJ+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67A91BF53
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 15:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120558; cv=none; b=awAaoQmlzqkWmxqedhGeaKb5RBE7rKdxpUjpPYwkMJMEyZKWsiRKwQhwJtJr+h8mKMLIWXFCVVsmeBB4qPc2D1I4UKz6b0kgY/ysY4abqKQaDFsc2jNEYw3MQgI4S5seAtlKEurnnxbNGyK67jlE921g5dq9dUkF2peiJNlQDcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120558; c=relaxed/simple;
	bh=xCrEXbMWu72+n3wKSfXZ/5fnjQbaN7aBNJ3jsNJOm/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tVLFRDEoYVhae2htTMeIw5jboU/E3Zg1q2SumJ+ABQhW2iIKLHQWDDwqIU7uzTqhdK83WaNnTEy6vUcGvbmH9J/jF3lDQJ6k7RhNq+SWKyJ/lZy8VA/3waMeFmIX/gnET0Hkzocn3ijm2ZPsvZu2QT5qpv/uV1yYf3OLv2b+Is4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kcOfcOJ+; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6fa0edb64bdso84088a34.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 08:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718120556; x=1718725356; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9BbbJdeAElj7FB44Z3e0qSY0SWI1aV4y/1rHce6uTsQ=;
        b=kcOfcOJ+JjCusRjwI4bVJeuM6oGdSp86fDQZJgRpjDqxC/HFPNlBcnrCBnrsa0XHan
         TDswkjF5ApBC8BKukrRf/pwQL1edltUNssin5U5emMEvAsFL597B658z3HkBNA+GWeNT
         rzaFFaSKMrYb4WMbDoyocoLwrWn8dADJcoGSbyfHSQgKn1q3TwW6o/IWzv7MeSkTG7qn
         A2JWVYe4k5zyU3PJ/ON/bX0hHUWNLVdjAytd8Tdyo42Cy/q616thKg19ciaXMPSZvl5t
         YETGu3XEJ94uzki2Hkdmz04TT/KHvRx3KrbSPrKXyZzof4f7oghtFK16d8pEoV4LZMhb
         YnDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718120556; x=1718725356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9BbbJdeAElj7FB44Z3e0qSY0SWI1aV4y/1rHce6uTsQ=;
        b=Noymy8P+O62HI1ADIN1z3E08k3szrlCpdB1b6JFhPHxj01MvSh5iie4WDEAVVKBNfq
         /K2S9qCS1EEqF9WH8jDoLr3ongSPyDBF02g7rK9rUZHpl8DgI+mz13iv50svF7J8SxL5
         8eKsKL3cFDQSghOneEm/wkowTgx57w20n4O7yd39qRZgpzyIwLFO7hIzXcZQIBSBjmPY
         dTiX0hTGnNGmbhw/IbLHka/U43oXxnxzzECV3rS3TvFGMDd8lTXnyeQG2xBfoXUTuSLX
         P/vJa2Y+SnTJUbjsc75hbPPgV2XnZ0If8n8TmbyaZiJLNLL8rnOcJyiRA338kW819BJe
         hSzA==
X-Forwarded-Encrypted: i=1; AJvYcCXjObI15C0Y7lHx+07UG1IXyOwfjf0lHpCX3/4vngJPhjq9JvM4rQEVcuicgQy+V+cX+SL64t1RT3hdNpHMyOOAbnHm2gDSlYew
X-Gm-Message-State: AOJu0YxpeIZofn7dB8T3AT2Z61tJshkCsPyhACCp1oBDW6VDANQzXrlX
	IUQucLmdC0z2XvtCKD8WyvHAXUEtVwqf5UgfnGVssfSGANa5B9n5
X-Google-Smtp-Source: AGHT+IEQRruAmPB1+DjDJRseU8K4SgKIBPWJCB5RF6DMiWA6d3YoqLSr/6CsR1/s4DXtBwjU5es2lw==
X-Received: by 2002:a9d:3e5c:0:b0:6f9:6577:71c3 with SMTP id 46e09a7af769-6f9657775f7mr10791553a34.6.1718120555705;
        Tue, 11 Jun 2024 08:42:35 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f9badf3bfdsm801501a34.57.2024.06.11.08.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 08:42:35 -0700 (PDT)
Date: Tue, 11 Jun 2024 10:42:33 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <20240611154233.3rapmsl2futdtdf7@illithid>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <20240611122453.qn6jyl4go4bvwkqm@illithid>
 <kmuodpe6ijgk6g2lsjiggg3d6kdi5tv433jso54jxz2mxsvtqr@nlipunv5stt7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hjvxhqwhe5qkjpmu"
Content-Disposition: inline
In-Reply-To: <kmuodpe6ijgk6g2lsjiggg3d6kdi5tv433jso54jxz2mxsvtqr@nlipunv5stt7>


--hjvxhqwhe5qkjpmu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-06-11T16:22:28+0200, Alejandro Colomar wrote:
> Hmmm, so we should \e => \[rs].  Thanks!  I'll try to prepare a sed
> script for it.

Cool!

> BTW, how are you doing with MR.sed?  :)

I have not returned to the problem since last we spoke about it.
Working up the steam to tackle the staged-sed-attack on syscalls.2
tables again.

I will risk surrendering a hostage to fortune by venturing that MR.sed
_itself_ is already pretty well tested.  It's getting that table ready
for MR.sed to go to work on it that is the devilish detail.

I am conscious that groff 1.23.0's first anniversary is nigh...

Regards,
Branden

--hjvxhqwhe5qkjpmu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZocGkACgkQ0Z6cfXEm
bc62mg/+Odjkp8C+zDFU2/KZ0FJEiefaLFK1LQ3o4YY/11wpVpiOKWEvzSynUKsF
leolhb/lYls0NgITb+CdkdDmUUpTc2uJYCCiGbuDIhmhkQ5o/cV7+6p49I3RYRAe
/mm1VfdB1XG7s5docA4frz+uEPV/NKlZcZ7BHacyF7fcOVPGm24kyc3snWEphhBC
bSRLcqYa3Zr06q5YRpN5UgEMqEtCIMf21Rm2LADfwcURaeL46qiqnIxh8Ld8cDov
Ztvk1dN4cuw6k0zaWF5sExOzREp97unuHD9k+S3JcZRgbwXuPr0PGVAGW2Xue6/d
1h4M+g7ZQ3fitfJ4EsszzG5sdFXmJ6swoTjR7nQ8eS/fPG6pRID1Al7pclOgNqoN
NcAPwge/ALeruam7aNy0ofX192aja8O3pr0U428nCoKzXus9RUmhKNl3l9QQCl3v
yKKZRzW0CA+hTGrdPZyNm6CgEztfWG/d8hjNyAAQS+y6JZ1P+J2lUpi9+ybVo9u4
EKwvbRumvayHjoCXYJ7rTn5LMDcg8lcVSKc/BlfxJgjEBjde3J4Q547tFOPEt6UT
L94ajojBQuHWIVey45r/IIhw96RNiDl9q7E7LW3uqFOwrLScfNfwkMkQLT2rq6d/
OFDbWZFfaz6JEW40jiYMx3dP327YF5kyqXRSsPBfUTgTAcaF2eg=
=AFIO
-----END PGP SIGNATURE-----

--hjvxhqwhe5qkjpmu--

