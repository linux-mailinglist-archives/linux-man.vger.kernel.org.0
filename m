Return-Path: <linux-man+bounces-3205-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77628AE33B6
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 04:42:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16F7716DFF3
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB021A42C4;
	Mon, 23 Jun 2025 02:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PEbWYhuX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA8167DB7
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 02:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750646536; cv=none; b=JIYRx9q6xKoeX9QeYY8unLy7pc73IDxAkc25ge+vmiff/lG9RHEismjqFEaSfuwmubRHn8CdJZF9PJMvbAwtP8BuB7m54BQGOZGt4mxAYRPJjtD0Na/LctuHmWtew+XGivD/v7iM9ek0L39dvKpqjzb28vq626rDuvhFRzidxvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750646536; c=relaxed/simple;
	bh=b83JmOtmHpbSLDM6MVjljAURpCKc/++NbOeO3E/jLm4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fr4mOXXsAHzp7tbM9HWegpY2rFl4kTkKKCixKyDOIuBSH4zJICztWXUTarZeUizsR9ytmBXvBHAwsoexuHR8u+Z7+6p1xX51lEG6GvXkyNB3A5z84G9aHgWO8mE4Jo7PSrQjULjpfNPq2bwm5LrB2WYZ4a9wzKitad2H7t4aiFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PEbWYhuX; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b3182c6d03bso4361717a12.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jun 2025 19:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750646534; x=1751251334; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Up+N4Pf+j+bZZC61uBRbLDdH6RaxEk3EOkxRr7p1Wbs=;
        b=PEbWYhuXzNfORO9ul+yg34jId6cav3Lkm+LtaxKzjFImobV16LUtzhAbTNqg9MZDOt
         5puzSyyElNKG9ALLGeKAy3DhnAR/kriH+NUKK+YgW0QgGpch5yxtXmgG+CT0LmABAb28
         LtkUhXMjVdzPqlwcMDHRAdah07DzQ/njVXXXzUtMjZbRD6eyYi/JDnMFzRclJZmw8tsY
         DCKs3EYUq47w2lgl47jzQQrJC/QIhvn/gaHH7wjkMTlKthAablvYlAE5aorKytFLq1wz
         N8zGDEMfushGYSWPGMjkkjxXWYQ6zEvEpAIzhjafJC3RR8tEmBpah/2HK2SQ/+oaIo+g
         DCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750646534; x=1751251334;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Up+N4Pf+j+bZZC61uBRbLDdH6RaxEk3EOkxRr7p1Wbs=;
        b=KSrTe+pG49ypYULYlY3pFTcJrl6DtlchAqFUt193tkNGIvEaPO9axb1fM6Y7vnuKoa
         eEcV/1Igwt+4eoIIwL3yDTIqwz3OhLRsOEAgsNgjgtibU4HmwjSsiEOhpavi1Zufg9u+
         s3h9qT5v9mlKAD8GpOnEgZTipMbeICvHLKSRDcyVovTsNmTTYJltXQBeR20ZJN5Ec9kt
         wbjxFd7Wd1isC/r73Y/wAsiUT1FHLudjCFtjh/1mWYCH6cyeupmdoEoJdNyRyryxaqcS
         V40lB29EwNa2UUD3ATbmYiKclp7NGP4tfzvDNQb6J24T9plSI/rNtUwRsv+cOH4lkRge
         4WHQ==
X-Gm-Message-State: AOJu0YwyFd7Xhn03XeTxDwGGfto4QQpu3J7ayhPX2qT2aES5mNmlKrTa
	Ap6+SmpugcJVyWksZt0UiVNVHeDHumX5IMECFpTiJGlyq1lcxjmZsTBkkxCYiQ==
X-Gm-Gg: ASbGncuz8HYcOZpGjH9i5XQlwPSYjlU17UqThj4hTA/Iqsvq6UKZm5mpNpRhTJZmaLo
	t52h5VmmFMSVGtbqllKGTW3k06stuxhsANCxc1dpfqNelXe+sh680bAQ51lJ8L515ZxwE0PKuMz
	9W/WPZFrvcuGvQDN5BzwhSz9sm9iOvVsKV3RC2ieQcFXNliWOY6ugncJP1ahSKfXDpeYxybbDRR
	DR3BsZqlJB8JbPjDy0AHM/idvUN8mLN0Ig7eZ2XimS3t7PtE/2zHtJdpn1SayhcNAG0GPm34JWD
	qnev4vgc3MwEbkh13c6j2kzFBFdWTunUD5q7s15geFE=
X-Google-Smtp-Source: AGHT+IEmkYBv7fkE891vzAdOhyb0pmBemVlFTK/2DS63xraEaoVbAY1GKjlH2N30SrA1rkFn0F8xQw==
X-Received: by 2002:a17:90a:d888:b0:313:23ed:701 with SMTP id 98e67ed59e1d1-3159d618a7cmr16374755a91.4.1750646534073;
        Sun, 22 Jun 2025 19:42:14 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::b0e6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159e04836fsm7545399a91.31.2025.06.22.19.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 19:42:13 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/gettimeofday.2: Declare functions with
 [[deprecated]].
In-Reply-To: <3vpj363nqd4s4kbsjdwp5lunac7p5utrrzqswop7jewx6a4bo7@ahmuw3ywb7qq>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
	<2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>
	<3vpj363nqd4s4kbsjdwp5lunac7p5utrrzqswop7jewx6a4bo7@ahmuw3ywb7qq>
Date: Sun, 22 Jun 2025 19:42:10 -0700
Message-ID: <87cyavxjp9.fsf@gmail.com>
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

>>  .B #include <sys/time.h>
>>  .P
>> +.BI "[[deprecated]]"
>
> I've changed this to
>
> 	.B [[deprecated]]
>
> The '"' were redundant, and BI is for alternating Bold and Italics, but
> in this case we only wanted bold.

Good to know, thanks. I just assumed it should be the same as the other
lines. I didn't even know what the ".BI" meant. :)

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhYvwIACgkQjOZJGuMN
fXW/xQ/+IxN2qR3lJaHB8KzuINtihPvM2QV47I8NdVaOv+dSwh5PaUuURMTbt4tH
eyUD9KGWrbXJVmIzZgymfymJH4ks5uKW6ma1LjSgKncs5wveWBmGCDu7yNgi//dB
7kaRTE7qkQCuYPbyvYXy4oGi7rpGEQPW5SHnRFGbhA/zedtQJs7fee+cYg93YOTN
YMvJRvDei9TRj4jTRJFlJuXEJFK11DrK9bGPqnvlWob9v0XyDYSOQX8OUkLbSiLg
sjbI7gZROdHYM/SH6WfkRN3jojLMTneO6uzo2jP/7U921RQ7BGP+43Zu5F7k26Ub
MJNZ1oAA0Emi//viTgVQVfAV4bSQYF/Efmr68eqS59Q+38tvlDlX2RwDMisN5lBG
esx58bYbJgBePmOX6Oe9R8zFk+yXd78KP9TiEDRAPQhWMFGbcboxb/qzOJPBwaFD
Fo5dHOxO8myngdwjKNkQs3y66xOCcU8xeUrtt0e5W9h9WMPVswSWjNzC5fAzUNNM
gK8vAi0O/GOkqbhA07hMQjweEK6SQhGFw5w3saFKIqf1RHHX5NampOGhiWtA6323
bXFmAIAwURO4Wz6AsFP8l1YrK63bF+mBMMHC1g0j4NRmTJY3K9oFoYcQv5TXVRW1
7lpg7ZjeteN+WVFZUGtFGu9i+HBHJmmhzA/hMAMu+Yl+xNReOS4=
=hN1S
-----END PGP SIGNATURE-----
--=-=-=--

