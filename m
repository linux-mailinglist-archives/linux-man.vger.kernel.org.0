Return-Path: <linux-man+bounces-4134-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF3BDC203
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 04:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E0F174E65F5
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 02:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C7F308F24;
	Wed, 15 Oct 2025 02:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mJKRFhrn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3781917FB
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 02:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760494396; cv=none; b=C/g2NOnjQik/IPuGQwUgabJEPbq96ffavzVinRUalKO7yOcLrqY8OsVkZx3HnL9x/6a4GIR1xbfuFS8pMHdKFKCuwccLCMtXJ1pXykMYzbZ/+CYiYOiB7vU4fRBBOWh0c4AmNSLEVpBI8+4Fi6fGBvWvsW7lQpOnqnIfoFDzelU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760494396; c=relaxed/simple;
	bh=g1ceOT7ftB64AEDtWjfkS0nMSvA7zInEZTj9Pwjk+yc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=UNnK+P8AM5Jk08XBcFSb7AY+S/de+IaytTErWvwjKBOyn60DXyruSvJpgSnHhDNr0CONjaj6Xtcn/YIg2zISrMMIsH7iogHEPVfdr8QQJRWvv3cWthgH0c/SGCKAyBHyPjdEDl1eGPYxnRve6r+CjFR+mpeSajwUkXWhohMWo9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mJKRFhrn; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b6a0a7f3a47so237676a12.1
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 19:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760494393; x=1761099193; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g1ceOT7ftB64AEDtWjfkS0nMSvA7zInEZTj9Pwjk+yc=;
        b=mJKRFhrnCwT0Py/BTJGkmTw/Oh4F1EI6kH+2VmJ6LHi0WhtRVQmbTzY3AKDDLwJ3Z9
         KjkPTVcryVdz1ozHqphe1ZZde9qnyis6KGu8vMLog5dCBMSfHp7vCMrFUcwtuBs5hlPV
         WNHS47SHOHeT8tSl57+neQflQdOW7CxyW74zs52/ztn3SdA9Q/yuaxzSiU4qrXl06G6Q
         b4uUB/6tQyLn2kx7aT30va2k6RdBBcqkNobc7tQkKm0TKh4n6ox0RqO1gLVWOx5Mv569
         CxvjQO8uk4tfWwg4TVCJdI24Nopn63Jx/Bw806Yoc/hY21eLCNLvWa7o68TRs5SPsYIx
         nGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760494393; x=1761099193;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1ceOT7ftB64AEDtWjfkS0nMSvA7zInEZTj9Pwjk+yc=;
        b=K6hBORT1SAYQnloQFDDHcNL3uB8B6+jEpPGtzUG4N7juE107ZQSv2ravbl7sMO0f9B
         xQktYkX7eORHWhbRq1qOpHRS+CAPLA4ACoh+H1DqEscOq9NQV5JxXiSDgq248vmxT3AE
         HwFNfB5X5jUq3ETEBy5yE6hhQPktlIPAuBVkv67r37UTHPmkM3qs7wIi3cjGnN5VSQgz
         5SnEGUSVvI7O3/GAFxwJ1E6SRkHHCi3o8k/wEJcpUL3jr34kmaGi+7mEoRxZf6OMDL2v
         FSxFPPGJF79o0WDSEVhxgEWXjCCjiP3fpvb7vn0W1kLDoaigiwfbxE1oV3AuruNBXUqD
         mFIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrk9zGq6P0bUv42x82FyFXM/2NQYvW8w57nCHvB/3n/mTP+wCaXtJqVBlzi/x/j5TrsK3sJInUiGw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxqkQwPdQpASMfdWyiym5XlJwD3XfEQEt7DpCk8HxTW8qVDAoeW
	6FyeBP1zgLc6pqQj5PLztROrUnco9wruntbumfRj8gZDHUj5qQxwRyAyp6n49rUK
X-Gm-Gg: ASbGnctDmgIbo60OLAAsUDv1yL5GgS3YZVscT6+d5Y0IYzu7YyBAdrNFQRVZd+Kmmab
	BYwal7tJFlmExBR5inotHc1K7yjgWW24D1QMhbGGKWH+atePYM2z0jw3zK9JIs6QMYm34LRz7UY
	Yw6ho9UvqV3ibCpsKe0gwav6TkALcO5ObGNednC7Pm75WTn+4I9Td59h2iX7EbizN/rIBOmebyB
	uXyO53pFmxa5lt06p5DuGn0ISW5u5jtoQ4JAWESbtc5WDQuM4SVPxrFQb3RnbybEIIVcVPQKUKt
	sfD/le9WkKjYBtAVQ4WEzwqjyw45EeQHODtNPSfdiwcgn372lKHEkKWTEsffeoIZHyh48DQM1WL
	jXQeYGTuS9jWKOP3GWQW6mGM=
X-Google-Smtp-Source: AGHT+IFldMgJFmSQh5eQ7dZXnqWCcAIZzuXo4ehJ/z0sHX3FMbuQNz4r47dcJm+v4wR8Hr0R4QfLJg==
X-Received: by 2002:a17:903:1a8f:b0:252:5220:46b4 with SMTP id d9443c01a7336-290273ef076mr298091815ad.37.1760494393253;
        Tue, 14 Oct 2025 19:13:13 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::2714])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e2096dsm178518135ad.43.2025.10.14.19.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 19:13:12 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
In-Reply-To: <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
	<5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
	<qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
	<04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>
Date: Tue, 14 Oct 2025 19:13:10 -0700
Message-ID: <87v7kgnc95.fsf@gmail.com>
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

Carlos O'Donell <carlos@redhat.com> writes:

> We should accept contributions that meet our contribution policy?
>
> This includes a clear license, clear and unambiguous copyright,
> and a level of quality and correctness that we review with human
> reviewers?
>
> Consider QEMU's policy:
> https://www.qemu.org/docs/master/devel/code-provenance.html#use-of-ai-generated-content
>
> Likewise Gentoo's policy:
> https://wiki.gentoo.org/wiki/Project:Council/AI_policy

Git is also likely to add a policy based on QEMU's policy [1].

I believe they wrote it with input from the Software Freedom
Conservancy, but can't seem to find an exact quote on that.

Maybe it is best to take inspiration from them instead of trying to
write a policy from scratch.

Collin

[1] https://lore.kernel.org/git/xmqqcyalm0mh.fsf@gitster.g/

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmjvAzYACgkQjOZJGuMN
fXVelQ//aTxotOVNaZaMVHp9NLFRxitwRQgtJeO9GBKsvFTX5uZRT5LTI1W6fVhz
fRaNCymk08G+5nkj3twZ2ZUnreBuJonHqiiPPzLVomcvo5R793taa5PiFpkUh4p2
EQ/JFG/wZLdoASJ00ribPz2VfjhoyhBwRXqL63aGf0a1uZgO6ImjSSOREDB8EajS
g2ZzGWATcJFSy1nRym2ge74eQYkCZbF7S8ExWYZ4GGyaIN8gKjClH2v4DYLJO/p4
U3TGTBVlpYa3mzWKxCWqUUfS0fxuzYzLeGVWe8lwqfBq2mCggVeJ8xegVChaslCQ
0lg/y+p3O/FKTwpH15omJ3mdsDTHJVMDu7XvaRE4LKg71YM/Aa25M2z0tKcPW/0o
65mXeZq0op02FSFJ0x5R+jPD0eceiPezTyuXXcWAxxNRhcZdQyFekSjzKVG90mMw
zjG8vyFgqnE3vfApZZrLcWWhPODQGbNBboMjO1U5l+buVSKlMt4+TDtjjLwUd6wa
+ztliWpQbQc3Odh3VYH+ZuwND5c2mYUaHDIKnQvdEberTLGTY4Ew1gLSep1QVR9f
hkJ1jBsIfAQNlmQXJDU5afrzyPqAj5oJgbkLsMfZfnSV6P8VzqXSr3v0Ry4clwub
Acj71RdJ+ngCK92VfIWBssUeKcuWUJJV47Mj59JA7K1fVE7c/0E=
=1HhB
-----END PGP SIGNATURE-----
--=-=-=--

