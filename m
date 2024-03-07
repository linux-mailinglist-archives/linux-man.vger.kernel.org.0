Return-Path: <linux-man+bounces-551-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE89874588
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 02:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE0121C20FD5
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 01:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9794689;
	Thu,  7 Mar 2024 01:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B1yk8rUE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94B54C9B
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 01:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709773707; cv=none; b=bqvtljnExi/8mdEshzZxNGwjYe78I/03p7drSBp8fv+bTCAYS7ufryo1zigRBUc6bv0BlNIUPU9uZI8RceEzHwOR/91v29i4aE+TA2ApQoQf9+CsJ87pyK5MiK17568wrItGCw8pR8wOojjuG5fAGrH8/zzowPdM4PavWnNItPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709773707; c=relaxed/simple;
	bh=uugNNgOYPXncoQ7aJooL9u20L5zilgtmHnJcDEHaFyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qkECUML00sEpyeDQJqEu7m98SVFFbZTmCzkP58EEr3G4IyZ/YcfvxwlEbLz5XTurXmTzm6S5W+6C2gntYlkZX3xdi2xGBe5did3WVUa8eVAcps/aHZZLiTBWWeUHN8muPo7lVwrkyceyDO9O+zbtNhrGdXr3drR/7zrI4eN+5pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B1yk8rUE; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-22007fe465bso134226fac.1
        for <linux-man@vger.kernel.org>; Wed, 06 Mar 2024 17:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709773704; x=1710378504; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SPaEheb5CdP+N3BDPi6XWKeQLGXaf42OWdbdMM+ets=;
        b=B1yk8rUEneZxmDY/aO1kqS346mEFtPKgAnrhbJoCJnVEUe/9fVYMFQum7cbh6FCDIm
         t7gO2emIcQVkpGYR5jK9kdaobl51dX28zmex/p4KcQukHMTlrfIF1TJs+iSvi97IhFQL
         pmE1KVh7JgE+d0MJ1v4fISIRjS6yt95satTpmDa9vkUFW6cmTrtXiveCfXxs3S3QhI9y
         9oDs3ZOU1DK+KAhIs8Zqam551xkUV22iYb7pTat989IISl+SD14M/GeqCnNOBhiC+R49
         pZ2kVhWmiwRJnuH8Gm/nll/Ti00ujAcSnf1EoZTY60ziMUFSQ+9b+E9xUbX2n/RHYr8+
         KDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709773704; x=1710378504;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1SPaEheb5CdP+N3BDPi6XWKeQLGXaf42OWdbdMM+ets=;
        b=gglNcjOz89obyh3eN7+2+GDBFRMg47Pl4z8OdijOLMlFV4hvmmQ2ugo7Ua2D5O2S6l
         CboBRw+hOgvqidojCCNSyVeWGPGTsE1ZT7j/DFoZ1QNoRSl6RhYDW+jVTS5LsDckjEqr
         eEeXgfhHpucxob6zkYO7BHmQJaXUNyteIFCwBS9IFdPJOwy6xJvvEWYeo4gCPqznygds
         302xrC3O06w0WeFhwm353J4q0wTa51EbYCBOAwh8gPppJBYnoCcMZCdbLx8K+mfi/ujH
         PNGx5ppUPkdyTyG8lg14h6hfu3RHaTdHviETth2v2lPfTTpUUE6pGUmm6/kqofQlf9K8
         I2VA==
X-Forwarded-Encrypted: i=1; AJvYcCV6YCJgx0F7ilkxIY5xUvS/0sxwhufSBiU6ycVWrAHHop+jaBgk5Hfv7yC/pKpxi63udXDPAM3rDGiFC+npt/PCMqrlZbFDhoGH
X-Gm-Message-State: AOJu0YxNqSo81tuobKeh8LgA/fUk+RKkWg7QJswRwxOklgKDT7UP8gVx
	kJy8uKvjdHj9Db1m8OzoFfHtyQuZLlOimT8vI0wJqPNInoz6fcX5gSJa9S/igRk=
X-Google-Smtp-Source: AGHT+IEV46DECTQiMRJ7ADwtKgnP/owCDoPbLadh9ceam5F6MqHQP7D6XfoDH1JdPsQgb3zcYZvKhA==
X-Received: by 2002:a05:6870:418c:b0:21e:7b5c:60fb with SMTP id y12-20020a056870418c00b0021e7b5c60fbmr6836688oac.11.1709773703757;
        Wed, 06 Mar 2024 17:08:23 -0800 (PST)
Received: from dj3ntoo ([2607:fb90:8a2f:7610:e230:5513:7045:bdc4])
        by smtp.gmail.com with ESMTPSA id e16-20020a9d7310000000b006e2e1d7fd81sm2416288otk.67.2024.03.06.17.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 17:08:22 -0800 (PST)
Date: Wed, 6 Mar 2024 19:08:20 -0600
From: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <ZekThJn_-AGkDyRb@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="skQ99HZmU0NjbgnQ"
Content-Disposition: inline
In-Reply-To: <ZekNZuR3nRczAIqX@debian>


--skQ99HZmU0NjbgnQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 07, 2024 at 01:42:14 +0100, Alejandro Colomar wrote:
> Hi Guillem!
>=20
> On Thu, Mar 07, 2024 at 12:22:58AM +0100, Guillem Jover wrote:
> >=20
> > (BTW, I very much like that these types are provided on their own
> > manual pages, and their own sub-section, thanks for that!)
>=20
> Thanks!!  I had to fight a bit for them.  It's good to read positive
> feedback.  :)
>=20

They're super helpful for sure. It was really annoying to have to track
down where some struct was documented if it wasn't in the page I had
open right then. Now I can just do: man some_struct

- Oskari

--skQ99HZmU0NjbgnQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZekTgAAKCRCp8he9GGIf
EdpiAQC7I+dsMfxaHXlBr2L/9416IUlyAEVREoIMLm+qhoWaTwEAqnvRkkmOt0rx
ZW2LEQozB0X65MF/ztw3PlWgcxk4Ogo=
=4OS9
-----END PGP SIGNATURE-----

--skQ99HZmU0NjbgnQ--

