Return-Path: <linux-man+bounces-1734-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7039672F5
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488C0283532
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 18:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40F0B13B2B8;
	Sat, 31 Aug 2024 18:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WkBMFFrW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F05C23774
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 18:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725128450; cv=none; b=Vy1RMMuVehMIqWhlPoj9A6XgUsrLAJMYouYPU3dEWqOhMaU7oIXZIpznzCBWwqYp3+9cGjlvDCFg/BozNRIcK7sQW4RoO0seq9DUlZBwgiFg3YiBn/WMUlTI6PT1bUG4Gdh4qOk8gkdhSOI+V+n0xuzK19OdJHfvhJs2QQ+pMoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725128450; c=relaxed/simple;
	bh=g+trAzcuaI/oydJ2kysPHNiv+HKJy9tEHvlt+suKU+4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bxYEG3Wr0gp/ek8Yy+ifG/Bo9TaNcN2POHlRcX2t7XTIIlum5KY9SjAs+oADxJqn/c4/JfS8Nl/hTtEOGpNKS7bV9gst/wc07whHMytRkYoMY3p4oyBDO8wiIlNv2nx1PzlQ1g8p1W+GGFa3IV9KA+pcl3CzHr5Lj/6CakKdLfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WkBMFFrW; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-70f5cd2fa39so2020233a34.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 11:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128447; x=1725733247; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HFOtcObHewJx39VUkXmKqhtKwGaxzQ7Sh2tghK0g+7o=;
        b=WkBMFFrW0TNvDiiONM5Pdqq+RkhVaaZ1QGyfJSfcGf8fzJ/tyaeECxUSlJWcsLFOAW
         nj7oxx1edx709SmDqZ/k0onE9gtB96WXOGIj50WGb5YPrjkOphxFzwjD4ItyMGJSzmH+
         atZmsS6PHlAN6wytIuUTBNZmQMStxfv1W/Y9I3h9jMnOMUIfKb2dER5tpKUOl0DNTAHX
         37uunoxtbGPLTIWWEclc7iVwiNaRLerWCjHHmJL1YD0kQybJOGICDW4pZ6oMtIkXbtKO
         Z0QaPWAcRjbJ/3EhqfbxCl/W3AVrvfEl2CL4F6Sp/DupfGE8Z3k6q9mhW7WF234UpOkI
         t4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128447; x=1725733247;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HFOtcObHewJx39VUkXmKqhtKwGaxzQ7Sh2tghK0g+7o=;
        b=Rs+qrJ6nLYddS7EAiLgC+t6tFj5xZ3Ft9b+lnJ7fizPK2XfhCrNb1bzXiNWXOQ/glp
         jno1e2XZdiCoj7efQTmHbsEAzieJx7egXm82PJ+u1WxOWJrV1yLLigjzPDT+RbxCbIlY
         hjqPgVwVQ3FrBwipBywnK/s8qh75xT2OEo+2/KhzebUcR6Wttw6SlVN3eGdJqHBqy06i
         PERyHeDDyoW6qfUmVXdpssUJRJ6YSfhsLj2QlqC3HXKSE+cEbrxL+LLlw9kTObGmYTJ/
         jzblOFI0w2cE3gGK4ZnH8RJJVLD9S1SZ/I2ma70Ah8zYh1OJLYn0KPCAi1CNZIXmBuM5
         sFIw==
X-Gm-Message-State: AOJu0Yz8GrePULf4gE/HRCq4LwyJwY9sa5ltjuxenQL3l4GEW0kzqpW/
	GD766KHkxADqQ6n3IGVv3y7zEw9tmFtw9ufrpKlsg45uPdomHHyFu8ZvhQ==
X-Google-Smtp-Source: AGHT+IEqShcQokd88G4JWq1Sx+OxLl2RO1GuxXfSKXhhfRRsWmDgz4uzitkek3mSqJb6AW7JTs9aHQ==
X-Received: by 2002:a05:6830:3496:b0:70f:6f81:d258 with SMTP id 46e09a7af769-70f7118c193mr3475118a34.31.1725128447387;
        Sat, 31 Aug 2024 11:20:47 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f67156226sm1102175a34.20.2024.08.31.11.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:20:46 -0700 (PDT)
Date: Sat, 31 Aug 2024 13:20:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/5] syscalls.2, signal-safety.7, namespaces.7: srcfix
Message-ID: <20240831182045.kvhjjxbztnhudjga@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d3ywugjivy2vxqpp"
Content-Disposition: inline


--d3ywugjivy2vxqpp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 2/5] syscalls.2, signal-safety.7, namespaces.7: srcfix
MIME-Version: 1.0

Explicitly set the width of certain table columns so that they don't
change or cause "can't break line" warnings from troff(1) when the rows
are converted to use text blocks.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man2/syscalls.2      | 4 ++--
 man/man7/namespaces.7    | 4 ++--
 man/man7/signal-safety.7 | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index c259901e7..89c4e7f10 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -139,8 +139,8 @@ .SS System call list
 .\" instructive about x86 specifics.
 .\"
 .TS
-Lb Lb Lb
-L2 L  Lx.
+Lb       Lb Lb
+Lw(26n)2 L  Lx.
 System call	Kernel	Notes
 _
 \fB_llseek\fP(2)	1.2
diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
index 5cf054665..9f0fda553 100644
--- a/man/man7/namespaces.7
+++ b/man/man7/namespaces.7
@@ -30,8 +30,8 @@ .SS Namespace types
 The last column is a summary of the resources that are isolated by
 the namespace type.
 .TS
-lB lB lB lB
-l1 lB1 l1 l.
+lB lB  lB       lB
+l1 lB1 lw(21n)1 lx.
 Namespace	Flag	Page	Isolates
 Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
 Cgroup root directory
diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
index 440894529..36cbf8d6e 100644
--- a/man/man7/signal-safety.7
+++ b/man/man7/signal-safety.7
@@ -71,8 +71,8 @@ .SH DESCRIPTION
 the table details changes in the subsequent standards.
 .P
 .TS
-lb lb
-l l.
+lb      lb
+lw(24n) l.
 Function	Notes
 \fBabort\fP(3)	Added in POSIX.1-2001 TC1
 \fBaccept\fP(2)
--=20
2.30.2


--d3ywugjivy2vxqpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTXv0ACgkQ0Z6cfXEm
bc7vCBAAke4Tqib4uAoKSwuqFx+3UtKMcUaSZcMvVuANdBHLcx6mptjEskIPGlTF
0NLERwgzsJUAVbjKVDgYleqpGllSynGAXuhC+dqEbuib30TbJgHdErI9xKXR+CO2
srEIpTz0LPKvrplTTzFsSJxtluj+BZuLxn2nlE/Ga0fIAKwqed1Q/zDO4tLcx7EG
SdS0RG4U7FG2aixREUHM3844vyZ+/ijoCoiGh5e3k9vb89JlbzXLjekIrKvc8I1U
dsp2SzfYNTxVw7EVEynRIn1dC9DLPMH+fcAutL4cBdCLtiUxr5HmPOKjhqMcMWFW
8Ug63u27kajUWXqtKdFxuZy7uILjsbEEgPMW0qzk6VTwzf4poXyK5WT0oOe3QHG1
Z3IoaSwiry/UZDK3aBRMlg9UosAQDZvMXm6QR1freoYLKi9U4T25Zv5ELXz6lnRH
h3ncoGdBydjqB6zoRXM6ETo8LCDP/l49aZN6aQNu651f/MgvT+gTn2vASSUqWIgl
JrTZ6FVixtbOAxtkQY2qQCfHteO0iOSV9TKngD/NMYdI4hTrtYXwa1vf29ABiBwB
GNERwXnl17VrMiJRANqKTO3wdX7wrcn50uOPnyPoC51/3zagYjvXuOfFEDwiP5n3
fdnVfzD6yMVioHxPpz9OKrCUOG9Mwxa7AsxYHNBIjNrf4jSovSY=
=mKpq
-----END PGP SIGNATURE-----

--d3ywugjivy2vxqpp--

