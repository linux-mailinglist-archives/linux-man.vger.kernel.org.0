Return-Path: <linux-man+bounces-360-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C0C82D107
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 16:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E524B2120B
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 15:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC4E2109;
	Sun, 14 Jan 2024 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IEkCrTd5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185807E
	for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 15:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2045bedb806so7190175fac.3
        for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 07:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705244431; x=1705849231; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTT4q3K4Qb/hU3jTJsVEI5WOpVf1/WU7L0x0ysxsYKk=;
        b=IEkCrTd5lUc2Sg2vp/tv1zx5LIC1ciIKe+TVn+UkomfW46XInKj+uA5QorKVxE7A4h
         HOeGbu1Y2yIUBy2injt/R3TvBAo/6iHrBhrb0WW/Tlj8bdpKbDNj9i1hkd1A7ccGoY0l
         GAXr9dIilsnWuTVsNjo22tnCVodmEz62IuRXqWJ2wE92xoc2H/IH1OYOWJA7w9Wes2gY
         E+7oWP+qTUY6cCHYmqDAGpAa2s2LsrS9oVX1XD5C/hUA2aSPF3b0HtTCHWYRxbFtH5sc
         yVSxCu8XBe9x8WVfbCLSrbeUGXOwc2NSfoYXfSyffMgvsFuYWR+BDClUbi9WSyM4HiXA
         ZxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705244431; x=1705849231;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTT4q3K4Qb/hU3jTJsVEI5WOpVf1/WU7L0x0ysxsYKk=;
        b=R1IQ7iW244fVYS4dRLUdAmHEL1oCMkHfbLTlCUYbCFHwd6s15gYT5OAkmVaibQ/zHc
         bjQDVmDKiGPNCbi0J/26zUrGgsvdptSidnWg9qvrrXde4/AOS1vnADM6bBHFqrKhUfnZ
         tAcz0tT11JvyCTe16MRpT0EpMQzodzoM7e+7X/H4vRDRsfRpgeH2HZMw7JygqO70KeJi
         wcQCbtQa8t0mTjTe6suScK4uTB6RuCA2yeQBbii18cLjfaoI5591CFTxtfK/++kFB/HH
         G+M+ON1lYQ4lxjJYonV/gnocQ3Zx4/od3wrOUzuuxSyKkSvAZaQx/jXqi9M5zx06djf7
         r9Ww==
X-Gm-Message-State: AOJu0YwufZZsxIbzUhE3ccSFq2sCLoYPw6AG2obNwiohB1lcbB9pja0V
	p9H3fK23cHa7mZkyTyPONKM=
X-Google-Smtp-Source: AGHT+IFFgYNPVx8JDEskJkGe5HK2c9mJAgjdxK13D/8GzWdd6TikVM06pnqTP6puD8qsUqAT3aLADQ==
X-Received: by 2002:a05:6871:514:b0:205:ffca:b185 with SMTP id s20-20020a056871051400b00205ffcab185mr7374797oal.42.1705244430899;
        Sun, 14 Jan 2024 07:00:30 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s11-20020a056830438b00b006ddddd50105sm1260900otv.38.2024.01.14.07.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jan 2024 07:00:23 -0800 (PST)
Date: Sun, 14 Jan 2024 09:00:16 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man5/locale.5: Fix typo.
Message-ID: <20240114150016.axiqkaym77gmqjy2@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4adeconmdii6b7po"
Content-Disposition: inline


--4adeconmdii6b7po
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=2E..that proved surprisingly tough to troubleshoot.

I got the following output from my working copy.

grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32291: error: output above first line discarded
grotty:...:(man5/locale.5):32292: error: output above first line discarded
grotty:...:(man5/locale.5):32294: error: output above first line discarded
grotty:...:(man5/locale.5):32294: error: output above first line discarded
grotty:...:(man5/locale.5):32294: error: output above first line discarded
grotty:...:(man5/locale.5):32294: error: output above first line discarded
grotty:...:(man5/locale.5):32294: error: output above first line discarded

`\r` is a perfectly legal *roff escape sequence, but one generally never
sees it in man pages.  In the case, the input line in question was at
the top of the "page" in continuous rendering mode, and so the attempt
at a reverse vertical motion did indeed put the drawing position above
the top of the page.

grepping reveals no other occurrences of '\r' in the man-pages corpus.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man5/locale.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/locale.5 b/man5/locale.5
index f7ecce7dc..fa2491eee 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -506,7 +506,7 @@ .SS LC_COLLATE
 .I reorder\-end
 marks the end of the redefinition of a collation rule.
 .TP
-.I reorde\r-sections\-after
+.I reorder\-sections\-after
 followed by a script name to reorder listed scripts after.
 .TP
 .I reorder\-sections\-end
--=20
2.30.2

--4adeconmdii6b7po
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWj9vkACgkQ0Z6cfXEm
bc7toQ//eDfadnnH2RI6KxhMAwCknG98FjSScEx0bZuAyiFDbZsy8U7zvDqBSstK
fo30RHBObBAnYZqa3GVZAE6qoHtuam10Uwx3gCfY6L4k5oSL3WOCC4cCm4jHcIc/
izBBOlrUrHt/IrYdSEVt7OeAoo29kQhuspfN3A5Evl805KrVBU+z/dMDsWcqo9K9
zfgF3ZmZvUxuEY+ItEMDh2S6G42aruz8b+8ZBIZ663rdW2ZlLVICuiKZoKfwIdW1
kqFfc7hn8MI6OXdbdqbc0jvpLa6ooEg0h1u3sAX0bvjLJr4x05N7XC0xLBX9rzlJ
Fd8IsfsECe+3qzWOXPFkuaeKr/EWUYwGIDJo+233VqlCPsYunANTrwwEf0X5Xv6n
457kXguM8/SUH1p++F2dSk1Ihnv4cVdaKiTXiER0lSnc8rF0EBVo23ci64DBfcNw
wtDdHdYDf035wqeP9H/AwGAXVDCHJQ0Xigc+H5dJOsE8r5exorxUq1szp3n+2AGO
Q0MTC+UO0tmZyqI2IzI4u2lIcagBZeXIyRpkDijpr2lY6S+9TTjZrGKy/wL9cX0X
wlYDwGSWYZQZZnW2i9wCmwhWIejRfoS+7Fg2yNKk4oYYEkxU5r7Uo3AM+ON+TN7k
c8+U1bu5E4YSGEbgKyDmIZAREBluaVTfBn8Q7x47Haklkw8CnLg=
=BhVB
-----END PGP SIGNATURE-----

--4adeconmdii6b7po--

