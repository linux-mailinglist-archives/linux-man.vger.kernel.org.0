Return-Path: <linux-man+bounces-821-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DB58B4178
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 23:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F5EC1C21027
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 21:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6987C364A0;
	Fri, 26 Apr 2024 21:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CTMS/H9e"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4442C68A
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 21:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167798; cv=none; b=Noo1e7q5b4fvWwHXuJtJcvldFHAtn6emEmQ50RdMsaVDBlAwXY3UsrXwF7cxjjXrMQmTp6j/uiycLK7hmVRQQ6Bo/5wMtGhcOZhM22vKhstMxPB+2O8aW+EvJOVtit5OzVvFzrZJtPo3LigrlH7rkuhoeUktaio+2Ye2/RFNmWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167798; c=relaxed/simple;
	bh=YinbgsPsb4hB4eyzeqEdCxOwvvJXEFL5NmDgqA1OwPE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RmMFRcS3p9NsLMhq0OUABaGjHUJ8qngXpdlMzk8QhmkFNdUUN6qZt6lYzSCoeqJMOdRNMGVcm4yOO83AyIKb43euxFQmCvGrk9VOT47QR1dbTji3FW0ZxIJU4WyjgcS1va+ef8xQD1UalhBU/pV4srXSF4LOQNWYQUtzmiLB590=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CTMS/H9e; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ea156bee62so1798077a34.0
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 14:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714167796; x=1714772596; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YinbgsPsb4hB4eyzeqEdCxOwvvJXEFL5NmDgqA1OwPE=;
        b=CTMS/H9e21fvRsuvQTp7ECXJU63g64euN5oWP5sZBizMB6NImWILS/Z2IyEu0De8qk
         zPcSJGuOnAKJyVekmizTLZfexL4aymNAcUOLwQuzuq1vf2r4uMvlHNJSnmbn03eKrT+N
         k/aojiCPZyayfD/TW16k9RAb4kcRgfPjIEM37gF92mK1rJ+AvltYal/gEsyCp8t00+sw
         /kSkB9rILAG7lh3SSHamaeLFHBifGZBAWpvB2tWvdZUwMpah7ZmdDAk38thwqkV7n3DQ
         19sUeuhVB2y0QZLB/oRnHYASe9zpBw/+2q8T5nJfedqRNi9CJiuVWoBmCCo6z4pJNc6i
         s3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167796; x=1714772596;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YinbgsPsb4hB4eyzeqEdCxOwvvJXEFL5NmDgqA1OwPE=;
        b=cMCmGIciSb6qs+PqE2TkxRao4N65zGtLRlSKmkzhqAHKKX5hdYF3cNnbQ9//MfbWm3
         GRrMH8qLw0+Gb/MwiPHEywvjpeFW0ZzJlSJ7jwiCyYJN7/yhRgwVr7tpODwC4k+y2K71
         USx7Tn7rARg+P9aQdmO4xqC18WXI4z8si0HhvfVS+t6MlAjp/66eBJ3hV7klCjdKgygs
         Vp+op6Q2AVD5IJsJ76TlR+ra4/9LiHPW4FW66r7/qPJJMnHZnX6ZTS4xkjBdgAqqru8U
         CWyAPtjDkgh07ogXIBZ7YlHHFK1S06pseIIq9Eq18rLOdzowSamuT+qb5lp4nTi5+FKk
         7Wng==
X-Gm-Message-State: AOJu0YzawDsGjzRG4kdUA2q01gWmNcO6gOk0akpM7UDZZtJ9v+u6Hyr+
	qRtMDRGFhVOxpY51Xwhro2UbB/H2yaf1HmPPqZGu3AS5AZdt/tsKGoQCZg==
X-Google-Smtp-Source: AGHT+IEGb2IaOonCXVH4i9vtuD+8b3lPcSs2FSTcaMyeLa72CAzICsTGd44YAWhw6JEQPwzeLfRl/A==
X-Received: by 2002:a05:6870:a181:b0:238:e41f:dc63 with SMTP id a1-20020a056870a18100b00238e41fdc63mr2025938oaf.6.1714167795850;
        Fri, 26 Apr 2024 14:43:15 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z10-20020a9d65ca000000b006eb7c7db07dsm3103393oth.57.2024.04.26.14.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:43:15 -0700 (PDT)
Date: Fri, 26 Apr 2024 16:43:13 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 0/3] man2/syscalls.2: srcfix (1/3)
Message-ID: <20240426214313.xra24ios4pjbfrpk@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="azc52htp5wgmdzqg"
Content-Disposition: inline


--azc52htp5wgmdzqg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This prepares them so that we can apply the `BR` -> `MR` migration sed
script to them subsequently.

Regards,
Branden

--azc52htp5wgmdzqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsH/EACgkQ0Z6cfXEm
bc730xAAgshW7ID475tsJ3MwUPApWYnIwFthZkOUPEkQn83nKbNncTKu87nbLpl7
6aIc3IO/wE7mWc9S3xCkEQZAH4QdCnyc9KQoJMAkdWd+4DtbmX2tmhXOTgweMvmu
qeyaxMgubGO621T+pL9od+2EIFiOS7MXbne4n5l65LKWHX2nIJ3wKBbfcfoB5jMq
0Gq50M3cRFlZVT4DieTeCsIyL9zgIc201JxpRx1gbRlwhqiDxEuIQ+gWlTRrM1Je
Cta4tAr6+QivWmrQ0w6wD36CVyGCtLk6VrS3Tf6aSxcd8PJ0WD/DwZfwBacw3pqq
UtQfOOLHK3+wfpk/xtfWF8Gsc6Yn2ooIsgZ+UvJd+4ASBNRI8jS5mTeBl0pIrk/b
UrUY3TYPDjJOVQ0dAybHvc/tC/qXM2ZNlAkm+Oms16kMweL9yXC9I8MmzyhDcHce
09jdGO/XEgC7f6MKqgMULskfNOiKwl0OwtjdAa9yjjJXo6nIzbVceDB+pXpp0EjP
mkfIg0VDiXX+hjPLbPF4geVX7RGP06+8+MSiqd3ncM8vTt9AbytP5svz3BUywLfu
XV6g6MXbw9wBBaT9D2PodfMg86BKzjoPtiQLMFQLpRbaeQd4DHjTaIrgXHREzvu5
aoUKD1qKoBjxg53327oZxQMlarwsmh91lMfStIP86oOaXAjSz1g=
=V4tM
-----END PGP SIGNATURE-----

--azc52htp5wgmdzqg--

