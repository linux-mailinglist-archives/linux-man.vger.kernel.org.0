Return-Path: <linux-man+bounces-4073-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D6ABC2A51
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 22:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD29519A1F41
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 20:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8387A23B63C;
	Tue,  7 Oct 2025 20:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fu7PZ1mq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B191B87F0
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 20:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868973; cv=none; b=kHmkpLdM6fZexiPAK4zDZmCZKQzkShHf9hHd5MY8P/5a4Wdo3XWPopfJSEeMPNo7IncoqcLxXiRVM7hr4WnHZj8STuEFr1WqBFuxIFl9+67xfzldOsycw3Blt0atKrN1PGFwhFP6SBZzWBcoyNCqbBVRvlz/9yG1KwUuWaRdm08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868973; c=relaxed/simple;
	bh=l+5y16kKWKgxH4XTAQBRl1kWdUS/k1RGWksx1QO+7H0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aszNlEGLfxhHaPKaGYccWIFsJqEmgDit+dLhPkhV+COqx3p5ro/sETArbv4Xjt5VKR1bWF/6OIMwD6DBDqDUOSXQpTVBEg9L7QUEqGML1yJr5mJzOUBB2kn3Wj7TyUuQjcYMUcaJW3pgYAqwHS8vMvDmjn5rxZEx55Ck4mPW1ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fu7PZ1mq; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-749399349ddso87718757b3.3
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 13:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759868971; x=1760473771; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KMLqNwTCP8ZxBkNBRR4H4ib0aDiXteIk4A9IgKtpHRw=;
        b=Fu7PZ1mq+XpI07yEaa5VaBDcTsFFcZATXJQs1HycJRG7knilFct1E/UHRMHR1ALSfr
         kKV0GBwKJhj5ysE/egTIDYfkwYfYlxYrRntn8SgDilsYjRSNMUaS3N9BmfkK5quKKiGj
         dR6CDevvqXWW8kgrojE5XKCah+6uI11AGkLuhp+TocasjpoawMzuqRcrbM6AMJvEM7ST
         uF4AAzHzFTcERZq551oMzzSKDOA77aGu9PIcIyyc/RpBp5S64wKGKOgJk9XMsl97/XtT
         hEhq5IDFCj4AqjA8zr1HI7dzDWyg6mdcRNWNSgsmE7hg1fzYfZaKHAkxk+6nURCVJXzO
         tIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868971; x=1760473771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMLqNwTCP8ZxBkNBRR4H4ib0aDiXteIk4A9IgKtpHRw=;
        b=c1K1o4e8dLPyoQw9aToLAJejgV+vxs71gXVdbdn73HdWc1zlOa82k9g05hgxpj0reI
         9RPD2/GWwYjGIIgTb/J+2cSzKkhHYFycoOmYb2ZcvGLPHrWJQE8r2EpkjnkW2mV06R3z
         +7bBF8Vn3OS8UvzIpMXik0vz9nC4lT+6gnaazmLxiO2B+7cIsKMdEiC55rYcYDtTLASe
         2D0QMBR2kbjGVuL4Yz5kfQcEvRLHQ8zWghC0pG27AtP/ARpT/Z9hLWi/MIeKFwImGhXA
         xW8Qv0+9au7RlhOUdBklnj0JItCiAzAHqGNDujYMEsOakjKgx+AmP5BED/u0jWpa1ly6
         MlEA==
X-Forwarded-Encrypted: i=1; AJvYcCWy8gmFSXFc4E+eXNEdsyCX3tWXvLDaL/zmD+attE8CpmPjLqMpw6k34e03LJVtltnNQKj3RDc8Hj0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzIy4I8pG/1B9yMetmHnj1beVHiA23fWIrfnGoFdHrhy+NCE3T7
	jtvIndkBJZ1sGXDXVhFCnf9J42yKTCeqbqw3rt0/J2NJpMbrPtBNhdQD
X-Gm-Gg: ASbGncuZygLozrMF9h7yoTg4gvTqJJMz6OkQnwVew2e6fEu7VCYuxsRBXHsnZS5i9sI
	1jpbwGIgJHLUHbo9aC2toJDytfTwJDndGLmIIvucAhyrniagLMGFb/8nBJDlDiEtzi0QL+4DmtT
	4K0oKrEHyYlCNWN73O82A5R51rtOvSL2MxofBqivhq0Oh0R2Zfb/BF5FyjYoZBofjq9w1l60uSi
	UIusa3aMAKZaXAsavUgoo6Q8XlC3CBKFp7OVnG0EV9mj1f2ssBxL/cL/AHZo7SZfMSrsBtV6Z4B
	cF52bGnj3WoizT8o9u3523NlEkCdZrUNXZm44FM965OlSfj6A9JKPOT7bxD97f/J1WsiU0TeW1L
	+e9v0/P8bi88lNZ4kVJoB0DWoRNGua1ERo+8e
X-Google-Smtp-Source: AGHT+IH1m9alywxdK6o2W520P/hcs02jtJDls3RpAaueS+Lkv1tsY6cmJpUH+qhpEyJrELrcy+A/tQ==
X-Received: by 2002:a53:de0d:0:b0:636:d7de:8c61 with SMTP id 956f58d0204a3-63ccb8455efmr852991d50.17.1759868970693;
        Tue, 07 Oct 2025 13:29:30 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63b84690be9sm5647723d50.22.2025.10.07.13.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 13:29:29 -0700 (PDT)
Date: Tue, 7 Oct 2025 15:29:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	Bjarni Ingi Gislason <bjarniig@simnet.is>,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <20251007202928.d7vdj3x2tfdnreco@illithid>
References: <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
 <20251007200636.bmsiu5ci2ue25qkg@illithid>
 <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qfydif2nm7b53bn7"
Content-Disposition: inline
In-Reply-To: <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>


--qfydif2nm7b53bn7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
MIME-Version: 1.0

At 2025-10-07T22:24:19+0200, Alejandro Colomar wrote:
> Thanks!  Do you want a patch for using countof() tonight?

No hurry!  ;-)

Regards,
Branden

--qfydif2nm7b53bn7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjleBkACgkQ0Z6cfXEm
bc7d/Q/6Aypmzjx8yLxTQD7jp+EDUvKerS+AtyHTF3YqeGhcmc6LMYyI4MAeFlm1
nnvglV/ol0/dDW5cNVb3Vqo/M8236OlpYEuzWjVfXkfZSDvV+nW9Ip4IEmSrIsEq
l+GnIKulFvn1KcPBEYN63R73IZfF+C4xNeQXjg4XNCc7R0ScPkR37V09CsuWwN9a
QyeTxnXRBAFSX/CjWCj6uofK0B797vqQJ2jFnmCYhkRx4Xp595vfEATtkqkw85NI
2KVCV7sdiP9aABM16adm331Rc9jeCzpxo1D7xfwePouf2KUv+B13fGBAaS0v8aci
zIyWfeDJi4Ol8GmXflBSkKadz3YeSpd4oUwI8opRduTwB8tTtj61+tCnST1WBzk8
Y9rGqeS3vdzSsNri8ose8W83GSZxhCSkjDxR2bWyyudvzuILQuis6V0Gp0/PZ9a7
dCyZUPb5kS/J9mchA2oh0cSPt5AIx+8Imx3O1633RUJ+apBYZFOHVK25qu2pNTBp
2CxAsiK8sBNGKkq+XqyqM62qkRG/qhctYrofNabY4LQVe+5qSbQaRxr7d0sEXJ5H
9VTkvMDQ4plf1Q7wjlfsMF8dMjU0N8HBHaEqIAVzyTtTAIOiGRbGWlLBcJwjF7DH
PYjGcvqsKxb8houAduQSgzcfVwVEoJqfrkvRCt1Ykn3boQ0Ywck=
=7ufr
-----END PGP SIGNATURE-----

--qfydif2nm7b53bn7--

