Return-Path: <linux-man+bounces-3149-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B74E4AD9FBD
	for <lists+linux-man@lfdr.de>; Sat, 14 Jun 2025 22:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E732B1897479
	for <lists+linux-man@lfdr.de>; Sat, 14 Jun 2025 20:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7B91D799D;
	Sat, 14 Jun 2025 20:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HOOb0H2N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1216F2F2
	for <linux-man@vger.kernel.org>; Sat, 14 Jun 2025 20:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749933253; cv=none; b=eSAjMZl1dO3dz2RPiliFS+nXjOFgkHHE1tXK5i77qICiJa2WS84BSrap4O8KXkkaTptxNcCaGzlXWC+bXeqUdvy0XNNkePHWMtO5aikHtL5YOcflO/S1/0P19SVYXw7LuyLV5roEeIDUrEUWUzwd+hx79XQ4Nr4f799XTa/mSPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749933253; c=relaxed/simple;
	bh=r7p71t4f9UUlyU9FWjU/6KiDacaR9pxpQ2jTyrO3py8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=OpjHTcpwTkUGlVgx8Nnfdtlk4x38gMTUxsZDi2vg9SzQ0mLEgP1KvJ8p4UCResJ7epAxqCc4CgsYlQIAIx8VDZJkPubMInLv/6S84fElhg8ajORbgtlXtc8dZPL6VLXmhovrj45waRc+n8acr8H9jskEfx4VZRMIPBUKT3PhVto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HOOb0H2N; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-23649faf69fso31446115ad.0
        for <linux-man@vger.kernel.org>; Sat, 14 Jun 2025 13:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749933251; x=1750538051; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6/WxzWNKgJnlikt/D58ng91PjCcpByywZT3JwIp6Vlo=;
        b=HOOb0H2NjFVVNyDItFcSpOR6iHuA5WsIdiPAp5GgX9QtGHLYv9qG2bfDCkAutcQnUE
         Zv47+KkFdyKtyTCdMzK+lbQK99Vj6c7rQjONEQsNH5qh9Ay8PbA+DuuA3NR/Y3BK9u1X
         nPDM1Vzaps6QaDs/EFwV+xXc6eee6nHH+x2Sn0LH8MQOuu3ZnVQinvyzW1YQYnzA3Mbz
         8yJp6YuWNt4IrWUk1X605y3BrEMvqZtS+OP2FTB+4tvjRZ9AcMxVQnnGH+SjS7oF5roq
         CrBgRRy43henJMJmYAWqdeyPSShhk1XSxyzZrJtyGad2wIYuDZ9MwB9XxN2En0UGi/zF
         b4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749933251; x=1750538051;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/WxzWNKgJnlikt/D58ng91PjCcpByywZT3JwIp6Vlo=;
        b=BVb4GJeaNYZP0TrrTh1i/IdI44z+sIuGSFBFvvkgeR9eF5y2JnTEGcOIsZESDf676Q
         P+r1criyFR+yIKjQnJb47vwSp8cGlj6pqK8rBWigEviwYzRq9Qf/C7lkdFPKx8A9IFIU
         iVTJqKzHfjDbnfiHzkrccKNW+4594AshEknY2d6uSAb3I9v/VpetKrALxW66aQn+1he8
         k2vfE/i1nqzmoA2cf3N0AAi0FEpeZoX4XnNlm2JYJhZk+FL9+PZi2w9a23PK3FS0qsPD
         gMJzPxUdg84nRhlcJkf8TQhB3KOQSjYfRzHCCj19AdY95R8t0yshcSOKkFT2Z5vPNp2L
         +N7g==
X-Gm-Message-State: AOJu0YxnVnkGt34r5KvDbsmTHK5Ig8sRgFNDT9hEFp5K9T9T24bRZqEh
	XzY0CrCcBKD9/Ev4H7yKaHS4IUiPWmLynN9OmNF1cYZf+Y7mtxEyfPJ889HWMA==
X-Gm-Gg: ASbGncsoPBHAIndE+rtQkZPhTTOv5HFh6RvHfPGvEsz6deTsCAMNgaQ/yeApD3hzAN9
	kfZeGs5h9Q3RuW9S/J30KtYXPbc19iBnARhQ4u+vn0JGVSrE2XWUBIdOw6BaX/KCMcQJvoJJLYk
	AKK9/vIS8Xw1mewXMCLngA9Mhw7o+rSbiJpnT4L1MlXk6mGch7FEPy4acnHeHPl3gct+y60NwJb
	Q2NY1WktHO8y+YT5fWYkrvHoV+X/F/8j9Dwu2uxxiiYqjJgwVcj5hjoljdM7JxUC+JzbgHXEKRj
	fqGvbljFoR/hwxws/kVYvWgsWWLmTPjxfcGURnZvgQ==
X-Google-Smtp-Source: AGHT+IHVj/uNam50cl/vR9XPswbGzlhB+gDCOA8k1v2vO3xKQrHa7g+XncDDwdKGH8ZDTDhyhG6alg==
X-Received: by 2002:a17:902:d4cf:b0:235:eb71:a386 with SMTP id d9443c01a7336-2366b17b871mr57115905ad.50.1749933251268;
        Sat, 14 Jun 2025 13:34:11 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::f55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365dea7d74sm34076695ad.152.2025.06.14.13.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jun 2025 13:34:10 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build
 system organization.
In-Reply-To: <tbaqdh5b7t3ri4n7b5y3kuxkxucs2rpdv56f3ou25wrv4gaj6n@354pxmwl6fat>
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
	<3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
	<87a56bs5ug.fsf@gmail.com>
	<tbaqdh5b7t3ri4n7b5y3kuxkxucs2rpdv56f3ou25wrv4gaj6n@354pxmwl6fat>
Date: Sat, 14 Jun 2025 13:34:07 -0700
Message-ID: <87o6uqjc5c.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Yup, it must have been some blackout.  They're becoming too frequent
> here, sadly.  I'm out of home this weekend, so I'll fix it on Monday.  :(
>
> Thanks!

No problem! I remember the recent Iberian Peninsula Blackout, but didn't
know there were issues outside of that event. Hopefully the situation
improves soon.

Collin


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhN3L8ACgkQjOZJGuMN
fXVWUxAAgTsxw+aR5IT/ctPhoki1g+XPNHFSZQqKwi/kHO9o/LvUw9XCJFc3yPNe
FDGF1ccZsDORMWaJUfsbpaFSBmsD9ylkHj4VwhW6Tm/l2ifmSgMwxyOA7cpItk9X
rpCOos9zFm7EZNYqQlK1EAJSsYnCNCxNn0mIqjizrbeTRzs3Hz0cD6eBWTNc+D7v
Qbg8oUADfigHtBSWu92mZ75CG6qseWsvAgs7lW/N6k1PEh4wEViEEGzznCu3wVST
LduzjosoIqyySB4gdh6UjwwCnrDS58blPmOwADA0Rbnl6RxAo0uiiLgfDc3A+LXh
ai+7KC/pTG1CVAWeo8l/1ajMMNo7XY40jBKI+yPaiq0na25fQGGGVaWjMwVbZ/7/
+xv30Lh6g/eJq8cQ3SMvg9CZnw2oY/7xTU18XWbIFeLzoGVhWMWZSkyQrpDPBiqj
/Ds2z1OI4H4t0NDUNmUflg908pANideOXMIvmHw4t+PWlJanzzjT64cFPQuqI5nx
CHhlNv4eif5cvVDoC+weozYEresW3LWTA7ntl0QyZmGd6cvi8duw3594Ja+cQOJC
m9HT381Z9lgN7RyKpiPTOjRxXzBk+/og7qmD9NhtfnMDhR8008y3geeJeojr4A/y
LBVuv3XEvwPnAT9eZm1XDb2IaXu+qBNJc+VwSnI/vrZgwxy2yoA=
=JQZt
-----END PGP SIGNATURE-----
--=-=-=--

