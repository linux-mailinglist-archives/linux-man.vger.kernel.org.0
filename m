Return-Path: <linux-man+bounces-1752-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA500967463
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36F5D1F21D6A
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6863C1DA23;
	Sun,  1 Sep 2024 03:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hf0luGAZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B096317BA6
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161118; cv=none; b=H00Xc1Hv2g6uJIkfHtDPXMGjY6AEw+22q4MQFpgJkLjJZiN65QIpsaWt2MWr8nxnnh/YwXriuVh47yTUHm7b31aGYd+VgWssZXw3ENHMxUkLQjQ+YLxifvN5iA5wkXCYQag2H+Kg8yk4zWkUAOVr4cXKJcYQFdLDLBuhFm5DWU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161118; c=relaxed/simple;
	bh=HuH5BcuP8jNZSLTxPU/6m4wCLHaMBelBVHfRff6UGZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TXrm+7pGFZ+ymcxk1Kr5OZyZoi17or900Qu39kOa8e3Qtd+tWs5SHF/Cu2o1fB5yNkvrjx0WQh/aL7vpQnGvsvxfeXWLkyMNgx4tAsyOyM4v9ngaz/331HEWMxe+Mc1H4JomIBZonAKWarhTLricEFVWwRrw6x89CZ6fTBQO1+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hf0luGAZ; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5de9809a38aso1758777eaf.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161116; x=1725765916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CD+civFWR+SIn5Prsgf1UuO/hJq3+32WIckcem+ZPYQ=;
        b=hf0luGAZFMWnby8qAvvfRqbXmXweIGJrbXk5bBSdobNFYx1jt7envwpgW7zJL1tmsW
         HgSuucA0kDBehgchog6k7nu0bb54bi4IZPyaLU4+a6hcfrk6CGAxf2/ggOgxFdcOGPj6
         imjm506wmUPRINr5L0p1GU6CB5o99w7glvNJE/ByX9Q7U13FmCltcnkNiZFgDXMZkdlB
         yk1q2umIaOFf2sg1/SVmlyRCbrggFpL1iQZJlEDntR8i7slmdH2kt7Ndu3qbU4RFHRAe
         EnW13e1FXnZygq6/UG80Uicuuw0lG8PHF5hSuwoA8sN6UL2rwDhlLsD35384GlXSMMrt
         fhTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161116; x=1725765916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CD+civFWR+SIn5Prsgf1UuO/hJq3+32WIckcem+ZPYQ=;
        b=B0kEyH8lmNfeB2VyzlOjrUSL00agip/PVRqu0K4E5SA6Y6jiO9JPrEewx64/SteMiG
         56UUV3yJYrbz9ZpaXJaRCHKV5NhadFiTrhf8jQO1+byd+KDyFMb0inmUK3WBjAow00PA
         8wfKhrFZ5VPf+r8VMtDIHj26dTW5LR1Y3hh5n1S2uPujV2gOcqxl3GMGqgVpi0BXcFd0
         MAM5gQvzzANmJGmy59Cv+p2VkwkztjSMBVboGOkZrptMCatoA1DuRlv1c4SuCS1gaWBw
         dsP7Dgh4ZxrXo8/kcmXlKWwHueBJp9mvrbUF6BMteGUn8R6E2gXyy4N3YDgQgCPfIfxb
         Ee5A==
X-Gm-Message-State: AOJu0YxtvKMoh6IIG2bLf4MpmlcCW0bkYqfDtlCmjPIN7FHMnNxjHNan
	jLqqtDSkm1vul8IM3O+PLaoqzW/B7x37bkUUvyRPcFytIFKE3pBAyg3ItQ==
X-Google-Smtp-Source: AGHT+IHDs9kBIBJTPoGDDZvfOhvdTsh0Tk+sUVQljopcMdv+36u6T8vmtDbVVObH+2HEIkB2x9E7DA==
X-Received: by 2002:a05:6830:370d:b0:704:45b7:8ffc with SMTP id 46e09a7af769-70f70751eccmr3313565a34.32.1725161115611;
        Sat, 31 Aug 2024 20:25:15 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f67143118sm1323469a34.1.2024.08.31.20.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:15 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:13 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 03/10] wctrans.3, wctype.3: srcfix
Message-ID: <20240901032513.afty634vpnhe24zi@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="phjthbb2jzkrm4fo"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--phjthbb2jzkrm4fo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 03/10] wctrans.3, wctype.3: srcfix
MIME-Version: 1.0

Convert from unfilled text using `nf` and `fi` requests to `IP` macro
calls and tbl(1) tables.

This change increases the item indentation slightly, as I elected not to
specify one in the `IP` calls.  The content still fits easily in an
80-column terminal.

The reason for this change is to make the man page cross references
susceptible to scripted rewriting (and ultimately to make them
hyperlinkable).  See, e.g.,
<https://lore.kernel.org/linux-man/20240831182027.b6pduwkthk5b3tcf@illithid=
/>.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/wctrans.3 | 11 ++++++-----
 man/man3/wctype.3  | 31 ++++++++++++++++---------------
 2 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/man/man3/wctrans.3 b/man/man3/wctrans.3
index c4f107e1a..63faaa998 100644
--- a/man/man3/wctrans.3
+++ b/man/man3/wctrans.3
@@ -46,11 +46,12 @@ .SH DESCRIPTION
 .B LC_CTYPE
 category of the current locale, but the
 following names are valid in all locales.
-.P
-.nf
-    "tolower" \- realizes the \fBtolower\fP(3) mapping
-    "toupper" \- realizes the \fBtoupper\fP(3) mapping
-.fi
+.IP
+.TS
+L1 Lx.
+"tolower" \-	realizes the \fBtolower\fP(3) mapping
+"toupper" \-	realizes the \fBtoupper\fP(3) mapping
+.TE
 .SH RETURN VALUE
 The
 .BR wctrans ()
diff --git a/man/man3/wctype.3 b/man/man3/wctype.3
index dc4d51c6a..0e7a7b047 100644
--- a/man/man3/wctype.3
+++ b/man/man3/wctype.3
@@ -47,21 +47,22 @@ .SH DESCRIPTION
 .B LC_CTYPE
 category of the current locale, but the
 following names are valid in all locales.
-.P
-.nf
-    "alnum" \- realizes the \fBisalnum\fP(3) classification function
-    "alpha" \- realizes the \fBisalpha\fP(3) classification function
-    "blank" \- realizes the \fBisblank\fP(3) classification function
-    "cntrl" \- realizes the \fBiscntrl\fP(3) classification function
-    "digit" \- realizes the \fBisdigit\fP(3) classification function
-    "graph" \- realizes the \fBisgraph\fP(3) classification function
-    "lower" \- realizes the \fBislower\fP(3) classification function
-    "print" \- realizes the \fBisprint\fP(3) classification function
-    "punct" \- realizes the \fBispunct\fP(3) classification function
-    "space" \- realizes the \fBisspace\fP(3) classification function
-    "upper" \- realizes the \fBisupper\fP(3) classification function
-    "xdigit" \- realizes the \fBisxdigit\fP(3) classification function
-.fi
+.IP
+.TS
+L1 Lx.
+"alnum" \-	realizes the \fBisalnum\fP(3) classification function
+"alpha" \-	realizes the \fBisalpha\fP(3) classification function
+"blank" \-	realizes the \fBisblank\fP(3) classification function
+"cntrl" \-	realizes the \fBiscntrl\fP(3) classification function
+"digit" \-	realizes the \fBisdigit\fP(3) classification function
+"graph" \-	realizes the \fBisgraph\fP(3) classification function
+"lower" \-	realizes the \fBislower\fP(3) classification function
+"print" \-	realizes the \fBisprint\fP(3) classification function
+"punct" \-	realizes the \fBispunct\fP(3) classification function
+"space" \-	realizes the \fBisspace\fP(3) classification function
+"upper" \-	realizes the \fBisupper\fP(3) classification function
+"xdigit" \-	realizes the \fBisxdigit\fP(3) classification function
+.TE
 .SH RETURN VALUE
 The
 .BR wctype ()
--=20
2.30.2


--phjthbb2jzkrm4fo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3pkACgkQ0Z6cfXEm
bc6R8Q//bAPn5RAoYwcEbnHfvp43AfEaDsBXJmeDQrZ5Uu17NWky9tVoNYjrJhhT
YD2IowkzOpwWHMsl89qSmQ45UFioX++YnFqdTx+maaY0gofl+jabQgwPetPwjcUp
w8c97CTUqewU7YdDdQjfBDy9YEHC1YdNhH1jmnoHRpt9sYzGt/+2cbfSnXfnphEZ
Nc/B5JPiNGrLLZ+EL+axlwTXBaK69Kj3FvvmR6qK9RFv9JGt99toEaeMRZRKh5bS
aOUICgOdHAV4bIzKfuiIWcfeejGWJZFMBarOG2yymGz6IXUHkeiSZL36RniyYezO
hjztBFqPvfdfO26HtRo5f7NVJtbAoc7NzYbCv/04Q00iTrrYRT7tCy3OenCLIYUr
byAhg8m1miqklaz4HnPIsKcRl92d56cFbjzH5MYaCPPAGjuN7yzJh7yqxEmGxLWA
pHeg5/0p3vZlb1gYOqr8eWjsvz9yxHBiGVRT9N+2t/1k/hYY/rCqCURilIV+NT6u
Jbg+O6kqedXjsdCbU6KGogTbtFl3JR3Xy4FCPgGR662rJ36f8dKvPTH3urrpgjyO
HxGFTvk7DEma8JNGJy+/MGgQoNo7SZ+Glf7J4cBDwIcFyNc6kRNGneQO2H51/gxb
OfI1helJsQxddLW9KaB+M3vzWrIjek0DrY9WuxaZsWk70WvYtOw=
=Iver
-----END PGP SIGNATURE-----

--phjthbb2jzkrm4fo--

